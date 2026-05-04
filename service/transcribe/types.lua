local M = {}

M.AbsoluteTimeRange = {
    type = "structure",
    id = "AbsoluteTimeRange",
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
    id = "BadRequestException",
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
    id = "CallAnalyticsSkippedFeature",
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
    id = "CallAnalyticsJobDetails",
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
    id = "ChannelDefinition",
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
    id = "Media",
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
    id = "ContentRedaction",
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
    id = "LanguageIdSettings",
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
    id = "Summarization",
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
    id = "CallAnalyticsJobSettings",
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
    id = "Tag",
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
    id = "Transcript",
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
    id = "CallAnalyticsJob",
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
    id = "CallAnalyticsJobSummary",
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
    id = "RelativeTimeRange",
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
    id = "InterruptionFilter",
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
    id = "NonTalkTimeFilter",
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
    id = "SentimentFilter",
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
    id = "TranscriptFilter",
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
    id = "Rule",
    members = {
        NonTalkTimeFilter = M.NonTalkTimeFilter,
        InterruptionFilter = M.InterruptionFilter,
        TranscriptFilter = M.TranscriptFilter,
        SentimentFilter = M.SentimentFilter,
    },
}

M.CategoryProperties = {
    type = "structure",
    id = "CategoryProperties",
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
    id = "ClinicalNoteGenerationSettings",
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
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateCallAnalyticsCategoryInput = {
    type = "structure",
    id = "CreateCallAnalyticsCategoryInput",
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
    id = "CreateCallAnalyticsCategoryOutput",
    members = {
        CategoryProperties = M.CategoryProperties,
    },
}

M.InternalFailureException = {
    type = "structure",
    id = "InternalFailureException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
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

M.InputDataConfig = {
    type = "structure",
    id = "InputDataConfig",
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
    id = "CreateLanguageModelInput",
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
    id = "CreateLanguageModelOutput",
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
    id = "CreateMedicalVocabularyInput",
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
    id = "CreateMedicalVocabularyOutput",
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
    id = "CreateVocabularyInput",
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
    id = "CreateVocabularyOutput",
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
    id = "CreateVocabularyFilterInput",
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
    id = "CreateVocabularyFilterOutput",
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
    id = "DeleteCallAnalyticsCategoryInput",
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
    id = "DeleteCallAnalyticsCategoryOutput",
}

M.NotFoundException = {
    type = "structure",
    id = "NotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteCallAnalyticsJobInput = {
    type = "structure",
    id = "DeleteCallAnalyticsJobInput",
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
    id = "DeleteCallAnalyticsJobOutput",
}

M.DeleteLanguageModelInput = {
    type = "structure",
    id = "DeleteLanguageModelInput",
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
    id = "DeleteLanguageModelOutput",
}

M.DeleteMedicalScribeJobInput = {
    type = "structure",
    id = "DeleteMedicalScribeJobInput",
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
    id = "DeleteMedicalScribeJobOutput",
}

M.DeleteMedicalTranscriptionJobInput = {
    type = "structure",
    id = "DeleteMedicalTranscriptionJobInput",
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
    id = "DeleteMedicalTranscriptionJobOutput",
}

M.DeleteMedicalVocabularyInput = {
    type = "structure",
    id = "DeleteMedicalVocabularyInput",
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
    id = "DeleteMedicalVocabularyOutput",
}

M.DeleteTranscriptionJobInput = {
    type = "structure",
    id = "DeleteTranscriptionJobInput",
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
    id = "DeleteTranscriptionJobOutput",
}

M.DeleteVocabularyInput = {
    type = "structure",
    id = "DeleteVocabularyInput",
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
    id = "DeleteVocabularyOutput",
}

M.DeleteVocabularyFilterInput = {
    type = "structure",
    id = "DeleteVocabularyFilterInput",
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
    id = "DeleteVocabularyFilterOutput",
}

M.DescribeLanguageModelInput = {
    type = "structure",
    id = "DescribeLanguageModelInput",
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
    id = "LanguageModel",
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
    id = "DescribeLanguageModelOutput",
    members = {
        LanguageModel = M.LanguageModel,
    },
}

M.GetCallAnalyticsCategoryInput = {
    type = "structure",
    id = "GetCallAnalyticsCategoryInput",
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
    id = "GetCallAnalyticsCategoryOutput",
    members = {
        CategoryProperties = M.CategoryProperties,
    },
}

M.GetCallAnalyticsJobInput = {
    type = "structure",
    id = "GetCallAnalyticsJobInput",
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
    id = "GetCallAnalyticsJobOutput",
    members = {
        CallAnalyticsJob = M.CallAnalyticsJob,
    },
}

M.GetMedicalScribeJobInput = {
    type = "structure",
    id = "GetMedicalScribeJobInput",
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
    id = "MedicalScribeChannelDefinition",
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
    id = "MedicalScribeOutput",
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
    id = "MedicalScribeSettings",
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
    id = "MedicalScribeJob",
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
    id = "GetMedicalScribeJobOutput",
    members = {
        MedicalScribeJob = M.MedicalScribeJob,
    },
}

M.GetMedicalTranscriptionJobInput = {
    type = "structure",
    id = "GetMedicalTranscriptionJobInput",
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
    id = "MedicalTranscriptionSetting",
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
    id = "MedicalTranscript",
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
    id = "MedicalTranscriptionJob",
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
    id = "GetMedicalTranscriptionJobOutput",
    members = {
        MedicalTranscriptionJob = M.MedicalTranscriptionJob,
    },
}

M.GetMedicalVocabularyInput = {
    type = "structure",
    id = "GetMedicalVocabularyInput",
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
    id = "GetMedicalVocabularyOutput",
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
    id = "GetTranscriptionJobInput",
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
    id = "JobExecutionSettings",
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
    id = "LanguageCodeItem",
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
    id = "ModelSettings",
    members = {
        LanguageModelName = {
            type = "string",
        },
    },
}

M.Settings = {
    type = "structure",
    id = "Settings",
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
    id = "SubtitlesOutput",
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
    id = "ToxicityDetectionSettings",
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
    id = "TranscriptionJob",
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
    id = "GetTranscriptionJobOutput",
    members = {
        TranscriptionJob = M.TranscriptionJob,
    },
}

M.GetVocabularyInput = {
    type = "structure",
    id = "GetVocabularyInput",
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
    id = "GetVocabularyOutput",
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
    id = "GetVocabularyFilterInput",
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
    id = "GetVocabularyFilterOutput",
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
    id = "ListCallAnalyticsCategoriesInput",
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
    id = "ListCallAnalyticsCategoriesOutput",
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
    id = "ListCallAnalyticsJobsInput",
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
    id = "ListCallAnalyticsJobsOutput",
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
    id = "ListLanguageModelsInput",
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
    id = "ListLanguageModelsOutput",
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
    id = "ListMedicalScribeJobsInput",
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
    id = "MedicalScribeJobSummary",
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
    id = "ListMedicalScribeJobsOutput",
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
    id = "ListMedicalTranscriptionJobsInput",
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
    id = "MedicalTranscriptionJobSummary",
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
    id = "ListMedicalTranscriptionJobsOutput",
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
    id = "ListMedicalVocabulariesInput",
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
    id = "VocabularyInfo",
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
    id = "ListMedicalVocabulariesOutput",
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
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
    id = "ListTranscriptionJobsInput",
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
    id = "TranscriptionJobSummary",
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
    id = "ListTranscriptionJobsOutput",
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
    id = "ListVocabulariesInput",
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
    id = "ListVocabulariesOutput",
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
    id = "ListVocabularyFiltersInput",
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
    id = "VocabularyFilterInfo",
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
    id = "ListVocabularyFiltersOutput",
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
    id = "MedicalScribePatientContext",
    members = {
        Pronouns = {
            type = "string",
        },
    },
}

M.MedicalScribeContext = {
    type = "structure",
    id = "MedicalScribeContext",
    members = {
        PatientContext = M.MedicalScribePatientContext,
    },
}

M.StartCallAnalyticsJobInput = {
    type = "structure",
    id = "StartCallAnalyticsJobInput",
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
    id = "StartCallAnalyticsJobOutput",
    members = {
        CallAnalyticsJob = M.CallAnalyticsJob,
    },
}

M.StartMedicalScribeJobInput = {
    type = "structure",
    id = "StartMedicalScribeJobInput",
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
    id = "StartMedicalScribeJobOutput",
    members = {
        MedicalScribeJob = M.MedicalScribeJob,
    },
}

M.StartMedicalTranscriptionJobInput = {
    type = "structure",
    id = "StartMedicalTranscriptionJobInput",
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
    id = "StartMedicalTranscriptionJobOutput",
    members = {
        MedicalTranscriptionJob = M.MedicalTranscriptionJob,
    },
}

M.Subtitles = {
    type = "structure",
    id = "Subtitles",
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
    id = "StartTranscriptionJobInput",
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
    id = "StartTranscriptionJobOutput",
    members = {
        TranscriptionJob = M.TranscriptionJob,
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

M.UpdateCallAnalyticsCategoryInput = {
    type = "structure",
    id = "UpdateCallAnalyticsCategoryInput",
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
    id = "UpdateCallAnalyticsCategoryOutput",
    members = {
        CategoryProperties = M.CategoryProperties,
    },
}

M.UpdateMedicalVocabularyInput = {
    type = "structure",
    id = "UpdateMedicalVocabularyInput",
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
    id = "UpdateMedicalVocabularyOutput",
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
    id = "UpdateVocabularyInput",
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
    id = "UpdateVocabularyOutput",
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
    id = "UpdateVocabularyFilterInput",
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
    id = "UpdateVocabularyFilterOutput",
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
