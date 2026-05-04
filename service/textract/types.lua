local M = {}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        ManifestS3Object = M.S3Object,
    },
}

M.EvaluationMetric = {
    type = "structure",
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
    members = {
        ContentClassifiers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.HumanLoopConfig = {
    type = "structure",
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
    members = {
        Pages = {
            type = "integer",
        },
    },
}

M.HumanLoopActivationOutput = {
    type = "structure",
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
        },
    },
}

M.AnalyzeDocumentOutput = {
    type = "structure",
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
    members = {
        Document = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Document }),
    },
}

M.ExpenseCurrency = {
    type = "structure",
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
    members = {
        LineItemExpenseFields = {
            type = "list",
            member = M.ExpenseField,
        },
    },
}

M.LineItemGroup = {
    type = "structure",
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
    members = {
        Type = M.AnalyzeIDDetections,
        ValueDetection = M.AnalyzeIDDetections,
    },
}

M.IdentityDocument = {
    type = "structure",
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
    members = {
        AdapterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
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
    members = {
        AdapterId = {
            type = "string",
        },
    },
}

M.IdempotentParameterMismatchException = {
    type = "structure",
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
    members = {
        AdapterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
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
}

M.DeleteAdapterVersionInput = {
    type = "structure",
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
}

M.DetectDocumentTextInput = {
    type = "structure",
    members = {
        Document = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Document }),
    },
}

M.DetectDocumentTextOutput = {
    type = "structure",
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
    members = {
        Page = {
            type = "integer",
        },
    },
}

M.SplitDocument = {
    type = "structure",
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
    members = {
        Page = {
            type = "integer",
        },
    },
}

M.DocumentGroup = {
    type = "structure",
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
    members = {
        S3Object = M.S3Object,
    },
}

M.LendingDetection = {
    type = "structure",
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
    members = {
        Confidence = {
            type = "float",
        },
        Geometry = M.Geometry,
    },
}

M.LendingDocument = {
    type = "structure",
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
    members = {
        LendingDocument = M.LendingDocument,
        ExpenseDocument = M.ExpenseDocument,
        IdentityDocument = M.IdentityDocument,
    },
}

M.GetAdapterInput = {
    type = "structure",
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
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.StartDocumentTextDetectionInput = {
    type = "structure",
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
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.StartExpenseAnalysisInput = {
    type = "structure",
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
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.StartLendingAnalysisInput = {
    type = "structure",
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
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

M.UpdateAdapterInput = {
    type = "structure",
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
