local M = {}

M.AugmentedManifestsDocumentTypeFormat = {
    PLAIN_TEXT_DOCUMENT = "PLAIN_TEXT_DOCUMENT",
    SEMI_STRUCTURED_DOCUMENT = "SEMI_STRUCTURED_DOCUMENT",
}

M.Split = {
    TRAIN = "TRAIN",
    TEST = "TEST",
}

M.AugmentedManifestsListItem = {
    type = "structure",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Split = {
            type = "string",
        },
        AttributeNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        AnnotationDataS3Uri = {
            type = "string",
        },
        SourceDocumentsS3Uri = {
            type = "string",
        },
        DocumentType = {
            type = "string",
        },
    },
}

M.BatchDetectDominantLanguageInput = {
    type = "structure",
    members = {
        TextList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchItemError = {
    type = "structure",
    members = {
        Index = {
            type = "integer",
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.DominantLanguage = {
    type = "structure",
    members = {
        LanguageCode = {
            type = "string",
        },
        Score = {
            type = "float",
        },
    },
}

M.BatchDetectDominantLanguageItemResult = {
    type = "structure",
    members = {
        Index = {
            type = "integer",
        },
        Languages = {
            type = "list",
            member = M.DominantLanguage,
        },
    },
}

M.BatchDetectDominantLanguageOutput = {
    type = "structure",
    members = {
        ResultList = {
            type = "list",
            member = M.BatchDetectDominantLanguageItemResult,
            traits = {
                required = true,
            },
        },
        ErrorList = {
            type = "list",
            member = M.BatchItemError,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchSizeLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidRequestDetailReason = {
    DOCUMENT_SIZE_EXCEEDED = "DOCUMENT_SIZE_EXCEEDED",
    UNSUPPORTED_DOC_TYPE = "UNSUPPORTED_DOC_TYPE",
    PAGE_LIMIT_EXCEEDED = "PAGE_LIMIT_EXCEEDED",
    TEXTRACT_ACCESS_DENIED = "TEXTRACT_ACCESS_DENIED",
}

M.InvalidRequestDetail = {
    type = "structure",
    members = {
        Reason = {
            type = "string",
        },
    },
}

M.InvalidRequestReason = {
    INVALID_DOCUMENT = "INVALID_DOCUMENT",
}

M.InvalidRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
        Detail = M.InvalidRequestDetail,
    },
}

M.TextSizeLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LanguageCode = {
    EN = "en",
    ES = "es",
    FR = "fr",
    DE = "de",
    IT = "it",
    PT = "pt",
    AR = "ar",
    HI = "hi",
    JA = "ja",
    KO = "ko",
    ZH = "zh",
    ZH_TW = "zh-TW",
}

M.BatchDetectEntitiesInput = {
    type = "structure",
    members = {
        TextList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ChildBlock = {
    type = "structure",
    members = {
        ChildBlockId = {
            type = "string",
        },
        BeginOffset = {
            type = "integer",
        },
        EndOffset = {
            type = "integer",
        },
    },
}

M.BlockReference = {
    type = "structure",
    members = {
        BlockId = {
            type = "string",
        },
        BeginOffset = {
            type = "integer",
        },
        EndOffset = {
            type = "integer",
        },
        ChildBlocks = {
            type = "list",
            member = M.ChildBlock,
        },
    },
}

M.EntityType = {
    PERSON = "PERSON",
    LOCATION = "LOCATION",
    ORGANIZATION = "ORGANIZATION",
    COMMERCIAL_ITEM = "COMMERCIAL_ITEM",
    EVENT = "EVENT",
    DATE = "DATE",
    QUANTITY = "QUANTITY",
    TITLE = "TITLE",
    OTHER = "OTHER",
}

M.Entity = {
    type = "structure",
    members = {
        Score = {
            type = "float",
        },
        Type = {
            type = "string",
        },
        Text = {
            type = "string",
        },
        BeginOffset = {
            type = "integer",
        },
        EndOffset = {
            type = "integer",
        },
        BlockReferences = {
            type = "list",
            member = M.BlockReference,
        },
    },
}

M.BatchDetectEntitiesItemResult = {
    type = "structure",
    members = {
        Index = {
            type = "integer",
        },
        Entities = {
            type = "list",
            member = M.Entity,
        },
    },
}

M.BatchDetectEntitiesOutput = {
    type = "structure",
    members = {
        ResultList = {
            type = "list",
            member = M.BatchDetectEntitiesItemResult,
            traits = {
                required = true,
            },
        },
        ErrorList = {
            type = "list",
            member = M.BatchItemError,
            traits = {
                required = true,
            },
        },
    },
}

M.UnsupportedLanguageException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.BatchDetectKeyPhrasesInput = {
    type = "structure",
    members = {
        TextList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KeyPhrase = {
    type = "structure",
    members = {
        Score = {
            type = "float",
        },
        Text = {
            type = "string",
        },
        BeginOffset = {
            type = "integer",
        },
        EndOffset = {
            type = "integer",
        },
    },
}

M.BatchDetectKeyPhrasesItemResult = {
    type = "structure",
    members = {
        Index = {
            type = "integer",
        },
        KeyPhrases = {
            type = "list",
            member = M.KeyPhrase,
        },
    },
}

M.BatchDetectKeyPhrasesOutput = {
    type = "structure",
    members = {
        ResultList = {
            type = "list",
            member = M.BatchDetectKeyPhrasesItemResult,
            traits = {
                required = true,
            },
        },
        ErrorList = {
            type = "list",
            member = M.BatchItemError,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDetectSentimentInput = {
    type = "structure",
    members = {
        TextList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SentimentType = {
    POSITIVE = "POSITIVE",
    NEGATIVE = "NEGATIVE",
    NEUTRAL = "NEUTRAL",
    MIXED = "MIXED",
}

M.SentimentScore = {
    type = "structure",
    members = {
        Positive = {
            type = "float",
        },
        Negative = {
            type = "float",
        },
        Neutral = {
            type = "float",
        },
        Mixed = {
            type = "float",
        },
    },
}

M.BatchDetectSentimentItemResult = {
    type = "structure",
    members = {
        Index = {
            type = "integer",
        },
        Sentiment = {
            type = "string",
        },
        SentimentScore = M.SentimentScore,
    },
}

M.BatchDetectSentimentOutput = {
    type = "structure",
    members = {
        ResultList = {
            type = "list",
            member = M.BatchDetectSentimentItemResult,
            traits = {
                required = true,
            },
        },
        ErrorList = {
            type = "list",
            member = M.BatchItemError,
            traits = {
                required = true,
            },
        },
    },
}

M.SyntaxLanguageCode = {
    EN = "en",
    ES = "es",
    FR = "fr",
    DE = "de",
    IT = "it",
    PT = "pt",
}

M.BatchDetectSyntaxInput = {
    type = "structure",
    members = {
        TextList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PartOfSpeechTagType = {
    ADJ = "ADJ",
    ADP = "ADP",
    ADV = "ADV",
    AUX = "AUX",
    CONJ = "CONJ",
    CCONJ = "CCONJ",
    DET = "DET",
    INTJ = "INTJ",
    NOUN = "NOUN",
    NUM = "NUM",
    O = "O",
    PART = "PART",
    PRON = "PRON",
    PROPN = "PROPN",
    PUNCT = "PUNCT",
    SCONJ = "SCONJ",
    SYM = "SYM",
    VERB = "VERB",
}

M.PartOfSpeechTag = {
    type = "structure",
    members = {
        Tag = {
            type = "string",
        },
        Score = {
            type = "float",
        },
    },
}

M.SyntaxToken = {
    type = "structure",
    members = {
        TokenId = {
            type = "integer",
        },
        Text = {
            type = "string",
        },
        BeginOffset = {
            type = "integer",
        },
        EndOffset = {
            type = "integer",
        },
        PartOfSpeech = M.PartOfSpeechTag,
    },
}

M.BatchDetectSyntaxItemResult = {
    type = "structure",
    members = {
        Index = {
            type = "integer",
        },
        SyntaxTokens = {
            type = "list",
            member = M.SyntaxToken,
        },
    },
}

M.BatchDetectSyntaxOutput = {
    type = "structure",
    members = {
        ResultList = {
            type = "list",
            member = M.BatchDetectSyntaxItemResult,
            traits = {
                required = true,
            },
        },
        ErrorList = {
            type = "list",
            member = M.BatchItemError,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDetectTargetedSentimentInput = {
    type = "structure",
    members = {
        TextList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MentionSentiment = {
    type = "structure",
    members = {
        Sentiment = {
            type = "string",
        },
        SentimentScore = M.SentimentScore,
    },
}

M.TargetedSentimentEntityType = {
    PERSON = "PERSON",
    LOCATION = "LOCATION",
    ORGANIZATION = "ORGANIZATION",
    FACILITY = "FACILITY",
    BRAND = "BRAND",
    COMMERCIAL_ITEM = "COMMERCIAL_ITEM",
    MOVIE = "MOVIE",
    MUSIC = "MUSIC",
    BOOK = "BOOK",
    SOFTWARE = "SOFTWARE",
    GAME = "GAME",
    PERSONAL_TITLE = "PERSONAL_TITLE",
    EVENT = "EVENT",
    DATE = "DATE",
    QUANTITY = "QUANTITY",
    ATTRIBUTE = "ATTRIBUTE",
    OTHER = "OTHER",
}

M.TargetedSentimentMention = {
    type = "structure",
    members = {
        Score = {
            type = "float",
        },
        GroupScore = {
            type = "float",
        },
        Text = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        MentionSentiment = M.MentionSentiment,
        BeginOffset = {
            type = "integer",
        },
        EndOffset = {
            type = "integer",
        },
    },
}

M.TargetedSentimentEntity = {
    type = "structure",
    members = {
        DescriptiveMentionIndex = {
            type = "list",
            member = { type = "integer" },
        },
        Mentions = {
            type = "list",
            member = M.TargetedSentimentMention,
        },
    },
}

M.BatchDetectTargetedSentimentItemResult = {
    type = "structure",
    members = {
        Index = {
            type = "integer",
        },
        Entities = {
            type = "list",
            member = M.TargetedSentimentEntity,
        },
    },
}

M.BatchDetectTargetedSentimentOutput = {
    type = "structure",
    members = {
        ResultList = {
            type = "list",
            member = M.BatchDetectTargetedSentimentItemResult,
            traits = {
                required = true,
            },
        },
        ErrorList = {
            type = "list",
            member = M.BatchItemError,
            traits = {
                required = true,
            },
        },
    },
}

M.BlockType = {
    LINE = "LINE",
    WORD = "WORD",
}

M.BoundingBox = {
    type = "structure",
    members = {
        Height = {
            type = "float",
        },
        Left = {
            type = "float",
        },
        Top = {
            type = "float",
        },
        Width = {
            type = "float",
        },
    },
}

M.Point = {
    type = "structure",
    members = {
        X = {
            type = "float",
        },
        Y = {
            type = "float",
        },
    },
}

M.Geometry = {
    type = "structure",
    members = {
        BoundingBox = M.BoundingBox,
        Polygon = {
            type = "list",
            member = M.Point,
        },
    },
}

M.RelationshipType = {
    CHILD = "CHILD",
}

M.RelationshipsListItem = {
    type = "structure",
    members = {
        Ids = {
            type = "list",
            member = { type = "string" },
        },
        Type = {
            type = "string",
        },
    },
}

M.Block = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        BlockType = {
            type = "string",
        },
        Text = {
            type = "string",
        },
        Page = {
            type = "integer",
        },
        Geometry = M.Geometry,
        Relationships = {
            type = "list",
            member = M.RelationshipsListItem,
        },
    },
}

M.ClassifierEvaluationMetrics = {
    type = "structure",
    members = {
        Accuracy = {
            type = "double",
        },
        Precision = {
            type = "double",
        },
        Recall = {
            type = "double",
        },
        F1Score = {
            type = "double",
        },
        MicroPrecision = {
            type = "double",
        },
        MicroRecall = {
            type = "double",
        },
        MicroF1Score = {
            type = "double",
        },
        HammingLoss = {
            type = "double",
        },
    },
}

M.ClassifierMetadata = {
    type = "structure",
    members = {
        NumberOfLabels = {
            type = "integer",
        },
        NumberOfTrainedDocuments = {
            type = "integer",
        },
        NumberOfTestDocuments = {
            type = "integer",
        },
        EvaluationMetrics = M.ClassifierEvaluationMetrics,
    },
}

M.DocumentReadAction = {
    TEXTRACT_DETECT_DOCUMENT_TEXT = "TEXTRACT_DETECT_DOCUMENT_TEXT",
    TEXTRACT_ANALYZE_DOCUMENT = "TEXTRACT_ANALYZE_DOCUMENT",
}

M.DocumentReadMode = {
    SERVICE_DEFAULT = "SERVICE_DEFAULT",
    FORCE_DOCUMENT_READ_ACTION = "FORCE_DOCUMENT_READ_ACTION",
}

M.DocumentReadFeatureTypes = {
    TABLES = "TABLES",
    FORMS = "FORMS",
}

M.DocumentReaderConfig = {
    type = "structure",
    members = {
        DocumentReadAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentReadMode = {
            type = "string",
        },
        FeatureTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ClassifyDocumentInput = {
    type = "structure",
    members = {
        Text = {
            type = "string",
        },
        EndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Bytes = {
            type = "blob",
        },
        DocumentReaderConfig = M.DocumentReaderConfig,
    },
}

M.DocumentClass = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Score = {
            type = "float",
        },
        Page = {
            type = "integer",
        },
    },
}

M.ExtractedCharactersListItem = {
    type = "structure",
    members = {
        Page = {
            type = "integer",
        },
        Count = {
            type = "integer",
        },
    },
}

M.DocumentMetadata = {
    type = "structure",
    members = {
        Pages = {
            type = "integer",
        },
        ExtractedCharacters = {
            type = "list",
            member = M.ExtractedCharactersListItem,
        },
    },
}

M.DocumentType = {
    NATIVE_PDF = "NATIVE_PDF",
    SCANNED_PDF = "SCANNED_PDF",
    MS_WORD = "MS_WORD",
    IMAGE = "IMAGE",
    PLAIN_TEXT = "PLAIN_TEXT",
    TEXTRACT_DETECT_DOCUMENT_TEXT_JSON = "TEXTRACT_DETECT_DOCUMENT_TEXT_JSON",
    TEXTRACT_ANALYZE_DOCUMENT_JSON = "TEXTRACT_ANALYZE_DOCUMENT_JSON",
}

M.DocumentTypeListItem = {
    type = "structure",
    members = {
        Page = {
            type = "integer",
        },
        Type = {
            type = "string",
        },
    },
}

M.PageBasedErrorCode = {
    TEXTRACT_BAD_PAGE = "TEXTRACT_BAD_PAGE",
    TEXTRACT_PROVISIONED_THROUGHPUT_EXCEEDED = "TEXTRACT_PROVISIONED_THROUGHPUT_EXCEEDED",
    PAGE_CHARACTERS_EXCEEDED = "PAGE_CHARACTERS_EXCEEDED",
    PAGE_SIZE_EXCEEDED = "PAGE_SIZE_EXCEEDED",
    INTERNAL_SERVER_ERROR = "INTERNAL_SERVER_ERROR",
}

M.ErrorsListItem = {
    type = "structure",
    members = {
        Page = {
            type = "integer",
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.DocumentLabel = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Score = {
            type = "float",
        },
        Page = {
            type = "integer",
        },
    },
}

M.PageBasedWarningCode = {
    INFERENCING_PLAINTEXT_WITH_NATIVE_TRAINED_MODEL = "INFERENCING_PLAINTEXT_WITH_NATIVE_TRAINED_MODEL",
    INFERENCING_NATIVE_DOCUMENT_WITH_PLAINTEXT_TRAINED_MODEL = "INFERENCING_NATIVE_DOCUMENT_WITH_PLAINTEXT_TRAINED_MODEL",
}

M.WarningsListItem = {
    type = "structure",
    members = {
        Page = {
            type = "integer",
        },
        WarnCode = {
            type = "string",
        },
        WarnMessage = {
            type = "string",
        },
    },
}

M.ClassifyDocumentOutput = {
    type = "structure",
    members = {
        Classes = {
            type = "list",
            member = M.DocumentClass,
        },
        Labels = {
            type = "list",
            member = M.DocumentLabel,
        },
        DocumentMetadata = M.DocumentMetadata,
        DocumentType = {
            type = "list",
            member = M.DocumentTypeListItem,
        },
        Errors = {
            type = "list",
            member = M.ErrorsListItem,
        },
        Warnings = {
            type = "list",
            member = M.WarningsListItem,
        },
    },
}

M.ResourceUnavailableException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ContainsPiiEntitiesInput = {
    type = "structure",
    members = {
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
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
    DATE_TIME = "DATE_TIME",
    PASSPORT_NUMBER = "PASSPORT_NUMBER",
    DRIVER_ID = "DRIVER_ID",
    URL = "URL",
    AGE = "AGE",
    USERNAME = "USERNAME",
    PASSWORD = "PASSWORD",
    AWS_ACCESS_KEY = "AWS_ACCESS_KEY",
    AWS_SECRET_KEY = "AWS_SECRET_KEY",
    IP_ADDRESS = "IP_ADDRESS",
    MAC_ADDRESS = "MAC_ADDRESS",
    ALL = "ALL",
    LICENSE_PLATE = "LICENSE_PLATE",
    VEHICLE_IDENTIFICATION_NUMBER = "VEHICLE_IDENTIFICATION_NUMBER",
    UK_NATIONAL_INSURANCE_NUMBER = "UK_NATIONAL_INSURANCE_NUMBER",
    CA_SOCIAL_INSURANCE_NUMBER = "CA_SOCIAL_INSURANCE_NUMBER",
    US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER = "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER",
    UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER = "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER",
    IN_PERMANENT_ACCOUNT_NUMBER = "IN_PERMANENT_ACCOUNT_NUMBER",
    IN_NREGA = "IN_NREGA",
    INTERNATIONAL_BANK_ACCOUNT_NUMBER = "INTERNATIONAL_BANK_ACCOUNT_NUMBER",
    SWIFT_CODE = "SWIFT_CODE",
    UK_NATIONAL_HEALTH_SERVICE_NUMBER = "UK_NATIONAL_HEALTH_SERVICE_NUMBER",
    CA_HEALTH_NUMBER = "CA_HEALTH_NUMBER",
    IN_AADHAAR = "IN_AADHAAR",
    IN_VOTER_NUMBER = "IN_VOTER_NUMBER",
}

M.EntityLabel = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Score = {
            type = "float",
        },
    },
}

M.ContainsPiiEntitiesOutput = {
    type = "structure",
    members = {
        Labels = {
            type = "list",
            member = M.EntityLabel,
        },
    },
}

M.DatasetType = {
    TRAIN = "TRAIN",
    TEST = "TEST",
}

M.DatasetAugmentedManifestsListItem = {
    type = "structure",
    members = {
        AttributeNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnnotationDataS3Uri = {
            type = "string",
        },
        SourceDocumentsS3Uri = {
            type = "string",
        },
        DocumentType = {
            type = "string",
        },
    },
}

M.DatasetDataFormat = {
    COMPREHEND_CSV = "COMPREHEND_CSV",
    AUGMENTED_MANIFEST = "AUGMENTED_MANIFEST",
}

M.DatasetDocumentClassifierInputDataConfig = {
    type = "structure",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LabelDelimiter = {
            type = "string",
        },
    },
}

M.DatasetEntityRecognizerAnnotations = {
    type = "structure",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InputFormat = {
    ONE_DOC_PER_FILE = "ONE_DOC_PER_FILE",
    ONE_DOC_PER_LINE = "ONE_DOC_PER_LINE",
}

M.DatasetEntityRecognizerDocuments = {
    type = "structure",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputFormat = {
            type = "string",
        },
    },
}

M.DatasetEntityRecognizerEntityList = {
    type = "structure",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DatasetEntityRecognizerInputDataConfig = {
    type = "structure",
    members = {
        Annotations = M.DatasetEntityRecognizerAnnotations,
        Documents = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DatasetEntityRecognizerDocuments }),
        EntityList = M.DatasetEntityRecognizerEntityList,
    },
}

M.DatasetInputDataConfig = {
    type = "structure",
    members = {
        AugmentedManifests = {
            type = "list",
            member = M.DatasetAugmentedManifestsListItem,
        },
        DataFormat = {
            type = "string",
        },
        DocumentClassifierInputDataConfig = M.DatasetDocumentClassifierInputDataConfig,
        EntityRecognizerInputDataConfig = M.DatasetEntityRecognizerInputDataConfig,
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
        },
    },
}

M.CreateDatasetInput = {
    type = "structure",
    members = {
        FlywheelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatasetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatasetType = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        InputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DatasetInputDataConfig }),
        ClientRequestToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateDatasetOutput = {
    type = "structure",
    members = {
        DatasetArn = {
            type = "string",
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
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

M.TooManyRequestsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyTagsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DocumentClassifierDataFormat = {
    COMPREHEND_CSV = "COMPREHEND_CSV",
    AUGMENTED_MANIFEST = "AUGMENTED_MANIFEST",
}

M.DocumentClassifierDocuments = {
    type = "structure",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TestS3Uri = {
            type = "string",
        },
    },
}

M.DocumentClassifierDocumentTypeFormat = {
    PLAIN_TEXT_DOCUMENT = "PLAIN_TEXT_DOCUMENT",
    SEMI_STRUCTURED_DOCUMENT = "SEMI_STRUCTURED_DOCUMENT",
}

M.DocumentClassifierInputDataConfig = {
    type = "structure",
    members = {
        DataFormat = {
            type = "string",
        },
        S3Uri = {
            type = "string",
        },
        TestS3Uri = {
            type = "string",
        },
        LabelDelimiter = {
            type = "string",
        },
        AugmentedManifests = {
            type = "list",
            member = M.AugmentedManifestsListItem,
        },
        DocumentType = {
            type = "string",
        },
        Documents = M.DocumentClassifierDocuments,
        DocumentReaderConfig = M.DocumentReaderConfig,
    },
}

M.DocumentClassifierMode = {
    MULTI_CLASS = "MULTI_CLASS",
    MULTI_LABEL = "MULTI_LABEL",
}

M.DocumentClassifierOutputDataConfig = {
    type = "structure",
    members = {
        S3Uri = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        FlywheelStatsS3Prefix = {
            type = "string",
        },
    },
}

M.VpcConfig = {
    type = "structure",
    members = {
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Subnets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDocumentClassifierInput = {
    type = "structure",
    members = {
        DocumentClassifierName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionName = {
            type = "string",
        },
        DataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        InputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DocumentClassifierInputDataConfig }),
        OutputDataConfig = M.DocumentClassifierOutputDataConfig,
        ClientRequestToken = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
        Mode = {
            type = "string",
        },
        ModelKmsKeyId = {
            type = "string",
        },
        ModelPolicy = {
            type = "string",
        },
    },
}

M.CreateDocumentClassifierOutput = {
    type = "structure",
    members = {
        DocumentClassifierArn = {
            type = "string",
        },
    },
}

M.KmsKeyValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateEndpointInput = {
    type = "structure",
    members = {
        EndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelArn = {
            type = "string",
        },
        DesiredInferenceUnits = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        DataAccessRoleArn = {
            type = "string",
        },
        FlywheelArn = {
            type = "string",
        },
    },
}

M.CreateEndpointOutput = {
    type = "structure",
    members = {
        EndpointArn = {
            type = "string",
        },
        ModelArn = {
            type = "string",
        },
    },
}

M.EntityRecognizerAnnotations = {
    type = "structure",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TestS3Uri = {
            type = "string",
        },
    },
}

M.EntityRecognizerDataFormat = {
    COMPREHEND_CSV = "COMPREHEND_CSV",
    AUGMENTED_MANIFEST = "AUGMENTED_MANIFEST",
}

M.EntityRecognizerDocuments = {
    type = "structure",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TestS3Uri = {
            type = "string",
        },
        InputFormat = {
            type = "string",
        },
    },
}

M.EntityRecognizerEntityList = {
    type = "structure",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EntityTypesListItem = {
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

M.EntityRecognizerInputDataConfig = {
    type = "structure",
    members = {
        DataFormat = {
            type = "string",
        },
        EntityTypes = {
            type = "list",
            member = M.EntityTypesListItem,
            traits = {
                required = true,
            },
        },
        Documents = M.EntityRecognizerDocuments,
        Annotations = M.EntityRecognizerAnnotations,
        EntityList = M.EntityRecognizerEntityList,
        AugmentedManifests = {
            type = "list",
            member = M.AugmentedManifestsListItem,
        },
    },
}

M.CreateEntityRecognizerInput = {
    type = "structure",
    members = {
        RecognizerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionName = {
            type = "string",
        },
        DataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        InputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EntityRecognizerInputDataConfig }),
        ClientRequestToken = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
        ModelKmsKeyId = {
            type = "string",
        },
        ModelPolicy = {
            type = "string",
        },
    },
}

M.CreateEntityRecognizerOutput = {
    type = "structure",
    members = {
        EntityRecognizerArn = {
            type = "string",
        },
    },
}

M.DataSecurityConfig = {
    type = "structure",
    members = {
        ModelKmsKeyId = {
            type = "string",
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        DataLakeKmsKeyId = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
    },
}

M.ModelType = {
    DOCUMENT_CLASSIFIER = "DOCUMENT_CLASSIFIER",
    ENTITY_RECOGNIZER = "ENTITY_RECOGNIZER",
}

M.DocumentClassificationConfig = {
    type = "structure",
    members = {
        Mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Labels = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EntityRecognitionConfig = {
    type = "structure",
    members = {
        EntityTypes = {
            type = "list",
            member = M.EntityTypesListItem,
            traits = {
                required = true,
            },
        },
    },
}

M.TaskConfig = {
    type = "structure",
    members = {
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentClassificationConfig = M.DocumentClassificationConfig,
        EntityRecognitionConfig = M.EntityRecognitionConfig,
    },
}

M.CreateFlywheelInput = {
    type = "structure",
    members = {
        FlywheelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActiveModelArn = {
            type = "string",
        },
        DataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskConfig = M.TaskConfig,
        ModelType = {
            type = "string",
        },
        DataLakeS3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSecurityConfig = M.DataSecurityConfig,
        ClientRequestToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateFlywheelOutput = {
    type = "structure",
    members = {
        FlywheelArn = {
            type = "string",
        },
        ActiveModelArn = {
            type = "string",
        },
    },
}

M.DeleteDocumentClassifierInput = {
    type = "structure",
    members = {
        DocumentClassifierArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDocumentClassifierOutput = {
    type = "structure",
}

M.DeleteEndpointInput = {
    type = "structure",
    members = {
        EndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEndpointOutput = {
    type = "structure",
}

M.DeleteEntityRecognizerInput = {
    type = "structure",
    members = {
        EntityRecognizerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEntityRecognizerOutput = {
    type = "structure",
}

M.DeleteFlywheelInput = {
    type = "structure",
    members = {
        FlywheelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteFlywheelOutput = {
    type = "structure",
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyRevisionId = {
            type = "string",
        },
    },
}

M.DeleteResourcePolicyOutput = {
    type = "structure",
}

M.DescribeDatasetInput = {
    type = "structure",
    members = {
        DatasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DatasetStatus = {
    CREATING = "CREATING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.DatasetProperties = {
    type = "structure",
    members = {
        DatasetArn = {
            type = "string",
        },
        DatasetName = {
            type = "string",
        },
        DatasetType = {
            type = "string",
        },
        DatasetS3Uri = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        NumberOfDocuments = {
            type = "long",
        },
        CreationTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.DescribeDatasetOutput = {
    type = "structure",
    members = {
        DatasetProperties = M.DatasetProperties,
    },
}

M.DescribeDocumentClassificationJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
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
        InputFormat = {
            type = "string",
        },
        DocumentReaderConfig = M.DocumentReaderConfig,
    },
}

M.JobStatus = {
    SUBMITTED = "SUBMITTED",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    STOP_REQUESTED = "STOP_REQUESTED",
    STOPPED = "STOPPED",
}

M.OutputDataConfig = {
    type = "structure",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
    },
}

M.DocumentClassificationJobProperties = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobArn = {
            type = "string",
        },
        JobName = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        SubmitTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        DocumentClassifierArn = {
            type = "string",
        },
        InputDataConfig = M.InputDataConfig,
        OutputDataConfig = M.OutputDataConfig,
        DataAccessRoleArn = {
            type = "string",
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
        FlywheelArn = {
            type = "string",
        },
    },
}

M.DescribeDocumentClassificationJobOutput = {
    type = "structure",
    members = {
        DocumentClassificationJobProperties = M.DocumentClassificationJobProperties,
    },
}

M.JobNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeDocumentClassifierInput = {
    type = "structure",
    members = {
        DocumentClassifierArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModelStatus = {
    SUBMITTED = "SUBMITTED",
    TRAINING = "TRAINING",
    DELETING = "DELETING",
    STOP_REQUESTED = "STOP_REQUESTED",
    STOPPED = "STOPPED",
    IN_ERROR = "IN_ERROR",
    TRAINED = "TRAINED",
    TRAINED_WITH_WARNING = "TRAINED_WITH_WARNING",
}

M.DocumentClassifierProperties = {
    type = "structure",
    members = {
        DocumentClassifierArn = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        SubmitTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        TrainingStartTime = {
            type = "timestamp",
        },
        TrainingEndTime = {
            type = "timestamp",
        },
        InputDataConfig = M.DocumentClassifierInputDataConfig,
        OutputDataConfig = M.DocumentClassifierOutputDataConfig,
        ClassifierMetadata = M.ClassifierMetadata,
        DataAccessRoleArn = {
            type = "string",
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
        Mode = {
            type = "string",
        },
        ModelKmsKeyId = {
            type = "string",
        },
        VersionName = {
            type = "string",
        },
        SourceModelArn = {
            type = "string",
        },
        FlywheelArn = {
            type = "string",
        },
    },
}

M.DescribeDocumentClassifierOutput = {
    type = "structure",
    members = {
        DocumentClassifierProperties = M.DocumentClassifierProperties,
    },
}

M.DescribeDominantLanguageDetectionJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DominantLanguageDetectionJobProperties = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobArn = {
            type = "string",
        },
        JobName = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        SubmitTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        InputDataConfig = M.InputDataConfig,
        OutputDataConfig = M.OutputDataConfig,
        DataAccessRoleArn = {
            type = "string",
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
    },
}

M.DescribeDominantLanguageDetectionJobOutput = {
    type = "structure",
    members = {
        DominantLanguageDetectionJobProperties = M.DominantLanguageDetectionJobProperties,
    },
}

M.DescribeEndpointInput = {
    type = "structure",
    members = {
        EndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EndpointStatus = {
    CREATING = "CREATING",
    DELETING = "DELETING",
    FAILED = "FAILED",
    IN_SERVICE = "IN_SERVICE",
    UPDATING = "UPDATING",
}

M.EndpointProperties = {
    type = "structure",
    members = {
        EndpointArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        ModelArn = {
            type = "string",
        },
        DesiredModelArn = {
            type = "string",
        },
        DesiredInferenceUnits = {
            type = "integer",
        },
        CurrentInferenceUnits = {
            type = "integer",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        DataAccessRoleArn = {
            type = "string",
        },
        DesiredDataAccessRoleArn = {
            type = "string",
        },
        FlywheelArn = {
            type = "string",
        },
    },
}

M.DescribeEndpointOutput = {
    type = "structure",
    members = {
        EndpointProperties = M.EndpointProperties,
    },
}

M.DescribeEntitiesDetectionJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EntitiesDetectionJobProperties = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobArn = {
            type = "string",
        },
        JobName = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        SubmitTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        EntityRecognizerArn = {
            type = "string",
        },
        InputDataConfig = M.InputDataConfig,
        OutputDataConfig = M.OutputDataConfig,
        LanguageCode = {
            type = "string",
        },
        DataAccessRoleArn = {
            type = "string",
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
        FlywheelArn = {
            type = "string",
        },
    },
}

M.DescribeEntitiesDetectionJobOutput = {
    type = "structure",
    members = {
        EntitiesDetectionJobProperties = M.EntitiesDetectionJobProperties,
    },
}

M.DescribeEntityRecognizerInput = {
    type = "structure",
    members = {
        EntityRecognizerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EntityRecognizerOutputDataConfig = {
    type = "structure",
    members = {
        FlywheelStatsS3Prefix = {
            type = "string",
        },
    },
}

M.EntityTypesEvaluationMetrics = {
    type = "structure",
    members = {
        Precision = {
            type = "double",
        },
        Recall = {
            type = "double",
        },
        F1Score = {
            type = "double",
        },
    },
}

M.EntityRecognizerMetadataEntityTypesListItem = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        EvaluationMetrics = M.EntityTypesEvaluationMetrics,
        NumberOfTrainMentions = {
            type = "integer",
        },
    },
}

M.EntityRecognizerEvaluationMetrics = {
    type = "structure",
    members = {
        Precision = {
            type = "double",
        },
        Recall = {
            type = "double",
        },
        F1Score = {
            type = "double",
        },
    },
}

M.EntityRecognizerMetadata = {
    type = "structure",
    members = {
        NumberOfTrainedDocuments = {
            type = "integer",
        },
        NumberOfTestDocuments = {
            type = "integer",
        },
        EvaluationMetrics = M.EntityRecognizerEvaluationMetrics,
        EntityTypes = {
            type = "list",
            member = M.EntityRecognizerMetadataEntityTypesListItem,
        },
    },
}

M.EntityRecognizerProperties = {
    type = "structure",
    members = {
        EntityRecognizerArn = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        SubmitTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        TrainingStartTime = {
            type = "timestamp",
        },
        TrainingEndTime = {
            type = "timestamp",
        },
        InputDataConfig = M.EntityRecognizerInputDataConfig,
        RecognizerMetadata = M.EntityRecognizerMetadata,
        DataAccessRoleArn = {
            type = "string",
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
        ModelKmsKeyId = {
            type = "string",
        },
        VersionName = {
            type = "string",
        },
        SourceModelArn = {
            type = "string",
        },
        FlywheelArn = {
            type = "string",
        },
        OutputDataConfig = M.EntityRecognizerOutputDataConfig,
    },
}

M.DescribeEntityRecognizerOutput = {
    type = "structure",
    members = {
        EntityRecognizerProperties = M.EntityRecognizerProperties,
    },
}

M.DescribeEventsDetectionJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EventsDetectionJobProperties = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobArn = {
            type = "string",
        },
        JobName = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        SubmitTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        InputDataConfig = M.InputDataConfig,
        OutputDataConfig = M.OutputDataConfig,
        LanguageCode = {
            type = "string",
        },
        DataAccessRoleArn = {
            type = "string",
        },
        TargetEventTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeEventsDetectionJobOutput = {
    type = "structure",
    members = {
        EventsDetectionJobProperties = M.EventsDetectionJobProperties,
    },
}

M.DescribeFlywheelInput = {
    type = "structure",
    members = {
        FlywheelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FlywheelStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.FlywheelProperties = {
    type = "structure",
    members = {
        FlywheelArn = {
            type = "string",
        },
        ActiveModelArn = {
            type = "string",
        },
        DataAccessRoleArn = {
            type = "string",
        },
        TaskConfig = M.TaskConfig,
        DataLakeS3Uri = {
            type = "string",
        },
        DataSecurityConfig = M.DataSecurityConfig,
        Status = {
            type = "string",
        },
        ModelType = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LatestFlywheelIteration = {
            type = "string",
        },
    },
}

M.DescribeFlywheelOutput = {
    type = "structure",
    members = {
        FlywheelProperties = M.FlywheelProperties,
    },
}

M.DescribeFlywheelIterationInput = {
    type = "structure",
    members = {
        FlywheelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FlywheelIterationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FlywheelModelEvaluationMetrics = {
    type = "structure",
    members = {
        AverageF1Score = {
            type = "double",
        },
        AveragePrecision = {
            type = "double",
        },
        AverageRecall = {
            type = "double",
        },
        AverageAccuracy = {
            type = "double",
        },
    },
}

M.FlywheelIterationStatus = {
    TRAINING = "TRAINING",
    EVALUATING = "EVALUATING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    STOP_REQUESTED = "STOP_REQUESTED",
    STOPPED = "STOPPED",
}

M.FlywheelIterationProperties = {
    type = "structure",
    members = {
        FlywheelArn = {
            type = "string",
        },
        FlywheelIterationId = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        EvaluatedModelArn = {
            type = "string",
        },
        EvaluatedModelMetrics = M.FlywheelModelEvaluationMetrics,
        TrainedModelArn = {
            type = "string",
        },
        TrainedModelMetrics = M.FlywheelModelEvaluationMetrics,
        EvaluationManifestS3Prefix = {
            type = "string",
        },
    },
}

M.DescribeFlywheelIterationOutput = {
    type = "structure",
    members = {
        FlywheelIterationProperties = M.FlywheelIterationProperties,
    },
}

M.DescribeKeyPhrasesDetectionJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KeyPhrasesDetectionJobProperties = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobArn = {
            type = "string",
        },
        JobName = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        SubmitTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        InputDataConfig = M.InputDataConfig,
        OutputDataConfig = M.OutputDataConfig,
        LanguageCode = {
            type = "string",
        },
        DataAccessRoleArn = {
            type = "string",
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
    },
}

M.DescribeKeyPhrasesDetectionJobOutput = {
    type = "structure",
    members = {
        KeyPhrasesDetectionJobProperties = M.KeyPhrasesDetectionJobProperties,
    },
}

M.DescribePiiEntitiesDetectionJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PiiEntitiesDetectionMode = {
    ONLY_REDACTION = "ONLY_REDACTION",
    ONLY_OFFSETS = "ONLY_OFFSETS",
}

M.PiiOutputDataConfig = {
    type = "structure",
    members = {
        S3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
    },
}

M.PiiEntitiesDetectionMaskMode = {
    MASK = "MASK",
    REPLACE_WITH_PII_ENTITY_TYPE = "REPLACE_WITH_PII_ENTITY_TYPE",
}

M.RedactionConfig = {
    type = "structure",
    members = {
        PiiEntityTypes = {
            type = "list",
            member = { type = "string" },
        },
        MaskMode = {
            type = "string",
        },
        MaskCharacter = {
            type = "string",
        },
    },
}

M.PiiEntitiesDetectionJobProperties = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobArn = {
            type = "string",
        },
        JobName = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        SubmitTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        InputDataConfig = M.InputDataConfig,
        OutputDataConfig = M.PiiOutputDataConfig,
        RedactionConfig = M.RedactionConfig,
        LanguageCode = {
            type = "string",
        },
        DataAccessRoleArn = {
            type = "string",
        },
        Mode = {
            type = "string",
        },
    },
}

M.DescribePiiEntitiesDetectionJobOutput = {
    type = "structure",
    members = {
        PiiEntitiesDetectionJobProperties = M.PiiEntitiesDetectionJobProperties,
    },
}

M.DescribeResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeResourcePolicyOutput = {
    type = "structure",
    members = {
        ResourcePolicy = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        PolicyRevisionId = {
            type = "string",
        },
    },
}

M.DescribeSentimentDetectionJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SentimentDetectionJobProperties = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobArn = {
            type = "string",
        },
        JobName = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        SubmitTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        InputDataConfig = M.InputDataConfig,
        OutputDataConfig = M.OutputDataConfig,
        LanguageCode = {
            type = "string",
        },
        DataAccessRoleArn = {
            type = "string",
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
    },
}

M.DescribeSentimentDetectionJobOutput = {
    type = "structure",
    members = {
        SentimentDetectionJobProperties = M.SentimentDetectionJobProperties,
    },
}

M.DescribeTargetedSentimentDetectionJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TargetedSentimentDetectionJobProperties = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobArn = {
            type = "string",
        },
        JobName = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        SubmitTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        InputDataConfig = M.InputDataConfig,
        OutputDataConfig = M.OutputDataConfig,
        LanguageCode = {
            type = "string",
        },
        DataAccessRoleArn = {
            type = "string",
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
    },
}

M.DescribeTargetedSentimentDetectionJobOutput = {
    type = "structure",
    members = {
        TargetedSentimentDetectionJobProperties = M.TargetedSentimentDetectionJobProperties,
    },
}

M.DescribeTopicsDetectionJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TopicsDetectionJobProperties = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobArn = {
            type = "string",
        },
        JobName = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        SubmitTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        InputDataConfig = M.InputDataConfig,
        OutputDataConfig = M.OutputDataConfig,
        NumberOfTopics = {
            type = "integer",
        },
        DataAccessRoleArn = {
            type = "string",
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
    },
}

M.DescribeTopicsDetectionJobOutput = {
    type = "structure",
    members = {
        TopicsDetectionJobProperties = M.TopicsDetectionJobProperties,
    },
}

M.DetectDominantLanguageInput = {
    type = "structure",
    members = {
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DetectDominantLanguageOutput = {
    type = "structure",
    members = {
        Languages = {
            type = "list",
            member = M.DominantLanguage,
        },
    },
}

M.DetectEntitiesInput = {
    type = "structure",
    members = {
        Text = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        EndpointArn = {
            type = "string",
        },
        Bytes = {
            type = "blob",
        },
        DocumentReaderConfig = M.DocumentReaderConfig,
    },
}

M.DetectEntitiesOutput = {
    type = "structure",
    members = {
        Entities = {
            type = "list",
            member = M.Entity,
        },
        DocumentMetadata = M.DocumentMetadata,
        DocumentType = {
            type = "list",
            member = M.DocumentTypeListItem,
        },
        Blocks = {
            type = "list",
            member = M.Block,
        },
        Errors = {
            type = "list",
            member = M.ErrorsListItem,
        },
    },
}

M.DetectKeyPhrasesInput = {
    type = "structure",
    members = {
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DetectKeyPhrasesOutput = {
    type = "structure",
    members = {
        KeyPhrases = {
            type = "list",
            member = M.KeyPhrase,
        },
    },
}

M.DetectPiiEntitiesInput = {
    type = "structure",
    members = {
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PiiEntity = {
    type = "structure",
    members = {
        Score = {
            type = "float",
        },
        Type = {
            type = "string",
        },
        BeginOffset = {
            type = "integer",
        },
        EndOffset = {
            type = "integer",
        },
    },
}

M.DetectPiiEntitiesOutput = {
    type = "structure",
    members = {
        Entities = {
            type = "list",
            member = M.PiiEntity,
        },
    },
}

M.DetectSentimentInput = {
    type = "structure",
    members = {
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DetectSentimentOutput = {
    type = "structure",
    members = {
        Sentiment = {
            type = "string",
        },
        SentimentScore = M.SentimentScore,
    },
}

M.DetectSyntaxInput = {
    type = "structure",
    members = {
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DetectSyntaxOutput = {
    type = "structure",
    members = {
        SyntaxTokens = {
            type = "list",
            member = M.SyntaxToken,
        },
    },
}

M.DetectTargetedSentimentInput = {
    type = "structure",
    members = {
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DetectTargetedSentimentOutput = {
    type = "structure",
    members = {
        Entities = {
            type = "list",
            member = M.TargetedSentimentEntity,
        },
    },
}

M.TextSegment = {
    type = "structure",
    members = {
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DetectToxicContentInput = {
    type = "structure",
    members = {
        TextSegments = {
            type = "list",
            member = M.TextSegment,
            traits = {
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ToxicContentType = {
    GRAPHIC = "GRAPHIC",
    HARASSMENT_OR_ABUSE = "HARASSMENT_OR_ABUSE",
    HATE_SPEECH = "HATE_SPEECH",
    INSULT = "INSULT",
    PROFANITY = "PROFANITY",
    SEXUAL = "SEXUAL",
    VIOLENCE_OR_THREAT = "VIOLENCE_OR_THREAT",
}

M.ToxicContent = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Score = {
            type = "float",
        },
    },
}

M.ToxicLabels = {
    type = "structure",
    members = {
        Labels = {
            type = "list",
            member = M.ToxicContent,
        },
        Toxicity = {
            type = "float",
        },
    },
}

M.DetectToxicContentOutput = {
    type = "structure",
    members = {
        ResultList = {
            type = "list",
            member = M.ToxicLabels,
        },
    },
}

M.ImportModelInput = {
    type = "structure",
    members = {
        SourceModelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ModelName = {
            type = "string",
        },
        VersionName = {
            type = "string",
        },
        ModelKmsKeyId = {
            type = "string",
        },
        DataAccessRoleArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ImportModelOutput = {
    type = "structure",
    members = {
        ModelArn = {
            type = "string",
        },
    },
}

M.InvalidFilterException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DatasetFilter = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        DatasetType = {
            type = "string",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
    },
}

M.ListDatasetsInput = {
    type = "structure",
    members = {
        FlywheelArn = {
            type = "string",
        },
        Filter = M.DatasetFilter,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListDatasetsOutput = {
    type = "structure",
    members = {
        DatasetPropertiesList = {
            type = "list",
            member = M.DatasetProperties,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DocumentClassificationJobFilter = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        SubmitTimeBefore = {
            type = "timestamp",
        },
        SubmitTimeAfter = {
            type = "timestamp",
        },
    },
}

M.ListDocumentClassificationJobsInput = {
    type = "structure",
    members = {
        Filter = M.DocumentClassificationJobFilter,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListDocumentClassificationJobsOutput = {
    type = "structure",
    members = {
        DocumentClassificationJobPropertiesList = {
            type = "list",
            member = M.DocumentClassificationJobProperties,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DocumentClassifierFilter = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        DocumentClassifierName = {
            type = "string",
        },
        SubmitTimeBefore = {
            type = "timestamp",
        },
        SubmitTimeAfter = {
            type = "timestamp",
        },
    },
}

M.ListDocumentClassifiersInput = {
    type = "structure",
    members = {
        Filter = M.DocumentClassifierFilter,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListDocumentClassifiersOutput = {
    type = "structure",
    members = {
        DocumentClassifierPropertiesList = {
            type = "list",
            member = M.DocumentClassifierProperties,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDocumentClassifierSummariesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.DocumentClassifierSummary = {
    type = "structure",
    members = {
        DocumentClassifierName = {
            type = "string",
        },
        NumberOfVersions = {
            type = "integer",
        },
        LatestVersionCreatedAt = {
            type = "timestamp",
        },
        LatestVersionName = {
            type = "string",
        },
        LatestVersionStatus = {
            type = "string",
        },
    },
}

M.ListDocumentClassifierSummariesOutput = {
    type = "structure",
    members = {
        DocumentClassifierSummariesList = {
            type = "list",
            member = M.DocumentClassifierSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DominantLanguageDetectionJobFilter = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        SubmitTimeBefore = {
            type = "timestamp",
        },
        SubmitTimeAfter = {
            type = "timestamp",
        },
    },
}

M.ListDominantLanguageDetectionJobsInput = {
    type = "structure",
    members = {
        Filter = M.DominantLanguageDetectionJobFilter,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListDominantLanguageDetectionJobsOutput = {
    type = "structure",
    members = {
        DominantLanguageDetectionJobPropertiesList = {
            type = "list",
            member = M.DominantLanguageDetectionJobProperties,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.EndpointFilter = {
    type = "structure",
    members = {
        ModelArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
    },
}

M.ListEndpointsInput = {
    type = "structure",
    members = {
        Filter = M.EndpointFilter,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListEndpointsOutput = {
    type = "structure",
    members = {
        EndpointPropertiesList = {
            type = "list",
            member = M.EndpointProperties,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.EntitiesDetectionJobFilter = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        SubmitTimeBefore = {
            type = "timestamp",
        },
        SubmitTimeAfter = {
            type = "timestamp",
        },
    },
}

M.ListEntitiesDetectionJobsInput = {
    type = "structure",
    members = {
        Filter = M.EntitiesDetectionJobFilter,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListEntitiesDetectionJobsOutput = {
    type = "structure",
    members = {
        EntitiesDetectionJobPropertiesList = {
            type = "list",
            member = M.EntitiesDetectionJobProperties,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.EntityRecognizerFilter = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        RecognizerName = {
            type = "string",
        },
        SubmitTimeBefore = {
            type = "timestamp",
        },
        SubmitTimeAfter = {
            type = "timestamp",
        },
    },
}

M.ListEntityRecognizersInput = {
    type = "structure",
    members = {
        Filter = M.EntityRecognizerFilter,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListEntityRecognizersOutput = {
    type = "structure",
    members = {
        EntityRecognizerPropertiesList = {
            type = "list",
            member = M.EntityRecognizerProperties,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEntityRecognizerSummariesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.EntityRecognizerSummary = {
    type = "structure",
    members = {
        RecognizerName = {
            type = "string",
        },
        NumberOfVersions = {
            type = "integer",
        },
        LatestVersionCreatedAt = {
            type = "timestamp",
        },
        LatestVersionName = {
            type = "string",
        },
        LatestVersionStatus = {
            type = "string",
        },
    },
}

M.ListEntityRecognizerSummariesOutput = {
    type = "structure",
    members = {
        EntityRecognizerSummariesList = {
            type = "list",
            member = M.EntityRecognizerSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.EventsDetectionJobFilter = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        SubmitTimeBefore = {
            type = "timestamp",
        },
        SubmitTimeAfter = {
            type = "timestamp",
        },
    },
}

M.ListEventsDetectionJobsInput = {
    type = "structure",
    members = {
        Filter = M.EventsDetectionJobFilter,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListEventsDetectionJobsOutput = {
    type = "structure",
    members = {
        EventsDetectionJobPropertiesList = {
            type = "list",
            member = M.EventsDetectionJobProperties,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.FlywheelIterationFilter = {
    type = "structure",
    members = {
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
    },
}

M.ListFlywheelIterationHistoryInput = {
    type = "structure",
    members = {
        FlywheelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filter = M.FlywheelIterationFilter,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListFlywheelIterationHistoryOutput = {
    type = "structure",
    members = {
        FlywheelIterationPropertiesList = {
            type = "list",
            member = M.FlywheelIterationProperties,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.FlywheelFilter = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        CreationTimeAfter = {
            type = "timestamp",
        },
        CreationTimeBefore = {
            type = "timestamp",
        },
    },
}

M.ListFlywheelsInput = {
    type = "structure",
    members = {
        Filter = M.FlywheelFilter,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.FlywheelSummary = {
    type = "structure",
    members = {
        FlywheelArn = {
            type = "string",
        },
        ActiveModelArn = {
            type = "string",
        },
        DataLakeS3Uri = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ModelType = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LatestFlywheelIteration = {
            type = "string",
        },
    },
}

M.ListFlywheelsOutput = {
    type = "structure",
    members = {
        FlywheelSummaryList = {
            type = "list",
            member = M.FlywheelSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.KeyPhrasesDetectionJobFilter = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        SubmitTimeBefore = {
            type = "timestamp",
        },
        SubmitTimeAfter = {
            type = "timestamp",
        },
    },
}

M.ListKeyPhrasesDetectionJobsInput = {
    type = "structure",
    members = {
        Filter = M.KeyPhrasesDetectionJobFilter,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListKeyPhrasesDetectionJobsOutput = {
    type = "structure",
    members = {
        KeyPhrasesDetectionJobPropertiesList = {
            type = "list",
            member = M.KeyPhrasesDetectionJobProperties,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PiiEntitiesDetectionJobFilter = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        SubmitTimeBefore = {
            type = "timestamp",
        },
        SubmitTimeAfter = {
            type = "timestamp",
        },
    },
}

M.ListPiiEntitiesDetectionJobsInput = {
    type = "structure",
    members = {
        Filter = M.PiiEntitiesDetectionJobFilter,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListPiiEntitiesDetectionJobsOutput = {
    type = "structure",
    members = {
        PiiEntitiesDetectionJobPropertiesList = {
            type = "list",
            member = M.PiiEntitiesDetectionJobProperties,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SentimentDetectionJobFilter = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        SubmitTimeBefore = {
            type = "timestamp",
        },
        SubmitTimeAfter = {
            type = "timestamp",
        },
    },
}

M.ListSentimentDetectionJobsInput = {
    type = "structure",
    members = {
        Filter = M.SentimentDetectionJobFilter,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListSentimentDetectionJobsOutput = {
    type = "structure",
    members = {
        SentimentDetectionJobPropertiesList = {
            type = "list",
            member = M.SentimentDetectionJobProperties,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
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

M.TargetedSentimentDetectionJobFilter = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        SubmitTimeBefore = {
            type = "timestamp",
        },
        SubmitTimeAfter = {
            type = "timestamp",
        },
    },
}

M.ListTargetedSentimentDetectionJobsInput = {
    type = "structure",
    members = {
        Filter = M.TargetedSentimentDetectionJobFilter,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListTargetedSentimentDetectionJobsOutput = {
    type = "structure",
    members = {
        TargetedSentimentDetectionJobPropertiesList = {
            type = "list",
            member = M.TargetedSentimentDetectionJobProperties,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TopicsDetectionJobFilter = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        SubmitTimeBefore = {
            type = "timestamp",
        },
        SubmitTimeAfter = {
            type = "timestamp",
        },
    },
}

M.ListTopicsDetectionJobsInput = {
    type = "structure",
    members = {
        Filter = M.TopicsDetectionJobFilter,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListTopicsDetectionJobsOutput = {
    type = "structure",
    members = {
        TopicsDetectionJobPropertiesList = {
            type = "list",
            member = M.TopicsDetectionJobProperties,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourcePolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyRevisionId = {
            type = "string",
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
    members = {
        PolicyRevisionId = {
            type = "string",
        },
    },
}

M.StartDocumentClassificationJobInput = {
    type = "structure",
    members = {
        JobName = {
            type = "string",
        },
        DocumentClassifierArn = {
            type = "string",
        },
        InputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputDataConfig }),
        OutputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputDataConfig }),
        DataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        FlywheelArn = {
            type = "string",
        },
    },
}

M.StartDocumentClassificationJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobArn = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        DocumentClassifierArn = {
            type = "string",
        },
    },
}

M.StartDominantLanguageDetectionJobInput = {
    type = "structure",
    members = {
        InputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputDataConfig }),
        OutputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputDataConfig }),
        DataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobName = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.StartDominantLanguageDetectionJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobArn = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
    },
}

M.StartEntitiesDetectionJobInput = {
    type = "structure",
    members = {
        InputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputDataConfig }),
        OutputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputDataConfig }),
        DataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobName = {
            type = "string",
        },
        EntityRecognizerArn = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        FlywheelArn = {
            type = "string",
        },
    },
}

M.StartEntitiesDetectionJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobArn = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        EntityRecognizerArn = {
            type = "string",
        },
    },
}

M.StartEventsDetectionJobInput = {
    type = "structure",
    members = {
        InputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputDataConfig }),
        OutputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputDataConfig }),
        DataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobName = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        TargetEventTypes = {
            type = "list",
            member = { type = "string" },
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

M.StartEventsDetectionJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobArn = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
    },
}

M.StartFlywheelIterationInput = {
    type = "structure",
    members = {
        FlywheelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
    },
}

M.StartFlywheelIterationOutput = {
    type = "structure",
    members = {
        FlywheelArn = {
            type = "string",
        },
        FlywheelIterationId = {
            type = "string",
        },
    },
}

M.StartKeyPhrasesDetectionJobInput = {
    type = "structure",
    members = {
        InputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputDataConfig }),
        OutputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputDataConfig }),
        DataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobName = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.StartKeyPhrasesDetectionJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobArn = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
    },
}

M.StartPiiEntitiesDetectionJobInput = {
    type = "structure",
    members = {
        InputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputDataConfig }),
        OutputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputDataConfig }),
        Mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RedactionConfig = M.RedactionConfig,
        DataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobName = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.StartPiiEntitiesDetectionJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobArn = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
    },
}

M.StartSentimentDetectionJobInput = {
    type = "structure",
    members = {
        InputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputDataConfig }),
        OutputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputDataConfig }),
        DataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobName = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.StartSentimentDetectionJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobArn = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
    },
}

M.StartTargetedSentimentDetectionJobInput = {
    type = "structure",
    members = {
        InputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputDataConfig }),
        OutputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputDataConfig }),
        DataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobName = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.StartTargetedSentimentDetectionJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobArn = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
    },
}

M.StartTopicsDetectionJobInput = {
    type = "structure",
    members = {
        InputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputDataConfig }),
        OutputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputDataConfig }),
        DataAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobName = {
            type = "string",
        },
        NumberOfTopics = {
            type = "integer",
        },
        ClientRequestToken = {
            type = "string",
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.StartTopicsDetectionJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobArn = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
    },
}

M.StopDominantLanguageDetectionJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopDominantLanguageDetectionJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
    },
}

M.StopEntitiesDetectionJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopEntitiesDetectionJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
    },
}

M.StopEventsDetectionJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopEventsDetectionJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
    },
}

M.StopKeyPhrasesDetectionJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopKeyPhrasesDetectionJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
    },
}

M.StopPiiEntitiesDetectionJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopPiiEntitiesDetectionJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
    },
}

M.StopSentimentDetectionJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopSentimentDetectionJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
    },
}

M.StopTargetedSentimentDetectionJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopTargetedSentimentDetectionJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
    },
}

M.StopTrainingDocumentClassifierInput = {
    type = "structure",
    members = {
        DocumentClassifierArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopTrainingDocumentClassifierOutput = {
    type = "structure",
}

M.StopTrainingEntityRecognizerInput = {
    type = "structure",
    members = {
        EntityRecognizerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopTrainingEntityRecognizerOutput = {
    type = "structure",
}

M.ConcurrentModificationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
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

M.TooManyTagKeysException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateEndpointInput = {
    type = "structure",
    members = {
        EndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DesiredModelArn = {
            type = "string",
        },
        DesiredInferenceUnits = {
            type = "integer",
        },
        DesiredDataAccessRoleArn = {
            type = "string",
        },
        FlywheelArn = {
            type = "string",
        },
    },
}

M.UpdateEndpointOutput = {
    type = "structure",
    members = {
        DesiredModelArn = {
            type = "string",
        },
    },
}

M.UpdateDataSecurityConfig = {
    type = "structure",
    members = {
        ModelKmsKeyId = {
            type = "string",
        },
        VolumeKmsKeyId = {
            type = "string",
        },
        VpcConfig = M.VpcConfig,
    },
}

M.UpdateFlywheelInput = {
    type = "structure",
    members = {
        FlywheelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActiveModelArn = {
            type = "string",
        },
        DataAccessRoleArn = {
            type = "string",
        },
        DataSecurityConfig = M.UpdateDataSecurityConfig,
    },
}

M.UpdateFlywheelOutput = {
    type = "structure",
    members = {
        FlywheelProperties = M.FlywheelProperties,
    },
}

return M
