local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.cloudsearch"

local M = {}

M.BaseException = schema.new({
    id = id.from(_N, "BaseException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "BaseException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "BaseException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.BuildSuggestersInput = schema.new({
    id = id.from(_N, "BuildSuggestersRequest"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "BuildSuggestersInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BuildSuggestersOutput = schema.new({
    id = id.from(_N, "BuildSuggestersResponse"),
    type = "structure",
    members = {
        FieldNames = schema.new({
            id = id.from(_N, "BuildSuggestersOutput", "FieldNames"),
            type = "list",
            name = "FieldNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.InternalException = schema.new({
    id = id.from(_N, "InternalException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "InternalException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "InternalException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "ValidationException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ValidationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDomainInput = schema.new({
    id = id.from(_N, "CreateDomainRequest"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "CreateDomainInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ServiceEndpoint = schema.new({
    id = id.from(_N, "ServiceEndpoint"),
    type = "structure",
    members = {
        Endpoint = schema.new({
            id = id.from(_N, "ServiceEndpoint", "Endpoint"),
            type = "string",
            name = "Endpoint",
            target_id = prelude.String.id,
        }),
    },
})

M.Limits = schema.new({
    id = id.from(_N, "Limits"),
    type = "structure",
    members = {
        MaximumReplicationCount = schema.new({
            id = id.from(_N, "Limits", "MaximumReplicationCount"),
            type = "integer",
            name = "MaximumReplicationCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaximumPartitionCount = schema.new({
            id = id.from(_N, "Limits", "MaximumPartitionCount"),
            type = "integer",
            name = "MaximumPartitionCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DomainStatus = schema.new({
    id = id.from(_N, "DomainStatus"),
    type = "structure",
    members = {
        DomainId = schema.new({
            id = id.from(_N, "DomainStatus", "DomainId"),
            type = "string",
            name = "DomainId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DomainName = schema.new({
            id = id.from(_N, "DomainStatus", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ARN = schema.new({
            id = id.from(_N, "DomainStatus", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        Created = schema.new({
            id = id.from(_N, "DomainStatus", "Created"),
            type = "boolean",
            name = "Created",
            target_id = prelude.Boolean.id,
        }),
        Deleted = schema.new({
            id = id.from(_N, "DomainStatus", "Deleted"),
            type = "boolean",
            name = "Deleted",
            target_id = prelude.Boolean.id,
        }),
        DocService = schema.new({
            id = id.from(_N, "DomainStatus", "DocService"),
            type = "structure",
            name = "DocService",
            target_id = id.from(_N, "ServiceEndpoint"),
            target = M.ServiceEndpoint,
        }),
        SearchService = schema.new({
            id = id.from(_N, "DomainStatus", "SearchService"),
            type = "structure",
            name = "SearchService",
            target_id = id.from(_N, "ServiceEndpoint"),
            target = M.ServiceEndpoint,
        }),
        RequiresIndexDocuments = schema.new({
            id = id.from(_N, "DomainStatus", "RequiresIndexDocuments"),
            type = "boolean",
            name = "RequiresIndexDocuments",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Processing = schema.new({
            id = id.from(_N, "DomainStatus", "Processing"),
            type = "boolean",
            name = "Processing",
            target_id = prelude.Boolean.id,
        }),
        SearchInstanceType = schema.new({
            id = id.from(_N, "DomainStatus", "SearchInstanceType"),
            type = "string",
            name = "SearchInstanceType",
            target_id = prelude.String.id,
        }),
        SearchPartitionCount = schema.new({
            id = id.from(_N, "DomainStatus", "SearchPartitionCount"),
            type = "integer",
            name = "SearchPartitionCount",
            target_id = prelude.Integer.id,
        }),
        SearchInstanceCount = schema.new({
            id = id.from(_N, "DomainStatus", "SearchInstanceCount"),
            type = "integer",
            name = "SearchInstanceCount",
            target_id = prelude.Integer.id,
        }),
        Limits = schema.new({
            id = id.from(_N, "DomainStatus", "Limits"),
            type = "structure",
            name = "Limits",
            target_id = id.from(_N, "Limits"),
            target = M.Limits,
        }),
    },
})

M.CreateDomainOutput = schema.new({
    id = id.from(_N, "CreateDomainResponse"),
    type = "structure",
    members = {
        DomainStatus = schema.new({
            id = id.from(_N, "CreateDomainOutput", "DomainStatus"),
            type = "structure",
            name = "DomainStatus",
            target_id = id.from(_N, "DomainStatus"),
            target = M.DomainStatus,
        }),
    },
})

M.LimitExceededException = schema.new({
    id = id.from(_N, "LimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "LimitExceededException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "LimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceAlreadyExistsException = schema.new({
    id = id.from(_N, "ResourceAlreadyExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "ResourceAlreadyExistsException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ResourceAlreadyExistsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.AnalysisOptions = schema.new({
    id = id.from(_N, "AnalysisOptions"),
    type = "structure",
    members = {
        Synonyms = schema.new({
            id = id.from(_N, "AnalysisOptions", "Synonyms"),
            type = "string",
            name = "Synonyms",
            target_id = prelude.String.id,
        }),
        Stopwords = schema.new({
            id = id.from(_N, "AnalysisOptions", "Stopwords"),
            type = "string",
            name = "Stopwords",
            target_id = prelude.String.id,
        }),
        StemmingDictionary = schema.new({
            id = id.from(_N, "AnalysisOptions", "StemmingDictionary"),
            type = "string",
            name = "StemmingDictionary",
            target_id = prelude.String.id,
        }),
        JapaneseTokenizationDictionary = schema.new({
            id = id.from(_N, "AnalysisOptions", "JapaneseTokenizationDictionary"),
            type = "string",
            name = "JapaneseTokenizationDictionary",
            target_id = prelude.String.id,
        }),
        AlgorithmicStemming = schema.new({
            id = id.from(_N, "AnalysisOptions", "AlgorithmicStemming"),
            type = "string",
            name = "AlgorithmicStemming",
            target_id = prelude.String.id,
        }),
    },
})

M.AnalysisScheme = schema.new({
    id = id.from(_N, "AnalysisScheme"),
    type = "structure",
    members = {
        AnalysisSchemeName = schema.new({
            id = id.from(_N, "AnalysisScheme", "AnalysisSchemeName"),
            type = "string",
            name = "AnalysisSchemeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AnalysisSchemeLanguage = schema.new({
            id = id.from(_N, "AnalysisScheme", "AnalysisSchemeLanguage"),
            type = "string",
            name = "AnalysisSchemeLanguage",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AnalysisOptions = schema.new({
            id = id.from(_N, "AnalysisScheme", "AnalysisOptions"),
            type = "structure",
            name = "AnalysisOptions",
            target_id = id.from(_N, "AnalysisOptions"),
            target = M.AnalysisOptions,
        }),
    },
})

M.DefineAnalysisSchemeInput = schema.new({
    id = id.from(_N, "DefineAnalysisSchemeRequest"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "DefineAnalysisSchemeInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AnalysisScheme = schema.new({
            id = id.from(_N, "DefineAnalysisSchemeInput", "AnalysisScheme"),
            type = "structure",
            name = "AnalysisScheme",
            target_id = id.from(_N, "AnalysisScheme"),
            target = M.AnalysisScheme,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.OptionStatus = schema.new({
    id = id.from(_N, "OptionStatus"),
    type = "structure",
    members = {
        CreationDate = schema.new({
            id = id.from(_N, "OptionStatus", "CreationDate"),
            type = "timestamp",
            name = "CreationDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UpdateDate = schema.new({
            id = id.from(_N, "OptionStatus", "UpdateDate"),
            type = "timestamp",
            name = "UpdateDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UpdateVersion = schema.new({
            id = id.from(_N, "OptionStatus", "UpdateVersion"),
            type = "integer",
            name = "UpdateVersion",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        State = schema.new({
            id = id.from(_N, "OptionStatus", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PendingDeletion = schema.new({
            id = id.from(_N, "OptionStatus", "PendingDeletion"),
            type = "boolean",
            name = "PendingDeletion",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.AnalysisSchemeStatus = schema.new({
    id = id.from(_N, "AnalysisSchemeStatus"),
    type = "structure",
    members = {
        Options = schema.new({
            id = id.from(_N, "AnalysisSchemeStatus", "Options"),
            type = "structure",
            name = "Options",
            target_id = id.from(_N, "AnalysisScheme"),
            target = M.AnalysisScheme,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "AnalysisSchemeStatus", "Status"),
            type = "structure",
            name = "Status",
            target_id = id.from(_N, "OptionStatus"),
            target = M.OptionStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DefineAnalysisSchemeOutput = schema.new({
    id = id.from(_N, "DefineAnalysisSchemeResponse"),
    type = "structure",
    members = {
        AnalysisScheme = schema.new({
            id = id.from(_N, "DefineAnalysisSchemeOutput", "AnalysisScheme"),
            type = "structure",
            name = "AnalysisScheme",
            target_id = id.from(_N, "AnalysisSchemeStatus"),
            target = M.AnalysisSchemeStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InvalidTypeException = schema.new({
    id = id.from(_N, "InvalidTypeException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "InvalidTypeException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "InvalidTypeException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.Expression = schema.new({
    id = id.from(_N, "Expression"),
    type = "structure",
    members = {
        ExpressionName = schema.new({
            id = id.from(_N, "Expression", "ExpressionName"),
            type = "string",
            name = "ExpressionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExpressionValue = schema.new({
            id = id.from(_N, "Expression", "ExpressionValue"),
            type = "string",
            name = "ExpressionValue",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DefineExpressionInput = schema.new({
    id = id.from(_N, "DefineExpressionRequest"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "DefineExpressionInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Expression = schema.new({
            id = id.from(_N, "DefineExpressionInput", "Expression"),
            type = "structure",
            name = "Expression",
            target_id = id.from(_N, "Expression"),
            target = M.Expression,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ExpressionStatus = schema.new({
    id = id.from(_N, "ExpressionStatus"),
    type = "structure",
    members = {
        Options = schema.new({
            id = id.from(_N, "ExpressionStatus", "Options"),
            type = "structure",
            name = "Options",
            target_id = id.from(_N, "Expression"),
            target = M.Expression,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "ExpressionStatus", "Status"),
            type = "structure",
            name = "Status",
            target_id = id.from(_N, "OptionStatus"),
            target = M.OptionStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DefineExpressionOutput = schema.new({
    id = id.from(_N, "DefineExpressionResponse"),
    type = "structure",
    members = {
        Expression = schema.new({
            id = id.from(_N, "DefineExpressionOutput", "Expression"),
            type = "structure",
            name = "Expression",
            target_id = id.from(_N, "ExpressionStatus"),
            target = M.ExpressionStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DateArrayOptions = schema.new({
    id = id.from(_N, "DateArrayOptions"),
    type = "structure",
    members = {
        DefaultValue = schema.new({
            id = id.from(_N, "DateArrayOptions", "DefaultValue"),
            type = "string",
            name = "DefaultValue",
            target_id = prelude.String.id,
        }),
        SourceFields = schema.new({
            id = id.from(_N, "DateArrayOptions", "SourceFields"),
            type = "string",
            name = "SourceFields",
            target_id = prelude.String.id,
        }),
        FacetEnabled = schema.new({
            id = id.from(_N, "DateArrayOptions", "FacetEnabled"),
            type = "boolean",
            name = "FacetEnabled",
            target_id = prelude.Boolean.id,
        }),
        SearchEnabled = schema.new({
            id = id.from(_N, "DateArrayOptions", "SearchEnabled"),
            type = "boolean",
            name = "SearchEnabled",
            target_id = prelude.Boolean.id,
        }),
        ReturnEnabled = schema.new({
            id = id.from(_N, "DateArrayOptions", "ReturnEnabled"),
            type = "boolean",
            name = "ReturnEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DateOptions = schema.new({
    id = id.from(_N, "DateOptions"),
    type = "structure",
    members = {
        DefaultValue = schema.new({
            id = id.from(_N, "DateOptions", "DefaultValue"),
            type = "string",
            name = "DefaultValue",
            target_id = prelude.String.id,
        }),
        SourceField = schema.new({
            id = id.from(_N, "DateOptions", "SourceField"),
            type = "string",
            name = "SourceField",
            target_id = prelude.String.id,
        }),
        FacetEnabled = schema.new({
            id = id.from(_N, "DateOptions", "FacetEnabled"),
            type = "boolean",
            name = "FacetEnabled",
            target_id = prelude.Boolean.id,
        }),
        SearchEnabled = schema.new({
            id = id.from(_N, "DateOptions", "SearchEnabled"),
            type = "boolean",
            name = "SearchEnabled",
            target_id = prelude.Boolean.id,
        }),
        ReturnEnabled = schema.new({
            id = id.from(_N, "DateOptions", "ReturnEnabled"),
            type = "boolean",
            name = "ReturnEnabled",
            target_id = prelude.Boolean.id,
        }),
        SortEnabled = schema.new({
            id = id.from(_N, "DateOptions", "SortEnabled"),
            type = "boolean",
            name = "SortEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DoubleArrayOptions = schema.new({
    id = id.from(_N, "DoubleArrayOptions"),
    type = "structure",
    members = {
        DefaultValue = schema.new({
            id = id.from(_N, "DoubleArrayOptions", "DefaultValue"),
            type = "double",
            name = "DefaultValue",
            target_id = prelude.Double.id,
        }),
        SourceFields = schema.new({
            id = id.from(_N, "DoubleArrayOptions", "SourceFields"),
            type = "string",
            name = "SourceFields",
            target_id = prelude.String.id,
        }),
        FacetEnabled = schema.new({
            id = id.from(_N, "DoubleArrayOptions", "FacetEnabled"),
            type = "boolean",
            name = "FacetEnabled",
            target_id = prelude.Boolean.id,
        }),
        SearchEnabled = schema.new({
            id = id.from(_N, "DoubleArrayOptions", "SearchEnabled"),
            type = "boolean",
            name = "SearchEnabled",
            target_id = prelude.Boolean.id,
        }),
        ReturnEnabled = schema.new({
            id = id.from(_N, "DoubleArrayOptions", "ReturnEnabled"),
            type = "boolean",
            name = "ReturnEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DoubleOptions = schema.new({
    id = id.from(_N, "DoubleOptions"),
    type = "structure",
    members = {
        DefaultValue = schema.new({
            id = id.from(_N, "DoubleOptions", "DefaultValue"),
            type = "double",
            name = "DefaultValue",
            target_id = prelude.Double.id,
        }),
        SourceField = schema.new({
            id = id.from(_N, "DoubleOptions", "SourceField"),
            type = "string",
            name = "SourceField",
            target_id = prelude.String.id,
        }),
        FacetEnabled = schema.new({
            id = id.from(_N, "DoubleOptions", "FacetEnabled"),
            type = "boolean",
            name = "FacetEnabled",
            target_id = prelude.Boolean.id,
        }),
        SearchEnabled = schema.new({
            id = id.from(_N, "DoubleOptions", "SearchEnabled"),
            type = "boolean",
            name = "SearchEnabled",
            target_id = prelude.Boolean.id,
        }),
        ReturnEnabled = schema.new({
            id = id.from(_N, "DoubleOptions", "ReturnEnabled"),
            type = "boolean",
            name = "ReturnEnabled",
            target_id = prelude.Boolean.id,
        }),
        SortEnabled = schema.new({
            id = id.from(_N, "DoubleOptions", "SortEnabled"),
            type = "boolean",
            name = "SortEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.IntArrayOptions = schema.new({
    id = id.from(_N, "IntArrayOptions"),
    type = "structure",
    members = {
        DefaultValue = schema.new({
            id = id.from(_N, "IntArrayOptions", "DefaultValue"),
            type = "long",
            name = "DefaultValue",
            target_id = prelude.Long.id,
        }),
        SourceFields = schema.new({
            id = id.from(_N, "IntArrayOptions", "SourceFields"),
            type = "string",
            name = "SourceFields",
            target_id = prelude.String.id,
        }),
        FacetEnabled = schema.new({
            id = id.from(_N, "IntArrayOptions", "FacetEnabled"),
            type = "boolean",
            name = "FacetEnabled",
            target_id = prelude.Boolean.id,
        }),
        SearchEnabled = schema.new({
            id = id.from(_N, "IntArrayOptions", "SearchEnabled"),
            type = "boolean",
            name = "SearchEnabled",
            target_id = prelude.Boolean.id,
        }),
        ReturnEnabled = schema.new({
            id = id.from(_N, "IntArrayOptions", "ReturnEnabled"),
            type = "boolean",
            name = "ReturnEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.IntOptions = schema.new({
    id = id.from(_N, "IntOptions"),
    type = "structure",
    members = {
        DefaultValue = schema.new({
            id = id.from(_N, "IntOptions", "DefaultValue"),
            type = "long",
            name = "DefaultValue",
            target_id = prelude.Long.id,
        }),
        SourceField = schema.new({
            id = id.from(_N, "IntOptions", "SourceField"),
            type = "string",
            name = "SourceField",
            target_id = prelude.String.id,
        }),
        FacetEnabled = schema.new({
            id = id.from(_N, "IntOptions", "FacetEnabled"),
            type = "boolean",
            name = "FacetEnabled",
            target_id = prelude.Boolean.id,
        }),
        SearchEnabled = schema.new({
            id = id.from(_N, "IntOptions", "SearchEnabled"),
            type = "boolean",
            name = "SearchEnabled",
            target_id = prelude.Boolean.id,
        }),
        ReturnEnabled = schema.new({
            id = id.from(_N, "IntOptions", "ReturnEnabled"),
            type = "boolean",
            name = "ReturnEnabled",
            target_id = prelude.Boolean.id,
        }),
        SortEnabled = schema.new({
            id = id.from(_N, "IntOptions", "SortEnabled"),
            type = "boolean",
            name = "SortEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.LatLonOptions = schema.new({
    id = id.from(_N, "LatLonOptions"),
    type = "structure",
    members = {
        DefaultValue = schema.new({
            id = id.from(_N, "LatLonOptions", "DefaultValue"),
            type = "string",
            name = "DefaultValue",
            target_id = prelude.String.id,
        }),
        SourceField = schema.new({
            id = id.from(_N, "LatLonOptions", "SourceField"),
            type = "string",
            name = "SourceField",
            target_id = prelude.String.id,
        }),
        FacetEnabled = schema.new({
            id = id.from(_N, "LatLonOptions", "FacetEnabled"),
            type = "boolean",
            name = "FacetEnabled",
            target_id = prelude.Boolean.id,
        }),
        SearchEnabled = schema.new({
            id = id.from(_N, "LatLonOptions", "SearchEnabled"),
            type = "boolean",
            name = "SearchEnabled",
            target_id = prelude.Boolean.id,
        }),
        ReturnEnabled = schema.new({
            id = id.from(_N, "LatLonOptions", "ReturnEnabled"),
            type = "boolean",
            name = "ReturnEnabled",
            target_id = prelude.Boolean.id,
        }),
        SortEnabled = schema.new({
            id = id.from(_N, "LatLonOptions", "SortEnabled"),
            type = "boolean",
            name = "SortEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.LiteralArrayOptions = schema.new({
    id = id.from(_N, "LiteralArrayOptions"),
    type = "structure",
    members = {
        DefaultValue = schema.new({
            id = id.from(_N, "LiteralArrayOptions", "DefaultValue"),
            type = "string",
            name = "DefaultValue",
            target_id = prelude.String.id,
        }),
        SourceFields = schema.new({
            id = id.from(_N, "LiteralArrayOptions", "SourceFields"),
            type = "string",
            name = "SourceFields",
            target_id = prelude.String.id,
        }),
        FacetEnabled = schema.new({
            id = id.from(_N, "LiteralArrayOptions", "FacetEnabled"),
            type = "boolean",
            name = "FacetEnabled",
            target_id = prelude.Boolean.id,
        }),
        SearchEnabled = schema.new({
            id = id.from(_N, "LiteralArrayOptions", "SearchEnabled"),
            type = "boolean",
            name = "SearchEnabled",
            target_id = prelude.Boolean.id,
        }),
        ReturnEnabled = schema.new({
            id = id.from(_N, "LiteralArrayOptions", "ReturnEnabled"),
            type = "boolean",
            name = "ReturnEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.LiteralOptions = schema.new({
    id = id.from(_N, "LiteralOptions"),
    type = "structure",
    members = {
        DefaultValue = schema.new({
            id = id.from(_N, "LiteralOptions", "DefaultValue"),
            type = "string",
            name = "DefaultValue",
            target_id = prelude.String.id,
        }),
        SourceField = schema.new({
            id = id.from(_N, "LiteralOptions", "SourceField"),
            type = "string",
            name = "SourceField",
            target_id = prelude.String.id,
        }),
        FacetEnabled = schema.new({
            id = id.from(_N, "LiteralOptions", "FacetEnabled"),
            type = "boolean",
            name = "FacetEnabled",
            target_id = prelude.Boolean.id,
        }),
        SearchEnabled = schema.new({
            id = id.from(_N, "LiteralOptions", "SearchEnabled"),
            type = "boolean",
            name = "SearchEnabled",
            target_id = prelude.Boolean.id,
        }),
        ReturnEnabled = schema.new({
            id = id.from(_N, "LiteralOptions", "ReturnEnabled"),
            type = "boolean",
            name = "ReturnEnabled",
            target_id = prelude.Boolean.id,
        }),
        SortEnabled = schema.new({
            id = id.from(_N, "LiteralOptions", "SortEnabled"),
            type = "boolean",
            name = "SortEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.TextArrayOptions = schema.new({
    id = id.from(_N, "TextArrayOptions"),
    type = "structure",
    members = {
        DefaultValue = schema.new({
            id = id.from(_N, "TextArrayOptions", "DefaultValue"),
            type = "string",
            name = "DefaultValue",
            target_id = prelude.String.id,
        }),
        SourceFields = schema.new({
            id = id.from(_N, "TextArrayOptions", "SourceFields"),
            type = "string",
            name = "SourceFields",
            target_id = prelude.String.id,
        }),
        ReturnEnabled = schema.new({
            id = id.from(_N, "TextArrayOptions", "ReturnEnabled"),
            type = "boolean",
            name = "ReturnEnabled",
            target_id = prelude.Boolean.id,
        }),
        HighlightEnabled = schema.new({
            id = id.from(_N, "TextArrayOptions", "HighlightEnabled"),
            type = "boolean",
            name = "HighlightEnabled",
            target_id = prelude.Boolean.id,
        }),
        AnalysisScheme = schema.new({
            id = id.from(_N, "TextArrayOptions", "AnalysisScheme"),
            type = "string",
            name = "AnalysisScheme",
            target_id = prelude.String.id,
        }),
    },
})

M.TextOptions = schema.new({
    id = id.from(_N, "TextOptions"),
    type = "structure",
    members = {
        DefaultValue = schema.new({
            id = id.from(_N, "TextOptions", "DefaultValue"),
            type = "string",
            name = "DefaultValue",
            target_id = prelude.String.id,
        }),
        SourceField = schema.new({
            id = id.from(_N, "TextOptions", "SourceField"),
            type = "string",
            name = "SourceField",
            target_id = prelude.String.id,
        }),
        ReturnEnabled = schema.new({
            id = id.from(_N, "TextOptions", "ReturnEnabled"),
            type = "boolean",
            name = "ReturnEnabled",
            target_id = prelude.Boolean.id,
        }),
        SortEnabled = schema.new({
            id = id.from(_N, "TextOptions", "SortEnabled"),
            type = "boolean",
            name = "SortEnabled",
            target_id = prelude.Boolean.id,
        }),
        HighlightEnabled = schema.new({
            id = id.from(_N, "TextOptions", "HighlightEnabled"),
            type = "boolean",
            name = "HighlightEnabled",
            target_id = prelude.Boolean.id,
        }),
        AnalysisScheme = schema.new({
            id = id.from(_N, "TextOptions", "AnalysisScheme"),
            type = "string",
            name = "AnalysisScheme",
            target_id = prelude.String.id,
        }),
    },
})

M.IndexField = schema.new({
    id = id.from(_N, "IndexField"),
    type = "structure",
    members = {
        IndexFieldName = schema.new({
            id = id.from(_N, "IndexField", "IndexFieldName"),
            type = "string",
            name = "IndexFieldName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IndexFieldType = schema.new({
            id = id.from(_N, "IndexField", "IndexFieldType"),
            type = "string",
            name = "IndexFieldType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IntOptions = schema.new({
            id = id.from(_N, "IndexField", "IntOptions"),
            type = "structure",
            name = "IntOptions",
            target_id = id.from(_N, "IntOptions"),
            target = M.IntOptions,
        }),
        DoubleOptions = schema.new({
            id = id.from(_N, "IndexField", "DoubleOptions"),
            type = "structure",
            name = "DoubleOptions",
            target_id = id.from(_N, "DoubleOptions"),
            target = M.DoubleOptions,
        }),
        LiteralOptions = schema.new({
            id = id.from(_N, "IndexField", "LiteralOptions"),
            type = "structure",
            name = "LiteralOptions",
            target_id = id.from(_N, "LiteralOptions"),
            target = M.LiteralOptions,
        }),
        TextOptions = schema.new({
            id = id.from(_N, "IndexField", "TextOptions"),
            type = "structure",
            name = "TextOptions",
            target_id = id.from(_N, "TextOptions"),
            target = M.TextOptions,
        }),
        DateOptions = schema.new({
            id = id.from(_N, "IndexField", "DateOptions"),
            type = "structure",
            name = "DateOptions",
            target_id = id.from(_N, "DateOptions"),
            target = M.DateOptions,
        }),
        LatLonOptions = schema.new({
            id = id.from(_N, "IndexField", "LatLonOptions"),
            type = "structure",
            name = "LatLonOptions",
            target_id = id.from(_N, "LatLonOptions"),
            target = M.LatLonOptions,
        }),
        IntArrayOptions = schema.new({
            id = id.from(_N, "IndexField", "IntArrayOptions"),
            type = "structure",
            name = "IntArrayOptions",
            target_id = id.from(_N, "IntArrayOptions"),
            target = M.IntArrayOptions,
        }),
        DoubleArrayOptions = schema.new({
            id = id.from(_N, "IndexField", "DoubleArrayOptions"),
            type = "structure",
            name = "DoubleArrayOptions",
            target_id = id.from(_N, "DoubleArrayOptions"),
            target = M.DoubleArrayOptions,
        }),
        LiteralArrayOptions = schema.new({
            id = id.from(_N, "IndexField", "LiteralArrayOptions"),
            type = "structure",
            name = "LiteralArrayOptions",
            target_id = id.from(_N, "LiteralArrayOptions"),
            target = M.LiteralArrayOptions,
        }),
        TextArrayOptions = schema.new({
            id = id.from(_N, "IndexField", "TextArrayOptions"),
            type = "structure",
            name = "TextArrayOptions",
            target_id = id.from(_N, "TextArrayOptions"),
            target = M.TextArrayOptions,
        }),
        DateArrayOptions = schema.new({
            id = id.from(_N, "IndexField", "DateArrayOptions"),
            type = "structure",
            name = "DateArrayOptions",
            target_id = id.from(_N, "DateArrayOptions"),
            target = M.DateArrayOptions,
        }),
    },
})

M.DefineIndexFieldInput = schema.new({
    id = id.from(_N, "DefineIndexFieldRequest"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "DefineIndexFieldInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IndexField = schema.new({
            id = id.from(_N, "DefineIndexFieldInput", "IndexField"),
            type = "structure",
            name = "IndexField",
            target_id = id.from(_N, "IndexField"),
            target = M.IndexField,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IndexFieldStatus = schema.new({
    id = id.from(_N, "IndexFieldStatus"),
    type = "structure",
    members = {
        Options = schema.new({
            id = id.from(_N, "IndexFieldStatus", "Options"),
            type = "structure",
            name = "Options",
            target_id = id.from(_N, "IndexField"),
            target = M.IndexField,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "IndexFieldStatus", "Status"),
            type = "structure",
            name = "Status",
            target_id = id.from(_N, "OptionStatus"),
            target = M.OptionStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DefineIndexFieldOutput = schema.new({
    id = id.from(_N, "DefineIndexFieldResponse"),
    type = "structure",
    members = {
        IndexField = schema.new({
            id = id.from(_N, "DefineIndexFieldOutput", "IndexField"),
            type = "structure",
            name = "IndexField",
            target_id = id.from(_N, "IndexFieldStatus"),
            target = M.IndexFieldStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DocumentSuggesterOptions = schema.new({
    id = id.from(_N, "DocumentSuggesterOptions"),
    type = "structure",
    members = {
        SourceField = schema.new({
            id = id.from(_N, "DocumentSuggesterOptions", "SourceField"),
            type = "string",
            name = "SourceField",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FuzzyMatching = schema.new({
            id = id.from(_N, "DocumentSuggesterOptions", "FuzzyMatching"),
            type = "string",
            name = "FuzzyMatching",
            target_id = prelude.String.id,
        }),
        SortExpression = schema.new({
            id = id.from(_N, "DocumentSuggesterOptions", "SortExpression"),
            type = "string",
            name = "SortExpression",
            target_id = prelude.String.id,
        }),
    },
})

M.Suggester = schema.new({
    id = id.from(_N, "Suggester"),
    type = "structure",
    members = {
        SuggesterName = schema.new({
            id = id.from(_N, "Suggester", "SuggesterName"),
            type = "string",
            name = "SuggesterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DocumentSuggesterOptions = schema.new({
            id = id.from(_N, "Suggester", "DocumentSuggesterOptions"),
            type = "structure",
            name = "DocumentSuggesterOptions",
            target_id = id.from(_N, "DocumentSuggesterOptions"),
            target = M.DocumentSuggesterOptions,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DefineSuggesterInput = schema.new({
    id = id.from(_N, "DefineSuggesterRequest"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "DefineSuggesterInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Suggester = schema.new({
            id = id.from(_N, "DefineSuggesterInput", "Suggester"),
            type = "structure",
            name = "Suggester",
            target_id = id.from(_N, "Suggester"),
            target = M.Suggester,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SuggesterStatus = schema.new({
    id = id.from(_N, "SuggesterStatus"),
    type = "structure",
    members = {
        Options = schema.new({
            id = id.from(_N, "SuggesterStatus", "Options"),
            type = "structure",
            name = "Options",
            target_id = id.from(_N, "Suggester"),
            target = M.Suggester,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "SuggesterStatus", "Status"),
            type = "structure",
            name = "Status",
            target_id = id.from(_N, "OptionStatus"),
            target = M.OptionStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DefineSuggesterOutput = schema.new({
    id = id.from(_N, "DefineSuggesterResponse"),
    type = "structure",
    members = {
        Suggester = schema.new({
            id = id.from(_N, "DefineSuggesterOutput", "Suggester"),
            type = "structure",
            name = "Suggester",
            target_id = id.from(_N, "SuggesterStatus"),
            target = M.SuggesterStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAnalysisSchemeInput = schema.new({
    id = id.from(_N, "DeleteAnalysisSchemeRequest"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "DeleteAnalysisSchemeInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AnalysisSchemeName = schema.new({
            id = id.from(_N, "DeleteAnalysisSchemeInput", "AnalysisSchemeName"),
            type = "string",
            name = "AnalysisSchemeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAnalysisSchemeOutput = schema.new({
    id = id.from(_N, "DeleteAnalysisSchemeResponse"),
    type = "structure",
    members = {
        AnalysisScheme = schema.new({
            id = id.from(_N, "DeleteAnalysisSchemeOutput", "AnalysisScheme"),
            type = "structure",
            name = "AnalysisScheme",
            target_id = id.from(_N, "AnalysisSchemeStatus"),
            target = M.AnalysisSchemeStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteDomainInput = schema.new({
    id = id.from(_N, "DeleteDomainRequest"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "DeleteDomainInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteDomainOutput = schema.new({
    id = id.from(_N, "DeleteDomainResponse"),
    type = "structure",
    members = {
        DomainStatus = schema.new({
            id = id.from(_N, "DeleteDomainOutput", "DomainStatus"),
            type = "structure",
            name = "DomainStatus",
            target_id = id.from(_N, "DomainStatus"),
            target = M.DomainStatus,
        }),
    },
})

M.DeleteExpressionInput = schema.new({
    id = id.from(_N, "DeleteExpressionRequest"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "DeleteExpressionInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExpressionName = schema.new({
            id = id.from(_N, "DeleteExpressionInput", "ExpressionName"),
            type = "string",
            name = "ExpressionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteExpressionOutput = schema.new({
    id = id.from(_N, "DeleteExpressionResponse"),
    type = "structure",
    members = {
        Expression = schema.new({
            id = id.from(_N, "DeleteExpressionOutput", "Expression"),
            type = "structure",
            name = "Expression",
            target_id = id.from(_N, "ExpressionStatus"),
            target = M.ExpressionStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteIndexFieldInput = schema.new({
    id = id.from(_N, "DeleteIndexFieldRequest"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "DeleteIndexFieldInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IndexFieldName = schema.new({
            id = id.from(_N, "DeleteIndexFieldInput", "IndexFieldName"),
            type = "string",
            name = "IndexFieldName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteIndexFieldOutput = schema.new({
    id = id.from(_N, "DeleteIndexFieldResponse"),
    type = "structure",
    members = {
        IndexField = schema.new({
            id = id.from(_N, "DeleteIndexFieldOutput", "IndexField"),
            type = "structure",
            name = "IndexField",
            target_id = id.from(_N, "IndexFieldStatus"),
            target = M.IndexFieldStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteSuggesterInput = schema.new({
    id = id.from(_N, "DeleteSuggesterRequest"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "DeleteSuggesterInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SuggesterName = schema.new({
            id = id.from(_N, "DeleteSuggesterInput", "SuggesterName"),
            type = "string",
            name = "SuggesterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteSuggesterOutput = schema.new({
    id = id.from(_N, "DeleteSuggesterResponse"),
    type = "structure",
    members = {
        Suggester = schema.new({
            id = id.from(_N, "DeleteSuggesterOutput", "Suggester"),
            type = "structure",
            name = "Suggester",
            target_id = id.from(_N, "SuggesterStatus"),
            target = M.SuggesterStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeAnalysisSchemesInput = schema.new({
    id = id.from(_N, "DescribeAnalysisSchemesRequest"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "DescribeAnalysisSchemesInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AnalysisSchemeNames = schema.new({
            id = id.from(_N, "DescribeAnalysisSchemesInput", "AnalysisSchemeNames"),
            type = "list",
            name = "AnalysisSchemeNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Deployed = schema.new({
            id = id.from(_N, "DescribeAnalysisSchemesInput", "Deployed"),
            type = "boolean",
            name = "Deployed",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DescribeAnalysisSchemesOutput = schema.new({
    id = id.from(_N, "DescribeAnalysisSchemesResponse"),
    type = "structure",
    members = {
        AnalysisSchemes = schema.new({
            id = id.from(_N, "DescribeAnalysisSchemesOutput", "AnalysisSchemes"),
            type = "list",
            name = "AnalysisSchemes",
            target_id = prelude.Document.id,
            list_member = M.AnalysisSchemeStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeAvailabilityOptionsInput = schema.new({
    id = id.from(_N, "DescribeAvailabilityOptionsRequest"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "DescribeAvailabilityOptionsInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Deployed = schema.new({
            id = id.from(_N, "DescribeAvailabilityOptionsInput", "Deployed"),
            type = "boolean",
            name = "Deployed",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.AvailabilityOptionsStatus = schema.new({
    id = id.from(_N, "AvailabilityOptionsStatus"),
    type = "structure",
    members = {
        Options = schema.new({
            id = id.from(_N, "AvailabilityOptionsStatus", "Options"),
            type = "boolean",
            name = "Options",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        Status = schema.new({
            id = id.from(_N, "AvailabilityOptionsStatus", "Status"),
            type = "structure",
            name = "Status",
            target_id = id.from(_N, "OptionStatus"),
            target = M.OptionStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeAvailabilityOptionsOutput = schema.new({
    id = id.from(_N, "DescribeAvailabilityOptionsResponse"),
    type = "structure",
    members = {
        AvailabilityOptions = schema.new({
            id = id.from(_N, "DescribeAvailabilityOptionsOutput", "AvailabilityOptions"),
            type = "structure",
            name = "AvailabilityOptions",
            target_id = id.from(_N, "AvailabilityOptionsStatus"),
            target = M.AvailabilityOptionsStatus,
        }),
    },
})

M.DisabledOperationException = schema.new({
    id = id.from(_N, "DisabledOperationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Code = schema.new({
            id = id.from(_N, "DisabledOperationException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "DisabledOperationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDomainEndpointOptionsInput = schema.new({
    id = id.from(_N, "DescribeDomainEndpointOptionsRequest"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "DescribeDomainEndpointOptionsInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Deployed = schema.new({
            id = id.from(_N, "DescribeDomainEndpointOptionsInput", "Deployed"),
            type = "boolean",
            name = "Deployed",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DomainEndpointOptions = schema.new({
    id = id.from(_N, "DomainEndpointOptions"),
    type = "structure",
    members = {
        EnforceHTTPS = schema.new({
            id = id.from(_N, "DomainEndpointOptions", "EnforceHTTPS"),
            type = "boolean",
            name = "EnforceHTTPS",
            target_id = prelude.Boolean.id,
        }),
        TLSSecurityPolicy = schema.new({
            id = id.from(_N, "DomainEndpointOptions", "TLSSecurityPolicy"),
            type = "string",
            name = "TLSSecurityPolicy",
            target_id = prelude.String.id,
        }),
    },
})

M.DomainEndpointOptionsStatus = schema.new({
    id = id.from(_N, "DomainEndpointOptionsStatus"),
    type = "structure",
    members = {
        Options = schema.new({
            id = id.from(_N, "DomainEndpointOptionsStatus", "Options"),
            type = "structure",
            name = "Options",
            target_id = id.from(_N, "DomainEndpointOptions"),
            target = M.DomainEndpointOptions,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "DomainEndpointOptionsStatus", "Status"),
            type = "structure",
            name = "Status",
            target_id = id.from(_N, "OptionStatus"),
            target = M.OptionStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeDomainEndpointOptionsOutput = schema.new({
    id = id.from(_N, "DescribeDomainEndpointOptionsResponse"),
    type = "structure",
    members = {
        DomainEndpointOptions = schema.new({
            id = id.from(_N, "DescribeDomainEndpointOptionsOutput", "DomainEndpointOptions"),
            type = "structure",
            name = "DomainEndpointOptions",
            target_id = id.from(_N, "DomainEndpointOptionsStatus"),
            target = M.DomainEndpointOptionsStatus,
        }),
    },
})

M.DescribeDomainsInput = schema.new({
    id = id.from(_N, "DescribeDomainsRequest"),
    type = "structure",
    members = {
        DomainNames = schema.new({
            id = id.from(_N, "DescribeDomainsInput", "DomainNames"),
            type = "list",
            name = "DomainNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeDomainsOutput = schema.new({
    id = id.from(_N, "DescribeDomainsResponse"),
    type = "structure",
    members = {
        DomainStatusList = schema.new({
            id = id.from(_N, "DescribeDomainsOutput", "DomainStatusList"),
            type = "list",
            name = "DomainStatusList",
            target_id = prelude.Document.id,
            list_member = M.DomainStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeExpressionsInput = schema.new({
    id = id.from(_N, "DescribeExpressionsRequest"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "DescribeExpressionsInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExpressionNames = schema.new({
            id = id.from(_N, "DescribeExpressionsInput", "ExpressionNames"),
            type = "list",
            name = "ExpressionNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Deployed = schema.new({
            id = id.from(_N, "DescribeExpressionsInput", "Deployed"),
            type = "boolean",
            name = "Deployed",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DescribeExpressionsOutput = schema.new({
    id = id.from(_N, "DescribeExpressionsResponse"),
    type = "structure",
    members = {
        Expressions = schema.new({
            id = id.from(_N, "DescribeExpressionsOutput", "Expressions"),
            type = "list",
            name = "Expressions",
            target_id = prelude.Document.id,
            list_member = M.ExpressionStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeIndexFieldsInput = schema.new({
    id = id.from(_N, "DescribeIndexFieldsRequest"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "DescribeIndexFieldsInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FieldNames = schema.new({
            id = id.from(_N, "DescribeIndexFieldsInput", "FieldNames"),
            type = "list",
            name = "FieldNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Deployed = schema.new({
            id = id.from(_N, "DescribeIndexFieldsInput", "Deployed"),
            type = "boolean",
            name = "Deployed",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DescribeIndexFieldsOutput = schema.new({
    id = id.from(_N, "DescribeIndexFieldsResponse"),
    type = "structure",
    members = {
        IndexFields = schema.new({
            id = id.from(_N, "DescribeIndexFieldsOutput", "IndexFields"),
            type = "list",
            name = "IndexFields",
            target_id = prelude.Document.id,
            list_member = M.IndexFieldStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeScalingParametersInput = schema.new({
    id = id.from(_N, "DescribeScalingParametersRequest"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "DescribeScalingParametersInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ScalingParameters = schema.new({
    id = id.from(_N, "ScalingParameters"),
    type = "structure",
    members = {
        DesiredInstanceType = schema.new({
            id = id.from(_N, "ScalingParameters", "DesiredInstanceType"),
            type = "string",
            name = "DesiredInstanceType",
            target_id = prelude.String.id,
        }),
        DesiredReplicationCount = schema.new({
            id = id.from(_N, "ScalingParameters", "DesiredReplicationCount"),
            type = "integer",
            name = "DesiredReplicationCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        DesiredPartitionCount = schema.new({
            id = id.from(_N, "ScalingParameters", "DesiredPartitionCount"),
            type = "integer",
            name = "DesiredPartitionCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ScalingParametersStatus = schema.new({
    id = id.from(_N, "ScalingParametersStatus"),
    type = "structure",
    members = {
        Options = schema.new({
            id = id.from(_N, "ScalingParametersStatus", "Options"),
            type = "structure",
            name = "Options",
            target_id = id.from(_N, "ScalingParameters"),
            target = M.ScalingParameters,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "ScalingParametersStatus", "Status"),
            type = "structure",
            name = "Status",
            target_id = id.from(_N, "OptionStatus"),
            target = M.OptionStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeScalingParametersOutput = schema.new({
    id = id.from(_N, "DescribeScalingParametersResponse"),
    type = "structure",
    members = {
        ScalingParameters = schema.new({
            id = id.from(_N, "DescribeScalingParametersOutput", "ScalingParameters"),
            type = "structure",
            name = "ScalingParameters",
            target_id = id.from(_N, "ScalingParametersStatus"),
            target = M.ScalingParametersStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeServiceAccessPoliciesInput = schema.new({
    id = id.from(_N, "DescribeServiceAccessPoliciesRequest"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "DescribeServiceAccessPoliciesInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Deployed = schema.new({
            id = id.from(_N, "DescribeServiceAccessPoliciesInput", "Deployed"),
            type = "boolean",
            name = "Deployed",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.AccessPoliciesStatus = schema.new({
    id = id.from(_N, "AccessPoliciesStatus"),
    type = "structure",
    members = {
        Options = schema.new({
            id = id.from(_N, "AccessPoliciesStatus", "Options"),
            type = "string",
            name = "Options",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "AccessPoliciesStatus", "Status"),
            type = "structure",
            name = "Status",
            target_id = id.from(_N, "OptionStatus"),
            target = M.OptionStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeServiceAccessPoliciesOutput = schema.new({
    id = id.from(_N, "DescribeServiceAccessPoliciesResponse"),
    type = "structure",
    members = {
        AccessPolicies = schema.new({
            id = id.from(_N, "DescribeServiceAccessPoliciesOutput", "AccessPolicies"),
            type = "structure",
            name = "AccessPolicies",
            target_id = id.from(_N, "AccessPoliciesStatus"),
            target = M.AccessPoliciesStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeSuggestersInput = schema.new({
    id = id.from(_N, "DescribeSuggestersRequest"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "DescribeSuggestersInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SuggesterNames = schema.new({
            id = id.from(_N, "DescribeSuggestersInput", "SuggesterNames"),
            type = "list",
            name = "SuggesterNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Deployed = schema.new({
            id = id.from(_N, "DescribeSuggestersInput", "Deployed"),
            type = "boolean",
            name = "Deployed",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DescribeSuggestersOutput = schema.new({
    id = id.from(_N, "DescribeSuggestersResponse"),
    type = "structure",
    members = {
        Suggesters = schema.new({
            id = id.from(_N, "DescribeSuggestersOutput", "Suggesters"),
            type = "list",
            name = "Suggesters",
            target_id = prelude.Document.id,
            list_member = M.SuggesterStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IndexDocumentsInput = schema.new({
    id = id.from(_N, "IndexDocumentsRequest"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "IndexDocumentsInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IndexDocumentsOutput = schema.new({
    id = id.from(_N, "IndexDocumentsResponse"),
    type = "structure",
    members = {
        FieldNames = schema.new({
            id = id.from(_N, "IndexDocumentsOutput", "FieldNames"),
            type = "list",
            name = "FieldNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListDomainNamesInput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.ListDomainNamesOutput = schema.new({
    id = id.from(_N, "ListDomainNamesResponse"),
    type = "structure",
    members = {
        DomainNames = schema.new({
            id = id.from(_N, "ListDomainNamesOutput", "DomainNames"),
            type = "map",
            name = "DomainNames",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.UpdateAvailabilityOptionsInput = schema.new({
    id = id.from(_N, "UpdateAvailabilityOptionsRequest"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "UpdateAvailabilityOptionsInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MultiAZ = schema.new({
            id = id.from(_N, "UpdateAvailabilityOptionsInput", "MultiAZ"),
            type = "boolean",
            name = "MultiAZ",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateAvailabilityOptionsOutput = schema.new({
    id = id.from(_N, "UpdateAvailabilityOptionsResponse"),
    type = "structure",
    members = {
        AvailabilityOptions = schema.new({
            id = id.from(_N, "UpdateAvailabilityOptionsOutput", "AvailabilityOptions"),
            type = "structure",
            name = "AvailabilityOptions",
            target_id = id.from(_N, "AvailabilityOptionsStatus"),
            target = M.AvailabilityOptionsStatus,
        }),
    },
})

M.UpdateDomainEndpointOptionsInput = schema.new({
    id = id.from(_N, "UpdateDomainEndpointOptionsRequest"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "UpdateDomainEndpointOptionsInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DomainEndpointOptions = schema.new({
            id = id.from(_N, "UpdateDomainEndpointOptionsInput", "DomainEndpointOptions"),
            type = "structure",
            name = "DomainEndpointOptions",
            target_id = id.from(_N, "DomainEndpointOptions"),
            target = M.DomainEndpointOptions,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateDomainEndpointOptionsOutput = schema.new({
    id = id.from(_N, "UpdateDomainEndpointOptionsResponse"),
    type = "structure",
    members = {
        DomainEndpointOptions = schema.new({
            id = id.from(_N, "UpdateDomainEndpointOptionsOutput", "DomainEndpointOptions"),
            type = "structure",
            name = "DomainEndpointOptions",
            target_id = id.from(_N, "DomainEndpointOptionsStatus"),
            target = M.DomainEndpointOptionsStatus,
        }),
    },
})

M.UpdateScalingParametersInput = schema.new({
    id = id.from(_N, "UpdateScalingParametersRequest"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "UpdateScalingParametersInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ScalingParameters = schema.new({
            id = id.from(_N, "UpdateScalingParametersInput", "ScalingParameters"),
            type = "structure",
            name = "ScalingParameters",
            target_id = id.from(_N, "ScalingParameters"),
            target = M.ScalingParameters,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateScalingParametersOutput = schema.new({
    id = id.from(_N, "UpdateScalingParametersResponse"),
    type = "structure",
    members = {
        ScalingParameters = schema.new({
            id = id.from(_N, "UpdateScalingParametersOutput", "ScalingParameters"),
            type = "structure",
            name = "ScalingParameters",
            target_id = id.from(_N, "ScalingParametersStatus"),
            target = M.ScalingParametersStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateServiceAccessPoliciesInput = schema.new({
    id = id.from(_N, "UpdateServiceAccessPoliciesRequest"),
    type = "structure",
    members = {
        DomainName = schema.new({
            id = id.from(_N, "UpdateServiceAccessPoliciesInput", "DomainName"),
            type = "string",
            name = "DomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccessPolicies = schema.new({
            id = id.from(_N, "UpdateServiceAccessPoliciesInput", "AccessPolicies"),
            type = "string",
            name = "AccessPolicies",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateServiceAccessPoliciesOutput = schema.new({
    id = id.from(_N, "UpdateServiceAccessPoliciesResponse"),
    type = "structure",
    members = {
        AccessPolicies = schema.new({
            id = id.from(_N, "UpdateServiceAccessPoliciesOutput", "AccessPolicies"),
            type = "structure",
            name = "AccessPolicies",
            target_id = id.from(_N, "AccessPoliciesStatus"),
            target = M.AccessPoliciesStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
