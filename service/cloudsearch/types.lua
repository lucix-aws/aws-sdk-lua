local M = {}

M.BaseException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.BuildSuggestersInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BuildSuggestersOutput = {
    type = "structure",
    members = {
        FieldNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.InternalException = {
    type = "structure",
    error = "server",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.CreateDomainInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceEndpoint = {
    type = "structure",
    members = {
        Endpoint = {
            type = "string",
        },
    },
}

M.Limits = {
    type = "structure",
    members = {
        MaximumReplicationCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MaximumPartitionCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.DomainStatus = {
    type = "structure",
    members = {
        DomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ARN = {
            type = "string",
        },
        Created = {
            type = "boolean",
        },
        Deleted = {
            type = "boolean",
        },
        DocService = M.ServiceEndpoint,
        SearchService = M.ServiceEndpoint,
        RequiresIndexDocuments = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Processing = {
            type = "boolean",
        },
        SearchInstanceType = {
            type = "string",
        },
        SearchPartitionCount = {
            type = "integer",
        },
        SearchInstanceCount = {
            type = "integer",
        },
        Limits = M.Limits,
    },
}

M.CreateDomainOutput = {
    type = "structure",
    members = {
        DomainStatus = M.DomainStatus,
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.AlgorithmicStemming = {
    none = "none",
    minimal = "minimal",
    light = "light",
    full = "full",
}

M.AnalysisOptions = {
    type = "structure",
    members = {
        Synonyms = {
            type = "string",
        },
        Stopwords = {
            type = "string",
        },
        StemmingDictionary = {
            type = "string",
        },
        JapaneseTokenizationDictionary = {
            type = "string",
        },
        AlgorithmicStemming = {
            type = "string",
        },
    },
}

M.AnalysisSchemeLanguage = {
    ar = "ar",
    bg = "bg",
    ca = "ca",
    cs = "cs",
    da = "da",
    de = "de",
    el = "el",
    en = "en",
    es = "es",
    eu = "eu",
    fa = "fa",
    fi = "fi",
    fr = "fr",
    ga = "ga",
    gl = "gl",
    he = "he",
    hi = "hi",
    hu = "hu",
    hy = "hy",
    id = "id",
    it = "it",
    ja = "ja",
    ko = "ko",
    lv = "lv",
    mul = "mul",
    nl = "nl",
    no = "no",
    pt = "pt",
    ro = "ro",
    ru = "ru",
    sv = "sv",
    th = "th",
    tr = "tr",
    zh_Hans = "zh-Hans",
    zh_Hant = "zh-Hant",
}

M.AnalysisScheme = {
    type = "structure",
    members = {
        AnalysisSchemeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnalysisSchemeLanguage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnalysisOptions = M.AnalysisOptions,
    },
}

M.DefineAnalysisSchemeInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnalysisScheme = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnalysisScheme }),
    },
}

M.OptionState = {
    RequiresIndexDocuments = "RequiresIndexDocuments",
    Processing = "Processing",
    Active = "Active",
    FailedToValidate = "FailedToValidate",
}

M.OptionStatus = {
    type = "structure",
    members = {
        CreationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        UpdateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        UpdateVersion = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PendingDeletion = {
            type = "boolean",
        },
    },
}

M.AnalysisSchemeStatus = {
    type = "structure",
    members = {
        Options = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnalysisScheme }),
        Status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OptionStatus }),
    },
}

M.DefineAnalysisSchemeOutput = {
    type = "structure",
    members = {
        AnalysisScheme = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnalysisSchemeStatus }),
    },
}

M.InvalidTypeException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.Expression = {
    type = "structure",
    members = {
        ExpressionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExpressionValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DefineExpressionInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Expression = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Expression }),
    },
}

M.ExpressionStatus = {
    type = "structure",
    members = {
        Options = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Expression }),
        Status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OptionStatus }),
    },
}

M.DefineExpressionOutput = {
    type = "structure",
    members = {
        Expression = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExpressionStatus }),
    },
}

M.DateArrayOptions = {
    type = "structure",
    members = {
        DefaultValue = {
            type = "string",
        },
        SourceFields = {
            type = "string",
        },
        FacetEnabled = {
            type = "boolean",
        },
        SearchEnabled = {
            type = "boolean",
        },
        ReturnEnabled = {
            type = "boolean",
        },
    },
}

M.DateOptions = {
    type = "structure",
    members = {
        DefaultValue = {
            type = "string",
        },
        SourceField = {
            type = "string",
        },
        FacetEnabled = {
            type = "boolean",
        },
        SearchEnabled = {
            type = "boolean",
        },
        ReturnEnabled = {
            type = "boolean",
        },
        SortEnabled = {
            type = "boolean",
        },
    },
}

M.DoubleArrayOptions = {
    type = "structure",
    members = {
        DefaultValue = {
            type = "double",
        },
        SourceFields = {
            type = "string",
        },
        FacetEnabled = {
            type = "boolean",
        },
        SearchEnabled = {
            type = "boolean",
        },
        ReturnEnabled = {
            type = "boolean",
        },
    },
}

M.DoubleOptions = {
    type = "structure",
    members = {
        DefaultValue = {
            type = "double",
        },
        SourceField = {
            type = "string",
        },
        FacetEnabled = {
            type = "boolean",
        },
        SearchEnabled = {
            type = "boolean",
        },
        ReturnEnabled = {
            type = "boolean",
        },
        SortEnabled = {
            type = "boolean",
        },
    },
}

M.IndexFieldType = {
    int = "int",
    double = "double",
    literal = "literal",
    text = "text",
    date = "date",
    latlon = "latlon",
    int_array = "int-array",
    double_array = "double-array",
    literal_array = "literal-array",
    text_array = "text-array",
    date_array = "date-array",
}

M.IntArrayOptions = {
    type = "structure",
    members = {
        DefaultValue = {
            type = "long",
        },
        SourceFields = {
            type = "string",
        },
        FacetEnabled = {
            type = "boolean",
        },
        SearchEnabled = {
            type = "boolean",
        },
        ReturnEnabled = {
            type = "boolean",
        },
    },
}

M.IntOptions = {
    type = "structure",
    members = {
        DefaultValue = {
            type = "long",
        },
        SourceField = {
            type = "string",
        },
        FacetEnabled = {
            type = "boolean",
        },
        SearchEnabled = {
            type = "boolean",
        },
        ReturnEnabled = {
            type = "boolean",
        },
        SortEnabled = {
            type = "boolean",
        },
    },
}

M.LatLonOptions = {
    type = "structure",
    members = {
        DefaultValue = {
            type = "string",
        },
        SourceField = {
            type = "string",
        },
        FacetEnabled = {
            type = "boolean",
        },
        SearchEnabled = {
            type = "boolean",
        },
        ReturnEnabled = {
            type = "boolean",
        },
        SortEnabled = {
            type = "boolean",
        },
    },
}

M.LiteralArrayOptions = {
    type = "structure",
    members = {
        DefaultValue = {
            type = "string",
        },
        SourceFields = {
            type = "string",
        },
        FacetEnabled = {
            type = "boolean",
        },
        SearchEnabled = {
            type = "boolean",
        },
        ReturnEnabled = {
            type = "boolean",
        },
    },
}

M.LiteralOptions = {
    type = "structure",
    members = {
        DefaultValue = {
            type = "string",
        },
        SourceField = {
            type = "string",
        },
        FacetEnabled = {
            type = "boolean",
        },
        SearchEnabled = {
            type = "boolean",
        },
        ReturnEnabled = {
            type = "boolean",
        },
        SortEnabled = {
            type = "boolean",
        },
    },
}

M.TextArrayOptions = {
    type = "structure",
    members = {
        DefaultValue = {
            type = "string",
        },
        SourceFields = {
            type = "string",
        },
        ReturnEnabled = {
            type = "boolean",
        },
        HighlightEnabled = {
            type = "boolean",
        },
        AnalysisScheme = {
            type = "string",
        },
    },
}

M.TextOptions = {
    type = "structure",
    members = {
        DefaultValue = {
            type = "string",
        },
        SourceField = {
            type = "string",
        },
        ReturnEnabled = {
            type = "boolean",
        },
        SortEnabled = {
            type = "boolean",
        },
        HighlightEnabled = {
            type = "boolean",
        },
        AnalysisScheme = {
            type = "string",
        },
    },
}

M.IndexField = {
    type = "structure",
    members = {
        IndexFieldName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexFieldType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IntOptions = M.IntOptions,
        DoubleOptions = M.DoubleOptions,
        LiteralOptions = M.LiteralOptions,
        TextOptions = M.TextOptions,
        DateOptions = M.DateOptions,
        LatLonOptions = M.LatLonOptions,
        IntArrayOptions = M.IntArrayOptions,
        DoubleArrayOptions = M.DoubleArrayOptions,
        LiteralArrayOptions = M.LiteralArrayOptions,
        TextArrayOptions = M.TextArrayOptions,
        DateArrayOptions = M.DateArrayOptions,
    },
}

M.DefineIndexFieldInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexField = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IndexField }),
    },
}

M.IndexFieldStatus = {
    type = "structure",
    members = {
        Options = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IndexField }),
        Status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OptionStatus }),
    },
}

M.DefineIndexFieldOutput = {
    type = "structure",
    members = {
        IndexField = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IndexFieldStatus }),
    },
}

M.SuggesterFuzzyMatching = {
    none = "none",
    low = "low",
    high = "high",
}

M.DocumentSuggesterOptions = {
    type = "structure",
    members = {
        SourceField = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FuzzyMatching = {
            type = "string",
        },
        SortExpression = {
            type = "string",
        },
    },
}

M.Suggester = {
    type = "structure",
    members = {
        SuggesterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DocumentSuggesterOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DocumentSuggesterOptions }),
    },
}

M.DefineSuggesterInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Suggester = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Suggester }),
    },
}

M.SuggesterStatus = {
    type = "structure",
    members = {
        Options = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Suggester }),
        Status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OptionStatus }),
    },
}

M.DefineSuggesterOutput = {
    type = "structure",
    members = {
        Suggester = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SuggesterStatus }),
    },
}

M.DeleteAnalysisSchemeInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnalysisSchemeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAnalysisSchemeOutput = {
    type = "structure",
    members = {
        AnalysisScheme = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnalysisSchemeStatus }),
    },
}

M.DeleteDomainInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDomainOutput = {
    type = "structure",
    members = {
        DomainStatus = M.DomainStatus,
    },
}

M.DeleteExpressionInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExpressionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteExpressionOutput = {
    type = "structure",
    members = {
        Expression = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExpressionStatus }),
    },
}

M.DeleteIndexFieldInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexFieldName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIndexFieldOutput = {
    type = "structure",
    members = {
        IndexField = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IndexFieldStatus }),
    },
}

M.DeleteSuggesterInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SuggesterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSuggesterOutput = {
    type = "structure",
    members = {
        Suggester = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SuggesterStatus }),
    },
}

M.DescribeAnalysisSchemesInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnalysisSchemeNames = {
            type = "list",
            member = { type = "string" },
        },
        Deployed = {
            type = "boolean",
        },
    },
}

M.DescribeAnalysisSchemesOutput = {
    type = "structure",
    members = {
        AnalysisSchemes = {
            type = "list",
            member = M.AnalysisSchemeStatus,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAvailabilityOptionsInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Deployed = {
            type = "boolean",
        },
    },
}

M.AvailabilityOptionsStatus = {
    type = "structure",
    members = {
        Options = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        Status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OptionStatus }),
    },
}

M.DescribeAvailabilityOptionsOutput = {
    type = "structure",
    members = {
        AvailabilityOptions = M.AvailabilityOptionsStatus,
    },
}

M.DisabledOperationException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.DescribeDomainEndpointOptionsInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Deployed = {
            type = "boolean",
        },
    },
}

M.TLSSecurityPolicy = {
    POLICY_MIN_TLS_1_0_2019_07 = "Policy-Min-TLS-1-0-2019-07",
    POLICY_MIN_TLS_1_2_2019_07 = "Policy-Min-TLS-1-2-2019-07",
}

M.DomainEndpointOptions = {
    type = "structure",
    members = {
        EnforceHTTPS = {
            type = "boolean",
        },
        TLSSecurityPolicy = {
            type = "string",
        },
    },
}

M.DomainEndpointOptionsStatus = {
    type = "structure",
    members = {
        Options = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DomainEndpointOptions }),
        Status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OptionStatus }),
    },
}

M.DescribeDomainEndpointOptionsOutput = {
    type = "structure",
    members = {
        DomainEndpointOptions = M.DomainEndpointOptionsStatus,
    },
}

M.DescribeDomainsInput = {
    type = "structure",
    members = {
        DomainNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeDomainsOutput = {
    type = "structure",
    members = {
        DomainStatusList = {
            type = "list",
            member = M.DomainStatus,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeExpressionsInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExpressionNames = {
            type = "list",
            member = { type = "string" },
        },
        Deployed = {
            type = "boolean",
        },
    },
}

M.DescribeExpressionsOutput = {
    type = "structure",
    members = {
        Expressions = {
            type = "list",
            member = M.ExpressionStatus,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeIndexFieldsInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FieldNames = {
            type = "list",
            member = { type = "string" },
        },
        Deployed = {
            type = "boolean",
        },
    },
}

M.DescribeIndexFieldsOutput = {
    type = "structure",
    members = {
        IndexFields = {
            type = "list",
            member = M.IndexFieldStatus,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeScalingParametersInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PartitionInstanceType = {
    search_m1_small = "search.m1.small",
    search_m1_large = "search.m1.large",
    search_m2_xlarge = "search.m2.xlarge",
    search_m2_2xlarge = "search.m2.2xlarge",
    search_m3_medium = "search.m3.medium",
    search_m3_large = "search.m3.large",
    search_m3_xlarge = "search.m3.xlarge",
    search_m3_2xlarge = "search.m3.2xlarge",
    search_small = "search.small",
    search_medium = "search.medium",
    search_large = "search.large",
    search_xlarge = "search.xlarge",
    search_2xlarge = "search.2xlarge",
    search_previousgeneration_small = "search.previousgeneration.small",
    search_previousgeneration_large = "search.previousgeneration.large",
    search_previousgeneration_xlarge = "search.previousgeneration.xlarge",
    search_previousgeneration_2xlarge = "search.previousgeneration.2xlarge",
}

M.ScalingParameters = {
    type = "structure",
    members = {
        DesiredInstanceType = {
            type = "string",
        },
        DesiredReplicationCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        DesiredPartitionCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ScalingParametersStatus = {
    type = "structure",
    members = {
        Options = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScalingParameters }),
        Status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OptionStatus }),
    },
}

M.DescribeScalingParametersOutput = {
    type = "structure",
    members = {
        ScalingParameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScalingParametersStatus }),
    },
}

M.DescribeServiceAccessPoliciesInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Deployed = {
            type = "boolean",
        },
    },
}

M.AccessPoliciesStatus = {
    type = "structure",
    members = {
        Options = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OptionStatus }),
    },
}

M.DescribeServiceAccessPoliciesOutput = {
    type = "structure",
    members = {
        AccessPolicies = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AccessPoliciesStatus }),
    },
}

M.DescribeSuggestersInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SuggesterNames = {
            type = "list",
            member = { type = "string" },
        },
        Deployed = {
            type = "boolean",
        },
    },
}

M.DescribeSuggestersOutput = {
    type = "structure",
    members = {
        Suggesters = {
            type = "list",
            member = M.SuggesterStatus,
            traits = {
                required = true,
            },
        },
    },
}

M.IndexDocumentsInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IndexDocumentsOutput = {
    type = "structure",
    members = {
        FieldNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListDomainNamesInput = {
    type = "structure",
}

M.ListDomainNamesOutput = {
    type = "structure",
    members = {
        DomainNames = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateAvailabilityOptionsInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MultiAZ = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAvailabilityOptionsOutput = {
    type = "structure",
    members = {
        AvailabilityOptions = M.AvailabilityOptionsStatus,
    },
}

M.UpdateDomainEndpointOptionsInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DomainEndpointOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DomainEndpointOptions }),
    },
}

M.UpdateDomainEndpointOptionsOutput = {
    type = "structure",
    members = {
        DomainEndpointOptions = M.DomainEndpointOptionsStatus,
    },
}

M.UpdateScalingParametersInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScalingParameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScalingParameters }),
    },
}

M.UpdateScalingParametersOutput = {
    type = "structure",
    members = {
        ScalingParameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScalingParametersStatus }),
    },
}

M.UpdateServiceAccessPoliciesInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccessPolicies = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateServiceAccessPoliciesOutput = {
    type = "structure",
    members = {
        AccessPolicies = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AccessPoliciesStatus }),
    },
}

return M
