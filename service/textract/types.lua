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
            member_type = "string",
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
            member_type = "string",
        },
    },
}

M.AdaptersConfig = {
    type = "structure",
    members = {
        Adapters = {
            type = "list",
            member_type = "structure",
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
        ManifestS3Object = {
            type = "structure",
        },
    },
}

M.EvaluationMetric = {
    type = "structure",
    members = {
        F1Score = {
            type = "number",
        },
        Precision = {
            type = "number",
        },
        Recall = {
            type = "number",
        },
    },
}

M.AdapterVersionEvaluationMetric = {
    type = "structure",
    members = {
        Baseline = {
            type = "structure",
        },
        AdapterVersion = {
            type = "structure",
        },
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
            member_type = "string",
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
        S3Object = {
            type = "structure",
        },
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
            member_type = "string",
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
        DataAttributes = {
            type = "structure",
        },
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
            member_type = "string",
        },
    },
}

M.QueriesConfig = {
    type = "structure",
    members = {
        Queries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AnalyzeDocumentInput = {
    type = "structure",
    members = {
        Document = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        FeatureTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        HumanLoopConfig = {
            type = "structure",
        },
        QueriesConfig = {
            type = "structure",
        },
        AdaptersConfig = {
            type = "structure",
        },
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
            type = "number",
        },
        Height = {
            type = "number",
        },
        Left = {
            type = "number",
        },
        Top = {
            type = "number",
        },
    },
}

M.Point = {
    type = "structure",
    members = {
        X = {
            type = "number",
        },
        Y = {
            type = "number",
        },
    },
}

M.Geometry = {
    type = "structure",
    members = {
        BoundingBox = {
            type = "structure",
        },
        Polygon = {
            type = "list",
            member_type = "structure",
        },
        RotationAngle = {
            type = "number",
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
            member_type = "string",
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
            type = "number",
        },
        Text = {
            type = "string",
        },
        TextType = {
            type = "string",
        },
        RowIndex = {
            type = "number",
        },
        ColumnIndex = {
            type = "number",
        },
        RowSpan = {
            type = "number",
        },
        ColumnSpan = {
            type = "number",
        },
        Geometry = {
            type = "structure",
        },
        Id = {
            type = "string",
        },
        Relationships = {
            type = "list",
            member_type = "structure",
        },
        EntityTypes = {
            type = "list",
            member_type = "string",
        },
        SelectionStatus = {
            type = "string",
        },
        Page = {
            type = "number",
        },
        Query = {
            type = "structure",
        },
    },
}

M.DocumentMetadata = {
    type = "structure",
    members = {
        Pages = {
            type = "number",
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
            member_type = "string",
        },
        HumanLoopActivationConditionsEvaluationResults = {
            type = "string",
        },
    },
}

M.AnalyzeDocumentOutput = {
    type = "structure",
    members = {
        DocumentMetadata = {
            type = "structure",
        },
        Blocks = {
            type = "list",
            member_type = "structure",
        },
        HumanLoopActivationOutput = {
            type = "structure",
        },
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
        Document = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ExpenseCurrency = {
    type = "structure",
    members = {
        Code = {
            type = "string",
        },
        Confidence = {
            type = "number",
        },
    },
}

M.ExpenseGroupProperty = {
    type = "structure",
    members = {
        Types = {
            type = "list",
            member_type = "string",
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
        Geometry = {
            type = "structure",
        },
        Confidence = {
            type = "number",
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
            type = "number",
        },
    },
}

M.ExpenseField = {
    type = "structure",
    members = {
        Type = {
            type = "structure",
        },
        LabelDetection = {
            type = "structure",
        },
        ValueDetection = {
            type = "structure",
        },
        PageNumber = {
            type = "number",
        },
        Currency = {
            type = "structure",
        },
        GroupProperties = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.LineItemFields = {
    type = "structure",
    members = {
        LineItemExpenseFields = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.LineItemGroup = {
    type = "structure",
    members = {
        LineItemGroupIndex = {
            type = "number",
        },
        LineItems = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ExpenseDocument = {
    type = "structure",
    members = {
        ExpenseIndex = {
            type = "number",
        },
        SummaryFields = {
            type = "list",
            member_type = "structure",
        },
        LineItemGroups = {
            type = "list",
            member_type = "structure",
        },
        Blocks = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AnalyzeExpenseOutput = {
    type = "structure",
    members = {
        DocumentMetadata = {
            type = "structure",
        },
        ExpenseDocuments = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AnalyzeIDInput = {
    type = "structure",
    members = {
        DocumentPages = {
            type = "list",
            member_type = "structure",
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
        NormalizedValue = {
            type = "structure",
        },
        Confidence = {
            type = "number",
        },
    },
}

M.IdentityDocumentField = {
    type = "structure",
    members = {
        Type = {
            type = "structure",
        },
        ValueDetection = {
            type = "structure",
        },
    },
}

M.IdentityDocument = {
    type = "structure",
    members = {
        DocumentIndex = {
            type = "number",
        },
        IdentityDocumentFields = {
            type = "list",
            member_type = "structure",
        },
        Blocks = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AnalyzeIDOutput = {
    type = "structure",
    members = {
        IdentityDocuments = {
            type = "list",
            member_type = "structure",
        },
        DocumentMetadata = {
            type = "structure",
        },
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        AutoUpdate = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        DatasetConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        KMSKeyId = {
            type = "string",
        },
        OutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        Document = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DetectDocumentTextOutput = {
    type = "structure",
    members = {
        DocumentMetadata = {
            type = "structure",
        },
        Blocks = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.SplitDocument = {
    type = "structure",
    members = {
        Index = {
            type = "number",
        },
        Pages = {
            type = "list",
            member_type = "number",
        },
    },
}

M.UndetectedSignature = {
    type = "structure",
    members = {
        Page = {
            type = "number",
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
            member_type = "structure",
        },
        DetectedSignatures = {
            type = "list",
            member_type = "structure",
        },
        UndetectedSignatures = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DocumentLocation = {
    type = "structure",
    members = {
        S3Object = {
            type = "structure",
        },
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
        Geometry = {
            type = "structure",
        },
        Confidence = {
            type = "number",
        },
    },
}

M.LendingField = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        KeyDetection = {
            type = "structure",
        },
        ValueDetections = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SignatureDetection = {
    type = "structure",
    members = {
        Confidence = {
            type = "number",
        },
        Geometry = {
            type = "structure",
        },
    },
}

M.LendingDocument = {
    type = "structure",
    members = {
        LendingFields = {
            type = "list",
            member_type = "structure",
        },
        SignatureDetections = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Extraction = {
    type = "structure",
    members = {
        LendingDocument = {
            type = "structure",
        },
        ExpenseDocument = {
            type = "structure",
        },
        IdentityDocument = {
            type = "structure",
        },
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
            member_type = "string",
        },
        AutoUpdate = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        DatasetConfig = {
            type = "structure",
        },
        KMSKeyId = {
            type = "string",
        },
        OutputConfig = {
            type = "structure",
        },
        EvaluationMetrics = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
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
            member_type = "number",
        },
    },
}

M.GetDocumentAnalysisOutput = {
    type = "structure",
    members = {
        DocumentMetadata = {
            type = "structure",
        },
        JobStatus = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Blocks = {
            type = "list",
            member_type = "structure",
        },
        Warnings = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetDocumentTextDetectionOutput = {
    type = "structure",
    members = {
        DocumentMetadata = {
            type = "structure",
        },
        JobStatus = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Blocks = {
            type = "list",
            member_type = "structure",
        },
        Warnings = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetExpenseAnalysisOutput = {
    type = "structure",
    members = {
        DocumentMetadata = {
            type = "structure",
        },
        JobStatus = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        ExpenseDocuments = {
            type = "list",
            member_type = "structure",
        },
        Warnings = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
    },
}

M.PageClassification = {
    type = "structure",
    members = {
        PageType = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        PageNumber = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        PageClassification = {
            type = "structure",
        },
        Extractions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetLendingAnalysisOutput = {
    type = "structure",
    members = {
        DocumentMetadata = {
            type = "structure",
        },
        JobStatus = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Results = {
            type = "list",
            member_type = "structure",
        },
        Warnings = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        UndetectedDocumentTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetLendingAnalysisSummaryOutput = {
    type = "structure",
    members = {
        DocumentMetadata = {
            type = "structure",
        },
        JobStatus = {
            type = "string",
        },
        Summary = {
            type = "structure",
        },
        Warnings = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
        DocumentLocation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        FeatureTypes = {
            type = "list",
            member_type = "string",
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
        NotificationChannel = {
            type = "structure",
        },
        OutputConfig = {
            type = "structure",
        },
        KMSKeyId = {
            type = "string",
        },
        QueriesConfig = {
            type = "structure",
        },
        AdaptersConfig = {
            type = "structure",
        },
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
        DocumentLocation = {
            type = "structure",
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
        NotificationChannel = {
            type = "structure",
        },
        OutputConfig = {
            type = "structure",
        },
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
        DocumentLocation = {
            type = "structure",
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
        NotificationChannel = {
            type = "structure",
        },
        OutputConfig = {
            type = "structure",
        },
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
        DocumentLocation = {
            type = "structure",
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
        NotificationChannel = {
            type = "structure",
        },
        OutputConfig = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
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
            member_type = "string",
        },
        AutoUpdate = {
            type = "string",
        },
    },
}

return M
