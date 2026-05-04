local M = {}

M.AbsoluteTimeRange = {
    type = "structure",
    members = {
        StartTime = {
            type = "long",
        },
        EndTime = {
            type = "long",
        },
        First = {
            type = "long",
        },
        Last = {
            type = "long",
        },
    },
}

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.BaseModelName = {
    NARROW_BAND = "NarrowBand",
    WIDE_BAND = "WideBand",
}

M.CallAnalyticsFeature = {
    GENERATIVE_SUMMARIZATION = "GENERATIVE_SUMMARIZATION",
}

M.CallAnalyticsSkippedReasonCode = {
    INSUFFICIENT_CONVERSATION_CONTENT = "INSUFFICIENT_CONVERSATION_CONTENT",
    FAILED_SAFETY_GUIDELINES = "FAILED_SAFETY_GUIDELINES",
}

M.CallAnalyticsSkippedFeature = {
    type = "structure",
    members = {
        Feature = {
            type = "string",
        },
        ReasonCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.CallAnalyticsJobDetails = {
    type = "structure",
    members = {
        Skipped = {
            type = "list",
            member = M.CallAnalyticsSkippedFeature,
        },
    },
}

M.CallAnalyticsJobStatus = {
    QUEUED = "QUEUED",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
}

M.ParticipantRole = {
    AGENT = "AGENT",
    CUSTOMER = "CUSTOMER",
}

M.ChannelDefinition = {
    type = "structure",
    members = {
        ChannelId = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ParticipantRole = {
            type = "string",
        },
    },
}

M.LanguageCode = {
    AF_ZA = "af-ZA",
    AR_AE = "ar-AE",
    AR_SA = "ar-SA",
    DA_DK = "da-DK",
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
    FA_IR = "fa-IR",
    FR_CA = "fr-CA",
    FR_FR = "fr-FR",
    HE_IL = "he-IL",
    HI_IN = "hi-IN",
    ID_ID = "id-ID",
    IT_IT = "it-IT",
    JA_JP = "ja-JP",
    KO_KR = "ko-KR",
    MS_MY = "ms-MY",
    NL_NL = "nl-NL",
    PT_BR = "pt-BR",
    PT_PT = "pt-PT",
    RU_RU = "ru-RU",
    TA_IN = "ta-IN",
    TE_IN = "te-IN",
    TR_TR = "tr-TR",
    ZH_CN = "zh-CN",
    ZH_TW = "zh-TW",
    TH_TH = "th-TH",
    EN_ZA = "en-ZA",
    EN_NZ = "en-NZ",
    VI_VN = "vi-VN",
    SV_SE = "sv-SE",
    AB_GE = "ab-GE",
    AST_ES = "ast-ES",
    AZ_AZ = "az-AZ",
    BA_RU = "ba-RU",
    BE_BY = "be-BY",
    BG_BG = "bg-BG",
    BN_IN = "bn-IN",
    BS_BA = "bs-BA",
    CA_ES = "ca-ES",
    CKB_IQ = "ckb-IQ",
    CKB_IR = "ckb-IR",
    CS_CZ = "cs-CZ",
    CY_WL = "cy-WL",
    EL_GR = "el-GR",
    ET_EE = "et-EE",
    ET_ET = "et-ET",
    EU_ES = "eu-ES",
    FI_FI = "fi-FI",
    GL_ES = "gl-ES",
    GU_IN = "gu-IN",
    HA_NG = "ha-NG",
    HR_HR = "hr-HR",
    HU_HU = "hu-HU",
    HY_AM = "hy-AM",
    IS_IS = "is-IS",
    KA_GE = "ka-GE",
    KAB_DZ = "kab-DZ",
    KK_KZ = "kk-KZ",
    KN_IN = "kn-IN",
    KY_KG = "ky-KG",
    LG_IN = "lg-IN",
    LT_LT = "lt-LT",
    LV_LV = "lv-LV",
    MHR_RU = "mhr-RU",
    MI_NZ = "mi-NZ",
    MK_MK = "mk-MK",
    ML_IN = "ml-IN",
    MN_MN = "mn-MN",
    MR_IN = "mr-IN",
    MT_MT = "mt-MT",
    NO_NO = "no-NO",
    OR_IN = "or-IN",
    PA_IN = "pa-IN",
    PL_PL = "pl-PL",
    PS_AF = "ps-AF",
    RO_RO = "ro-RO",
    RW_RW = "rw-RW",
    SI_LK = "si-LK",
    SK_SK = "sk-SK",
    SL_SI = "sl-SI",
    SO_SO = "so-SO",
    SR_RS = "sr-RS",
    SU_ID = "su-ID",
    SW_BI = "sw-BI",
    SW_KE = "sw-KE",
    SW_RW = "sw-RW",
    SW_TZ = "sw-TZ",
    SW_UG = "sw-UG",
    TL_PH = "tl-PH",
    TT_RU = "tt-RU",
    UG_CN = "ug-CN",
    UK_UA = "uk-UA",
    UZ_UZ = "uz-UZ",
    WO_SN = "wo-SN",
    ZH_HK = "zh-HK",
    ZU_ZA = "zu-ZA",
}

M.Media = {
    type = "structure",
    members = {
        MediaFileUri = {
            type = "string",
        },
        RedactedMediaFileUri = {
            type = "string",
        },
    },
}

M.MediaFormat = {
    MP3 = "mp3",
    MP4 = "mp4",
    WAV = "wav",
    FLAC = "flac",
    OGG = "ogg",
    AMR = "amr",
    WEBM = "webm",
    M4A = "m4a",
}

M.PiiEntityType = {
    BANK_ACCOUNT_NUMBER = "BANK_ACCOUNT_NUMBER",
    BANK_ROUTING = "BANK_ROUTING",
    CREDIT_DEBIT_NUMBER = "CREDIT_DEBIT_NUMBER",
    CREDIT_DEBIT_CVV = "CREDIT_DEBIT_CVV",
    CREDIT_DEBIT_EXPIRY = "CREDIT_DEBIT_EXPIRY",
    PIN = "PIN",
    EMAIL = "EMAIL",
    ADDRESS = "ADDRESS",
    NAME = "NAME",
    PHONE = "PHONE",
    SSN = "SSN",
    ALL = "ALL",
}

M.RedactionOutput = {
    REDACTED = "redacted",
    REDACTED_AND_UNREDACTED = "redacted_and_unredacted",
}

M.RedactionType = {
    PII = "PII",
}

M.ContentRedaction = {
    type = "structure",
    members = {
        RedactionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RedactionOutput = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PiiEntityTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.LanguageIdSettings = {
    type = "structure",
    members = {
        VocabularyName = {
            type = "string",
        },
        VocabularyFilterName = {
            type = "string",
        },
        LanguageModelName = {
            type = "string",
        },
    },
}

M.Summarization = {
    type = "structure",
    members = {
        GenerateAbstractiveSummary = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.VocabularyFilterMethod = {
    REMOVE = "remove",
    MASK = "mask",
    TAG = "tag",
}

M.CallAnalyticsJobSettings = {
    type = "structure",
    members = {
        VocabularyName = {
            type = "string",
        },
        VocabularyFilterName = {
            type = "string",
        },
        VocabularyFilterMethod = {
            type = "string",
        },
        LanguageModelName = {
            type = "string",
        },
        ContentRedaction = M.ContentRedaction,
        LanguageOptions = {
            type = "list",
            member = { type = "string" },
        },
        LanguageIdSettings = {
            type = "map",
            key = { type = "string" },
            value = M.LanguageIdSettings,
        },
        Summarization = M.Summarization,
    },
}

M.Tag = {
    type = "structure",
    members = {
        Key = {
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

M.Transcript = {
    type = "structure",
    members = {
        TranscriptFileUri = {
            type = "string",
        },
        RedactedTranscriptFileUri = {
            type = "string",
        },
    },
}

M.CallAnalyticsJob = {
    type = "structure",
    members = {
        CallAnalyticsJobName = {
            type = "string",
        },
        CallAnalyticsJobStatus = {
            type = "string",
        },
        CallAnalyticsJobDetails = M.CallAnalyticsJobDetails,
        LanguageCode = {
            type = "string",
        },
        MediaSampleRateHertz = {
            type = "integer",
        },
        MediaFormat = {
            type = "string",
        },
        Media = M.Media,
        Transcript = M.Transcript,
        StartTime = {
            type = "timestamp",
        },
        CreationTime = {
            type = "timestamp",
        },
        CompletionTime = {
            type = "timestamp",
        },
        FailureReason = {
            type = "string",
        },
        DataAccessRoleArn = {
            type = "string",
        },
        IdentifiedLanguageScore = {
            type = "float",
        },
        Settings = M.CallAnalyticsJobSettings,
        ChannelDefinitions = {
            type = "list",
            member = M.ChannelDefinition,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CallAnalyticsJobSummary = {
    type = "structure",
    members = {
        CallAnalyticsJobName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        StartTime = {
            type = "timestamp",
        },
        CompletionTime = {
            type = "timestamp",
        },
        LanguageCode = {
            type = "string",
        },
        CallAnalyticsJobStatus = {
            type = "string",
        },
        CallAnalyticsJobDetails = M.CallAnalyticsJobDetails,
        FailureReason = {
            type = "string",
        },
    },
}

M.InputType = {
    REAL_TIME = "REAL_TIME",
    POST_CALL = "POST_CALL",
}

M.RelativeTimeRange = {
    type = "structure",
    members = {
        StartPercentage = {
            type = "integer",
        },
        EndPercentage = {
            type = "integer",
        },
        First = {
            type = "integer",
        },
        Last = {
            type = "integer",
        },
    },
}

M.InterruptionFilter = {
    type = "structure",
    members = {
        Threshold = {
            type = "long",
        },
        ParticipantRole = {
            type = "string",
        },
        AbsoluteTimeRange = M.AbsoluteTimeRange,
        RelativeTimeRange = M.RelativeTimeRange,
        Negate = {
            type = "boolean",
        },
    },
}

M.NonTalkTimeFilter = {
    type = "structure",
    members = {
        Threshold = {
            type = "long",
        },
        AbsoluteTimeRange = M.AbsoluteTimeRange,
        RelativeTimeRange = M.RelativeTimeRange,
        Negate = {
            type = "boolean",
        },
    },
}

M.SentimentValue = {
    POSITIVE = "POSITIVE",
    NEGATIVE = "NEGATIVE",
    NEUTRAL = "NEUTRAL",
    MIXED = "MIXED",
}

M.SentimentFilter = {
    type = "structure",
    members = {
        Sentiments = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        AbsoluteTimeRange = M.AbsoluteTimeRange,
        RelativeTimeRange = M.RelativeTimeRange,
        ParticipantRole = {
            type = "string",
        },
        Negate = {
            type = "boolean",
        },
    },
}

M.TranscriptFilterType = {
    EXACT = "EXACT",
}

M.TranscriptFilter = {
    type = "structure",
    members = {
        TranscriptFilterType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AbsoluteTimeRange = M.AbsoluteTimeRange,
        RelativeTimeRange = M.RelativeTimeRange,
        ParticipantRole = {
            type = "string",
        },
        Negate = {
            type = "boolean",
        },
        Targets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.Rule = {
    type = "union",
    members = {
        NonTalkTimeFilter = M.NonTalkTimeFilter,
        InterruptionFilter = M.InterruptionFilter,
        TranscriptFilter = M.TranscriptFilter,
        SentimentFilter = M.SentimentFilter,
    },
}

M.CategoryProperties = {
    type = "structure",
    members = {
        CategoryName = {
            type = "string",
        },
        Rules = {
            type = "list",
            member = M.Rule,
        },
        CreateTime = {
            type = "timestamp",
        },
        LastUpdateTime = {
            type = "timestamp",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        InputType = {
            type = "string",
        },
    },
}

M.MedicalScribeNoteTemplate = {
    HISTORY_AND_PHYSICAL = "HISTORY_AND_PHYSICAL",
    GIRPP = "GIRPP",
    BIRP = "BIRP",
    SIRP = "SIRP",
    DAP = "DAP",
    BEHAVIORAL_SOAP = "BEHAVIORAL_SOAP",
    PHYSICAL_SOAP = "PHYSICAL_SOAP",
}

M.ClinicalNoteGenerationSettings = {
    type = "structure",
    members = {
        NoteTemplate = {
            type = "string",
        },
    },
}

M.CLMLanguageCode = {
    EN_US = "en-US",
    HI_IN = "hi-IN",
    ES_US = "es-US",
    EN_GB = "en-GB",
    EN_AU = "en-AU",
    DE_DE = "de-DE",
    JA_JP = "ja-JP",
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

M.CreateCallAnalyticsCategoryInput = {
    type = "structure",
    members = {
        CategoryName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Rules = {
            type = "list",
            member = M.Rule,
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        InputType = {
            type = "string",
        },
    },
}

M.CreateCallAnalyticsCategoryOutput = {
    type = "structure",
    members = {
        CategoryProperties = M.CategoryProperties,
    },
}

M.InternalFailureException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
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

M.InputDataConfig = {
    type = "structure",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TuningDataS3Uri = {
            type = "string",
        },
        DataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateLanguageModelInput = {
    type = "structure",
    members = {
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BaseModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputDataConfig }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ModelStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
}

M.CreateLanguageModelOutput = {
    type = "structure",
    members = {
        LanguageCode = {
            type = "string",
        },
        BaseModelName = {
            type = "string",
        },
        ModelName = {
            type = "string",
        },
        InputDataConfig = M.InputDataConfig,
        ModelStatus = {
            type = "string",
        },
    },
}

M.CreateMedicalVocabularyInput = {
    type = "structure",
    members = {
        VocabularyName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VocabularyFileUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.VocabularyState = {
    PENDING = "PENDING",
    READY = "READY",
    FAILED = "FAILED",
}

M.CreateMedicalVocabularyOutput = {
    type = "structure",
    members = {
        VocabularyName = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        VocabularyState = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        FailureReason = {
            type = "string",
        },
    },
}

M.CreateVocabularyInput = {
    type = "structure",
    members = {
        VocabularyName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Phrases = {
            type = "list",
            member = { type = "string" },
        },
        VocabularyFileUri = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        DataAccessRoleArn = {
            type = "string",
        },
    },
}

M.CreateVocabularyOutput = {
    type = "structure",
    members = {
        VocabularyName = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        VocabularyState = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        FailureReason = {
            type = "string",
        },
    },
}

M.CreateVocabularyFilterInput = {
    type = "structure",
    members = {
        VocabularyFilterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Words = {
            type = "list",
            member = { type = "string" },
        },
        VocabularyFilterFileUri = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        DataAccessRoleArn = {
            type = "string",
        },
    },
}

M.CreateVocabularyFilterOutput = {
    type = "structure",
    members = {
        VocabularyFilterName = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.DeleteCallAnalyticsCategoryInput = {
    type = "structure",
    members = {
        CategoryName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCallAnalyticsCategoryOutput = {
    type = "structure",
}

M.NotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteCallAnalyticsJobInput = {
    type = "structure",
    members = {
        CallAnalyticsJobName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCallAnalyticsJobOutput = {
    type = "structure",
}

M.DeleteLanguageModelInput = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteLanguageModelOutput = {
    type = "structure",
}

M.DeleteMedicalScribeJobInput = {
    type = "structure",
    members = {
        MedicalScribeJobName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMedicalScribeJobOutput = {
    type = "structure",
}

M.DeleteMedicalTranscriptionJobInput = {
    type = "structure",
    members = {
        MedicalTranscriptionJobName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMedicalTranscriptionJobOutput = {
    type = "structure",
}

M.DeleteMedicalVocabularyInput = {
    type = "structure",
    members = {
        VocabularyName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMedicalVocabularyOutput = {
    type = "structure",
}

M.DeleteTranscriptionJobInput = {
    type = "structure",
    members = {
        TranscriptionJobName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTranscriptionJobOutput = {
    type = "structure",
}

M.DeleteVocabularyInput = {
    type = "structure",
    members = {
        VocabularyName = {
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
}

M.DeleteVocabularyFilterInput = {
    type = "structure",
    members = {
        VocabularyFilterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteVocabularyFilterOutput = {
    type = "structure",
}

M.DescribeLanguageModelInput = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.LanguageModel = {
    type = "structure",
    members = {
        ModelName = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LanguageCode = {
            type = "string",
        },
        BaseModelName = {
            type = "string",
        },
        ModelStatus = {
            type = "string",
        },
        UpgradeAvailability = {
            type = "boolean",
        },
        FailureReason = {
            type = "string",
        },
        InputDataConfig = M.InputDataConfig,
    },
}

M.DescribeLanguageModelOutput = {
    type = "structure",
    members = {
        LanguageModel = M.LanguageModel,
    },
}

M.GetCallAnalyticsCategoryInput = {
    type = "structure",
    members = {
        CategoryName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCallAnalyticsCategoryOutput = {
    type = "structure",
    members = {
        CategoryProperties = M.CategoryProperties,
    },
}

M.GetCallAnalyticsJobInput = {
    type = "structure",
    members = {
        CallAnalyticsJobName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCallAnalyticsJobOutput = {
    type = "structure",
    members = {
        CallAnalyticsJob = M.CallAnalyticsJob,
    },
}

M.GetMedicalScribeJobInput = {
    type = "structure",
    members = {
        MedicalScribeJobName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.MedicalScribeParticipantRole = {
    PATIENT = "PATIENT",
    CLINICIAN = "CLINICIAN",
}

M.MedicalScribeChannelDefinition = {
    type = "structure",
    members = {
        ChannelId = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        ParticipantRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MedicalScribeLanguageCode = {
    EN_US = "en-US",
}

M.MedicalScribeJobStatus = {
    QUEUED = "QUEUED",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
}

M.MedicalScribeOutput = {
    type = "structure",
    members = {
        TranscriptFileUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClinicalDocumentUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MedicalScribeSettings = {
    type = "structure",
    members = {
        ShowSpeakerLabels = {
            type = "boolean",
        },
        MaxSpeakerLabels = {
            type = "integer",
        },
        ChannelIdentification = {
            type = "boolean",
        },
        VocabularyName = {
            type = "string",
        },
        VocabularyFilterName = {
            type = "string",
        },
        VocabularyFilterMethod = {
            type = "string",
        },
        ClinicalNoteGenerationSettings = M.ClinicalNoteGenerationSettings,
    },
}

M.MedicalScribeJob = {
    type = "structure",
    members = {
        MedicalScribeJobName = {
            type = "string",
        },
        MedicalScribeJobStatus = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        Media = M.Media,
        MedicalScribeOutput = M.MedicalScribeOutput,
        StartTime = {
            type = "timestamp",
        },
        CreationTime = {
            type = "timestamp",
        },
        CompletionTime = {
            type = "timestamp",
        },
        FailureReason = {
            type = "string",
        },
        Settings = M.MedicalScribeSettings,
        DataAccessRoleArn = {
            type = "string",
        },
        ChannelDefinitions = {
            type = "list",
            member = M.MedicalScribeChannelDefinition,
        },
        MedicalScribeContextProvided = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.GetMedicalScribeJobOutput = {
    type = "structure",
    members = {
        MedicalScribeJob = M.MedicalScribeJob,
    },
}

M.GetMedicalTranscriptionJobInput = {
    type = "structure",
    members = {
        MedicalTranscriptionJobName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.MedicalContentIdentificationType = {
    PHI = "PHI",
}

M.MedicalTranscriptionSetting = {
    type = "structure",
    members = {
        ShowSpeakerLabels = {
            type = "boolean",
        },
        MaxSpeakerLabels = {
            type = "integer",
        },
        ChannelIdentification = {
            type = "boolean",
        },
        ShowAlternatives = {
            type = "boolean",
        },
        MaxAlternatives = {
            type = "integer",
        },
        VocabularyName = {
            type = "string",
        },
    },
}

M.Specialty = {
    PRIMARYCARE = "PRIMARYCARE",
}

M.MedicalTranscript = {
    type = "structure",
    members = {
        TranscriptFileUri = {
            type = "string",
        },
    },
}

M.TranscriptionJobStatus = {
    QUEUED = "QUEUED",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
}

M.Type = {
    CONVERSATION = "CONVERSATION",
    DICTATION = "DICTATION",
}

M.MedicalTranscriptionJob = {
    type = "structure",
    members = {
        MedicalTranscriptionJobName = {
            type = "string",
        },
        TranscriptionJobStatus = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        MediaSampleRateHertz = {
            type = "integer",
        },
        MediaFormat = {
            type = "string",
        },
        Media = M.Media,
        Transcript = M.MedicalTranscript,
        StartTime = {
            type = "timestamp",
        },
        CreationTime = {
            type = "timestamp",
        },
        CompletionTime = {
            type = "timestamp",
        },
        FailureReason = {
            type = "string",
        },
        Settings = M.MedicalTranscriptionSetting,
        ContentIdentificationType = {
            type = "string",
        },
        Specialty = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.GetMedicalTranscriptionJobOutput = {
    type = "structure",
    members = {
        MedicalTranscriptionJob = M.MedicalTranscriptionJob,
    },
}

M.GetMedicalVocabularyInput = {
    type = "structure",
    members = {
        VocabularyName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetMedicalVocabularyOutput = {
    type = "structure",
    members = {
        VocabularyName = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        VocabularyState = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        FailureReason = {
            type = "string",
        },
        DownloadUri = {
            type = "string",
        },
    },
}

M.GetTranscriptionJobInput = {
    type = "structure",
    members = {
        TranscriptionJobName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.JobExecutionSettings = {
    type = "structure",
    members = {
        AllowDeferredExecution = {
            type = "boolean",
        },
        DataAccessRoleArn = {
            type = "string",
        },
    },
}

M.LanguageCodeItem = {
    type = "structure",
    members = {
        LanguageCode = {
            type = "string",
        },
        DurationInSeconds = {
            type = "float",
        },
    },
}

M.ModelSettings = {
    type = "structure",
    members = {
        LanguageModelName = {
            type = "string",
        },
    },
}

M.Settings = {
    type = "structure",
    members = {
        VocabularyName = {
            type = "string",
        },
        ShowSpeakerLabels = {
            type = "boolean",
        },
        MaxSpeakerLabels = {
            type = "integer",
        },
        ChannelIdentification = {
            type = "boolean",
        },
        ShowAlternatives = {
            type = "boolean",
        },
        MaxAlternatives = {
            type = "integer",
        },
        VocabularyFilterName = {
            type = "string",
        },
        VocabularyFilterMethod = {
            type = "string",
        },
    },
}

M.SubtitleFormat = {
    VTT = "vtt",
    SRT = "srt",
}

M.SubtitlesOutput = {
    type = "structure",
    members = {
        Formats = {
            type = "list",
            member = { type = "string" },
        },
        SubtitleFileUris = {
            type = "list",
            member = { type = "string" },
        },
        OutputStartIndex = {
            type = "integer",
        },
    },
}

M.ToxicityCategory = {
    ALL = "ALL",
}

M.ToxicityDetectionSettings = {
    type = "structure",
    members = {
        ToxicityCategories = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TranscriptionJob = {
    type = "structure",
    members = {
        TranscriptionJobName = {
            type = "string",
        },
        TranscriptionJobStatus = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        MediaSampleRateHertz = {
            type = "integer",
        },
        MediaFormat = {
            type = "string",
        },
        Media = M.Media,
        Transcript = M.Transcript,
        StartTime = {
            type = "timestamp",
        },
        CreationTime = {
            type = "timestamp",
        },
        CompletionTime = {
            type = "timestamp",
        },
        FailureReason = {
            type = "string",
        },
        Settings = M.Settings,
        ModelSettings = M.ModelSettings,
        JobExecutionSettings = M.JobExecutionSettings,
        ContentRedaction = M.ContentRedaction,
        IdentifyLanguage = {
            type = "boolean",
        },
        IdentifyMultipleLanguages = {
            type = "boolean",
        },
        LanguageOptions = {
            type = "list",
            member = { type = "string" },
        },
        IdentifiedLanguageScore = {
            type = "float",
        },
        LanguageCodes = {
            type = "list",
            member = M.LanguageCodeItem,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        Subtitles = M.SubtitlesOutput,
        LanguageIdSettings = {
            type = "map",
            key = { type = "string" },
            value = M.LanguageIdSettings,
        },
        ToxicityDetection = {
            type = "list",
            member = M.ToxicityDetectionSettings,
        },
    },
}

M.GetTranscriptionJobOutput = {
    type = "structure",
    members = {
        TranscriptionJob = M.TranscriptionJob,
    },
}

M.GetVocabularyInput = {
    type = "structure",
    members = {
        VocabularyName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetVocabularyOutput = {
    type = "structure",
    members = {
        VocabularyName = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        VocabularyState = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        FailureReason = {
            type = "string",
        },
        DownloadUri = {
            type = "string",
        },
    },
}

M.GetVocabularyFilterInput = {
    type = "structure",
    members = {
        VocabularyFilterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetVocabularyFilterOutput = {
    type = "structure",
    members = {
        VocabularyFilterName = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        DownloadUri = {
            type = "string",
        },
    },
}

M.ListCallAnalyticsCategoriesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListCallAnalyticsCategoriesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Categories = {
            type = "list",
            member = M.CategoryProperties,
        },
    },
}

M.ListCallAnalyticsJobsInput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                http_query = "Status",
            },
        },
        JobNameContains = {
            type = "string",
            traits = {
                http_query = "JobNameContains",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListCallAnalyticsJobsOutput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        CallAnalyticsJobSummaries = {
            type = "list",
            member = M.CallAnalyticsJobSummary,
        },
    },
}

M.ListLanguageModelsInput = {
    type = "structure",
    members = {
        StatusEquals = {
            type = "string",
            traits = {
                http_query = "         StatusEquals",
            },
        },
        NameContains = {
            type = "string",
            traits = {
                http_query = "NameContains",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListLanguageModelsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Models = {
            type = "list",
            member = M.LanguageModel,
        },
    },
}

M.ListMedicalScribeJobsInput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                http_query = "Status",
            },
        },
        JobNameContains = {
            type = "string",
            traits = {
                http_query = "JobNameContains",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.MedicalScribeJobSummary = {
    type = "structure",
    members = {
        MedicalScribeJobName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        StartTime = {
            type = "timestamp",
        },
        CompletionTime = {
            type = "timestamp",
        },
        LanguageCode = {
            type = "string",
        },
        MedicalScribeJobStatus = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
    },
}

M.ListMedicalScribeJobsOutput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MedicalScribeJobSummaries = {
            type = "list",
            member = M.MedicalScribeJobSummary,
        },
    },
}

M.ListMedicalTranscriptionJobsInput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                http_query = "Status",
            },
        },
        JobNameContains = {
            type = "string",
            traits = {
                http_query = "JobNameContains",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.OutputLocationType = {
    CUSTOMER_BUCKET = "CUSTOMER_BUCKET",
    SERVICE_BUCKET = "SERVICE_BUCKET",
}

M.MedicalTranscriptionJobSummary = {
    type = "structure",
    members = {
        MedicalTranscriptionJobName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        StartTime = {
            type = "timestamp",
        },
        CompletionTime = {
            type = "timestamp",
        },
        LanguageCode = {
            type = "string",
        },
        TranscriptionJobStatus = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        OutputLocationType = {
            type = "string",
        },
        Specialty = {
            type = "string",
        },
        ContentIdentificationType = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.ListMedicalTranscriptionJobsOutput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MedicalTranscriptionJobSummaries = {
            type = "list",
            member = M.MedicalTranscriptionJobSummary,
        },
    },
}

M.ListMedicalVocabulariesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        StateEquals = {
            type = "string",
            traits = {
                http_query = "StateEquals",
            },
        },
        NameContains = {
            type = "string",
            traits = {
                http_query = "NameContains",
            },
        },
    },
}

M.VocabularyInfo = {
    type = "structure",
    members = {
        VocabularyName = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        VocabularyState = {
            type = "string",
        },
    },
}

M.ListMedicalVocabulariesOutput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Vocabularies = {
            type = "list",
            member = M.VocabularyInfo,
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
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
        ResourceArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListTranscriptionJobsInput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                http_query = "Status",
            },
        },
        JobNameContains = {
            type = "string",
            traits = {
                http_query = "JobNameContains",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.TranscriptionJobSummary = {
    type = "structure",
    members = {
        TranscriptionJobName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        StartTime = {
            type = "timestamp",
        },
        CompletionTime = {
            type = "timestamp",
        },
        LanguageCode = {
            type = "string",
        },
        TranscriptionJobStatus = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        OutputLocationType = {
            type = "string",
        },
        ContentRedaction = M.ContentRedaction,
        ModelSettings = M.ModelSettings,
        IdentifyLanguage = {
            type = "boolean",
        },
        IdentifyMultipleLanguages = {
            type = "boolean",
        },
        IdentifiedLanguageScore = {
            type = "float",
        },
        LanguageCodes = {
            type = "list",
            member = M.LanguageCodeItem,
        },
        ToxicityDetection = {
            type = "list",
            member = M.ToxicityDetectionSettings,
        },
    },
}

M.ListTranscriptionJobsOutput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        TranscriptionJobSummaries = {
            type = "list",
            member = M.TranscriptionJobSummary,
        },
    },
}

M.ListVocabulariesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        StateEquals = {
            type = "string",
            traits = {
                http_query = "StateEquals",
            },
        },
        NameContains = {
            type = "string",
            traits = {
                http_query = "NameContains",
            },
        },
    },
}

M.ListVocabulariesOutput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Vocabularies = {
            type = "list",
            member = M.VocabularyInfo,
        },
    },
}

M.ListVocabularyFiltersInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NameContains = {
            type = "string",
            traits = {
                http_query = "NameContains",
            },
        },
    },
}

M.VocabularyFilterInfo = {
    type = "structure",
    members = {
        VocabularyFilterName = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.ListVocabularyFiltersOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        VocabularyFilters = {
            type = "list",
            member = M.VocabularyFilterInfo,
        },
    },
}

M.Pronouns = {
    HE_HIM = "HE_HIM",
    SHE_HER = "SHE_HER",
    THEY_THEM = "THEY_THEM",
}

M.MedicalScribePatientContext = {
    type = "structure",
    members = {
        Pronouns = {
            type = "string",
        },
    },
}

M.MedicalScribeContext = {
    type = "structure",
    members = {
        PatientContext = M.MedicalScribePatientContext,
    },
}

M.StartCallAnalyticsJobInput = {
    type = "structure",
    members = {
        CallAnalyticsJobName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Media = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Media }),
        OutputLocation = {
            type = "string",
        },
        OutputEncryptionKMSKeyId = {
            type = "string",
        },
        DataAccessRoleArn = {
            type = "string",
        },
        Settings = M.CallAnalyticsJobSettings,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ChannelDefinitions = {
            type = "list",
            member = M.ChannelDefinition,
        },
    },
}

M.StartCallAnalyticsJobOutput = {
    type = "structure",
    members = {
        CallAnalyticsJob = M.CallAnalyticsJob,
    },
}

M.StartMedicalScribeJobInput = {
    type = "structure",
    members = {
        MedicalScribeJobName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Media = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Media }),
        OutputBucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputEncryptionKMSKeyId = {
            type = "string",
        },
        KMSEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        DataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Settings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MedicalScribeSettings }),
        ChannelDefinitions = {
            type = "list",
            member = M.MedicalScribeChannelDefinition,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        MedicalScribeContext = M.MedicalScribeContext,
    },
}

M.StartMedicalScribeJobOutput = {
    type = "structure",
    members = {
        MedicalScribeJob = M.MedicalScribeJob,
    },
}

M.StartMedicalTranscriptionJobInput = {
    type = "structure",
    members = {
        MedicalTranscriptionJobName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MediaSampleRateHertz = {
            type = "integer",
        },
        MediaFormat = {
            type = "string",
        },
        Media = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Media }),
        OutputBucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputKey = {
            type = "string",
        },
        OutputEncryptionKMSKeyId = {
            type = "string",
        },
        KMSEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Settings = M.MedicalTranscriptionSetting,
        ContentIdentificationType = {
            type = "string",
        },
        Specialty = {
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
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.StartMedicalTranscriptionJobOutput = {
    type = "structure",
    members = {
        MedicalTranscriptionJob = M.MedicalTranscriptionJob,
    },
}

M.Subtitles = {
    type = "structure",
    members = {
        Formats = {
            type = "list",
            member = { type = "string" },
        },
        OutputStartIndex = {
            type = "integer",
        },
    },
}

M.StartTranscriptionJobInput = {
    type = "structure",
    members = {
        TranscriptionJobName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
        },
        MediaSampleRateHertz = {
            type = "integer",
        },
        MediaFormat = {
            type = "string",
        },
        Media = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Media }),
        OutputBucketName = {
            type = "string",
        },
        OutputKey = {
            type = "string",
        },
        OutputEncryptionKMSKeyId = {
            type = "string",
        },
        KMSEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Settings = M.Settings,
        ModelSettings = M.ModelSettings,
        JobExecutionSettings = M.JobExecutionSettings,
        ContentRedaction = M.ContentRedaction,
        IdentifyLanguage = {
            type = "boolean",
        },
        IdentifyMultipleLanguages = {
            type = "boolean",
        },
        LanguageOptions = {
            type = "list",
            member = { type = "string" },
        },
        Subtitles = M.Subtitles,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        LanguageIdSettings = {
            type = "map",
            key = { type = "string" },
            value = M.LanguageIdSettings,
        },
        ToxicityDetection = {
            type = "list",
            member = M.ToxicityDetectionSettings,
        },
    },
}

M.StartTranscriptionJobOutput = {
    type = "structure",
    members = {
        TranscriptionJob = M.TranscriptionJob,
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
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
        ResourceArn = {
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
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateCallAnalyticsCategoryInput = {
    type = "structure",
    members = {
        CategoryName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Rules = {
            type = "list",
            member = M.Rule,
            traits = {
                required = true,
            },
        },
        InputType = {
            type = "string",
        },
    },
}

M.UpdateCallAnalyticsCategoryOutput = {
    type = "structure",
    members = {
        CategoryProperties = M.CategoryProperties,
    },
}

M.UpdateMedicalVocabularyInput = {
    type = "structure",
    members = {
        VocabularyName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VocabularyFileUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateMedicalVocabularyOutput = {
    type = "structure",
    members = {
        VocabularyName = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        VocabularyState = {
            type = "string",
        },
    },
}

M.UpdateVocabularyInput = {
    type = "structure",
    members = {
        VocabularyName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Phrases = {
            type = "list",
            member = { type = "string" },
        },
        VocabularyFileUri = {
            type = "string",
        },
        DataAccessRoleArn = {
            type = "string",
        },
    },
}

M.UpdateVocabularyOutput = {
    type = "structure",
    members = {
        VocabularyName = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        VocabularyState = {
            type = "string",
        },
    },
}

M.UpdateVocabularyFilterInput = {
    type = "structure",
    members = {
        VocabularyFilterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Words = {
            type = "list",
            member = { type = "string" },
        },
        VocabularyFilterFileUri = {
            type = "string",
        },
        DataAccessRoleArn = {
            type = "string",
        },
    },
}

M.UpdateVocabularyFilterOutput = {
    type = "structure",
    members = {
        VocabularyFilterName = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

return M
