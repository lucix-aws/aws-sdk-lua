local M = {}

M.Entity = {
    type = "structure",
    members = {
        StartTime = {
            type = "number",
        },
        EndTime = {
            type = "number",
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
            type = "number",
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
            type = "number",
        },
        EndTime = {
            type = "number",
        },
        Type = {
            type = "string",
        },
        Content = {
            type = "string",
        },
        VocabularyFilterMatch = {
            type = "boolean",
        },
        Speaker = {
            type = "string",
        },
        Confidence = {
            type = "number",
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
            member_type = "structure",
        },
        Entities = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
        },
        PostCallAnalyticsSettings = {
            type = "structure",
        },
    },
}

M.AudioStream = {
    type = "union",
    members = {
        AudioEvent = {
            type = "structure",
        },
        ConfigurationEvent = {
            type = "structure",
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

M.CallAnalyticsEntity = {
    type = "structure",
    members = {
        BeginOffsetMillis = {
            type = "number",
        },
        EndOffsetMillis = {
            type = "number",
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
            type = "number",
        },
    },
}

M.CallAnalyticsItem = {
    type = "structure",
    members = {
        BeginOffsetMillis = {
            type = "number",
        },
        EndOffsetMillis = {
            type = "number",
        },
        Type = {
            type = "string",
        },
        Content = {
            type = "string",
        },
        Confidence = {
            type = "number",
        },
        VocabularyFilterMatch = {
            type = "boolean",
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
            type = "number",
        },
    },
}

M.TimestampRange = {
    type = "structure",
    members = {
        BeginOffsetMillis = {
            type = "number",
        },
        EndOffsetMillis = {
            type = "number",
        },
    },
}

M.PointsOfInterest = {
    type = "structure",
    members = {
        TimestampRanges = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CategoryEvent = {
    type = "structure",
    members = {
        MatchedCategories = {
            type = "list",
            member_type = "string",
        },
        MatchedDetails = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
            type = "number",
        },
        End = {
            type = "number",
        },
    },
}

M.IssueDetected = {
    type = "structure",
    members = {
        CharacterOffsets = {
            type = "structure",
        },
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
        },
        ParticipantRole = {
            type = "string",
        },
        BeginOffsetMillis = {
            type = "number",
        },
        EndOffsetMillis = {
            type = "number",
        },
        Transcript = {
            type = "string",
        },
        Items = {
            type = "list",
            member_type = "structure",
        },
        Entities = {
            type = "list",
            member_type = "structure",
        },
        Sentiment = {
            type = "string",
        },
        IssuesDetected = {
            type = "list",
            member_type = "structure",
        },
        LanguageCode = {
            type = "string",
        },
        LanguageIdentification = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CallAnalyticsTranscriptResultStream = {
    type = "union",
    members = {
        UtteranceEvent = {
            type = "structure",
        },
        CategoryEvent = {
            type = "structure",
        },
        BadRequestException = {
            type = "structure",
        },
        LimitExceededException = {
            type = "structure",
        },
        InternalFailureException = {
            type = "structure",
        },
        ConflictException = {
            type = "structure",
        },
        ServiceUnavailableException = {
            type = "structure",
        },
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
            type = "number",
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
    },
}

M.MedicalScribeEncryptionSettings = {
    type = "structure",
    members = {
        KmsEncryptionContext = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        ClinicalNoteGenerationResult = {
            type = "structure",
        },
    },
}

M.MedicalScribePostStreamAnalyticsSettings = {
    type = "structure",
    members = {
        ClinicalNoteGenerationSettings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
            member_type = "structure",
        },
        EncryptionSettings = {
            type = "structure",
        },
        StreamStatus = {
            type = "string",
        },
        PostStreamAnalyticsSettings = {
            type = "structure",
        },
        PostStreamAnalyticsResult = {
            type = "structure",
        },
        MedicalScribeContextProvided = {
            type = "boolean",
        },
    },
}

M.GetMedicalScribeStreamOutput = {
    type = "structure",
    members = {
        MedicalScribeStreamDetails = {
            type = "structure",
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
            type = "number",
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
            type = "number",
        },
        EndTime = {
            type = "number",
        },
        Category = {
            type = "string",
        },
        Content = {
            type = "string",
        },
        Confidence = {
            type = "number",
        },
    },
}

M.MedicalItem = {
    type = "structure",
    members = {
        StartTime = {
            type = "number",
        },
        EndTime = {
            type = "number",
        },
        Type = {
            type = "string",
        },
        Content = {
            type = "string",
        },
        Confidence = {
            type = "number",
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
            member_type = "structure",
        },
        Entities = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        EndTime = {
            type = "number",
        },
        IsPartial = {
            type = "boolean",
        },
        Alternatives = {
            type = "list",
            member_type = "structure",
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
        PatientContext = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        EncryptionSettings = {
            type = "structure",
        },
        PostStreamAnalyticsSettings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        MedicalScribeContext = {
            type = "structure",
        },
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
        AudioEvent = {
            type = "structure",
        },
        SessionControlEvent = {
            type = "structure",
        },
        ConfigurationEvent = {
            type = "structure",
        },
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
            type = "number",
        },
        EndAudioTime = {
            type = "number",
        },
        Type = {
            type = "string",
        },
        Confidence = {
            type = "number",
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
            type = "number",
        },
        EndAudioTime = {
            type = "number",
        },
        Content = {
            type = "string",
        },
        Items = {
            type = "list",
            member_type = "structure",
        },
        IsPartial = {
            type = "boolean",
        },
        ChannelId = {
            type = "string",
        },
    },
}

M.MedicalScribeTranscriptEvent = {
    type = "structure",
    members = {
        TranscriptSegment = {
            type = "structure",
        },
    },
}

M.MedicalScribeResultStream = {
    type = "union",
    members = {
        TranscriptEvent = {
            type = "structure",
        },
        BadRequestException = {
            type = "structure",
        },
        LimitExceededException = {
            type = "structure",
        },
        InternalFailureException = {
            type = "structure",
        },
        ConflictException = {
            type = "structure",
        },
        ServiceUnavailableException = {
            type = "structure",
        },
    },
}

M.MedicalTranscript = {
    type = "structure",
    members = {
        Results = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.MedicalTranscriptEvent = {
    type = "structure",
    members = {
        Transcript = {
            type = "structure",
        },
    },
}

M.MedicalTranscriptResultStream = {
    type = "union",
    members = {
        TranscriptEvent = {
            type = "structure",
        },
        BadRequestException = {
            type = "structure",
        },
        LimitExceededException = {
            type = "structure",
        },
        InternalFailureException = {
            type = "structure",
        },
        ConflictException = {
            type = "structure",
        },
        ServiceUnavailableException = {
            type = "structure",
        },
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
            type = "number",
        },
        EndTime = {
            type = "number",
        },
        IsPartial = {
            type = "boolean",
        },
        Alternatives = {
            type = "list",
            member_type = "structure",
        },
        ChannelId = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        LanguageIdentification = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        AudioStream = {
            type = "union",
            traits = {
                http_payload = true,
                required = true,
            },
        },
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
            type = "number",
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
        CallAnalyticsTranscriptResultStream = {
            type = "union",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
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
        InputStream = {
            type = "union",
            traits = {
                http_payload = true,
                required = true,
            },
        },
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
            type = "number",
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
        ResultStream = {
            type = "union",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
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
                http_header = "x-amzn-transcribe-show-speaker-label",
            },
        },
        SessionId = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-session-id",
            },
        },
        AudioStream = {
            type = "union",
            traits = {
                http_payload = true,
                required = true,
            },
        },
        EnableChannelIdentification = {
            type = "boolean",
            traits = {
                http_header = "x-amzn-transcribe-enable-channel-identification",
            },
        },
        NumberOfChannels = {
            type = "number",
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
            type = "number",
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
                http_header = "x-amzn-transcribe-show-speaker-label",
            },
        },
        SessionId = {
            type = "string",
            traits = {
                http_header = "x-amzn-transcribe-session-id",
            },
        },
        TranscriptResultStream = {
            type = "union",
            traits = {
                http_payload = true,
            },
        },
        EnableChannelIdentification = {
            type = "boolean",
            traits = {
                http_header = "x-amzn-transcribe-enable-channel-identification",
            },
        },
        NumberOfChannels = {
            type = "number",
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
            type = "number",
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
        AudioStream = {
            type = "union",
            traits = {
                http_payload = true,
                required = true,
            },
        },
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
                http_header = "x-amzn-transcribe-show-speaker-label",
            },
        },
        EnableChannelIdentification = {
            type = "boolean",
            traits = {
                http_header = "x-amzn-transcribe-enable-channel-identification",
            },
        },
        NumberOfChannels = {
            type = "number",
            traits = {
                http_header = "x-amzn-transcribe-number-of-channels",
            },
        },
        EnablePartialResultsStabilization = {
            type = "boolean",
            traits = {
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
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.TranscriptEvent = {
    type = "structure",
    members = {
        Transcript = {
            type = "structure",
        },
    },
}

M.TranscriptResultStream = {
    type = "union",
    members = {
        TranscriptEvent = {
            type = "structure",
        },
        BadRequestException = {
            type = "structure",
        },
        LimitExceededException = {
            type = "structure",
        },
        InternalFailureException = {
            type = "structure",
        },
        ConflictException = {
            type = "structure",
        },
        ServiceUnavailableException = {
            type = "structure",
        },
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
            type = "number",
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
        TranscriptResultStream = {
            type = "union",
            traits = {
                http_payload = true,
            },
        },
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
                http_header = "x-amzn-transcribe-show-speaker-label",
            },
        },
        EnableChannelIdentification = {
            type = "boolean",
            traits = {
                http_header = "x-amzn-transcribe-enable-channel-identification",
            },
        },
        NumberOfChannels = {
            type = "number",
            traits = {
                http_header = "x-amzn-transcribe-number-of-channels",
            },
        },
        EnablePartialResultsStabilization = {
            type = "boolean",
            traits = {
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
            type = "number",
            traits = {
                http_header = "x-amzn-transcribe-session-resume-window",
            },
        },
    },
}

return M
