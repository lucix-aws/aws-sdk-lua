local M = {}

M.WafActionType = {
    BLOCK = "BLOCK",
    ALLOW = "ALLOW",
    COUNT = "COUNT",
}

M.WafAction = {
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

M.ExcludedRule = {
    type = "structure",
    members = {
        RuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WafOverrideActionType = {
    NONE = "NONE",
    COUNT = "COUNT",
}

M.WafOverrideAction = {
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

M.WafRuleType = {
    REGULAR = "REGULAR",
    RATE_BASED = "RATE_BASED",
    GROUP = "GROUP",
}

M.ActivatedRule = {
    type = "structure",
    members = {
        Priority = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        RuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Action = M.WafAction,
        OverrideAction = M.WafOverrideAction,
        Type = {
            type = "string",
        },
        ExcludedRules = {
            type = "list",
            member = M.ExcludedRule,
        },
    },
}

M.CreateByteMatchSetInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MatchFieldType = {
    URI = "URI",
    QUERY_STRING = "QUERY_STRING",
    HEADER = "HEADER",
    METHOD = "METHOD",
    BODY = "BODY",
    SINGLE_QUERY_ARG = "SINGLE_QUERY_ARG",
    ALL_QUERY_ARGS = "ALL_QUERY_ARGS",
}

M.FieldToMatch = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Data = {
            type = "string",
        },
    },
}

M.PositionalConstraint = {
    EXACTLY = "EXACTLY",
    STARTS_WITH = "STARTS_WITH",
    ENDS_WITH = "ENDS_WITH",
    CONTAINS = "CONTAINS",
    CONTAINS_WORD = "CONTAINS_WORD",
}

M.TextTransformation = {
    NONE = "NONE",
    COMPRESS_WHITE_SPACE = "COMPRESS_WHITE_SPACE",
    HTML_ENTITY_DECODE = "HTML_ENTITY_DECODE",
    LOWERCASE = "LOWERCASE",
    CMD_LINE = "CMD_LINE",
    URL_DECODE = "URL_DECODE",
}

M.ByteMatchTuple = {
    type = "structure",
    members = {
        FieldToMatch = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FieldToMatch }),
        TargetString = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        TextTransformation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PositionalConstraint = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ByteMatchSet = {
    type = "structure",
    members = {
        ByteMatchSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        ByteMatchTuples = {
            type = "list",
            member = M.ByteMatchTuple,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateByteMatchSetOutput = {
    type = "structure",
    members = {
        ByteMatchSet = M.ByteMatchSet,
        ChangeToken = {
            type = "string",
        },
    },
}

M.WAFDisallowedNameException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.WAFInternalErrorException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.WAFInvalidAccountException = {
    type = "structure",
    error = "client",
}

M.ParameterExceptionField = {
    CHANGE_ACTION = "CHANGE_ACTION",
    WAF_ACTION = "WAF_ACTION",
    WAF_OVERRIDE_ACTION = "WAF_OVERRIDE_ACTION",
    PREDICATE_TYPE = "PREDICATE_TYPE",
    IPSET_TYPE = "IPSET_TYPE",
    BYTE_MATCH_FIELD_TYPE = "BYTE_MATCH_FIELD_TYPE",
    SQL_INJECTION_MATCH_FIELD_TYPE = "SQL_INJECTION_MATCH_FIELD_TYPE",
    BYTE_MATCH_TEXT_TRANSFORMATION = "BYTE_MATCH_TEXT_TRANSFORMATION",
    BYTE_MATCH_POSITIONAL_CONSTRAINT = "BYTE_MATCH_POSITIONAL_CONSTRAINT",
    SIZE_CONSTRAINT_COMPARISON_OPERATOR = "SIZE_CONSTRAINT_COMPARISON_OPERATOR",
    GEO_MATCH_LOCATION_TYPE = "GEO_MATCH_LOCATION_TYPE",
    GEO_MATCH_LOCATION_VALUE = "GEO_MATCH_LOCATION_VALUE",
    RATE_KEY = "RATE_KEY",
    RULE_TYPE = "RULE_TYPE",
    NEXT_MARKER = "NEXT_MARKER",
    RESOURCE_ARN = "RESOURCE_ARN",
    TAGS = "TAGS",
    TAG_KEYS = "TAG_KEYS",
}

M.ParameterExceptionReason = {
    INVALID_OPTION = "INVALID_OPTION",
    ILLEGAL_COMBINATION = "ILLEGAL_COMBINATION",
    ILLEGAL_ARGUMENT = "ILLEGAL_ARGUMENT",
    INVALID_TAG_KEY = "INVALID_TAG_KEY",
}

M.WAFInvalidParameterException = {
    type = "structure",
    error = "client",
    members = {
        field = {
            type = "string",
        },
        parameter = {
            type = "string",
        },
        reason = {
            type = "string",
        },
    },
}

M.WAFLimitsExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.WAFStaleDataException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateGeoMatchSetInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GeoMatchConstraintType = {
    Country = "Country",
}

M.GeoMatchConstraintValue = {
    AF = "AF",
    AX = "AX",
    AL = "AL",
    DZ = "DZ",
    AS = "AS",
    AD = "AD",
    AO = "AO",
    AI = "AI",
    AQ = "AQ",
    AG = "AG",
    AR = "AR",
    AM = "AM",
    AW = "AW",
    AU = "AU",
    AT = "AT",
    AZ = "AZ",
    BS = "BS",
    BH = "BH",
    BD = "BD",
    BB = "BB",
    BY = "BY",
    BE = "BE",
    BZ = "BZ",
    BJ = "BJ",
    BM = "BM",
    BT = "BT",
    BO = "BO",
    BQ = "BQ",
    BA = "BA",
    BW = "BW",
    BV = "BV",
    BR = "BR",
    IO = "IO",
    BN = "BN",
    BG = "BG",
    BF = "BF",
    BI = "BI",
    KH = "KH",
    CM = "CM",
    CA = "CA",
    CV = "CV",
    KY = "KY",
    CF = "CF",
    TD = "TD",
    CL = "CL",
    CN = "CN",
    CX = "CX",
    CC = "CC",
    CO = "CO",
    KM = "KM",
    CG = "CG",
    CD = "CD",
    CK = "CK",
    CR = "CR",
    CI = "CI",
    HR = "HR",
    CU = "CU",
    CW = "CW",
    CY = "CY",
    CZ = "CZ",
    DK = "DK",
    DJ = "DJ",
    DM = "DM",
    DO = "DO",
    EC = "EC",
    EG = "EG",
    SV = "SV",
    GQ = "GQ",
    ER = "ER",
    EE = "EE",
    ET = "ET",
    FK = "FK",
    FO = "FO",
    FJ = "FJ",
    FI = "FI",
    FR = "FR",
    GF = "GF",
    PF = "PF",
    TF = "TF",
    GA = "GA",
    GM = "GM",
    GE = "GE",
    DE = "DE",
    GH = "GH",
    GI = "GI",
    GR = "GR",
    GL = "GL",
    GD = "GD",
    GP = "GP",
    GU = "GU",
    GT = "GT",
    GG = "GG",
    GN = "GN",
    GW = "GW",
    GY = "GY",
    HT = "HT",
    HM = "HM",
    VA = "VA",
    HN = "HN",
    HK = "HK",
    HU = "HU",
    IS = "IS",
    IN = "IN",
    ID = "ID",
    IR = "IR",
    IQ = "IQ",
    IE = "IE",
    IM = "IM",
    IL = "IL",
    IT = "IT",
    JM = "JM",
    JP = "JP",
    JE = "JE",
    JO = "JO",
    KZ = "KZ",
    KE = "KE",
    KI = "KI",
    KP = "KP",
    KR = "KR",
    KW = "KW",
    KG = "KG",
    LA = "LA",
    LV = "LV",
    LB = "LB",
    LS = "LS",
    LR = "LR",
    LY = "LY",
    LI = "LI",
    LT = "LT",
    LU = "LU",
    MO = "MO",
    MK = "MK",
    MG = "MG",
    MW = "MW",
    MY = "MY",
    MV = "MV",
    ML = "ML",
    MT = "MT",
    MH = "MH",
    MQ = "MQ",
    MR = "MR",
    MU = "MU",
    YT = "YT",
    MX = "MX",
    FM = "FM",
    MD = "MD",
    MC = "MC",
    MN = "MN",
    ME = "ME",
    MS = "MS",
    MA = "MA",
    MZ = "MZ",
    MM = "MM",
    NA = "NA",
    NR = "NR",
    NP = "NP",
    NL = "NL",
    NC = "NC",
    NZ = "NZ",
    NI = "NI",
    NE = "NE",
    NG = "NG",
    NU = "NU",
    NF = "NF",
    MP = "MP",
    NO = "NO",
    OM = "OM",
    PK = "PK",
    PW = "PW",
    PS = "PS",
    PA = "PA",
    PG = "PG",
    PY = "PY",
    PE = "PE",
    PH = "PH",
    PN = "PN",
    PL = "PL",
    PT = "PT",
    PR = "PR",
    QA = "QA",
    RE = "RE",
    RO = "RO",
    RU = "RU",
    RW = "RW",
    BL = "BL",
    SH = "SH",
    KN = "KN",
    LC = "LC",
    MF = "MF",
    PM = "PM",
    VC = "VC",
    WS = "WS",
    SM = "SM",
    ST = "ST",
    SA = "SA",
    SN = "SN",
    RS = "RS",
    SC = "SC",
    SL = "SL",
    SG = "SG",
    SX = "SX",
    SK = "SK",
    SI = "SI",
    SB = "SB",
    SO = "SO",
    ZA = "ZA",
    GS = "GS",
    SS = "SS",
    ES = "ES",
    LK = "LK",
    SD = "SD",
    SR = "SR",
    SJ = "SJ",
    SZ = "SZ",
    SE = "SE",
    CH = "CH",
    SY = "SY",
    TW = "TW",
    TJ = "TJ",
    TZ = "TZ",
    TH = "TH",
    TL = "TL",
    TG = "TG",
    TK = "TK",
    TO = "TO",
    TT = "TT",
    TN = "TN",
    TR = "TR",
    TM = "TM",
    TC = "TC",
    TV = "TV",
    UG = "UG",
    UA = "UA",
    AE = "AE",
    GB = "GB",
    US = "US",
    UM = "UM",
    UY = "UY",
    UZ = "UZ",
    VU = "VU",
    VE = "VE",
    VN = "VN",
    VG = "VG",
    VI = "VI",
    WF = "WF",
    EH = "EH",
    YE = "YE",
    ZM = "ZM",
    ZW = "ZW",
}

M.GeoMatchConstraint = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GeoMatchSet = {
    type = "structure",
    members = {
        GeoMatchSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        GeoMatchConstraints = {
            type = "list",
            member = M.GeoMatchConstraint,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateGeoMatchSetOutput = {
    type = "structure",
    members = {
        GeoMatchSet = M.GeoMatchSet,
        ChangeToken = {
            type = "string",
        },
    },
}

M.CreateIPSetInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IPSetDescriptorType = {
    IPV4 = "IPV4",
    IPV6 = "IPV6",
}

M.IPSetDescriptor = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IPSet = {
    type = "structure",
    members = {
        IPSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        IPSetDescriptors = {
            type = "list",
            member = M.IPSetDescriptor,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateIPSetOutput = {
    type = "structure",
    members = {
        IPSet = M.IPSet,
        ChangeToken = {
            type = "string",
        },
    },
}

M.RateKey = {
    IP = "IP",
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
            traits = {
                required = true,
            },
        },
    },
}

M.CreateRateBasedRuleInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RateKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RateLimit = {
            type = "long",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
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

M.PredicateType = {
    IP_MATCH = "IPMatch",
    BYTE_MATCH = "ByteMatch",
    SQL_INJECTION_MATCH = "SqlInjectionMatch",
    GEO_MATCH = "GeoMatch",
    SIZE_CONSTRAINT = "SizeConstraint",
    XSS_MATCH = "XssMatch",
    REGEX_MATCH = "RegexMatch",
}

M.Predicate = {
    type = "structure",
    members = {
        Negated = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RateBasedRule = {
    type = "structure",
    members = {
        RuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        MetricName = {
            type = "string",
        },
        MatchPredicates = {
            type = "list",
            member = M.Predicate,
            traits = {
                required = true,
            },
        },
        RateKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RateLimit = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateRateBasedRuleOutput = {
    type = "structure",
    members = {
        Rule = M.RateBasedRule,
        ChangeToken = {
            type = "string",
        },
    },
}

M.WAFBadRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.WAFTagOperationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.WAFTagOperationInternalErrorException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateRegexMatchSetInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegexMatchTuple = {
    type = "structure",
    members = {
        FieldToMatch = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FieldToMatch }),
        TextTransformation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegexPatternSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegexMatchSet = {
    type = "structure",
    members = {
        RegexMatchSetId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        RegexMatchTuples = {
            type = "list",
            member = M.RegexMatchTuple,
        },
    },
}

M.CreateRegexMatchSetOutput = {
    type = "structure",
    members = {
        RegexMatchSet = M.RegexMatchSet,
        ChangeToken = {
            type = "string",
        },
    },
}

M.CreateRegexPatternSetInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegexPatternSet = {
    type = "structure",
    members = {
        RegexPatternSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        RegexPatternStrings = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CreateRegexPatternSetOutput = {
    type = "structure",
    members = {
        RegexPatternSet = M.RegexPatternSet,
        ChangeToken = {
            type = "string",
        },
    },
}

M.CreateRuleInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
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

M.Rule = {
    type = "structure",
    members = {
        RuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        MetricName = {
            type = "string",
        },
        Predicates = {
            type = "list",
            member = M.Predicate,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateRuleOutput = {
    type = "structure",
    members = {
        Rule = M.Rule,
        ChangeToken = {
            type = "string",
        },
    },
}

M.CreateRuleGroupInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
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

M.RuleGroup = {
    type = "structure",
    members = {
        RuleGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        MetricName = {
            type = "string",
        },
    },
}

M.CreateRuleGroupOutput = {
    type = "structure",
    members = {
        RuleGroup = M.RuleGroup,
        ChangeToken = {
            type = "string",
        },
    },
}

M.CreateSizeConstraintSetInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ComparisonOperator = {
    EQ = "EQ",
    NE = "NE",
    LE = "LE",
    LT = "LT",
    GE = "GE",
    GT = "GT",
}

M.SizeConstraint = {
    type = "structure",
    members = {
        FieldToMatch = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FieldToMatch }),
        TextTransformation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComparisonOperator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Size = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.SizeConstraintSet = {
    type = "structure",
    members = {
        SizeConstraintSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        SizeConstraints = {
            type = "list",
            member = M.SizeConstraint,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateSizeConstraintSetOutput = {
    type = "structure",
    members = {
        SizeConstraintSet = M.SizeConstraintSet,
        ChangeToken = {
            type = "string",
        },
    },
}

M.CreateSqlInjectionMatchSetInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SqlInjectionMatchTuple = {
    type = "structure",
    members = {
        FieldToMatch = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FieldToMatch }),
        TextTransformation = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SqlInjectionMatchSet = {
    type = "structure",
    members = {
        SqlInjectionMatchSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        SqlInjectionMatchTuples = {
            type = "list",
            member = M.SqlInjectionMatchTuple,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateSqlInjectionMatchSetOutput = {
    type = "structure",
    members = {
        SqlInjectionMatchSet = M.SqlInjectionMatchSet,
        ChangeToken = {
            type = "string",
        },
    },
}

M.CreateWebACLInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultAction = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WafAction }),
        ChangeToken = {
            type = "string",
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

M.WebACL = {
    type = "structure",
    members = {
        WebACLId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        MetricName = {
            type = "string",
        },
        DefaultAction = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WafAction }),
        Rules = {
            type = "list",
            member = M.ActivatedRule,
            traits = {
                required = true,
            },
        },
        WebACLArn = {
            type = "string",
        },
    },
}

M.CreateWebACLOutput = {
    type = "structure",
    members = {
        WebACL = M.WebACL,
        ChangeToken = {
            type = "string",
        },
    },
}

M.CreateWebACLMigrationStackInput = {
    type = "structure",
    members = {
        WebACLId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IgnoreUnsupportedType = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateWebACLMigrationStackOutput = {
    type = "structure",
    members = {
        S3ObjectUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MigrationErrorType = {
    ENTITY_NOT_SUPPORTED = "ENTITY_NOT_SUPPORTED",
    ENTITY_NOT_FOUND = "ENTITY_NOT_FOUND",
    S3_BUCKET_NO_PERMISSION = "S3_BUCKET_NO_PERMISSION",
    S3_BUCKET_NOT_ACCESSIBLE = "S3_BUCKET_NOT_ACCESSIBLE",
    S3_BUCKET_NOT_FOUND = "S3_BUCKET_NOT_FOUND",
    S3_BUCKET_INVALID_REGION = "S3_BUCKET_INVALID_REGION",
    S3_INTERNAL_ERROR = "S3_INTERNAL_ERROR",
}

M.WAFEntityMigrationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        MigrationErrorType = {
            type = "string",
        },
        MigrationErrorReason = {
            type = "string",
        },
    },
}

M.WAFInvalidOperationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.WAFNonexistentItemException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateXssMatchSetInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.XssMatchTuple = {
    type = "structure",
    members = {
        FieldToMatch = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FieldToMatch }),
        TextTransformation = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.XssMatchSet = {
    type = "structure",
    members = {
        XssMatchSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        XssMatchTuples = {
            type = "list",
            member = M.XssMatchTuple,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateXssMatchSetOutput = {
    type = "structure",
    members = {
        XssMatchSet = M.XssMatchSet,
        ChangeToken = {
            type = "string",
        },
    },
}

M.DeleteByteMatchSetInput = {
    type = "structure",
    members = {
        ByteMatchSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteByteMatchSetOutput = {
    type = "structure",
    members = {
        ChangeToken = {
            type = "string",
        },
    },
}

M.WAFNonEmptyEntityException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.WAFReferencedItemException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteGeoMatchSetInput = {
    type = "structure",
    members = {
        GeoMatchSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteGeoMatchSetOutput = {
    type = "structure",
    members = {
        ChangeToken = {
            type = "string",
        },
    },
}

M.DeleteIPSetInput = {
    type = "structure",
    members = {
        IPSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIPSetOutput = {
    type = "structure",
    members = {
        ChangeToken = {
            type = "string",
        },
    },
}

M.DeleteLoggingConfigurationInput = {
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

M.DeleteLoggingConfigurationOutput = {
    type = "structure",
}

M.DeletePermissionPolicyInput = {
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

M.DeletePermissionPolicyOutput = {
    type = "structure",
}

M.DeleteRateBasedRuleInput = {
    type = "structure",
    members = {
        RuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRateBasedRuleOutput = {
    type = "structure",
    members = {
        ChangeToken = {
            type = "string",
        },
    },
}

M.DeleteRegexMatchSetInput = {
    type = "structure",
    members = {
        RegexMatchSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRegexMatchSetOutput = {
    type = "structure",
    members = {
        ChangeToken = {
            type = "string",
        },
    },
}

M.DeleteRegexPatternSetInput = {
    type = "structure",
    members = {
        RegexPatternSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRegexPatternSetOutput = {
    type = "structure",
    members = {
        ChangeToken = {
            type = "string",
        },
    },
}

M.DeleteRuleInput = {
    type = "structure",
    members = {
        RuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRuleOutput = {
    type = "structure",
    members = {
        ChangeToken = {
            type = "string",
        },
    },
}

M.DeleteRuleGroupInput = {
    type = "structure",
    members = {
        RuleGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRuleGroupOutput = {
    type = "structure",
    members = {
        ChangeToken = {
            type = "string",
        },
    },
}

M.DeleteSizeConstraintSetInput = {
    type = "structure",
    members = {
        SizeConstraintSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSizeConstraintSetOutput = {
    type = "structure",
    members = {
        ChangeToken = {
            type = "string",
        },
    },
}

M.DeleteSqlInjectionMatchSetInput = {
    type = "structure",
    members = {
        SqlInjectionMatchSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSqlInjectionMatchSetOutput = {
    type = "structure",
    members = {
        ChangeToken = {
            type = "string",
        },
    },
}

M.DeleteWebACLInput = {
    type = "structure",
    members = {
        WebACLId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWebACLOutput = {
    type = "structure",
    members = {
        ChangeToken = {
            type = "string",
        },
    },
}

M.DeleteXssMatchSetInput = {
    type = "structure",
    members = {
        XssMatchSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteXssMatchSetOutput = {
    type = "structure",
    members = {
        ChangeToken = {
            type = "string",
        },
    },
}

M.GetByteMatchSetInput = {
    type = "structure",
    members = {
        ByteMatchSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetByteMatchSetOutput = {
    type = "structure",
    members = {
        ByteMatchSet = M.ByteMatchSet,
    },
}

M.GetChangeTokenInput = {
    type = "structure",
}

M.GetChangeTokenOutput = {
    type = "structure",
    members = {
        ChangeToken = {
            type = "string",
        },
    },
}

M.GetChangeTokenStatusInput = {
    type = "structure",
    members = {
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ChangeTokenStatus = {
    PROVISIONED = "PROVISIONED",
    PENDING = "PENDING",
    INSYNC = "INSYNC",
}

M.GetChangeTokenStatusOutput = {
    type = "structure",
    members = {
        ChangeTokenStatus = {
            type = "string",
        },
    },
}

M.GetGeoMatchSetInput = {
    type = "structure",
    members = {
        GeoMatchSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetGeoMatchSetOutput = {
    type = "structure",
    members = {
        GeoMatchSet = M.GeoMatchSet,
    },
}

M.GetIPSetInput = {
    type = "structure",
    members = {
        IPSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetIPSetOutput = {
    type = "structure",
    members = {
        IPSet = M.IPSet,
    },
}

M.GetLoggingConfigurationInput = {
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

M.LoggingConfiguration = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogDestinationConfigs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        RedactedFields = {
            type = "list",
            member = M.FieldToMatch,
        },
    },
}

M.GetLoggingConfigurationOutput = {
    type = "structure",
    members = {
        LoggingConfiguration = M.LoggingConfiguration,
    },
}

M.GetPermissionPolicyInput = {
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

M.GetPermissionPolicyOutput = {
    type = "structure",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.GetRateBasedRuleInput = {
    type = "structure",
    members = {
        RuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRateBasedRuleOutput = {
    type = "structure",
    members = {
        Rule = M.RateBasedRule,
    },
}

M.GetRateBasedRuleManagedKeysInput = {
    type = "structure",
    members = {
        RuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.GetRateBasedRuleManagedKeysOutput = {
    type = "structure",
    members = {
        ManagedKeys = {
            type = "list",
            member = { type = "string" },
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.GetRegexMatchSetInput = {
    type = "structure",
    members = {
        RegexMatchSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRegexMatchSetOutput = {
    type = "structure",
    members = {
        RegexMatchSet = M.RegexMatchSet,
    },
}

M.GetRegexPatternSetInput = {
    type = "structure",
    members = {
        RegexPatternSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRegexPatternSetOutput = {
    type = "structure",
    members = {
        RegexPatternSet = M.RegexPatternSet,
    },
}

M.GetRuleInput = {
    type = "structure",
    members = {
        RuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRuleOutput = {
    type = "structure",
    members = {
        Rule = M.Rule,
    },
}

M.GetRuleGroupInput = {
    type = "structure",
    members = {
        RuleGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRuleGroupOutput = {
    type = "structure",
    members = {
        RuleGroup = M.RuleGroup,
    },
}

M.TimeWindow = {
    type = "structure",
    members = {
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSampledRequestsInput = {
    type = "structure",
    members = {
        WebAclId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimeWindow = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TimeWindow }),
        MaxItems = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.HTTPHeader = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.HTTPRequest = {
    type = "structure",
    members = {
        ClientIP = {
            type = "string",
        },
        Country = {
            type = "string",
        },
        URI = {
            type = "string",
        },
        Method = {
            type = "string",
        },
        HTTPVersion = {
            type = "string",
        },
        Headers = {
            type = "list",
            member = M.HTTPHeader,
        },
    },
}

M.SampledHTTPRequest = {
    type = "structure",
    members = {
        Request = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HTTPRequest }),
        Weight = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        Timestamp = {
            type = "timestamp",
        },
        Action = {
            type = "string",
        },
        RuleWithinRuleGroup = {
            type = "string",
        },
    },
}

M.GetSampledRequestsOutput = {
    type = "structure",
    members = {
        SampledRequests = {
            type = "list",
            member = M.SampledHTTPRequest,
        },
        PopulationSize = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        TimeWindow = M.TimeWindow,
    },
}

M.GetSizeConstraintSetInput = {
    type = "structure",
    members = {
        SizeConstraintSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSizeConstraintSetOutput = {
    type = "structure",
    members = {
        SizeConstraintSet = M.SizeConstraintSet,
    },
}

M.GetSqlInjectionMatchSetInput = {
    type = "structure",
    members = {
        SqlInjectionMatchSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSqlInjectionMatchSetOutput = {
    type = "structure",
    members = {
        SqlInjectionMatchSet = M.SqlInjectionMatchSet,
    },
}

M.GetWebACLInput = {
    type = "structure",
    members = {
        WebACLId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetWebACLOutput = {
    type = "structure",
    members = {
        WebACL = M.WebACL,
    },
}

M.GetXssMatchSetInput = {
    type = "structure",
    members = {
        XssMatchSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetXssMatchSetOutput = {
    type = "structure",
    members = {
        XssMatchSet = M.XssMatchSet,
    },
}

M.ListActivatedRulesInRuleGroupInput = {
    type = "structure",
    members = {
        RuleGroupId = {
            type = "string",
        },
        NextMarker = {
            type = "string",
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ListActivatedRulesInRuleGroupOutput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        ActivatedRules = {
            type = "list",
            member = M.ActivatedRule,
        },
    },
}

M.ListByteMatchSetsInput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ByteMatchSetSummary = {
    type = "structure",
    members = {
        ByteMatchSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListByteMatchSetsOutput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        ByteMatchSets = {
            type = "list",
            member = M.ByteMatchSetSummary,
        },
    },
}

M.ListGeoMatchSetsInput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.GeoMatchSetSummary = {
    type = "structure",
    members = {
        GeoMatchSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListGeoMatchSetsOutput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        GeoMatchSets = {
            type = "list",
            member = M.GeoMatchSetSummary,
        },
    },
}

M.ListIPSetsInput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.IPSetSummary = {
    type = "structure",
    members = {
        IPSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListIPSetsOutput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        IPSets = {
            type = "list",
            member = M.IPSetSummary,
        },
    },
}

M.ListLoggingConfigurationsInput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ListLoggingConfigurationsOutput = {
    type = "structure",
    members = {
        LoggingConfigurations = {
            type = "list",
            member = M.LoggingConfiguration,
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.ListRateBasedRulesInput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.RuleSummary = {
    type = "structure",
    members = {
        RuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListRateBasedRulesOutput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        Rules = {
            type = "list",
            member = M.RuleSummary,
        },
    },
}

M.ListRegexMatchSetsInput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.RegexMatchSetSummary = {
    type = "structure",
    members = {
        RegexMatchSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListRegexMatchSetsOutput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        RegexMatchSets = {
            type = "list",
            member = M.RegexMatchSetSummary,
        },
    },
}

M.ListRegexPatternSetsInput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.RegexPatternSetSummary = {
    type = "structure",
    members = {
        RegexPatternSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListRegexPatternSetsOutput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        RegexPatternSets = {
            type = "list",
            member = M.RegexPatternSetSummary,
        },
    },
}

M.ListRuleGroupsInput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.RuleGroupSummary = {
    type = "structure",
    members = {
        RuleGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListRuleGroupsOutput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        RuleGroups = {
            type = "list",
            member = M.RuleGroupSummary,
        },
    },
}

M.ListRulesInput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ListRulesOutput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        Rules = {
            type = "list",
            member = M.RuleSummary,
        },
    },
}

M.ListSizeConstraintSetsInput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.SizeConstraintSetSummary = {
    type = "structure",
    members = {
        SizeConstraintSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListSizeConstraintSetsOutput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        SizeConstraintSets = {
            type = "list",
            member = M.SizeConstraintSetSummary,
        },
    },
}

M.ListSqlInjectionMatchSetsInput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.SqlInjectionMatchSetSummary = {
    type = "structure",
    members = {
        SqlInjectionMatchSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListSqlInjectionMatchSetsOutput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        SqlInjectionMatchSets = {
            type = "list",
            member = M.SqlInjectionMatchSetSummary,
        },
    },
}

M.ListSubscribedRuleGroupsInput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.SubscribedRuleGroupSummary = {
    type = "structure",
    members = {
        RuleGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListSubscribedRuleGroupsOutput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        RuleGroups = {
            type = "list",
            member = M.SubscribedRuleGroupSummary,
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagInfoForResource = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
        },
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        TagInfoForResource = M.TagInfoForResource,
    },
}

M.ListWebACLsInput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.WebACLSummary = {
    type = "structure",
    members = {
        WebACLId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListWebACLsOutput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        WebACLs = {
            type = "list",
            member = M.WebACLSummary,
        },
    },
}

M.ListXssMatchSetsInput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        Limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.XssMatchSetSummary = {
    type = "structure",
    members = {
        XssMatchSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListXssMatchSetsOutput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        XssMatchSets = {
            type = "list",
            member = M.XssMatchSetSummary,
        },
    },
}

M.PutLoggingConfigurationInput = {
    type = "structure",
    members = {
        LoggingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LoggingConfiguration }),
    },
}

M.PutLoggingConfigurationOutput = {
    type = "structure",
    members = {
        LoggingConfiguration = M.LoggingConfiguration,
    },
}

M.WAFServiceLinkedRoleErrorException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutPermissionPolicyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutPermissionPolicyOutput = {
    type = "structure",
}

M.WAFInvalidPermissionPolicyException = {
    type = "structure",
    error = "client",
    members = {
        message = {
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

M.ChangeAction = {
    INSERT = "INSERT",
    DELETE = "DELETE",
}

M.ByteMatchSetUpdate = {
    type = "structure",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ByteMatchTuple = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ByteMatchTuple }),
    },
}

M.UpdateByteMatchSetInput = {
    type = "structure",
    members = {
        ByteMatchSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Updates = {
            type = "list",
            member = M.ByteMatchSetUpdate,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateByteMatchSetOutput = {
    type = "structure",
    members = {
        ChangeToken = {
            type = "string",
        },
    },
}

M.WAFNonexistentContainerException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GeoMatchSetUpdate = {
    type = "structure",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GeoMatchConstraint = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GeoMatchConstraint }),
    },
}

M.UpdateGeoMatchSetInput = {
    type = "structure",
    members = {
        GeoMatchSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Updates = {
            type = "list",
            member = M.GeoMatchSetUpdate,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateGeoMatchSetOutput = {
    type = "structure",
    members = {
        ChangeToken = {
            type = "string",
        },
    },
}

M.IPSetUpdate = {
    type = "structure",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IPSetDescriptor = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IPSetDescriptor }),
    },
}

M.UpdateIPSetInput = {
    type = "structure",
    members = {
        IPSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Updates = {
            type = "list",
            member = M.IPSetUpdate,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateIPSetOutput = {
    type = "structure",
    members = {
        ChangeToken = {
            type = "string",
        },
    },
}

M.RuleUpdate = {
    type = "structure",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Predicate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Predicate }),
    },
}

M.UpdateRateBasedRuleInput = {
    type = "structure",
    members = {
        RuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Updates = {
            type = "list",
            member = M.RuleUpdate,
            traits = {
                required = true,
            },
        },
        RateLimit = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRateBasedRuleOutput = {
    type = "structure",
    members = {
        ChangeToken = {
            type = "string",
        },
    },
}

M.RegexMatchSetUpdate = {
    type = "structure",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegexMatchTuple = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RegexMatchTuple }),
    },
}

M.UpdateRegexMatchSetInput = {
    type = "structure",
    members = {
        RegexMatchSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Updates = {
            type = "list",
            member = M.RegexMatchSetUpdate,
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRegexMatchSetOutput = {
    type = "structure",
    members = {
        ChangeToken = {
            type = "string",
        },
    },
}

M.RegexPatternSetUpdate = {
    type = "structure",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegexPatternString = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRegexPatternSetInput = {
    type = "structure",
    members = {
        RegexPatternSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Updates = {
            type = "list",
            member = M.RegexPatternSetUpdate,
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRegexPatternSetOutput = {
    type = "structure",
    members = {
        ChangeToken = {
            type = "string",
        },
    },
}

M.WAFInvalidRegexPatternException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateRuleInput = {
    type = "structure",
    members = {
        RuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Updates = {
            type = "list",
            member = M.RuleUpdate,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRuleOutput = {
    type = "structure",
    members = {
        ChangeToken = {
            type = "string",
        },
    },
}

M.RuleGroupUpdate = {
    type = "structure",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActivatedRule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActivatedRule }),
    },
}

M.UpdateRuleGroupInput = {
    type = "structure",
    members = {
        RuleGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Updates = {
            type = "list",
            member = M.RuleGroupUpdate,
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRuleGroupOutput = {
    type = "structure",
    members = {
        ChangeToken = {
            type = "string",
        },
    },
}

M.SizeConstraintSetUpdate = {
    type = "structure",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SizeConstraint = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SizeConstraint }),
    },
}

M.UpdateSizeConstraintSetInput = {
    type = "structure",
    members = {
        SizeConstraintSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Updates = {
            type = "list",
            member = M.SizeConstraintSetUpdate,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSizeConstraintSetOutput = {
    type = "structure",
    members = {
        ChangeToken = {
            type = "string",
        },
    },
}

M.SqlInjectionMatchSetUpdate = {
    type = "structure",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SqlInjectionMatchTuple = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SqlInjectionMatchTuple }),
    },
}

M.UpdateSqlInjectionMatchSetInput = {
    type = "structure",
    members = {
        SqlInjectionMatchSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Updates = {
            type = "list",
            member = M.SqlInjectionMatchSetUpdate,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSqlInjectionMatchSetOutput = {
    type = "structure",
    members = {
        ChangeToken = {
            type = "string",
        },
    },
}

M.WebACLUpdate = {
    type = "structure",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActivatedRule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActivatedRule }),
    },
}

M.UpdateWebACLInput = {
    type = "structure",
    members = {
        WebACLId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Updates = {
            type = "list",
            member = M.WebACLUpdate,
        },
        DefaultAction = M.WafAction,
    },
}

M.UpdateWebACLOutput = {
    type = "structure",
    members = {
        ChangeToken = {
            type = "string",
        },
    },
}

M.WAFSubscriptionNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.XssMatchSetUpdate = {
    type = "structure",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        XssMatchTuple = setmetatable({ traits = {
            required = true,
        } }, { __index = M.XssMatchTuple }),
    },
}

M.UpdateXssMatchSetInput = {
    type = "structure",
    members = {
        XssMatchSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChangeToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Updates = {
            type = "list",
            member = M.XssMatchSetUpdate,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateXssMatchSetOutput = {
    type = "structure",
    members = {
        ChangeToken = {
            type = "string",
        },
    },
}

return M
