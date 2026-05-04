local M = {}

M.Entity = {
    type = "structure",
    members = {
        StartTime = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        EndTime = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Category = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Content = {
            type = "string",
        },
        Confidence = {
            type = "double",
        },
    },
}

M.ItemType = {
    PRONUNCIATION = "pronunciation",
    PUNCTUATION = "punctuation",
}

M.Item = {
    type = "structure",
    members = {
        StartTime = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        EndTime = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Type = {
            type = "string",
        },
        Content = {
            type = "string",
        },
        VocabularyFilterMatch = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Speaker = {
            type = "string",
        },
        Confidence = {
            type = "double",
        },
        Stable = {
            type = "boolean",
        },
    },
}

M.Alternative = {
    type = "structure",
    members = {
        Transcript = {
            type = "string",
        },
        Items = {
            type = "list",
            member = M.Item,
        },
        Entities = {
            type = "list",
            member = M.Entity,
        },
    },
}

M.AudioEvent = {
    type = "structure",
    members = {
        AudioChunk = {
            type = "blob",
        },
    },
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

M.ContentRedactionOutput = {
    REDACTED = "redacted",
    REDACTED_AND_UNREDACTED = "redacted_and_unredacted",
}

M.PostCallAnalyticsSettings = {
    type = "structure",
    members = {
        OutputLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContentRedactionOutput = {
            type = "string",
        },
        OutputEncryptionKMSKeyId = {
            type = "string",
        },
    },
}

M.ConfigurationEvent = {
    type = "structure",
    members = {
        ChannelDefinitions = {
            type = "list",
            member = M.ChannelDefinition,
        },
        PostCallAnalyticsSettings = M.PostCallAnalyticsSettings,
    },
}

M.AudioStream = {
    type = "union",
    members = {
        AudioEvent = M.AudioEvent,
        ConfigurationEvent = M.ConfigurationEvent,
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

M.CallAnalyticsEntity = {
    type = "structure",
    members = {
        BeginOffsetMillis = {
            type = "long",
        },
        EndOffsetMillis = {
            type = "long",
        },
        Category = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Content = {
            type = "string",
        },
        Confidence = {
            type = "double",
        },
    },
}

M.CallAnalyticsItem = {
    type = "structure",
    members = {
        BeginOffsetMillis = {
            type = "long",
        },
        EndOffsetMillis = {
            type = "long",
        },
        Type = {
            type = "string",
        },
        Content = {
            type = "string",
        },
        Confidence = {
            type = "double",
        },
        VocabularyFilterMatch = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Stable = {
            type = "boolean",
        },
    },
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

M.CallAnalyticsLanguageWithScore = {
    type = "structure",
    members = {
        LanguageCode = {
            type = "string",
        },
        Score = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.TimestampRange = {
    type = "structure",
    members = {
        BeginOffsetMillis = {
            type = "long",
        },
        EndOffsetMillis = {
            type = "long",
        },
    },
}

M.PointsOfInterest = {
    type = "structure",
    members = {
        TimestampRanges = {
            type = "list",
            member = M.TimestampRange,
        },
    },
}

M.CategoryEvent = {
    type = "structure",
    members = {
        MatchedCategories = {
            type = "list",
            member = { type = "string" },
        },
        MatchedDetails = {
            type = "map",
            key = { type = "string" },
            value = M.PointsOfInterest,
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

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CharacterOffsets = {
    type = "structure",
    members = {
        Begin = {
            type = "integer",
        },
        End = {
            type = "integer",
        },
    },
}

M.IssueDetected = {
    type = "structure",
    members = {
        CharacterOffsets = M.CharacterOffsets,
    },
}

M.Sentiment = {
    POSITIVE = "POSITIVE",
    NEGATIVE = "NEGATIVE",
    MIXED = "MIXED",
    NEUTRAL = "NEUTRAL",
}

M.UtteranceEvent = {
    type = "structure",
    members = {
        UtteranceId = {
            type = "string",
        },
        IsPartial = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ParticipantRole = {
            type = "string",
        },
        BeginOffsetMillis = {
            type = "long",
        },
        EndOffsetMillis = {
            type = "long",
        },
        Transcript = {
            type = "string",
        },
        Items = {
            type = "list",
            member = M.CallAnalyticsItem,
        },
        Entities = {
            type = "list",
            member = M.CallAnalyticsEntity,
        },
        Sentiment = {
            type = "string",
        },
        IssuesDetected = {
            type = "list",
            member = M.IssueDetected,
        },
        LanguageCode = {
            type = "string",
        },
        LanguageIdentification = {
            type = "list",
            member = M.CallAnalyticsLanguageWithScore,
        },
    },
}

M.CallAnalyticsTranscriptResultStream = {
    type = "union",
    members = {
        UtteranceEvent = M.UtteranceEvent,
        CategoryEvent = M.CategoryEvent,
        BadRequestException = M.BadRequestException,
        LimitExceededException = M.LimitExceededException,
        InternalFailureException = M.InternalFailureException,
        ConflictException = M.ConflictException,
        ServiceUnavailableException = M.ServiceUnavailableException,
    },
}

M.ClinicalNoteGenerationStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
}

M.ClinicalNoteGenerationResult = {
    type = "structure",
    members = {
        ClinicalNoteOutputLocation = {
            type = "string",
        },
        TranscriptOutputLocation = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
    },
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

M.ClinicalNoteGenerationSettings = {
    type = "structure",
    members = {
        OutputBucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NoteTemplate = {
            type = "string",
        },
    },
}

M.ContentIdentificationType = {
    PII = "PII",
}

M.ContentRedactionType = {
    PII = "PII",
}

M.GetMedicalScribeStreamInput = {
    type = "structure",
    members = {
        SessionId = {
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

M.MedicalScribeEncryptionSettings = {
    type = "structure",
    members = {
        KmsEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        KmsKeyId = {
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

M.MedicalScribeMediaEncoding = {
    PCM = "pcm",
    OGG_OPUS = "ogg-opus",
    FLAC = "flac",
}

M.MedicalScribePostStreamAnalyticsResult = {
    type = "structure",
    members = {
        ClinicalNoteGenerationResult = M.ClinicalNoteGenerationResult,
    },
}

M.MedicalScribePostStreamAnalyticsSettings = {
    type = "structure",
    members = {
        ClinicalNoteGenerationSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ClinicalNoteGenerationSettings }),
    },
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

M.MedicalScribeStreamDetails = {
    type = "structure",
    members = {
        SessionId = {
            type = "string",
        },
        StreamCreatedAt = {
            type = "timestamp",
        },
        StreamEndedAt = {
            type = "timestamp",
        },
        LanguageCode = {
            type = "string",
        },
        MediaSampleRateHertz = {
            type = "integer",
        },
        MediaEncoding = {
            type = "string",
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
        ResourceAccessRoleArn = {
            type = "string",
        },
        ChannelDefinitions = {
            type = "list",
            member = M.MedicalScribeChannelDefinition,
        },
        EncryptionSettings = M.MedicalScribeEncryptionSettings,
        StreamStatus = {
            type = "string",
        },
        PostStreamAnalyticsSettings = M.MedicalScribePostStreamAnalyticsSettings,
        PostStreamAnalyticsResult = M.MedicalScribePostStreamAnalyticsResult,
        MedicalScribeContextProvided = {
            type = "boolean",
        },
    },
}

M.GetMedicalScribeStreamOutput = {
    type = "structure",
    members = {
        MedicalScribeStreamDetails = M.MedicalScribeStreamDetails,
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

M.LanguageWithScore = {
    type = "structure",
    members = {
        LanguageCode = {
            type = "string",
        },
        Score = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.MediaEncoding = {
    PCM = "pcm",
    OGG_OPUS = "ogg-opus",
    FLAC = "flac",
}

M.MedicalEntity = {
    type = "structure",
    members = {
        StartTime = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        EndTime = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Category = {
            type = "string",
        },
        Content = {
            type = "string",
        },
        Confidence = {
            type = "double",
        },
    },
}

M.MedicalItem = {
    type = "structure",
    members = {
        StartTime = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        EndTime = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Type = {
            type = "string",
        },
        Content = {
            type = "string",
        },
        Confidence = {
            type = "double",
        },
        Speaker = {
            type = "string",
        },
    },
}

M.MedicalAlternative = {
    type = "structure",
    members = {
        Transcript = {
            type = "string",
        },
        Items = {
            type = "list",
            member = M.MedicalItem,
        },
        Entities = {
            type = "list",
            member = M.MedicalEntity,
        },
    },
}

M.MedicalContentIdentificationType = {
    PHI = "PHI",
}

M.MedicalResult = {
    type = "structure",
    members = {
        ResultId = {
            type = "string",
        },
        StartTime = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        EndTime = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        IsPartial = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Alternatives = {
            type = "list",
            member = M.MedicalAlternative,
        },
        ChannelId = {
            type = "string",
        },
    },
}

M.MedicalScribeAudioEvent = {
    type = "structure",
    members = {
        AudioChunk = {
            type = "blob",
            traits = {
                required = true,
            },
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

M.MedicalScribeConfigurationEvent = {
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
        ResourceAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelDefinitions = {
            type = "list",
            member = M.MedicalScribeChannelDefinition,
        },
        EncryptionSettings = M.MedicalScribeEncryptionSettings,
        PostStreamAnalyticsSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MedicalScribePostStreamAnalyticsSettings }),
        MedicalScribeContext = M.MedicalScribeContext,
    },
}

M.MedicalScribeSessionControlEventType = {
    END_OF_SESSION = "END_OF_SESSION",
}

M.MedicalScribeSessionControlEvent = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MedicalScribeInputStream = {
    type = "union",
    members = {
        AudioEvent = M.MedicalScribeAudioEvent,
        SessionControlEvent = M.MedicalScribeSessionControlEvent,
        ConfigurationEvent = M.MedicalScribeConfigurationEvent,
    },
}

M.MedicalScribeTranscriptItemType = {
    PRONUNCIATION = "pronunciation",
    PUNCTUATION = "punctuation",
}

M.MedicalScribeTranscriptItem = {
    type = "structure",
    members = {
        BeginAudioTime = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        EndAudioTime = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Type = {
            type = "string",
        },
        Confidence = {
            type = "double",
        },
        Content = {
            type = "string",
        },
        VocabularyFilterMatch = {
            type = "boolean",
        },
    },
}

M.MedicalScribeTranscriptSegment = {
    type = "structure",
    members = {
        SegmentId = {
            type = "string",
        },
        BeginAudioTime = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        EndAudioTime = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Content = {
            type = "string",
        },
        Items = {
            type = "list",
            member = M.MedicalScribeTranscriptItem,
        },
        IsPartial = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ChannelId = {
            type = "string",
        },
    },
}

M.MedicalScribeTranscriptEvent = {
    type = "structure",
    members = {
        TranscriptSegment = M.MedicalScribeTranscriptSegment,
    },
}

M.MedicalScribeResultStream = {
    type = "union",
    members = {
        TranscriptEvent = M.MedicalScribeTranscriptEvent,
        BadRequestException = M.BadRequestException,
        LimitExceededException = M.LimitExceededException,
        InternalFailureException = M.InternalFailureException,
        ConflictException = M.ConflictException,
        ServiceUnavailableException = M.ServiceUnavailableException,
    },
}

M.MedicalTranscript = {
    type = "structure",
    members = {
        Results = {
            type = "list",
            member = M.MedicalResult,
        },
    },
}

M.MedicalTranscriptEvent = {
    type = "structure",
    members = {
        Transcript = M.MedicalTranscript,
    },
}

M.MedicalTranscriptResultStream = {
    type = "union",
    members = {
        TranscriptEvent = M.MedicalTranscriptEvent,
        BadRequestException = M.BadRequestException,
        LimitExceededException = M.LimitExceededException,
        InternalFailureException = M.InternalFailureException,
        ConflictException = M.ConflictException,
        ServiceUnavailableException = M.ServiceUnavailableException,
    },
}

M.PartialResultsStability = {
    HIGH = "high",
    MEDIUM = "medium",
    LOW = "low",
}

M.Result = {
    type = "structure",
    members = {
        ResultId = {
            type = "string",
        },
        StartTime = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        EndTime = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        IsPartial = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Alternatives = {
            type = "list",
            member = M.Alternative,
        },
        ChannelId = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        LanguageIdentification = {
            type = "list",
            member = M.LanguageWithScore,
        },
    },
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

M.StartCallAnalyticsStreamTranscriptionInput = {
    type = "structure",
    members = {
        LanguageCode = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-language-code",
            },
        },
        MediaSampleRateHertz = {
            type = "integer",
            traits = {
                http_header = "x-amzn-transcribe-sample-rate",
                required = true,
            },
        },
        MediaEncoding = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-media-encoding",
                required = true,
            },
        },
        VocabularyName = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-vocabulary-name",
            },
        },
        SessionId = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-session-id",
            },
        },
        AudioStream = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.AudioStream }),
        VocabularyFilterName = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-vocabulary-filter-name",
            },
        },
        VocabularyFilterMethod = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-vocabulary-filter-method",
            },
        },
        LanguageModelName = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-language-model-name",
            },
        },
        IdentifyLanguage = {
            type = "boolean",
            traits = {
                default = false,
                http_header = "x-amzn-transcribe-identify-language",
            },
        },
        LanguageOptions = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-language-options",
            },
        },
        PreferredLanguage = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-preferred-language",
            },
        },
        VocabularyNames = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-vocabulary-names",
            },
        },
        VocabularyFilterNames = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-vocabulary-filter-names",
            },
        },
        EnablePartialResultsStabilization = {
            type = "boolean",
            traits = {
                default = false,
                http_header = "x-amzn-transcribe-enable-partial-results-stabilization",
            },
        },
        PartialResultsStability = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-partial-results-stability",
            },
        },
        ContentIdentificationType = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-content-identification-type",
            },
        },
        ContentRedactionType = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-content-redaction-type",
            },
        },
        PiiEntityTypes = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-pii-entity-types",
            },
        },
    },
}

M.StartCallAnalyticsStreamTranscriptionOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
            traits = {
                http_header = "x-amzn-request-id",
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-language-code",
            },
        },
        MediaSampleRateHertz = {
            type = "integer",
            traits = {
                http_header = "x-amzn-transcribe-sample-rate",
            },
        },
        MediaEncoding = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-media-encoding",
            },
        },
        VocabularyName = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-vocabulary-name",
            },
        },
        SessionId = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-session-id",
            },
        },
        CallAnalyticsTranscriptResultStream = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.CallAnalyticsTranscriptResultStream }),
        VocabularyFilterName = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-vocabulary-filter-name",
            },
        },
        VocabularyFilterMethod = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-vocabulary-filter-method",
            },
        },
        LanguageModelName = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-language-model-name",
            },
        },
        IdentifyLanguage = {
            type = "boolean",
            traits = {
                default = false,
                http_header = "x-amzn-transcribe-identify-language",
            },
        },
        LanguageOptions = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-language-options",
            },
        },
        PreferredLanguage = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-preferred-language",
            },
        },
        VocabularyNames = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-vocabulary-names",
            },
        },
        VocabularyFilterNames = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-vocabulary-filter-names",
            },
        },
        EnablePartialResultsStabilization = {
            type = "boolean",
            traits = {
                default = false,
                http_header = "x-amzn-transcribe-enable-partial-results-stabilization",
            },
        },
        PartialResultsStability = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-partial-results-stability",
            },
        },
        ContentIdentificationType = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-content-identification-type",
            },
        },
        ContentRedactionType = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-content-redaction-type",
            },
        },
        PiiEntityTypes = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-pii-entity-types",
            },
        },
    },
}

M.StartMedicalScribeStreamInput = {
    type = "structure",
    members = {
        SessionId = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-session-id",
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-language-code",
                required = true,
            },
        },
        MediaSampleRateHertz = {
            type = "integer",
            traits = {
                http_header = "x-amzn-transcribe-sample-rate",
                required = true,
            },
        },
        MediaEncoding = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-media-encoding",
                required = true,
            },
        },
        InputStream = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.MedicalScribeInputStream }),
    },
}

M.StartMedicalScribeStreamOutput = {
    type = "structure",
    members = {
        SessionId = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-session-id",
            },
        },
        RequestId = {
            type = "string",
            traits = {
                http_header = "x-amzn-request-id",
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-language-code",
            },
        },
        MediaSampleRateHertz = {
            type = "integer",
            traits = {
                http_header = "x-amzn-transcribe-sample-rate",
            },
        },
        MediaEncoding = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-media-encoding",
            },
        },
        ResultStream = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.MedicalScribeResultStream }),
    },
}

M.Type = {
    CONVERSATION = "CONVERSATION",
    DICTATION = "DICTATION",
}

M.StartMedicalStreamTranscriptionInput = {
    type = "structure",
    members = {
        LanguageCode = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-language-code",
                required = true,
            },
        },
        MediaSampleRateHertz = {
            type = "integer",
            traits = {
                http_header = "x-amzn-transcribe-sample-rate",
                required = true,
            },
        },
        MediaEncoding = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-media-encoding",
                required = true,
            },
        },
        VocabularyName = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-vocabulary-name",
            },
        },
        Specialty = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-specialty",
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-type",
                required = true,
            },
        },
        ShowSpeakerLabel = {
            type = "boolean",
            traits = {
                default = false,
                http_header = "x-amzn-transcribe-show-speaker-label",
            },
        },
        SessionId = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-session-id",
            },
        },
        AudioStream = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.AudioStream }),
        EnableChannelIdentification = {
            type = "boolean",
            traits = {
                default = false,
                http_header = "x-amzn-transcribe-enable-channel-identification",
            },
        },
        NumberOfChannels = {
            type = "integer",
            traits = {
                http_header = "x-amzn-transcribe-number-of-channels",
            },
        },
        ContentIdentificationType = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-content-identification-type",
            },
        },
    },
}

M.StartMedicalStreamTranscriptionOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
            traits = {
                http_header = "x-amzn-request-id",
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-language-code",
            },
        },
        MediaSampleRateHertz = {
            type = "integer",
            traits = {
                http_header = "x-amzn-transcribe-sample-rate",
            },
        },
        MediaEncoding = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-media-encoding",
            },
        },
        VocabularyName = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-vocabulary-name",
            },
        },
        Specialty = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-specialty",
            },
        },
        Type = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-type",
            },
        },
        ShowSpeakerLabel = {
            type = "boolean",
            traits = {
                default = false,
                http_header = "x-amzn-transcribe-show-speaker-label",
            },
        },
        SessionId = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-session-id",
            },
        },
        TranscriptResultStream = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.MedicalTranscriptResultStream }),
        EnableChannelIdentification = {
            type = "boolean",
            traits = {
                default = false,
                http_header = "x-amzn-transcribe-enable-channel-identification",
            },
        },
        NumberOfChannels = {
            type = "integer",
            traits = {
                http_header = "x-amzn-transcribe-number-of-channels",
            },
        },
        ContentIdentificationType = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-content-identification-type",
            },
        },
    },
}

M.StartStreamTranscriptionInput = {
    type = "structure",
    members = {
        LanguageCode = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-language-code",
            },
        },
        MediaSampleRateHertz = {
            type = "integer",
            traits = {
                http_header = "x-amzn-transcribe-sample-rate",
                required = true,
            },
        },
        MediaEncoding = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-media-encoding",
                required = true,
            },
        },
        VocabularyName = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-vocabulary-name",
            },
        },
        SessionId = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-session-id",
            },
        },
        AudioStream = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.AudioStream }),
        VocabularyFilterName = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-vocabulary-filter-name",
            },
        },
        VocabularyFilterMethod = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-vocabulary-filter-method",
            },
        },
        ShowSpeakerLabel = {
            type = "boolean",
            traits = {
                default = false,
                http_header = "x-amzn-transcribe-show-speaker-label",
            },
        },
        EnableChannelIdentification = {
            type = "boolean",
            traits = {
                default = false,
                http_header = "x-amzn-transcribe-enable-channel-identification",
            },
        },
        NumberOfChannels = {
            type = "integer",
            traits = {
                http_header = "x-amzn-transcribe-number-of-channels",
            },
        },
        EnablePartialResultsStabilization = {
            type = "boolean",
            traits = {
                default = false,
                http_header = "x-amzn-transcribe-enable-partial-results-stabilization",
            },
        },
        PartialResultsStability = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-partial-results-stability",
            },
        },
        ContentIdentificationType = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-content-identification-type",
            },
        },
        ContentRedactionType = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-content-redaction-type",
            },
        },
        PiiEntityTypes = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-pii-entity-types",
            },
        },
        LanguageModelName = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-language-model-name",
            },
        },
        IdentifyLanguage = {
            type = "boolean",
            traits = {
                default = false,
                http_header = "x-amzn-transcribe-identify-language",
            },
        },
        LanguageOptions = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-language-options",
            },
        },
        PreferredLanguage = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-preferred-language",
            },
        },
        IdentifyMultipleLanguages = {
            type = "boolean",
            traits = {
                default = false,
                http_header = "x-amzn-transcribe-identify-multiple-languages",
            },
        },
        VocabularyNames = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-vocabulary-names",
            },
        },
        VocabularyFilterNames = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-vocabulary-filter-names",
            },
        },
        SessionResumeWindow = {
            type = "integer",
            traits = {
                http_header = "x-amzn-transcribe-session-resume-window",
            },
        },
    },
}

M.Transcript = {
    type = "structure",
    members = {
        Results = {
            type = "list",
            member = M.Result,
        },
    },
}

M.TranscriptEvent = {
    type = "structure",
    members = {
        Transcript = M.Transcript,
    },
}

M.TranscriptResultStream = {
    type = "union",
    members = {
        TranscriptEvent = M.TranscriptEvent,
        BadRequestException = M.BadRequestException,
        LimitExceededException = M.LimitExceededException,
        InternalFailureException = M.InternalFailureException,
        ConflictException = M.ConflictException,
        ServiceUnavailableException = M.ServiceUnavailableException,
    },
}

M.StartStreamTranscriptionOutput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
            traits = {
                http_header = "x-amzn-request-id",
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-language-code",
            },
        },
        MediaSampleRateHertz = {
            type = "integer",
            traits = {
                http_header = "x-amzn-transcribe-sample-rate",
            },
        },
        MediaEncoding = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-media-encoding",
            },
        },
        VocabularyName = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-vocabulary-name",
            },
        },
        SessionId = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-session-id",
            },
        },
        TranscriptResultStream = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.TranscriptResultStream }),
        VocabularyFilterName = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-vocabulary-filter-name",
            },
        },
        VocabularyFilterMethod = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-vocabulary-filter-method",
            },
        },
        ShowSpeakerLabel = {
            type = "boolean",
            traits = {
                default = false,
                http_header = "x-amzn-transcribe-show-speaker-label",
            },
        },
        EnableChannelIdentification = {
            type = "boolean",
            traits = {
                default = false,
                http_header = "x-amzn-transcribe-enable-channel-identification",
            },
        },
        NumberOfChannels = {
            type = "integer",
            traits = {
                http_header = "x-amzn-transcribe-number-of-channels",
            },
        },
        EnablePartialResultsStabilization = {
            type = "boolean",
            traits = {
                default = false,
                http_header = "x-amzn-transcribe-enable-partial-results-stabilization",
            },
        },
        PartialResultsStability = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-partial-results-stability",
            },
        },
        ContentIdentificationType = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-content-identification-type",
            },
        },
        ContentRedactionType = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-content-redaction-type",
            },
        },
        PiiEntityTypes = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-pii-entity-types",
            },
        },
        LanguageModelName = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-language-model-name",
            },
        },
        IdentifyLanguage = {
            type = "boolean",
            traits = {
                default = false,
                http_header = "x-amzn-transcribe-identify-language",
            },
        },
        LanguageOptions = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-language-options",
            },
        },
        PreferredLanguage = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-preferred-language",
            },
        },
        IdentifyMultipleLanguages = {
            type = "boolean",
            traits = {
                default = false,
                http_header = "x-amzn-transcribe-identify-multiple-languages",
            },
        },
        VocabularyNames = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-vocabulary-names",
            },
        },
        VocabularyFilterNames = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-vocabulary-filter-names",
            },
        },
        SessionResumeWindow = {
            type = "integer",
            traits = {
                http_header = "x-amzn-transcribe-session-resume-window",
            },
        },
    },
}

return M
