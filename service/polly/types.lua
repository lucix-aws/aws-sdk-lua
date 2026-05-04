local M = {}

M.AudioEvent = {
    type = "structure",
    id = "AudioEvent",
    members = {
        AudioChunk = {
            type = "blob",
        },
    },
}

M.CloseStreamEvent = {
    type = "structure",
    id = "CloseStreamEvent",
}

M.DeleteLexiconInput = {
    type = "structure",
    id = "DeleteLexiconInput",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteLexiconOutput = {
    type = "structure",
    id = "DeleteLexiconOutput",
}

M.LexiconNotFoundException = {
    type = "structure",
    id = "LexiconNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceFailureException = {
    type = "structure",
    id = "ServiceFailureException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Engine = {
    STANDARD = "standard",
    NEURAL = "neural",
    LONG_FORM = "long-form",
    GENERATIVE = "generative",
}

M.LanguageCode = {
    arb = "arb",
    cmn_CN = "cmn-CN",
    cy_GB = "cy-GB",
    da_DK = "da-DK",
    de_DE = "de-DE",
    en_AU = "en-AU",
    en_GB = "en-GB",
    en_GB_WLS = "en-GB-WLS",
    en_IN = "en-IN",
    en_US = "en-US",
    es_ES = "es-ES",
    es_MX = "es-MX",
    es_US = "es-US",
    fr_CA = "fr-CA",
    fr_FR = "fr-FR",
    is_IS = "is-IS",
    it_IT = "it-IT",
    ja_JP = "ja-JP",
    hi_IN = "hi-IN",
    ko_KR = "ko-KR",
    nb_NO = "nb-NO",
    nl_NL = "nl-NL",
    pl_PL = "pl-PL",
    pt_BR = "pt-BR",
    pt_PT = "pt-PT",
    ro_RO = "ro-RO",
    ru_RU = "ru-RU",
    sv_SE = "sv-SE",
    tr_TR = "tr-TR",
    en_NZ = "en-NZ",
    en_ZA = "en-ZA",
    ca_ES = "ca-ES",
    de_AT = "de-AT",
    yue_CN = "yue-CN",
    ar_AE = "ar-AE",
    fi_FI = "fi-FI",
    en_IE = "en-IE",
    nl_BE = "nl-BE",
    fr_BE = "fr-BE",
    cs_CZ = "cs-CZ",
    de_CH = "de-CH",
    en_SG = "en-SG",
}

M.DescribeVoicesInput = {
    type = "structure",
    id = "DescribeVoicesInput",
    members = {
        Engine = {
            type = "string",
            traits = {
                http_query = "Engine",
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                http_query = "LanguageCode",
            },
        },
        IncludeAdditionalLanguageCodes = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "IncludeAdditionalLanguageCodes",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.Gender = {
    Female = "Female",
    Male = "Male",
}

M.VoiceId = {
    Aditi = "Aditi",
    Amy = "Amy",
    Astrid = "Astrid",
    Bianca = "Bianca",
    Brian = "Brian",
    Camila = "Camila",
    Carla = "Carla",
    Carmen = "Carmen",
    Celine = "Celine",
    Chantal = "Chantal",
    Conchita = "Conchita",
    Cristiano = "Cristiano",
    Dora = "Dora",
    Emma = "Emma",
    Enrique = "Enrique",
    Ewa = "Ewa",
    Filiz = "Filiz",
    Gabrielle = "Gabrielle",
    Geraint = "Geraint",
    Giorgio = "Giorgio",
    Gwyneth = "Gwyneth",
    Hans = "Hans",
    Ines = "Ines",
    Ivy = "Ivy",
    Jacek = "Jacek",
    Jan = "Jan",
    Joanna = "Joanna",
    Joey = "Joey",
    Justin = "Justin",
    Karl = "Karl",
    Kendra = "Kendra",
    Kevin = "Kevin",
    Kimberly = "Kimberly",
    Lea = "Lea",
    Liv = "Liv",
    Lotte = "Lotte",
    Lucia = "Lucia",
    Lupe = "Lupe",
    Mads = "Mads",
    Maja = "Maja",
    Marlene = "Marlene",
    Mathieu = "Mathieu",
    Matthew = "Matthew",
    Maxim = "Maxim",
    Mia = "Mia",
    Miguel = "Miguel",
    Mizuki = "Mizuki",
    Naja = "Naja",
    Nicole = "Nicole",
    Olivia = "Olivia",
    Penelope = "Penelope",
    Raveena = "Raveena",
    Ricardo = "Ricardo",
    Ruben = "Ruben",
    Russell = "Russell",
    Salli = "Salli",
    Seoyeon = "Seoyeon",
    Takumi = "Takumi",
    Tatyana = "Tatyana",
    Vicki = "Vicki",
    Vitoria = "Vitoria",
    Zeina = "Zeina",
    Zhiyu = "Zhiyu",
    Aria = "Aria",
    Ayanda = "Ayanda",
    Arlet = "Arlet",
    Hannah = "Hannah",
    Arthur = "Arthur",
    Daniel = "Daniel",
    Liam = "Liam",
    Pedro = "Pedro",
    Kajal = "Kajal",
    Hiujin = "Hiujin",
    Laura = "Laura",
    Elin = "Elin",
    Ida = "Ida",
    Suvi = "Suvi",
    Ola = "Ola",
    Hala = "Hala",
    Andres = "Andres",
    Sergio = "Sergio",
    Remi = "Remi",
    Adriano = "Adriano",
    Thiago = "Thiago",
    Ruth = "Ruth",
    Stephen = "Stephen",
    Kazuha = "Kazuha",
    Tomoko = "Tomoko",
    Niamh = "Niamh",
    Sofie = "Sofie",
    Lisa = "Lisa",
    Isabelle = "Isabelle",
    Zayd = "Zayd",
    Danielle = "Danielle",
    Gregory = "Gregory",
    Burcu = "Burcu",
    Jitka = "Jitka",
    Sabrina = "Sabrina",
    Jasmine = "Jasmine",
    Jihye = "Jihye",
    Ambre = "Ambre",
    Beatrice = "Beatrice",
    Florian = "Florian",
    Lennart = "Lennart",
    Lorenzo = "Lorenzo",
    Tiffany = "Tiffany",
}

M.Voice = {
    type = "structure",
    id = "Voice",
    members = {
        Gender = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        LanguageName = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        AdditionalLanguageCodes = {
            type = "list",
            member = { type = "string" },
        },
        SupportedEngines = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeVoicesOutput = {
    type = "structure",
    id = "DescribeVoicesOutput",
    members = {
        Voices = {
            type = "list",
            member = M.Voice,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    id = "InvalidNextTokenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EngineNotSupportedException = {
    type = "structure",
    id = "EngineNotSupportedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.FlushStreamConfiguration = {
    type = "structure",
    id = "FlushStreamConfiguration",
    members = {
        Force = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.GetLexiconInput = {
    type = "structure",
    id = "GetLexiconInput",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Lexicon = {
    type = "structure",
    id = "Lexicon",
    members = {
        Content = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.LexiconAttributes = {
    type = "structure",
    id = "LexiconAttributes",
    members = {
        Alphabet = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        LastModified = {
            type = "timestamp",
        },
        LexiconArn = {
            type = "string",
        },
        LexemesCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Size = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetLexiconOutput = {
    type = "structure",
    id = "GetLexiconOutput",
    members = {
        Lexicon = M.Lexicon,
        LexiconAttributes = M.LexiconAttributes,
    },
}

M.GetSpeechSynthesisTaskInput = {
    type = "structure",
    id = "GetSpeechSynthesisTaskInput",
    members = {
        TaskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.OutputFormat = {
    JSON = "json",
    MP3 = "mp3",
    OGG_OPUS = "ogg_opus",
    OGG_VORBIS = "ogg_vorbis",
    PCM = "pcm",
    MULAW = "mulaw",
    ALAW = "alaw",
}

M.SpeechMarkType = {
    SENTENCE = "sentence",
    SSML = "ssml",
    VISEME = "viseme",
    WORD = "word",
}

M.TaskStatus = {
    SCHEDULED = "scheduled",
    IN_PROGRESS = "inProgress",
    COMPLETED = "completed",
    FAILED = "failed",
}

M.TextType = {
    SSML = "ssml",
    TEXT = "text",
}

M.SynthesisTask = {
    type = "structure",
    id = "SynthesisTask",
    members = {
        Engine = {
            type = "string",
        },
        TaskId = {
            type = "string",
        },
        TaskStatus = {
            type = "string",
        },
        TaskStatusReason = {
            type = "string",
        },
        OutputUri = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        RequestCharacters = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        SnsTopicArn = {
            type = "string",
        },
        LexiconNames = {
            type = "list",
            member = { type = "string" },
        },
        OutputFormat = {
            type = "string",
        },
        SampleRate = {
            type = "string",
        },
        SpeechMarkTypes = {
            type = "list",
            member = { type = "string" },
        },
        TextType = {
            type = "string",
        },
        VoiceId = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
    },
}

M.GetSpeechSynthesisTaskOutput = {
    type = "structure",
    id = "GetSpeechSynthesisTaskOutput",
    members = {
        SynthesisTask = M.SynthesisTask,
    },
}

M.InvalidTaskIdException = {
    type = "structure",
    id = "InvalidTaskIdException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SynthesisTaskNotFoundException = {
    type = "structure",
    id = "SynthesisTaskNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidLexiconException = {
    type = "structure",
    id = "InvalidLexiconException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidS3BucketException = {
    type = "structure",
    id = "InvalidS3BucketException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidS3KeyException = {
    type = "structure",
    id = "InvalidS3KeyException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSampleRateException = {
    type = "structure",
    id = "InvalidSampleRateException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSnsTopicArnException = {
    type = "structure",
    id = "InvalidSnsTopicArnException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSsmlException = {
    type = "structure",
    id = "InvalidSsmlException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LanguageNotSupportedException = {
    type = "structure",
    id = "LanguageNotSupportedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LexiconDescription = {
    type = "structure",
    id = "LexiconDescription",
    members = {
        Name = {
            type = "string",
        },
        Attributes = M.LexiconAttributes,
    },
}

M.LexiconSizeExceededException = {
    type = "structure",
    id = "LexiconSizeExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListLexiconsInput = {
    type = "structure",
    id = "ListLexiconsInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListLexiconsOutput = {
    type = "structure",
    id = "ListLexiconsOutput",
    members = {
        Lexicons = {
            type = "list",
            member = M.LexiconDescription,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSpeechSynthesisTasksInput = {
    type = "structure",
    id = "ListSpeechSynthesisTasksInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        Status = {
            type = "string",
            traits = {
                http_query = "Status",
            },
        },
    },
}

M.ListSpeechSynthesisTasksOutput = {
    type = "structure",
    id = "ListSpeechSynthesisTasksOutput",
    members = {
        NextToken = {
            type = "string",
        },
        SynthesisTasks = {
            type = "list",
            member = M.SynthesisTask,
        },
    },
}

M.MarksNotSupportedForFormatException = {
    type = "structure",
    id = "MarksNotSupportedForFormatException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaxLexemeLengthExceededException = {
    type = "structure",
    id = "MaxLexemeLengthExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaxLexiconsNumberExceededException = {
    type = "structure",
    id = "MaxLexiconsNumberExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutLexiconInput = {
    type = "structure",
    id = "PutLexiconInput",
    members = {
        Name = {
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

M.PutLexiconOutput = {
    type = "structure",
    id = "PutLexiconOutput",
}

M.UnsupportedPlsAlphabetException = {
    type = "structure",
    id = "UnsupportedPlsAlphabetException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedPlsLanguageException = {
    type = "structure",
    id = "UnsupportedPlsLanguageException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.QuotaCode = {
    INPUT_STREAM_INBOUND_EVENT_TIMEOUT = "input-stream-inbound-event-timeout",
    INPUT_STREAM_TIMEOUT = "input-stream-timeout",
}

M.ServiceCode = {
    POLLY = "polly",
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TextEvent = {
    type = "structure",
    id = "TextEvent",
    members = {
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TextType = {
            type = "string",
        },
        FlushStreamConfiguration = M.FlushStreamConfiguration,
    },
}

M.StartSpeechSynthesisStreamActionStream = {
    type = "union",
    id = "StartSpeechSynthesisStreamActionStream",
    members = {
        TextEvent = M.TextEvent,
        CloseStreamEvent = M.CloseStreamEvent,
    },
}

M.StartSpeechSynthesisStreamInput = {
    type = "structure",
    id = "StartSpeechSynthesisStreamInput",
    members = {
        Engine = {
            type = "string",
            traits = {
                http_header = "x-amzn-Engine",
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                http_header = "x-amzn-LanguageCode",
            },
        },
        LexiconNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_header = "x-amzn-LexiconNames",
            },
        },
        OutputFormat = {
            type = "string",
            traits = {
                http_header = "x-amzn-OutputFormat",
                required = true,
            },
        },
        SampleRate = {
            type = "string",
            traits = {
                http_header = "x-amzn-SampleRate",
            },
        },
        VoiceId = {
            type = "string",
            traits = {
                http_header = "x-amzn-VoiceId",
                required = true,
            },
        },
        ActionStream = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.StartSpeechSynthesisStreamActionStream }),
    },
}

M.StreamClosedEvent = {
    type = "structure",
    id = "StreamClosedEvent",
    members = {
        RequestCharacters = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ThrottlingReason = {
    type = "structure",
    id = "ThrottlingReason",
    members = {
        reason = {
            type = "string",
        },
        resource = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        throttlingReasons = {
            type = "list",
            member = M.ThrottlingReason,
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    UNSUPPORTED_OPERATION = "unsupportedOperation",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
    INVALID_INBOUND_EVENT = "invalidInboundEvent",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fields = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.StartSpeechSynthesisStreamEventStream = {
    type = "union",
    id = "StartSpeechSynthesisStreamEventStream",
    members = {
        AudioEvent = M.AudioEvent,
        StreamClosedEvent = M.StreamClosedEvent,
        ValidationException = M.ValidationException,
        ServiceQuotaExceededException = M.ServiceQuotaExceededException,
        ServiceFailureException = M.ServiceFailureException,
        ThrottlingException = M.ThrottlingException,
    },
}

M.StartSpeechSynthesisStreamOutput = {
    type = "structure",
    id = "StartSpeechSynthesisStreamOutput",
    members = {
        EventStream = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.StartSpeechSynthesisStreamEventStream }),
    },
}

M.SsmlMarksNotSupportedForTextTypeException = {
    type = "structure",
    id = "SsmlMarksNotSupportedForTextTypeException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StartSpeechSynthesisTaskInput = {
    type = "structure",
    id = "StartSpeechSynthesisTaskInput",
    members = {
        Engine = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        LexiconNames = {
            type = "list",
            member = { type = "string" },
        },
        OutputFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputS3BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputS3KeyPrefix = {
            type = "string",
        },
        SampleRate = {
            type = "string",
        },
        SnsTopicArn = {
            type = "string",
        },
        SpeechMarkTypes = {
            type = "list",
            member = { type = "string" },
        },
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TextType = {
            type = "string",
        },
        VoiceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartSpeechSynthesisTaskOutput = {
    type = "structure",
    id = "StartSpeechSynthesisTaskOutput",
    members = {
        SynthesisTask = M.SynthesisTask,
    },
}

M.TextLengthExceededException = {
    type = "structure",
    id = "TextLengthExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SynthesizeSpeechInput = {
    type = "structure",
    id = "SynthesizeSpeechInput",
    members = {
        Engine = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        LexiconNames = {
            type = "list",
            member = { type = "string" },
        },
        OutputFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SampleRate = {
            type = "string",
        },
        SpeechMarkTypes = {
            type = "list",
            member = { type = "string" },
        },
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TextType = {
            type = "string",
        },
        VoiceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SynthesizeSpeechOutput = {
    type = "structure",
    id = "SynthesizeSpeechOutput",
    members = {
        AudioStream = {
            type = "blob",
            traits = {
                default = "",
                http_payload = true,
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        RequestCharacters = {
            type = "integer",
            traits = {
                default = 0,
                http_header = "x-amzn-RequestCharacters",
            },
        },
    },
}

return M
