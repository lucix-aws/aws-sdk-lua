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
    id = "AugmentedManifestsListItem",
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
    id = "BatchDetectDominantLanguageInput",
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
    id = "BatchItemError",
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
    id = "DominantLanguage",
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
    id = "BatchDetectDominantLanguageItemResult",
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
    id = "BatchDetectDominantLanguageOutput",
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
    id = "BatchSizeLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
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
    id = "InvalidRequestDetail",
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
    id = "InvalidRequestException",
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
    id = "TextSizeLimitExceededException",
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
    id = "BatchDetectEntitiesInput",
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
    id = "ChildBlock",
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
    id = "BlockReference",
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
    id = "Entity",
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
    id = "BatchDetectEntitiesItemResult",
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
    id = "BatchDetectEntitiesOutput",
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
    id = "UnsupportedLanguageException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.BatchDetectKeyPhrasesInput = {
    type = "structure",
    id = "BatchDetectKeyPhrasesInput",
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
    id = "KeyPhrase",
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
    id = "BatchDetectKeyPhrasesItemResult",
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
    id = "BatchDetectKeyPhrasesOutput",
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
    id = "BatchDetectSentimentInput",
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
    id = "SentimentScore",
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
    id = "BatchDetectSentimentItemResult",
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
    id = "BatchDetectSentimentOutput",
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
    id = "BatchDetectSyntaxInput",
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
    id = "PartOfSpeechTag",
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
    id = "SyntaxToken",
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
    id = "BatchDetectSyntaxItemResult",
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
    id = "BatchDetectSyntaxOutput",
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
    id = "BatchDetectTargetedSentimentInput",
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
    id = "MentionSentiment",
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
    id = "TargetedSentimentMention",
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
    id = "TargetedSentimentEntity",
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
    id = "BatchDetectTargetedSentimentItemResult",
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
    id = "BatchDetectTargetedSentimentOutput",
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
    id = "BoundingBox",
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
    id = "Point",
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
    id = "Geometry",
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
    id = "RelationshipsListItem",
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
    id = "Block",
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
    id = "ClassifierEvaluationMetrics",
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
    id = "ClassifierMetadata",
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
    id = "DocumentReaderConfig",
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
    id = "ClassifyDocumentInput",
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
    id = "DocumentClass",
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
    id = "ExtractedCharactersListItem",
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
    id = "DocumentMetadata",
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
    id = "DocumentTypeListItem",
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
    id = "ErrorsListItem",
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
    id = "DocumentLabel",
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
    id = "WarningsListItem",
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
    id = "ClassifyDocumentOutput",
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
    id = "ResourceUnavailableException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ContainsPiiEntitiesInput = {
    type = "structure",
    id = "ContainsPiiEntitiesInput",
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
    id = "EntityLabel",
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
    id = "ContainsPiiEntitiesOutput",
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
    id = "DatasetAugmentedManifestsListItem",
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
    id = "DatasetDocumentClassifierInputDataConfig",
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
    id = "DatasetEntityRecognizerAnnotations",
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
    id = "DatasetEntityRecognizerDocuments",
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
    id = "DatasetEntityRecognizerEntityList",
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
    id = "DatasetEntityRecognizerInputDataConfig",
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
    id = "DatasetInputDataConfig",
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
        },
    },
}

M.CreateDatasetInput = {
    type = "structure",
    id = "CreateDatasetInput",
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
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateDatasetOutput = {
    type = "structure",
    id = "CreateDatasetOutput",
    members = {
        DatasetArn = {
            type = "string",
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
    id = "ResourceInUseException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceLimitExceededException = {
    type = "structure",
    id = "ResourceLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyTagsException = {
    type = "structure",
    id = "TooManyTagsException",
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
    id = "DocumentClassifierDocuments",
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
    id = "DocumentClassifierInputDataConfig",
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
    id = "DocumentClassifierOutputDataConfig",
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
    id = "VpcConfig",
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
    id = "CreateDocumentClassifierInput",
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
            traits = {
                idempotency_token = true,
            },
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
    id = "CreateDocumentClassifierOutput",
    members = {
        DocumentClassifierArn = {
            type = "string",
        },
    },
}

M.KmsKeyValidationException = {
    type = "structure",
    id = "KmsKeyValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateEndpointInput = {
    type = "structure",
    id = "CreateEndpointInput",
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
            traits = {
                idempotency_token = true,
            },
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
    id = "CreateEndpointOutput",
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
    id = "EntityRecognizerAnnotations",
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
    id = "EntityRecognizerDocuments",
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
    id = "EntityRecognizerEntityList",
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
    id = "EntityTypesListItem",
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
    id = "EntityRecognizerInputDataConfig",
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
    id = "CreateEntityRecognizerInput",
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
            traits = {
                idempotency_token = true,
            },
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
    id = "CreateEntityRecognizerOutput",
    members = {
        EntityRecognizerArn = {
            type = "string",
        },
    },
}

M.DataSecurityConfig = {
    type = "structure",
    id = "DataSecurityConfig",
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
    id = "DocumentClassificationConfig",
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
    id = "EntityRecognitionConfig",
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
    id = "TaskConfig",
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
    id = "CreateFlywheelInput",
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
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateFlywheelOutput = {
    type = "structure",
    id = "CreateFlywheelOutput",
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
    id = "DeleteDocumentClassifierInput",
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
    id = "DeleteDocumentClassifierOutput",
}

M.DeleteEndpointInput = {
    type = "structure",
    id = "DeleteEndpointInput",
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
    id = "DeleteEndpointOutput",
}

M.DeleteEntityRecognizerInput = {
    type = "structure",
    id = "DeleteEntityRecognizerInput",
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
    id = "DeleteEntityRecognizerOutput",
}

M.DeleteFlywheelInput = {
    type = "structure",
    id = "DeleteFlywheelInput",
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
    id = "DeleteFlywheelOutput",
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    id = "DeleteResourcePolicyInput",
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
    id = "DeleteResourcePolicyOutput",
}

M.DescribeDatasetInput = {
    type = "structure",
    id = "DescribeDatasetInput",
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
    id = "DatasetProperties",
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
    id = "DescribeDatasetOutput",
    members = {
        DatasetProperties = M.DatasetProperties,
    },
}

M.DescribeDocumentClassificationJobInput = {
    type = "structure",
    id = "DescribeDocumentClassificationJobInput",
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
    id = "InputDataConfig",
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
    id = "OutputDataConfig",
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
    id = "DocumentClassificationJobProperties",
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
    id = "DescribeDocumentClassificationJobOutput",
    members = {
        DocumentClassificationJobProperties = M.DocumentClassificationJobProperties,
    },
}

M.JobNotFoundException = {
    type = "structure",
    id = "JobNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeDocumentClassifierInput = {
    type = "structure",
    id = "DescribeDocumentClassifierInput",
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
    id = "DocumentClassifierProperties",
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
    id = "DescribeDocumentClassifierOutput",
    members = {
        DocumentClassifierProperties = M.DocumentClassifierProperties,
    },
}

M.DescribeDominantLanguageDetectionJobInput = {
    type = "structure",
    id = "DescribeDominantLanguageDetectionJobInput",
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
    id = "DominantLanguageDetectionJobProperties",
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
    id = "DescribeDominantLanguageDetectionJobOutput",
    members = {
        DominantLanguageDetectionJobProperties = M.DominantLanguageDetectionJobProperties,
    },
}

M.DescribeEndpointInput = {
    type = "structure",
    id = "DescribeEndpointInput",
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
    id = "EndpointProperties",
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
    id = "DescribeEndpointOutput",
    members = {
        EndpointProperties = M.EndpointProperties,
    },
}

M.DescribeEntitiesDetectionJobInput = {
    type = "structure",
    id = "DescribeEntitiesDetectionJobInput",
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
    id = "EntitiesDetectionJobProperties",
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
    id = "DescribeEntitiesDetectionJobOutput",
    members = {
        EntitiesDetectionJobProperties = M.EntitiesDetectionJobProperties,
    },
}

M.DescribeEntityRecognizerInput = {
    type = "structure",
    id = "DescribeEntityRecognizerInput",
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
    id = "EntityRecognizerOutputDataConfig",
    members = {
        FlywheelStatsS3Prefix = {
            type = "string",
        },
    },
}

M.EntityTypesEvaluationMetrics = {
    type = "structure",
    id = "EntityTypesEvaluationMetrics",
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
    id = "EntityRecognizerMetadataEntityTypesListItem",
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
    id = "EntityRecognizerEvaluationMetrics",
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
    id = "EntityRecognizerMetadata",
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
    id = "EntityRecognizerProperties",
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
    id = "DescribeEntityRecognizerOutput",
    members = {
        EntityRecognizerProperties = M.EntityRecognizerProperties,
    },
}

M.DescribeEventsDetectionJobInput = {
    type = "structure",
    id = "DescribeEventsDetectionJobInput",
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
    id = "EventsDetectionJobProperties",
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
    id = "DescribeEventsDetectionJobOutput",
    members = {
        EventsDetectionJobProperties = M.EventsDetectionJobProperties,
    },
}

M.DescribeFlywheelInput = {
    type = "structure",
    id = "DescribeFlywheelInput",
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
    id = "FlywheelProperties",
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
    id = "DescribeFlywheelOutput",
    members = {
        FlywheelProperties = M.FlywheelProperties,
    },
}

M.DescribeFlywheelIterationInput = {
    type = "structure",
    id = "DescribeFlywheelIterationInput",
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
    id = "FlywheelModelEvaluationMetrics",
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
    id = "FlywheelIterationProperties",
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
    id = "DescribeFlywheelIterationOutput",
    members = {
        FlywheelIterationProperties = M.FlywheelIterationProperties,
    },
}

M.DescribeKeyPhrasesDetectionJobInput = {
    type = "structure",
    id = "DescribeKeyPhrasesDetectionJobInput",
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
    id = "KeyPhrasesDetectionJobProperties",
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
    id = "DescribeKeyPhrasesDetectionJobOutput",
    members = {
        KeyPhrasesDetectionJobProperties = M.KeyPhrasesDetectionJobProperties,
    },
}

M.DescribePiiEntitiesDetectionJobInput = {
    type = "structure",
    id = "DescribePiiEntitiesDetectionJobInput",
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
    id = "PiiOutputDataConfig",
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
    id = "RedactionConfig",
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
    id = "PiiEntitiesDetectionJobProperties",
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
    id = "DescribePiiEntitiesDetectionJobOutput",
    members = {
        PiiEntitiesDetectionJobProperties = M.PiiEntitiesDetectionJobProperties,
    },
}

M.DescribeResourcePolicyInput = {
    type = "structure",
    id = "DescribeResourcePolicyInput",
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
    id = "DescribeResourcePolicyOutput",
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
    id = "DescribeSentimentDetectionJobInput",
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
    id = "SentimentDetectionJobProperties",
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
    id = "DescribeSentimentDetectionJobOutput",
    members = {
        SentimentDetectionJobProperties = M.SentimentDetectionJobProperties,
    },
}

M.DescribeTargetedSentimentDetectionJobInput = {
    type = "structure",
    id = "DescribeTargetedSentimentDetectionJobInput",
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
    id = "TargetedSentimentDetectionJobProperties",
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
    id = "DescribeTargetedSentimentDetectionJobOutput",
    members = {
        TargetedSentimentDetectionJobProperties = M.TargetedSentimentDetectionJobProperties,
    },
}

M.DescribeTopicsDetectionJobInput = {
    type = "structure",
    id = "DescribeTopicsDetectionJobInput",
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
    id = "TopicsDetectionJobProperties",
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
    id = "DescribeTopicsDetectionJobOutput",
    members = {
        TopicsDetectionJobProperties = M.TopicsDetectionJobProperties,
    },
}

M.DetectDominantLanguageInput = {
    type = "structure",
    id = "DetectDominantLanguageInput",
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
    id = "DetectDominantLanguageOutput",
    members = {
        Languages = {
            type = "list",
            member = M.DominantLanguage,
        },
    },
}

M.DetectEntitiesInput = {
    type = "structure",
    id = "DetectEntitiesInput",
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
    id = "DetectEntitiesOutput",
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
    id = "DetectKeyPhrasesInput",
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
    id = "DetectKeyPhrasesOutput",
    members = {
        KeyPhrases = {
            type = "list",
            member = M.KeyPhrase,
        },
    },
}

M.DetectPiiEntitiesInput = {
    type = "structure",
    id = "DetectPiiEntitiesInput",
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
    id = "PiiEntity",
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
    id = "DetectPiiEntitiesOutput",
    members = {
        Entities = {
            type = "list",
            member = M.PiiEntity,
        },
    },
}

M.DetectSentimentInput = {
    type = "structure",
    id = "DetectSentimentInput",
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
    id = "DetectSentimentOutput",
    members = {
        Sentiment = {
            type = "string",
        },
        SentimentScore = M.SentimentScore,
    },
}

M.DetectSyntaxInput = {
    type = "structure",
    id = "DetectSyntaxInput",
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
    id = "DetectSyntaxOutput",
    members = {
        SyntaxTokens = {
            type = "list",
            member = M.SyntaxToken,
        },
    },
}

M.DetectTargetedSentimentInput = {
    type = "structure",
    id = "DetectTargetedSentimentInput",
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
    id = "DetectTargetedSentimentOutput",
    members = {
        Entities = {
            type = "list",
            member = M.TargetedSentimentEntity,
        },
    },
}

M.TextSegment = {
    type = "structure",
    id = "TextSegment",
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
    id = "DetectToxicContentInput",
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
    id = "ToxicContent",
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
    id = "ToxicLabels",
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
    id = "DetectToxicContentOutput",
    members = {
        ResultList = {
            type = "list",
            member = M.ToxicLabels,
        },
    },
}

M.ImportModelInput = {
    type = "structure",
    id = "ImportModelInput",
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
    id = "ImportModelOutput",
    members = {
        ModelArn = {
            type = "string",
        },
    },
}

M.InvalidFilterException = {
    type = "structure",
    id = "InvalidFilterException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DatasetFilter = {
    type = "structure",
    id = "DatasetFilter",
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
    id = "ListDatasetsInput",
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
    id = "ListDatasetsOutput",
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
    id = "DocumentClassificationJobFilter",
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
    id = "ListDocumentClassificationJobsInput",
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
    id = "ListDocumentClassificationJobsOutput",
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
    id = "DocumentClassifierFilter",
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
    id = "ListDocumentClassifiersInput",
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
    id = "ListDocumentClassifiersOutput",
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
    id = "ListDocumentClassifierSummariesInput",
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
    id = "DocumentClassifierSummary",
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
    id = "ListDocumentClassifierSummariesOutput",
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
    id = "DominantLanguageDetectionJobFilter",
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
    id = "ListDominantLanguageDetectionJobsInput",
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
    id = "ListDominantLanguageDetectionJobsOutput",
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
    id = "EndpointFilter",
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
    id = "ListEndpointsInput",
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
    id = "ListEndpointsOutput",
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
    id = "EntitiesDetectionJobFilter",
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
    id = "ListEntitiesDetectionJobsInput",
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
    id = "ListEntitiesDetectionJobsOutput",
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
    id = "EntityRecognizerFilter",
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
    id = "ListEntityRecognizersInput",
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
    id = "ListEntityRecognizersOutput",
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
    id = "ListEntityRecognizerSummariesInput",
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
    id = "EntityRecognizerSummary",
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
    id = "ListEntityRecognizerSummariesOutput",
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
    id = "EventsDetectionJobFilter",
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
    id = "ListEventsDetectionJobsInput",
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
    id = "ListEventsDetectionJobsOutput",
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
    id = "FlywheelIterationFilter",
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
    id = "ListFlywheelIterationHistoryInput",
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
    id = "ListFlywheelIterationHistoryOutput",
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
    id = "FlywheelFilter",
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
    id = "ListFlywheelsInput",
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
    id = "FlywheelSummary",
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
    id = "ListFlywheelsOutput",
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
    id = "KeyPhrasesDetectionJobFilter",
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
    id = "ListKeyPhrasesDetectionJobsInput",
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
    id = "ListKeyPhrasesDetectionJobsOutput",
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
    id = "PiiEntitiesDetectionJobFilter",
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
    id = "ListPiiEntitiesDetectionJobsInput",
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
    id = "ListPiiEntitiesDetectionJobsOutput",
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
    id = "SentimentDetectionJobFilter",
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
    id = "ListSentimentDetectionJobsInput",
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
    id = "ListSentimentDetectionJobsOutput",
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
    id = "ListTagsForResourceInput",
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

M.TargetedSentimentDetectionJobFilter = {
    type = "structure",
    id = "TargetedSentimentDetectionJobFilter",
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
    id = "ListTargetedSentimentDetectionJobsInput",
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
    id = "ListTargetedSentimentDetectionJobsOutput",
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
    id = "TopicsDetectionJobFilter",
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
    id = "ListTopicsDetectionJobsInput",
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
    id = "ListTopicsDetectionJobsOutput",
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
    id = "PutResourcePolicyInput",
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
    id = "PutResourcePolicyOutput",
    members = {
        PolicyRevisionId = {
            type = "string",
        },
    },
}

M.StartDocumentClassificationJobInput = {
    type = "structure",
    id = "StartDocumentClassificationJobInput",
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
            traits = {
                idempotency_token = true,
            },
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
    id = "StartDocumentClassificationJobOutput",
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
    id = "StartDominantLanguageDetectionJobInput",
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
            traits = {
                idempotency_token = true,
            },
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
    id = "StartDominantLanguageDetectionJobOutput",
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
    id = "StartEntitiesDetectionJobInput",
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
            traits = {
                idempotency_token = true,
            },
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
    id = "StartEntitiesDetectionJobOutput",
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
    id = "StartEventsDetectionJobInput",
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
            traits = {
                idempotency_token = true,
            },
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
    id = "StartEventsDetectionJobOutput",
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
    id = "StartFlywheelIterationInput",
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
    id = "StartFlywheelIterationOutput",
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
    id = "StartKeyPhrasesDetectionJobInput",
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
            traits = {
                idempotency_token = true,
            },
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
    id = "StartKeyPhrasesDetectionJobOutput",
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
    id = "StartPiiEntitiesDetectionJobInput",
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
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.StartPiiEntitiesDetectionJobOutput = {
    type = "structure",
    id = "StartPiiEntitiesDetectionJobOutput",
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
    id = "StartSentimentDetectionJobInput",
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
            traits = {
                idempotency_token = true,
            },
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
    id = "StartSentimentDetectionJobOutput",
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
    id = "StartTargetedSentimentDetectionJobInput",
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
            traits = {
                idempotency_token = true,
            },
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
    id = "StartTargetedSentimentDetectionJobOutput",
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
    id = "StartTopicsDetectionJobInput",
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
            traits = {
                idempotency_token = true,
            },
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
    id = "StartTopicsDetectionJobOutput",
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
    id = "StopDominantLanguageDetectionJobInput",
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
    id = "StopDominantLanguageDetectionJobOutput",
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
    id = "StopEntitiesDetectionJobInput",
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
    id = "StopEntitiesDetectionJobOutput",
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
    id = "StopEventsDetectionJobInput",
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
    id = "StopEventsDetectionJobOutput",
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
    id = "StopKeyPhrasesDetectionJobInput",
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
    id = "StopKeyPhrasesDetectionJobOutput",
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
    id = "StopPiiEntitiesDetectionJobInput",
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
    id = "StopPiiEntitiesDetectionJobOutput",
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
    id = "StopSentimentDetectionJobInput",
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
    id = "StopSentimentDetectionJobOutput",
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
    id = "StopTargetedSentimentDetectionJobInput",
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
    id = "StopTargetedSentimentDetectionJobOutput",
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
    id = "StopTrainingDocumentClassifierInput",
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
    id = "StopTrainingDocumentClassifierOutput",
}

M.StopTrainingEntityRecognizerInput = {
    type = "structure",
    id = "StopTrainingEntityRecognizerInput",
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
    id = "StopTrainingEntityRecognizerOutput",
}

M.ConcurrentModificationException = {
    type = "structure",
    id = "ConcurrentModificationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.TooManyTagKeysException = {
    type = "structure",
    id = "TooManyTagKeysException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

M.UpdateEndpointInput = {
    type = "structure",
    id = "UpdateEndpointInput",
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
    id = "UpdateEndpointOutput",
    members = {
        DesiredModelArn = {
            type = "string",
        },
    },
}

M.UpdateDataSecurityConfig = {
    type = "structure",
    id = "UpdateDataSecurityConfig",
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
    id = "UpdateFlywheelInput",
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
    id = "UpdateFlywheelOutput",
    members = {
        FlywheelProperties = M.FlywheelProperties,
    },
}

return M
