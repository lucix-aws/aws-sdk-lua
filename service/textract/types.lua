local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.Adapter = {
    type = "structure",
    id = "Adapter",
    members = {
        AdapterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Pages = {
            type = "list",
            member = { type = "string" },
        },
        Version = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FeatureType = {
    TABLES = "TABLES",
    FORMS = "FORMS",
    QUERIES = "QUERIES",
    SIGNATURES = "SIGNATURES",
    LAYOUT = "LAYOUT",
}

M.AdapterOverview = {
    type = "structure",
    id = "AdapterOverview",
    members = {
        AdapterId = {
            type = "string",
        },
        AdapterName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        FeatureTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AdaptersConfig = {
    type = "structure",
    id = "AdaptersConfig",
    members = {
        Adapters = {
            type = "list",
            member = M.Adapter,
            traits = {
                required = true,
            },
        },
    },
}

M.S3Object = {
    type = "structure",
    id = "S3Object",
    members = {
        Bucket = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.AdapterVersionDatasetConfig = {
    type = "structure",
    id = "AdapterVersionDatasetConfig",
    members = {
        ManifestS3Object = M.S3Object,
    },
}

M.EvaluationMetric = {
    type = "structure",
    id = "EvaluationMetric",
    members = {
        F1Score = {
            type = "float",
            traits = {
                default = 0,
            },
        },
        Precision = {
            type = "float",
            traits = {
                default = 0,
            },
        },
        Recall = {
            type = "float",
            traits = {
                default = 0,
            },
        },
    },
}

M.AdapterVersionEvaluationMetric = {
    type = "structure",
    id = "AdapterVersionEvaluationMetric",
    members = {
        Baseline = M.EvaluationMetric,
        AdapterVersion = M.EvaluationMetric,
        FeatureType = {
            type = "string",
        },
    },
}

M.AdapterVersionStatus = {
    ACTIVE = "ACTIVE",
    AT_RISK = "AT_RISK",
    DEPRECATED = "DEPRECATED",
    CREATION_ERROR = "CREATION_ERROR",
    CREATION_IN_PROGRESS = "CREATION_IN_PROGRESS",
}

M.AdapterVersionOverview = {
    type = "structure",
    id = "AdapterVersionOverview",
    members = {
        AdapterId = {
            type = "string",
        },
        AdapterVersion = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        FeatureTypes = {
            type = "list",
            member = { type = "string" },
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.Document = {
    type = "structure",
    id = "Document",
    members = {
        Bytes = {
            type = "blob",
        },
        S3Object = M.S3Object,
    },
}

M.ContentClassifier = {
    FREE_OF_PERSONALLY_IDENTIFIABLE_INFORMATION = "FreeOfPersonallyIdentifiableInformation",
    FREE_OF_ADULT_CONTENT = "FreeOfAdultContent",
}

M.HumanLoopDataAttributes = {
    type = "structure",
    id = "HumanLoopDataAttributes",
    members = {
        ContentClassifiers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.HumanLoopConfig = {
    type = "structure",
    id = "HumanLoopConfig",
    members = {
        HumanLoopName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FlowDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataAttributes = M.HumanLoopDataAttributes,
    },
}

M.Query = {
    type = "structure",
    id = "Query",
    members = {
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Alias = {
            type = "string",
        },
        Pages = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.QueriesConfig = {
    type = "structure",
    id = "QueriesConfig",
    members = {
        Queries = {
            type = "list",
            member = M.Query,
            traits = {
                required = true,
            },
        },
    },
}

M.AnalyzeDocumentInput = {
    type = "structure",
    id = "AnalyzeDocumentInput",
    members = {
        Document = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Document }),
        FeatureTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        HumanLoopConfig = M.HumanLoopConfig,
        QueriesConfig = M.QueriesConfig,
        AdaptersConfig = M.AdaptersConfig,
    },
}

M.BlockType = {
    KEY_VALUE_SET = "KEY_VALUE_SET",
    PAGE = "PAGE",
    LINE = "LINE",
    WORD = "WORD",
    TABLE = "TABLE",
    CELL = "CELL",
    SELECTION_ELEMENT = "SELECTION_ELEMENT",
    MERGED_CELL = "MERGED_CELL",
    TITLE = "TITLE",
    QUERY = "QUERY",
    QUERY_RESULT = "QUERY_RESULT",
    SIGNATURE = "SIGNATURE",
    TABLE_TITLE = "TABLE_TITLE",
    TABLE_FOOTER = "TABLE_FOOTER",
    LAYOUT_TEXT = "LAYOUT_TEXT",
    LAYOUT_TITLE = "LAYOUT_TITLE",
    LAYOUT_HEADER = "LAYOUT_HEADER",
    LAYOUT_FOOTER = "LAYOUT_FOOTER",
    LAYOUT_SECTION_HEADER = "LAYOUT_SECTION_HEADER",
    LAYOUT_PAGE_NUMBER = "LAYOUT_PAGE_NUMBER",
    LAYOUT_LIST = "LAYOUT_LIST",
    LAYOUT_FIGURE = "LAYOUT_FIGURE",
    LAYOUT_TABLE = "LAYOUT_TABLE",
    LAYOUT_KEY_VALUE = "LAYOUT_KEY_VALUE",
}

M.EntityType = {
    KEY = "KEY",
    VALUE = "VALUE",
    COLUMN_HEADER = "COLUMN_HEADER",
    TABLE_TITLE = "TABLE_TITLE",
    TABLE_FOOTER = "TABLE_FOOTER",
    TABLE_SECTION_TITLE = "TABLE_SECTION_TITLE",
    TABLE_SUMMARY = "TABLE_SUMMARY",
    STRUCTURED_TABLE = "STRUCTURED_TABLE",
    SEMI_STRUCTURED_TABLE = "SEMI_STRUCTURED_TABLE",
}

M.BoundingBox = {
    type = "structure",
    id = "BoundingBox",
    members = {
        Width = {
            type = "float",
            traits = {
                default = 0,
            },
        },
        Height = {
            type = "float",
            traits = {
                default = 0,
            },
        },
        Left = {
            type = "float",
            traits = {
                default = 0,
            },
        },
        Top = {
            type = "float",
            traits = {
                default = 0,
            },
        },
    },
}

M.Point = {
    type = "structure",
    id = "Point",
    members = {
        X = {
            type = "float",
            traits = {
                default = 0,
            },
        },
        Y = {
            type = "float",
            traits = {
                default = 0,
            },
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
        RotationAngle = {
            type = "float",
        },
    },
}

M.RelationshipType = {
    VALUE = "VALUE",
    CHILD = "CHILD",
    COMPLEX_FEATURES = "COMPLEX_FEATURES",
    MERGED_CELL = "MERGED_CELL",
    TITLE = "TITLE",
    ANSWER = "ANSWER",
    TABLE = "TABLE",
    TABLE_TITLE = "TABLE_TITLE",
    TABLE_FOOTER = "TABLE_FOOTER",
}

M.Relationship = {
    type = "structure",
    id = "Relationship",
    members = {
        Type = {
            type = "string",
        },
        Ids = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SelectionStatus = {
    SELECTED = "SELECTED",
    NOT_SELECTED = "NOT_SELECTED",
}

M.TextType = {
    HANDWRITING = "HANDWRITING",
    PRINTED = "PRINTED",
}

M.Block = {
    type = "structure",
    id = "Block",
    members = {
        BlockType = {
            type = "string",
        },
        Confidence = {
            type = "float",
        },
        Text = {
            type = "string",
        },
        TextType = {
            type = "string",
        },
        RowIndex = {
            type = "integer",
        },
        ColumnIndex = {
            type = "integer",
        },
        RowSpan = {
            type = "integer",
        },
        ColumnSpan = {
            type = "integer",
        },
        Geometry = M.Geometry,
        Id = {
            type = "string",
        },
        Relationships = {
            type = "list",
            member = M.Relationship,
        },
        EntityTypes = {
            type = "list",
            member = { type = "string" },
        },
        SelectionStatus = {
            type = "string",
        },
        Page = {
            type = "integer",
        },
        Query = M.Query,
    },
}

M.DocumentMetadata = {
    type = "structure",
    id = "DocumentMetadata",
    members = {
        Pages = {
            type = "integer",
        },
    },
}

M.HumanLoopActivationOutput = {
    type = "structure",
    id = "HumanLoopActivationOutput",
    members = {
        HumanLoopArn = {
            type = "string",
        },
        HumanLoopActivationReasons = {
            type = "list",
            member = { type = "string" },
        },
        HumanLoopActivationConditionsEvaluationResults = {
            type = "string",
            traits = {
                media_type = "application/json",
            },
        },
    },
}

M.AnalyzeDocumentOutput = {
    type = "structure",
    id = "AnalyzeDocumentOutput",
    members = {
        DocumentMetadata = M.DocumentMetadata,
        Blocks = {
            type = "list",
            member = M.Block,
        },
        HumanLoopActivationOutput = M.HumanLoopActivationOutput,
        AnalyzeDocumentModelVersion = {
            type = "string",
        },
    },
}

M.BadDocumentException = {
    type = "structure",
    id = "BadDocumentException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.DocumentTooLargeException = {
    type = "structure",
    id = "DocumentTooLargeException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.HumanLoopQuotaExceededException = {
    type = "structure",
    id = "HumanLoopQuotaExceededException",
    error = "client",
    members = {
        ResourceType = {
            type = "string",
        },
        QuotaCode = {
            type = "string",
        },
        ServiceCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.InternalServerError = {
    type = "structure",
    id = "InternalServerError",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    id = "InvalidParameterException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.InvalidS3ObjectException = {
    type = "structure",
    id = "InvalidS3ObjectException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.ProvisionedThroughputExceededException = {
    type = "structure",
    id = "ProvisionedThroughputExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.UnsupportedDocumentException = {
    type = "structure",
    id = "UnsupportedDocumentException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.AnalyzeExpenseInput = {
    type = "structure",
    id = "AnalyzeExpenseInput",
    members = {
        Document = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Document }),
    },
}

M.ExpenseCurrency = {
    type = "structure",
    id = "ExpenseCurrency",
    members = {
        Code = {
            type = "string",
        },
        Confidence = {
            type = "float",
        },
    },
}

M.ExpenseGroupProperty = {
    type = "structure",
    id = "ExpenseGroupProperty",
    members = {
        Types = {
            type = "list",
            member = { type = "string" },
        },
        Id = {
            type = "string",
        },
    },
}

M.ExpenseDetection = {
    type = "structure",
    id = "ExpenseDetection",
    members = {
        Text = {
            type = "string",
        },
        Geometry = M.Geometry,
        Confidence = {
            type = "float",
        },
    },
}

M.ExpenseType = {
    type = "structure",
    id = "ExpenseType",
    members = {
        Text = {
            type = "string",
        },
        Confidence = {
            type = "float",
        },
    },
}

M.ExpenseField = {
    type = "structure",
    id = "ExpenseField",
    members = {
        Type = M.ExpenseType,
        LabelDetection = M.ExpenseDetection,
        ValueDetection = M.ExpenseDetection,
        PageNumber = {
            type = "integer",
        },
        Currency = M.ExpenseCurrency,
        GroupProperties = {
            type = "list",
            member = M.ExpenseGroupProperty,
        },
    },
}

M.LineItemFields = {
    type = "structure",
    id = "LineItemFields",
    members = {
        LineItemExpenseFields = {
            type = "list",
            member = M.ExpenseField,
        },
    },
}

M.LineItemGroup = {
    type = "structure",
    id = "LineItemGroup",
    members = {
        LineItemGroupIndex = {
            type = "integer",
        },
        LineItems = {
            type = "list",
            member = M.LineItemFields,
        },
    },
}

M.ExpenseDocument = {
    type = "structure",
    id = "ExpenseDocument",
    members = {
        ExpenseIndex = {
            type = "integer",
        },
        SummaryFields = {
            type = "list",
            member = M.ExpenseField,
        },
        LineItemGroups = {
            type = "list",
            member = M.LineItemGroup,
        },
        Blocks = {
            type = "list",
            member = M.Block,
        },
    },
}

M.AnalyzeExpenseOutput = {
    type = "structure",
    id = "AnalyzeExpenseOutput",
    members = {
        DocumentMetadata = M.DocumentMetadata,
        ExpenseDocuments = {
            type = "list",
            member = M.ExpenseDocument,
        },
    },
}

M.AnalyzeIDInput = {
    type = "structure",
    id = "AnalyzeIDInput",
    members = {
        DocumentPages = {
            type = "list",
            member = M.Document,
            traits = {
                required = true,
            },
        },
    },
}

M.ValueType = {
    DATE = "DATE",
}

M.NormalizedValue = {
    type = "structure",
    id = "NormalizedValue",
    members = {
        Value = {
            type = "string",
        },
        ValueType = {
            type = "string",
        },
    },
}

M.AnalyzeIDDetections = {
    type = "structure",
    id = "AnalyzeIDDetections",
    members = {
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NormalizedValue = M.NormalizedValue,
        Confidence = {
            type = "float",
        },
    },
}

M.IdentityDocumentField = {
    type = "structure",
    id = "IdentityDocumentField",
    members = {
        Type = M.AnalyzeIDDetections,
        ValueDetection = M.AnalyzeIDDetections,
    },
}

M.IdentityDocument = {
    type = "structure",
    id = "IdentityDocument",
    members = {
        DocumentIndex = {
            type = "integer",
        },
        IdentityDocumentFields = {
            type = "list",
            member = M.IdentityDocumentField,
        },
        Blocks = {
            type = "list",
            member = M.Block,
        },
    },
}

M.AnalyzeIDOutput = {
    type = "structure",
    id = "AnalyzeIDOutput",
    members = {
        IdentityDocuments = {
            type = "list",
            member = M.IdentityDocument,
        },
        DocumentMetadata = M.DocumentMetadata,
        AnalyzeIDModelVersion = {
            type = "string",
        },
    },
}

M.AutoUpdate = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.CreateAdapterInput = {
    type = "structure",
    id = "CreateAdapterInput",
    members = {
        AdapterName = {
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
        Description = {
            type = "string",
        },
        FeatureTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        AutoUpdate = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateAdapterOutput = {
    type = "structure",
    id = "CreateAdapterOutput",
    members = {
        AdapterId = {
            type = "string",
        },
    },
}

M.IdempotentParameterMismatchException = {
    type = "structure",
    id = "IdempotentParameterMismatchException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
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
        Code = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.OutputConfig = {
    type = "structure",
    id = "OutputConfig",
    members = {
        S3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Prefix = {
            type = "string",
        },
    },
}

M.CreateAdapterVersionInput = {
    type = "structure",
    id = "CreateAdapterVersionInput",
    members = {
        AdapterId = {
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
        DatasetConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AdapterVersionDatasetConfig }),
        KMSKeyId = {
            type = "string",
        },
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputConfig }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateAdapterVersionOutput = {
    type = "structure",
    id = "CreateAdapterVersionOutput",
    members = {
        AdapterId = {
            type = "string",
        },
        AdapterVersion = {
            type = "string",
        },
    },
}

M.InvalidKMSKeyException = {
    type = "structure",
    id = "InvalidKMSKeyException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
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
        Code = {
            type = "string",
        },
    },
}

M.DeleteAdapterInput = {
    type = "structure",
    id = "DeleteAdapterInput",
    members = {
        AdapterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAdapterOutput = {
    type = "structure",
    id = "DeleteAdapterOutput",
}

M.DeleteAdapterVersionInput = {
    type = "structure",
    id = "DeleteAdapterVersionInput",
    members = {
        AdapterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdapterVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAdapterVersionOutput = {
    type = "structure",
    id = "DeleteAdapterVersionOutput",
}

M.DetectDocumentTextInput = {
    type = "structure",
    id = "DetectDocumentTextInput",
    members = {
        Document = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Document }),
    },
}

M.DetectDocumentTextOutput = {
    type = "structure",
    id = "DetectDocumentTextOutput",
    members = {
        DocumentMetadata = M.DocumentMetadata,
        Blocks = {
            type = "list",
            member = M.Block,
        },
        DetectDocumentTextModelVersion = {
            type = "string",
        },
    },
}

M.DetectedSignature = {
    type = "structure",
    id = "DetectedSignature",
    members = {
        Page = {
            type = "integer",
        },
    },
}

M.SplitDocument = {
    type = "structure",
    id = "SplitDocument",
    members = {
        Index = {
            type = "integer",
        },
        Pages = {
            type = "list",
            member = { type = "integer" },
        },
    },
}

M.UndetectedSignature = {
    type = "structure",
    id = "UndetectedSignature",
    members = {
        Page = {
            type = "integer",
        },
    },
}

M.DocumentGroup = {
    type = "structure",
    id = "DocumentGroup",
    members = {
        Type = {
            type = "string",
        },
        SplitDocuments = {
            type = "list",
            member = M.SplitDocument,
        },
        DetectedSignatures = {
            type = "list",
            member = M.DetectedSignature,
        },
        UndetectedSignatures = {
            type = "list",
            member = M.UndetectedSignature,
        },
    },
}

M.DocumentLocation = {
    type = "structure",
    id = "DocumentLocation",
    members = {
        S3Object = M.S3Object,
    },
}

M.LendingDetection = {
    type = "structure",
    id = "LendingDetection",
    members = {
        Text = {
            type = "string",
        },
        SelectionStatus = {
            type = "string",
        },
        Geometry = M.Geometry,
        Confidence = {
            type = "float",
        },
    },
}

M.LendingField = {
    type = "structure",
    id = "LendingField",
    members = {
        Type = {
            type = "string",
        },
        KeyDetection = M.LendingDetection,
        ValueDetections = {
            type = "list",
            member = M.LendingDetection,
        },
    },
}

M.SignatureDetection = {
    type = "structure",
    id = "SignatureDetection",
    members = {
        Confidence = {
            type = "float",
        },
        Geometry = M.Geometry,
    },
}

M.LendingDocument = {
    type = "structure",
    id = "LendingDocument",
    members = {
        LendingFields = {
            type = "list",
            member = M.LendingField,
        },
        SignatureDetections = {
            type = "list",
            member = M.SignatureDetection,
        },
    },
}

M.Extraction = {
    type = "structure",
    id = "Extraction",
    members = {
        LendingDocument = M.LendingDocument,
        ExpenseDocument = M.ExpenseDocument,
        IdentityDocument = M.IdentityDocument,
    },
}

M.GetAdapterInput = {
    type = "structure",
    id = "GetAdapterInput",
    members = {
        AdapterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAdapterOutput = {
    type = "structure",
    id = "GetAdapterOutput",
    members = {
        AdapterId = {
            type = "string",
        },
        AdapterName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        FeatureTypes = {
            type = "list",
            member = { type = "string" },
        },
        AutoUpdate = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetAdapterVersionInput = {
    type = "structure",
    id = "GetAdapterVersionInput",
    members = {
        AdapterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdapterVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAdapterVersionOutput = {
    type = "structure",
    id = "GetAdapterVersionOutput",
    members = {
        AdapterId = {
            type = "string",
        },
        AdapterVersion = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        FeatureTypes = {
            type = "list",
            member = { type = "string" },
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        DatasetConfig = M.AdapterVersionDatasetConfig,
        KMSKeyId = {
            type = "string",
        },
        OutputConfig = M.OutputConfig,
        EvaluationMetrics = {
            type = "list",
            member = M.AdapterVersionEvaluationMetric,
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetDocumentAnalysisInput = {
    type = "structure",
    id = "GetDocumentAnalysisInput",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.JobStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    PARTIAL_SUCCESS = "PARTIAL_SUCCESS",
}

M.Warning = {
    type = "structure",
    id = "Warning",
    members = {
        ErrorCode = {
            type = "string",
        },
        Pages = {
            type = "list",
            member = { type = "integer" },
        },
    },
}

M.GetDocumentAnalysisOutput = {
    type = "structure",
    id = "GetDocumentAnalysisOutput",
    members = {
        DocumentMetadata = M.DocumentMetadata,
        JobStatus = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Blocks = {
            type = "list",
            member = M.Block,
        },
        Warnings = {
            type = "list",
            member = M.Warning,
        },
        StatusMessage = {
            type = "string",
        },
        AnalyzeDocumentModelVersion = {
            type = "string",
        },
    },
}

M.InvalidJobIdException = {
    type = "structure",
    id = "InvalidJobIdException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.GetDocumentTextDetectionInput = {
    type = "structure",
    id = "GetDocumentTextDetectionInput",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetDocumentTextDetectionOutput = {
    type = "structure",
    id = "GetDocumentTextDetectionOutput",
    members = {
        DocumentMetadata = M.DocumentMetadata,
        JobStatus = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Blocks = {
            type = "list",
            member = M.Block,
        },
        Warnings = {
            type = "list",
            member = M.Warning,
        },
        StatusMessage = {
            type = "string",
        },
        DetectDocumentTextModelVersion = {
            type = "string",
        },
    },
}

M.GetExpenseAnalysisInput = {
    type = "structure",
    id = "GetExpenseAnalysisInput",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetExpenseAnalysisOutput = {
    type = "structure",
    id = "GetExpenseAnalysisOutput",
    members = {
        DocumentMetadata = M.DocumentMetadata,
        JobStatus = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        ExpenseDocuments = {
            type = "list",
            member = M.ExpenseDocument,
        },
        Warnings = {
            type = "list",
            member = M.Warning,
        },
        StatusMessage = {
            type = "string",
        },
        AnalyzeExpenseModelVersion = {
            type = "string",
        },
    },
}

M.GetLendingAnalysisInput = {
    type = "structure",
    id = "GetLendingAnalysisInput",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Prediction = {
    type = "structure",
    id = "Prediction",
    members = {
        Value = {
            type = "string",
        },
        Confidence = {
            type = "float",
        },
    },
}

M.PageClassification = {
    type = "structure",
    id = "PageClassification",
    members = {
        PageType = {
            type = "list",
            member = M.Prediction,
            traits = {
                required = true,
            },
        },
        PageNumber = {
            type = "list",
            member = M.Prediction,
            traits = {
                required = true,
            },
        },
    },
}

M.LendingResult = {
    type = "structure",
    id = "LendingResult",
    members = {
        Page = {
            type = "integer",
        },
        PageClassification = M.PageClassification,
        Extractions = {
            type = "list",
            member = M.Extraction,
        },
    },
}

M.GetLendingAnalysisOutput = {
    type = "structure",
    id = "GetLendingAnalysisOutput",
    members = {
        DocumentMetadata = M.DocumentMetadata,
        JobStatus = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Results = {
            type = "list",
            member = M.LendingResult,
        },
        Warnings = {
            type = "list",
            member = M.Warning,
        },
        StatusMessage = {
            type = "string",
        },
        AnalyzeLendingModelVersion = {
            type = "string",
        },
    },
}

M.GetLendingAnalysisSummaryInput = {
    type = "structure",
    id = "GetLendingAnalysisSummaryInput",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LendingSummary = {
    type = "structure",
    id = "LendingSummary",
    members = {
        DocumentGroups = {
            type = "list",
            member = M.DocumentGroup,
        },
        UndetectedDocumentTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetLendingAnalysisSummaryOutput = {
    type = "structure",
    id = "GetLendingAnalysisSummaryOutput",
    members = {
        DocumentMetadata = M.DocumentMetadata,
        JobStatus = {
            type = "string",
        },
        Summary = M.LendingSummary,
        Warnings = {
            type = "list",
            member = M.Warning,
        },
        StatusMessage = {
            type = "string",
        },
        AnalyzeLendingModelVersion = {
            type = "string",
        },
    },
}

M.ListAdaptersInput = {
    type = "structure",
    id = "ListAdaptersInput",
    members = {
        AfterCreationTime = {
            type = "timestamp",
        },
        BeforeCreationTime = {
            type = "timestamp",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAdaptersOutput = {
    type = "structure",
    id = "ListAdaptersOutput",
    members = {
        Adapters = {
            type = "list",
            member = M.AdapterOverview,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAdapterVersionsInput = {
    type = "structure",
    id = "ListAdapterVersionsInput",
    members = {
        AdapterId = {
            type = "string",
        },
        AfterCreationTime = {
            type = "timestamp",
        },
        BeforeCreationTime = {
            type = "timestamp",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAdapterVersionsOutput = {
    type = "structure",
    id = "ListAdapterVersionsOutput",
    members = {
        AdapterVersions = {
            type = "list",
            member = M.AdapterVersionOverview,
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
        ResourceARN = {
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
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.NotificationChannel = {
    type = "structure",
    id = "NotificationChannel",
    members = {
        SNSTopicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartDocumentAnalysisInput = {
    type = "structure",
    id = "StartDocumentAnalysisInput",
    members = {
        DocumentLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DocumentLocation }),
        FeatureTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        JobTag = {
            type = "string",
        },
        NotificationChannel = M.NotificationChannel,
        OutputConfig = M.OutputConfig,
        KMSKeyId = {
            type = "string",
        },
        QueriesConfig = M.QueriesConfig,
        AdaptersConfig = M.AdaptersConfig,
    },
}

M.StartDocumentAnalysisOutput = {
    type = "structure",
    id = "StartDocumentAnalysisOutput",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.StartDocumentTextDetectionInput = {
    type = "structure",
    id = "StartDocumentTextDetectionInput",
    members = {
        DocumentLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DocumentLocation }),
        ClientRequestToken = {
            type = "string",
        },
        JobTag = {
            type = "string",
        },
        NotificationChannel = M.NotificationChannel,
        OutputConfig = M.OutputConfig,
        KMSKeyId = {
            type = "string",
        },
    },
}

M.StartDocumentTextDetectionOutput = {
    type = "structure",
    id = "StartDocumentTextDetectionOutput",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.StartExpenseAnalysisInput = {
    type = "structure",
    id = "StartExpenseAnalysisInput",
    members = {
        DocumentLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DocumentLocation }),
        ClientRequestToken = {
            type = "string",
        },
        JobTag = {
            type = "string",
        },
        NotificationChannel = M.NotificationChannel,
        OutputConfig = M.OutputConfig,
        KMSKeyId = {
            type = "string",
        },
    },
}

M.StartExpenseAnalysisOutput = {
    type = "structure",
    id = "StartExpenseAnalysisOutput",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.StartLendingAnalysisInput = {
    type = "structure",
    id = "StartLendingAnalysisInput",
    members = {
        DocumentLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DocumentLocation }),
        ClientRequestToken = {
            type = "string",
        },
        JobTag = {
            type = "string",
        },
        NotificationChannel = M.NotificationChannel,
        OutputConfig = M.OutputConfig,
        KMSKeyId = {
            type = "string",
        },
    },
}

M.StartLendingAnalysisOutput = {
    type = "structure",
    id = "StartLendingAnalysisOutput",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
        ResourceARN = {
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

M.UpdateAdapterInput = {
    type = "structure",
    id = "UpdateAdapterInput",
    members = {
        AdapterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        AdapterName = {
            type = "string",
        },
        AutoUpdate = {
            type = "string",
        },
    },
}

M.UpdateAdapterOutput = {
    type = "structure",
    id = "UpdateAdapterOutput",
    members = {
        AdapterId = {
            type = "string",
        },
        AdapterName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        FeatureTypes = {
            type = "list",
            member = { type = "string" },
        },
        AutoUpdate = {
            type = "string",
        },
    },
}

return M
