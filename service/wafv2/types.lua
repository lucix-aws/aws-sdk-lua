local M = {}

M.ActionValue = {
    ALLOW = "ALLOW",
    BLOCK = "BLOCK",
    COUNT = "COUNT",
    CAPTCHA = "CAPTCHA",
    CHALLENGE = "CHALLENGE",
    EXCLUDED_AS_COUNT = "EXCLUDED_AS_COUNT",
}

M.ActionCondition = {
    type = "structure",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AddressField = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.All = {
    type = "structure",
}

M.CustomHTTPHeader = {
    type = "structure",
    members = {
        Name = {
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

M.CustomRequestHandling = {
    type = "structure",
    members = {
        InsertHeaders = {
            type = "list",
            member = M.CustomHTTPHeader,
            traits = {
                required = true,
            },
        },
    },
}

M.AllowAction = {
    type = "structure",
    members = {
        CustomRequestHandling = M.CustomRequestHandling,
    },
}

M.AllQueryArguments = {
    type = "structure",
}

M.FallbackBehavior = {
    MATCH = "MATCH",
    NO_MATCH = "NO_MATCH",
}

M.ForwardedIPConfig = {
    type = "structure",
    members = {
        HeaderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FallbackBehavior = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AsnMatchStatement = {
    type = "structure",
    members = {
        AsnList = {
            type = "list",
            member = { type = "long" },
            traits = {
                required = true,
            },
        },
        ForwardedIPConfig = M.ForwardedIPConfig,
    },
}

M.OversizeHandling = {
    CONTINUE = "CONTINUE",
    MATCH = "MATCH",
    NO_MATCH = "NO_MATCH",
}

M.Body = {
    type = "structure",
    members = {
        OversizeHandling = {
            type = "string",
        },
    },
}

M.CookieMatchPattern = {
    type = "structure",
    members = {
        All = M.All,
        IncludedCookies = {
            type = "list",
            member = { type = "string" },
        },
        ExcludedCookies = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MapMatchScope = {
    ALL = "ALL",
    KEY = "KEY",
    VALUE = "VALUE",
}

M.Cookies = {
    type = "structure",
    members = {
        MatchPattern = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CookieMatchPattern }),
        MatchScope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OversizeHandling = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HeaderOrder = {
    type = "structure",
    members = {
        OversizeHandling = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HeaderMatchPattern = {
    type = "structure",
    members = {
        All = M.All,
        IncludedHeaders = {
            type = "list",
            member = { type = "string" },
        },
        ExcludedHeaders = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Headers = {
    type = "structure",
    members = {
        MatchPattern = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HeaderMatchPattern }),
        MatchScope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OversizeHandling = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JA3Fingerprint = {
    type = "structure",
    members = {
        FallbackBehavior = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JA4Fingerprint = {
    type = "structure",
    members = {
        FallbackBehavior = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BodyParsingFallbackBehavior = {
    MATCH = "MATCH",
    NO_MATCH = "NO_MATCH",
    EVALUATE_AS_STRING = "EVALUATE_AS_STRING",
}

M.JsonMatchPattern = {
    type = "structure",
    members = {
        All = M.All,
        IncludedPaths = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.JsonMatchScope = {
    ALL = "ALL",
    KEY = "KEY",
    VALUE = "VALUE",
}

M.JsonBody = {
    type = "structure",
    members = {
        MatchPattern = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JsonMatchPattern }),
        MatchScope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InvalidFallbackBehavior = {
            type = "string",
        },
        OversizeHandling = {
            type = "string",
        },
    },
}

M.Method = {
    type = "structure",
}

M.QueryString = {
    type = "structure",
}

M.SingleHeader = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SingleQueryArgument = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UriFragment = {
    type = "structure",
    members = {
        FallbackBehavior = {
            type = "string",
        },
    },
}

M.UriPath = {
    type = "structure",
}

M.FieldToMatch = {
    type = "structure",
    members = {
        SingleHeader = M.SingleHeader,
        SingleQueryArgument = M.SingleQueryArgument,
        AllQueryArguments = M.AllQueryArguments,
        UriPath = M.UriPath,
        QueryString = M.QueryString,
        Body = M.Body,
        Method = M.Method,
        JsonBody = M.JsonBody,
        Headers = M.Headers,
        Cookies = M.Cookies,
        HeaderOrder = M.HeaderOrder,
        JA3Fingerprint = M.JA3Fingerprint,
        JA4Fingerprint = M.JA4Fingerprint,
        UriFragment = M.UriFragment,
    },
}

M.PositionalConstraint = {
    EXACTLY = "EXACTLY",
    STARTS_WITH = "STARTS_WITH",
    ENDS_WITH = "ENDS_WITH",
    CONTAINS = "CONTAINS",
    CONTAINS_WORD = "CONTAINS_WORD",
}

M.TextTransformationType = {
    NONE = "NONE",
    COMPRESS_WHITE_SPACE = "COMPRESS_WHITE_SPACE",
    HTML_ENTITY_DECODE = "HTML_ENTITY_DECODE",
    LOWERCASE = "LOWERCASE",
    CMD_LINE = "CMD_LINE",
    URL_DECODE = "URL_DECODE",
    BASE64_DECODE = "BASE64_DECODE",
    HEX_DECODE = "HEX_DECODE",
    MD5 = "MD5",
    REPLACE_COMMENTS = "REPLACE_COMMENTS",
    ESCAPE_SEQ_DECODE = "ESCAPE_SEQ_DECODE",
    SQL_HEX_DECODE = "SQL_HEX_DECODE",
    CSS_DECODE = "CSS_DECODE",
    JS_DECODE = "JS_DECODE",
    NORMALIZE_PATH = "NORMALIZE_PATH",
    NORMALIZE_PATH_WIN = "NORMALIZE_PATH_WIN",
    REMOVE_NULLS = "REMOVE_NULLS",
    REPLACE_NULLS = "REPLACE_NULLS",
    BASE64_DECODE_EXT = "BASE64_DECODE_EXT",
    URL_DECODE_UNI = "URL_DECODE_UNI",
    UTF8_TO_UNICODE = "UTF8_TO_UNICODE",
}

M.TextTransformation = {
    type = "structure",
    members = {
        Priority = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ByteMatchStatement = {
    type = "structure",
    members = {
        SearchString = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        FieldToMatch = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FieldToMatch }),
        TextTransformations = {
            type = "list",
            member = M.TextTransformation,
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

M.CountryCode = {
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
    XK = "XK",
}

M.GeoMatchStatement = {
    type = "structure",
    members = {
        CountryCodes = {
            type = "list",
            member = { type = "string" },
        },
        ForwardedIPConfig = M.ForwardedIPConfig,
    },
}

M.ForwardedIPPosition = {
    FIRST = "FIRST",
    LAST = "LAST",
    ANY = "ANY",
}

M.IPSetForwardedIPConfig = {
    type = "structure",
    members = {
        HeaderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FallbackBehavior = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Position = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IPSetReferenceStatement = {
    type = "structure",
    members = {
        ARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IPSetForwardedIPConfig = M.IPSetForwardedIPConfig,
    },
}

M.LabelMatchScope = {
    LABEL = "LABEL",
    NAMESPACE = "NAMESPACE",
}

M.LabelMatchStatement = {
    type = "structure",
    members = {
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Key = {
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
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EmailField = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PasswordField = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PayloadType = {
    JSON = "JSON",
    FORM_ENCODED = "FORM_ENCODED",
}

M.PhoneNumberField = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UsernameField = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RequestInspectionACFP = {
    type = "structure",
    members = {
        PayloadType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UsernameField = M.UsernameField,
        PasswordField = M.PasswordField,
        EmailField = M.EmailField,
        PhoneNumberFields = {
            type = "list",
            member = M.PhoneNumberField,
        },
        AddressFields = {
            type = "list",
            member = M.AddressField,
        },
    },
}

M.ResponseInspectionBodyContains = {
    type = "structure",
    members = {
        SuccessStrings = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        FailureStrings = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ResponseInspectionHeader = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SuccessValues = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        FailureValues = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ResponseInspectionJson = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SuccessValues = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        FailureValues = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ResponseInspectionStatusCode = {
    type = "structure",
    members = {
        SuccessCodes = {
            type = "list",
            member = { type = "integer" },
            traits = {
                required = true,
            },
        },
        FailureCodes = {
            type = "list",
            member = { type = "integer" },
            traits = {
                required = true,
            },
        },
    },
}

M.ResponseInspection = {
    type = "structure",
    members = {
        StatusCode = M.ResponseInspectionStatusCode,
        Header = M.ResponseInspectionHeader,
        BodyContains = M.ResponseInspectionBodyContains,
        Json = M.ResponseInspectionJson,
    },
}

M.AWSManagedRulesACFPRuleSet = {
    type = "structure",
    members = {
        CreationPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationPagePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RequestInspection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RequestInspectionACFP }),
        ResponseInspection = M.ResponseInspection,
        EnableRegexInPath = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.Regex = {
    type = "structure",
    members = {
        RegexString = {
            type = "string",
        },
    },
}

M.SensitivityToAct = {
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
}

M.UsageOfAction = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ClientSideAction = {
    type = "structure",
    members = {
        UsageOfAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Sensitivity = {
            type = "string",
        },
        ExemptUriRegularExpressions = {
            type = "list",
            member = M.Regex,
        },
    },
}

M.ClientSideActionConfig = {
    type = "structure",
    members = {
        Challenge = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ClientSideAction }),
    },
}

M.AWSManagedRulesAntiDDoSRuleSet = {
    type = "structure",
    members = {
        ClientSideActionConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ClientSideActionConfig }),
        SensitivityToBlock = {
            type = "string",
        },
    },
}

M.RequestInspection = {
    type = "structure",
    members = {
        PayloadType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UsernameField = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UsernameField }),
        PasswordField = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PasswordField }),
    },
}

M.AWSManagedRulesATPRuleSet = {
    type = "structure",
    members = {
        LoginPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RequestInspection = M.RequestInspection,
        ResponseInspection = M.ResponseInspection,
        EnableRegexInPath = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.InspectionLevel = {
    COMMON = "COMMON",
    TARGETED = "TARGETED",
}

M.AWSManagedRulesBotControlRuleSet = {
    type = "structure",
    members = {
        InspectionLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EnableMachineLearning = {
            type = "boolean",
            traits = {
                default = true,
            },
        },
    },
}

M.ManagedRuleGroupConfig = {
    type = "structure",
    members = {
        LoginPath = {
            type = "string",
        },
        PayloadType = {
            type = "string",
        },
        UsernameField = M.UsernameField,
        PasswordField = M.PasswordField,
        AWSManagedRulesBotControlRuleSet = M.AWSManagedRulesBotControlRuleSet,
        AWSManagedRulesATPRuleSet = M.AWSManagedRulesATPRuleSet,
        AWSManagedRulesACFPRuleSet = M.AWSManagedRulesACFPRuleSet,
        AWSManagedRulesAntiDDoSRuleSet = M.AWSManagedRulesAntiDDoSRuleSet,
    },
}

M.CustomResponse = {
    type = "structure",
    members = {
        ResponseCode = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        CustomResponseBodyKey = {
            type = "string",
        },
        ResponseHeaders = {
            type = "list",
            member = M.CustomHTTPHeader,
        },
    },
}

M.BlockAction = {
    type = "structure",
    members = {
        CustomResponse = M.CustomResponse,
    },
}

M.CaptchaAction = {
    type = "structure",
    members = {
        CustomRequestHandling = M.CustomRequestHandling,
    },
}

M.ChallengeAction = {
    type = "structure",
    members = {
        CustomRequestHandling = M.CustomRequestHandling,
    },
}

M.CountAction = {
    type = "structure",
    members = {
        CustomRequestHandling = M.CustomRequestHandling,
    },
}

M.RuleAction = {
    type = "structure",
    members = {
        Block = M.BlockAction,
        Allow = M.AllowAction,
        Count = M.CountAction,
        Captcha = M.CaptchaAction,
        Challenge = M.ChallengeAction,
    },
}

M.RuleActionOverride = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionToUse = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleAction }),
    },
}

M.RateBasedStatementAggregateKeyType = {
    IP = "IP",
    FORWARDED_IP = "FORWARDED_IP",
    CUSTOM_KEYS = "CUSTOM_KEYS",
    CONSTANT = "CONSTANT",
}

M.RateLimitAsn = {
    type = "structure",
}

M.RateLimitCookie = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TextTransformations = {
            type = "list",
            member = M.TextTransformation,
            traits = {
                required = true,
            },
        },
    },
}

M.RateLimitForwardedIP = {
    type = "structure",
}

M.RateLimitHeader = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TextTransformations = {
            type = "list",
            member = M.TextTransformation,
            traits = {
                required = true,
            },
        },
    },
}

M.RateLimitHTTPMethod = {
    type = "structure",
}

M.RateLimitIP = {
    type = "structure",
}

M.RateLimitJA3Fingerprint = {
    type = "structure",
    members = {
        FallbackBehavior = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RateLimitJA4Fingerprint = {
    type = "structure",
    members = {
        FallbackBehavior = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RateLimitLabelNamespace = {
    type = "structure",
    members = {
        Namespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RateLimitQueryArgument = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TextTransformations = {
            type = "list",
            member = M.TextTransformation,
            traits = {
                required = true,
            },
        },
    },
}

M.RateLimitQueryString = {
    type = "structure",
    members = {
        TextTransformations = {
            type = "list",
            member = M.TextTransformation,
            traits = {
                required = true,
            },
        },
    },
}

M.RateLimitUriPath = {
    type = "structure",
    members = {
        TextTransformations = {
            type = "list",
            member = M.TextTransformation,
            traits = {
                required = true,
            },
        },
    },
}

M.RateBasedStatementCustomKey = {
    type = "structure",
    members = {
        Header = M.RateLimitHeader,
        Cookie = M.RateLimitCookie,
        QueryArgument = M.RateLimitQueryArgument,
        QueryString = M.RateLimitQueryString,
        HTTPMethod = M.RateLimitHTTPMethod,
        ForwardedIP = M.RateLimitForwardedIP,
        IP = M.RateLimitIP,
        LabelNamespace = M.RateLimitLabelNamespace,
        UriPath = M.RateLimitUriPath,
        JA3Fingerprint = M.RateLimitJA3Fingerprint,
        JA4Fingerprint = M.RateLimitJA4Fingerprint,
        ASN = M.RateLimitAsn,
    },
}

M.RegexMatchStatement = {
    type = "structure",
    members = {
        RegexString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FieldToMatch = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FieldToMatch }),
        TextTransformations = {
            type = "list",
            member = M.TextTransformation,
            traits = {
                required = true,
            },
        },
    },
}

M.RegexPatternSetReferenceStatement = {
    type = "structure",
    members = {
        ARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FieldToMatch = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FieldToMatch }),
        TextTransformations = {
            type = "list",
            member = M.TextTransformation,
            traits = {
                required = true,
            },
        },
    },
}

M.RuleGroupReferenceStatement = {
    type = "structure",
    members = {
        ARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExcludedRules = {
            type = "list",
            member = M.ExcludedRule,
        },
        RuleActionOverrides = {
            type = "list",
            member = M.RuleActionOverride,
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

M.SizeConstraintStatement = {
    type = "structure",
    members = {
        FieldToMatch = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FieldToMatch }),
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
        TextTransformations = {
            type = "list",
            member = M.TextTransformation,
            traits = {
                required = true,
            },
        },
    },
}

M.SensitivityLevel = {
    LOW = "LOW",
    HIGH = "HIGH",
}

M.SqliMatchStatement = {
    type = "structure",
    members = {
        FieldToMatch = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FieldToMatch }),
        TextTransformations = {
            type = "list",
            member = M.TextTransformation,
            traits = {
                required = true,
            },
        },
        SensitivityLevel = {
            type = "string",
        },
    },
}

M.XssMatchStatement = {
    type = "structure",
    members = {
        FieldToMatch = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FieldToMatch }),
        TextTransformations = {
            type = "list",
            member = M.TextTransformation,
            traits = {
                required = true,
            },
        },
    },
}

M.APIKeySummary = {
    type = "structure",
    members = {
        TokenDomains = {
            type = "list",
            member = { type = "string" },
        },
        APIKey = {
            type = "string",
        },
        CreationTimestamp = {
            type = "timestamp",
        },
        Version = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ApplicationAttribute = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ApplicationConfig = {
    type = "structure",
    members = {
        Attributes = {
            type = "list",
            member = M.ApplicationAttribute,
        },
    },
}

M.AssociatedResourceType = {
    CLOUDFRONT = "CLOUDFRONT",
    API_GATEWAY = "API_GATEWAY",
    COGNITO_USER_POOL = "COGNITO_USER_POOL",
    APP_RUNNER_SERVICE = "APP_RUNNER_SERVICE",
    VERIFIED_ACCESS_INSTANCE = "VERIFIED_ACCESS_INSTANCE",
}

M.AssociateWebACLInput = {
    type = "structure",
    members = {
        WebACLArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateWebACLOutput = {
    type = "structure",
}

M.DisallowedFeature = {
    type = "structure",
    members = {
        Feature = {
            type = "string",
        },
        RequiredPricingPlan = {
            type = "string",
        },
    },
}

M.WAFFeatureNotIncludedInPricingPlanException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        DisallowedFeatures = {
            type = "list",
            member = M.DisallowedFeature,
        },
    },
}

M.WAFInternalErrorException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.WAFInvalidOperationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ParameterExceptionField = {
    WEB_ACL = "WEB_ACL",
    RULE_GROUP = "RULE_GROUP",
    REGEX_PATTERN_SET = "REGEX_PATTERN_SET",
    IP_SET = "IP_SET",
    MANAGED_RULE_SET = "MANAGED_RULE_SET",
    RULE = "RULE",
    EXCLUDED_RULE = "EXCLUDED_RULE",
    STATEMENT = "STATEMENT",
    BYTE_MATCH_STATEMENT = "BYTE_MATCH_STATEMENT",
    SQLI_MATCH_STATEMENT = "SQLI_MATCH_STATEMENT",
    XSS_MATCH_STATEMENT = "XSS_MATCH_STATEMENT",
    SIZE_CONSTRAINT_STATEMENT = "SIZE_CONSTRAINT_STATEMENT",
    GEO_MATCH_STATEMENT = "GEO_MATCH_STATEMENT",
    RATE_BASED_STATEMENT = "RATE_BASED_STATEMENT",
    RULE_GROUP_REFERENCE_STATEMENT = "RULE_GROUP_REFERENCE_STATEMENT",
    REGEX_PATTERN_REFERENCE_STATEMENT = "REGEX_PATTERN_REFERENCE_STATEMENT",
    IP_SET_REFERENCE_STATEMENT = "IP_SET_REFERENCE_STATEMENT",
    MANAGED_RULE_SET_STATEMENT = "MANAGED_RULE_SET_STATEMENT",
    LABEL_MATCH_STATEMENT = "LABEL_MATCH_STATEMENT",
    AND_STATEMENT = "AND_STATEMENT",
    OR_STATEMENT = "OR_STATEMENT",
    NOT_STATEMENT = "NOT_STATEMENT",
    IP_ADDRESS = "IP_ADDRESS",
    IP_ADDRESS_VERSION = "IP_ADDRESS_VERSION",
    FIELD_TO_MATCH = "FIELD_TO_MATCH",
    TEXT_TRANSFORMATION = "TEXT_TRANSFORMATION",
    SINGLE_QUERY_ARGUMENT = "SINGLE_QUERY_ARGUMENT",
    SINGLE_HEADER = "SINGLE_HEADER",
    DEFAULT_ACTION = "DEFAULT_ACTION",
    RULE_ACTION = "RULE_ACTION",
    ENTITY_LIMIT = "ENTITY_LIMIT",
    OVERRIDE_ACTION = "OVERRIDE_ACTION",
    SCOPE_VALUE = "SCOPE_VALUE",
    RESOURCE_ARN = "RESOURCE_ARN",
    RESOURCE_TYPE = "RESOURCE_TYPE",
    TAGS = "TAGS",
    TAG_KEYS = "TAG_KEYS",
    METRIC_NAME = "METRIC_NAME",
    FIREWALL_MANAGER_STATEMENT = "FIREWALL_MANAGER_STATEMENT",
    FALLBACK_BEHAVIOR = "FALLBACK_BEHAVIOR",
    POSITION = "POSITION",
    FORWARDED_IP_CONFIG = "FORWARDED_IP_CONFIG",
    IP_SET_FORWARDED_IP_CONFIG = "IP_SET_FORWARDED_IP_CONFIG",
    HEADER_NAME = "HEADER_NAME",
    CUSTOM_REQUEST_HANDLING = "CUSTOM_REQUEST_HANDLING",
    RESPONSE_CONTENT_TYPE = "RESPONSE_CONTENT_TYPE",
    CUSTOM_RESPONSE = "CUSTOM_RESPONSE",
    CUSTOM_RESPONSE_BODY = "CUSTOM_RESPONSE_BODY",
    JSON_MATCH_PATTERN = "JSON_MATCH_PATTERN",
    JSON_MATCH_SCOPE = "JSON_MATCH_SCOPE",
    BODY_PARSING_FALLBACK_BEHAVIOR = "BODY_PARSING_FALLBACK_BEHAVIOR",
    LOGGING_FILTER = "LOGGING_FILTER",
    FILTER_CONDITION = "FILTER_CONDITION",
    EXPIRE_TIMESTAMP = "EXPIRE_TIMESTAMP",
    CHANGE_PROPAGATION_STATUS = "CHANGE_PROPAGATION_STATUS",
    ASSOCIABLE_RESOURCE = "ASSOCIABLE_RESOURCE",
    LOG_DESTINATION = "LOG_DESTINATION",
    MANAGED_RULE_GROUP_CONFIG = "MANAGED_RULE_GROUP_CONFIG",
    PAYLOAD_TYPE = "PAYLOAD_TYPE",
    HEADER_MATCH_PATTERN = "HEADER_MATCH_PATTERN",
    COOKIE_MATCH_PATTERN = "COOKIE_MATCH_PATTERN",
    MAP_MATCH_SCOPE = "MAP_MATCH_SCOPE",
    OVERSIZE_HANDLING = "OVERSIZE_HANDLING",
    CHALLENGE_CONFIG = "CHALLENGE_CONFIG",
    TOKEN_DOMAIN = "TOKEN_DOMAIN",
    ATP_RULE_SET_RESPONSE_INSPECTION = "ATP_RULE_SET_RESPONSE_INSPECTION",
    ASSOCIATED_RESOURCE_TYPE = "ASSOCIATED_RESOURCE_TYPE",
    SCOPE_DOWN = "SCOPE_DOWN",
    CUSTOM_KEYS = "CUSTOM_KEYS",
    ACP_RULE_SET_RESPONSE_INSPECTION = "ACP_RULE_SET_RESPONSE_INSPECTION",
    DATA_PROTECTION_CONFIG = "DATA_PROTECTION_CONFIG",
    LOW_REPUTATION_MODE = "LOW_REPUTATION_MODE",
}

M.WAFInvalidParameterException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        Field = {
            type = "string",
        },
        Parameter = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.WAFLimitsExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
    },
}

M.WAFNonexistentItemException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.WAFUnavailableEntityException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SizeInspectionLimit = {
    KB_16 = "KB_16",
    KB_32 = "KB_32",
    KB_48 = "KB_48",
    KB_64 = "KB_64",
}

M.RequestBodyAssociatedResourceTypeConfig = {
    type = "structure",
    members = {
        DefaultSizeInspectionLimit = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociationConfig = {
    type = "structure",
    members = {
        RequestBody = {
            type = "map",
            key = { type = "string" },
            value = M.RequestBodyAssociatedResourceTypeConfig,
        },
    },
}

M.ImmunityTimeProperty = {
    type = "structure",
    members = {
        ImmunityTime = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.CaptchaConfig = {
    type = "structure",
    members = {
        ImmunityTimeProperty = M.ImmunityTimeProperty,
    },
}

M.ChallengeConfig = {
    type = "structure",
    members = {
        ImmunityTimeProperty = M.ImmunityTimeProperty,
    },
}

M.NoneAction = {
    type = "structure",
}

M.OverrideAction = {
    type = "structure",
    members = {
        Count = M.CountAction,
        None = M.NoneAction,
    },
}

M.Label = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VisibilityConfig = {
    type = "structure",
    members = {
        SampledRequestsEnabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        CloudWatchMetricsEnabled = {
            type = "boolean",
            traits = {
                default = false,
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

M.Scope = {
    CLOUDFRONT = "CLOUDFRONT",
    REGIONAL = "REGIONAL",
}

M.CheckCapacityOutput = {
    type = "structure",
    members = {
        Capacity = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.WAFExpiredManagedRuleGroupVersionException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.WAFInvalidResourceException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.WAFSubscriptionNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateAPIKeyInput = {
    type = "structure",
    members = {
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TokenDomains = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAPIKeyOutput = {
    type = "structure",
    members = {
        APIKey = {
            type = "string",
        },
    },
}

M.IPAddressVersion = {
    IPV4 = "IPV4",
    IPV6 = "IPV6",
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

M.CreateIPSetInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        IPAddressVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Addresses = {
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

M.IPSetSummary = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LockToken = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
    },
}

M.CreateIPSetOutput = {
    type = "structure",
    members = {
        Summary = M.IPSetSummary,
    },
}

M.WAFDuplicateItemException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.WAFOptimisticLockException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.WAFTagOperationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.WAFTagOperationInternalErrorException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
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
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        RegularExpressionList = {
            type = "list",
            member = M.Regex,
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

M.RegexPatternSetSummary = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LockToken = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
    },
}

M.CreateRegexPatternSetOutput = {
    type = "structure",
    members = {
        Summary = M.RegexPatternSetSummary,
    },
}

M.ResponseContentType = {
    TEXT_PLAIN = "TEXT_PLAIN",
    TEXT_HTML = "TEXT_HTML",
    APPLICATION_JSON = "APPLICATION_JSON",
}

M.CustomResponseBody = {
    type = "structure",
    members = {
        ContentType = {
            type = "string",
            traits = {
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

M.RuleGroupSummary = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LockToken = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
    },
}

M.CreateRuleGroupOutput = {
    type = "structure",
    members = {
        Summary = M.RuleGroupSummary,
    },
}

M.DataProtectionAction = {
    SUBSTITUTION = "SUBSTITUTION",
    HASH = "HASH",
}

M.FieldToProtectType = {
    SINGLE_HEADER = "SINGLE_HEADER",
    SINGLE_COOKIE = "SINGLE_COOKIE",
    SINGLE_QUERY_ARGUMENT = "SINGLE_QUERY_ARGUMENT",
    QUERY_STRING = "QUERY_STRING",
    BODY = "BODY",
}

M.FieldToProtect = {
    type = "structure",
    members = {
        FieldType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FieldKeys = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DataProtection = {
    type = "structure",
    members = {
        Field = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FieldToProtect }),
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExcludeRuleMatchDetails = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ExcludeRateBasedDetails = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DataProtectionConfig = {
    type = "structure",
    members = {
        DataProtections = {
            type = "list",
            member = M.DataProtection,
            traits = {
                required = true,
            },
        },
    },
}

M.DefaultAction = {
    type = "structure",
    members = {
        Block = M.BlockAction,
        Allow = M.AllowAction,
    },
}

M.LowReputationMode = {
    ACTIVE_UNDER_DDOS = "ACTIVE_UNDER_DDOS",
    ALWAYS_ON = "ALWAYS_ON",
}

M.OnSourceDDoSProtectionConfig = {
    type = "structure",
    members = {
        ALBLowReputationMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WebACLSummary = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LockToken = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
    },
}

M.CreateWebACLOutput = {
    type = "structure",
    members = {
        Summary = M.WebACLSummary,
    },
}

M.WAFConfigurationWarningException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteAPIKeyInput = {
    type = "structure",
    members = {
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        APIKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAPIKeyOutput = {
    type = "structure",
}

M.DeleteFirewallManagerRuleGroupsInput = {
    type = "structure",
    members = {
        WebACLArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WebACLLockToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteFirewallManagerRuleGroupsOutput = {
    type = "structure",
    members = {
        NextWebACLLockToken = {
            type = "string",
        },
    },
}

M.DeleteIPSetInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LockToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIPSetOutput = {
    type = "structure",
}

M.WAFAssociatedItemException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LogScope = {
    CUSTOMER = "CUSTOMER",
    SECURITY_LAKE = "SECURITY_LAKE",
    CLOUDWATCH_TELEMETRY_RULE_MANAGED = "CLOUDWATCH_TELEMETRY_RULE_MANAGED",
}

M.LogType = {
    WAF_LOGS = "WAF_LOGS",
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
        LogType = {
            type = "string",
        },
        LogScope = {
            type = "string",
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

M.DeleteRegexPatternSetInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LockToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRegexPatternSetOutput = {
    type = "structure",
}

M.DeleteRuleGroupInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LockToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRuleGroupOutput = {
    type = "structure",
}

M.DeleteWebACLInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LockToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWebACLOutput = {
    type = "structure",
}

M.DescribeAllManagedProductsInput = {
    type = "structure",
    members = {
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ManagedProductDescriptor = {
    type = "structure",
    members = {
        VendorName = {
            type = "string",
        },
        ManagedRuleSetName = {
            type = "string",
        },
        ProductId = {
            type = "string",
        },
        ProductLink = {
            type = "string",
        },
        ProductTitle = {
            type = "string",
        },
        ProductDescription = {
            type = "string",
        },
        SnsTopicArn = {
            type = "string",
        },
        IsVersioningSupported = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        IsAdvancedManagedRuleSet = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DescribeAllManagedProductsOutput = {
    type = "structure",
    members = {
        ManagedProducts = {
            type = "list",
            member = M.ManagedProductDescriptor,
        },
    },
}

M.DescribeManagedProductsByVendorInput = {
    type = "structure",
    members = {
        VendorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeManagedProductsByVendorOutput = {
    type = "structure",
    members = {
        ManagedProducts = {
            type = "list",
            member = M.ManagedProductDescriptor,
        },
    },
}

M.DescribeManagedRuleGroupInput = {
    type = "structure",
    members = {
        VendorName = {
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
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionName = {
            type = "string",
        },
    },
}

M.LabelSummary = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.RuleSummary = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Action = M.RuleAction,
    },
}

M.DescribeManagedRuleGroupOutput = {
    type = "structure",
    members = {
        VersionName = {
            type = "string",
        },
        SnsTopicArn = {
            type = "string",
        },
        Capacity = {
            type = "long",
        },
        Rules = {
            type = "list",
            member = M.RuleSummary,
        },
        LabelNamespace = {
            type = "string",
        },
        AvailableLabels = {
            type = "list",
            member = M.LabelSummary,
        },
        ConsumedLabels = {
            type = "list",
            member = M.LabelSummary,
        },
    },
}

M.DisassociateWebACLInput = {
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

M.DisassociateWebACLOutput = {
    type = "structure",
}

M.Platform = {
    IOS = "IOS",
    ANDROID = "ANDROID",
}

M.GenerateMobileSdkReleaseUrlInput = {
    type = "structure",
    members = {
        Platform = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReleaseVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GenerateMobileSdkReleaseUrlOutput = {
    type = "structure",
    members = {
        Url = {
            type = "string",
        },
    },
}

M.GetDecryptedAPIKeyInput = {
    type = "structure",
    members = {
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        APIKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDecryptedAPIKeyOutput = {
    type = "structure",
    members = {
        TokenDomains = {
            type = "list",
            member = { type = "string" },
        },
        CreationTimestamp = {
            type = "timestamp",
        },
    },
}

M.GetIPSetInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
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
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        IPAddressVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Addresses = {
            type = "list",
            member = { type = "string" },
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
        LockToken = {
            type = "string",
        },
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
        LogType = {
            type = "string",
        },
        LogScope = {
            type = "string",
        },
    },
}

M.FilterBehavior = {
    KEEP = "KEEP",
    DROP = "DROP",
}

M.LabelNameCondition = {
    type = "structure",
    members = {
        LabelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Condition = {
    type = "structure",
    members = {
        ActionCondition = M.ActionCondition,
        LabelNameCondition = M.LabelNameCondition,
    },
}

M.FilterRequirement = {
    MEETS_ALL = "MEETS_ALL",
    MEETS_ANY = "MEETS_ANY",
}

M.Filter = {
    type = "structure",
    members = {
        Behavior = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Requirement = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Conditions = {
            type = "list",
            member = M.Condition,
            traits = {
                required = true,
            },
        },
    },
}

M.LoggingFilter = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
            traits = {
                required = true,
            },
        },
        DefaultBehavior = {
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
        ManagedByFirewallManager = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        LoggingFilter = M.LoggingFilter,
        LogType = {
            type = "string",
        },
        LogScope = {
            type = "string",
        },
    },
}

M.GetLoggingConfigurationOutput = {
    type = "structure",
    members = {
        LoggingConfiguration = M.LoggingConfiguration,
    },
}

M.GetManagedRuleSetInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ManagedRuleSetVersion = {
    type = "structure",
    members = {
        AssociatedRuleGroupArn = {
            type = "string",
        },
        Capacity = {
            type = "long",
        },
        ForecastedLifetime = {
            type = "integer",
        },
        PublishTimestamp = {
            type = "timestamp",
        },
        LastUpdateTimestamp = {
            type = "timestamp",
        },
        ExpiryTimestamp = {
            type = "timestamp",
        },
    },
}

M.ManagedRuleSet = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        PublishedVersions = {
            type = "map",
            key = { type = "string" },
            value = M.ManagedRuleSetVersion,
        },
        RecommendedVersion = {
            type = "string",
        },
        LabelNamespace = {
            type = "string",
        },
    },
}

M.GetManagedRuleSetOutput = {
    type = "structure",
    members = {
        ManagedRuleSet = M.ManagedRuleSet,
        LockToken = {
            type = "string",
        },
    },
}

M.GetMobileSdkReleaseInput = {
    type = "structure",
    members = {
        Platform = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReleaseVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MobileSdkRelease = {
    type = "structure",
    members = {
        ReleaseVersion = {
            type = "string",
        },
        Timestamp = {
            type = "timestamp",
        },
        ReleaseNotes = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.GetMobileSdkReleaseOutput = {
    type = "structure",
    members = {
        MobileSdkRelease = M.MobileSdkRelease,
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

M.GetRateBasedStatementManagedKeysInput = {
    type = "structure",
    members = {
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WebACLName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WebACLId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleGroupRuleName = {
            type = "string",
        },
        RuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RateBasedStatementManagedKeysIPSet = {
    type = "structure",
    members = {
        IPAddressVersion = {
            type = "string",
        },
        Addresses = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetRateBasedStatementManagedKeysOutput = {
    type = "structure",
    members = {
        ManagedKeysIPV4 = M.RateBasedStatementManagedKeysIPSet,
        ManagedKeysIPV6 = M.RateBasedStatementManagedKeysIPSet,
    },
}

M.WAFUnsupportedAggregateKeyTypeException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetRegexPatternSetInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
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
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        RegularExpressionList = {
            type = "list",
            member = M.Regex,
        },
    },
}

M.GetRegexPatternSetOutput = {
    type = "structure",
    members = {
        RegexPatternSet = M.RegexPatternSet,
        LockToken = {
            type = "string",
        },
    },
}

M.GetRuleGroupInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Scope = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
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
        WebAclArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleMetricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Scope = {
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

M.FailureReason = {
    TOKEN_MISSING = "TOKEN_MISSING",
    TOKEN_EXPIRED = "TOKEN_EXPIRED",
    TOKEN_INVALID = "TOKEN_INVALID",
    TOKEN_DOMAIN_MISMATCH = "TOKEN_DOMAIN_MISMATCH",
}

M.CaptchaResponse = {
    type = "structure",
    members = {
        ResponseCode = {
            type = "integer",
        },
        SolveTimestamp = {
            type = "long",
        },
        FailureReason = {
            type = "string",
        },
    },
}

M.ChallengeResponse = {
    type = "structure",
    members = {
        ResponseCode = {
            type = "integer",
        },
        SolveTimestamp = {
            type = "long",
        },
        FailureReason = {
            type = "string",
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
        RuleNameWithinRuleGroup = {
            type = "string",
        },
        RequestHeadersInserted = {
            type = "list",
            member = M.HTTPHeader,
        },
        ResponseCodeSent = {
            type = "integer",
        },
        Labels = {
            type = "list",
            member = M.Label,
        },
        CaptchaResponse = M.CaptchaResponse,
        ChallengeResponse = M.ChallengeResponse,
        OverriddenAction = {
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

M.GetTopPathStatisticsByTrafficInput = {
    type = "structure",
    members = {
        WebAclArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UriPathPrefix = {
            type = "string",
        },
        TimeWindow = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TimeWindow }),
        BotCategory = {
            type = "string",
        },
        BotOrganization = {
            type = "string",
        },
        BotName = {
            type = "string",
        },
        Limit = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        NumberOfTopTrafficBotsPerPath = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.FilterSource = {
    type = "structure",
    members = {
        BotCategory = {
            type = "string",
        },
        BotOrganization = {
            type = "string",
        },
        BotName = {
            type = "string",
        },
    },
}

M.BotStatistics = {
    type = "structure",
    members = {
        BotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RequestCount = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        Percentage = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.PathStatistics = {
    type = "structure",
    members = {
        Source = M.FilterSource,
        Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RequestCount = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        Percentage = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
        TopBots = {
            type = "list",
            member = M.BotStatistics,
        },
    },
}

M.GetTopPathStatisticsByTrafficOutput = {
    type = "structure",
    members = {
        PathStatistics = {
            type = "list",
            member = M.PathStatistics,
            traits = {
                required = true,
            },
        },
        TotalRequestCount = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
        TopCategories = {
            type = "list",
            member = M.PathStatistics,
        },
    },
}

M.GetWebACLInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Scope = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
    },
}

M.GetWebACLForResourceInput = {
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

M.ListAPIKeysInput = {
    type = "structure",
    members = {
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.ListAPIKeysOutput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        APIKeySummaries = {
            type = "list",
            member = M.APIKeySummary,
        },
        ApplicationIntegrationURL = {
            type = "string",
        },
    },
}

M.ListAvailableManagedRuleGroupsInput = {
    type = "structure",
    members = {
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.ManagedRuleGroupSummary = {
    type = "structure",
    members = {
        VendorName = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        VersioningSupported = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Description = {
            type = "string",
        },
    },
}

M.ListAvailableManagedRuleGroupsOutput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        ManagedRuleGroups = {
            type = "list",
            member = M.ManagedRuleGroupSummary,
        },
    },
}

M.ListAvailableManagedRuleGroupVersionsInput = {
    type = "structure",
    members = {
        VendorName = {
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
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.ManagedRuleGroupVersion = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        LastUpdateTimestamp = {
            type = "timestamp",
        },
    },
}

M.ListAvailableManagedRuleGroupVersionsOutput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        Versions = {
            type = "list",
            member = M.ManagedRuleGroupVersion,
        },
        CurrentDefaultVersion = {
            type = "string",
        },
    },
}

M.ListIPSetsInput = {
    type = "structure",
    members = {
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
        Limit = {
            type = "integer",
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
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        LogScope = {
            type = "string",
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

M.ListManagedRuleSetsInput = {
    type = "structure",
    members = {
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.ManagedRuleSetSummary = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LockToken = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
        LabelNamespace = {
            type = "string",
        },
    },
}

M.ListManagedRuleSetsOutput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        ManagedRuleSets = {
            type = "list",
            member = M.ManagedRuleSetSummary,
        },
    },
}

M.ListMobileSdkReleasesInput = {
    type = "structure",
    members = {
        Platform = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.ReleaseSummary = {
    type = "structure",
    members = {
        ReleaseVersion = {
            type = "string",
        },
        Timestamp = {
            type = "timestamp",
        },
    },
}

M.ListMobileSdkReleasesOutput = {
    type = "structure",
    members = {
        ReleaseSummaries = {
            type = "list",
            member = M.ReleaseSummary,
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.ListRegexPatternSetsInput = {
    type = "structure",
    members = {
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
        Limit = {
            type = "integer",
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

M.ResourceType = {
    APPLICATION_LOAD_BALANCER = "APPLICATION_LOAD_BALANCER",
    API_GATEWAY = "API_GATEWAY",
    APPSYNC = "APPSYNC",
    COGNITIO_USER_POOL = "COGNITO_USER_POOL",
    APP_RUNNER_SERVICE = "APP_RUNNER_SERVICE",
    VERIFIED_ACCESS_INSTANCE = "VERIFIED_ACCESS_INSTANCE",
    AMPLIFY = "AMPLIFY",
}

M.ListResourcesForWebACLInput = {
    type = "structure",
    members = {
        WebACLArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.ListResourcesForWebACLOutput = {
    type = "structure",
    members = {
        ResourceArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListRuleGroupsInput = {
    type = "structure",
    members = {
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
        Limit = {
            type = "integer",
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

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        Limit = {
            type = "integer",
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
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
        Limit = {
            type = "integer",
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

M.WAFLogDestinationPermissionIssueException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
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

M.VersionToPublish = {
    type = "structure",
    members = {
        AssociatedRuleGroupArn = {
            type = "string",
        },
        ForecastedLifetime = {
            type = "integer",
        },
    },
}

M.PutManagedRuleSetVersionsInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LockToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecommendedVersion = {
            type = "string",
        },
        VersionsToPublish = {
            type = "map",
            key = { type = "string" },
            value = M.VersionToPublish,
        },
    },
}

M.PutManagedRuleSetVersionsOutput = {
    type = "structure",
    members = {
        NextLockToken = {
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
        Message = {
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

M.UpdateIPSetInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Addresses = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        LockToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateIPSetOutput = {
    type = "structure",
    members = {
        NextLockToken = {
            type = "string",
        },
    },
}

M.UpdateManagedRuleSetVersionExpiryDateInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LockToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionToExpire = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExpiryTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateManagedRuleSetVersionExpiryDateOutput = {
    type = "structure",
    members = {
        ExpiringVersion = {
            type = "string",
        },
        ExpiryTimestamp = {
            type = "timestamp",
        },
        NextLockToken = {
            type = "string",
        },
    },
}

M.UpdateRegexPatternSetInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        RegularExpressionList = {
            type = "list",
            member = M.Regex,
            traits = {
                required = true,
            },
        },
        LockToken = {
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
        NextLockToken = {
            type = "string",
        },
    },
}

M.UpdateRuleGroupOutput = {
    type = "structure",
    members = {
        NextLockToken = {
            type = "string",
        },
    },
}

M.UpdateWebACLOutput = {
    type = "structure",
    members = {
        NextLockToken = {
            type = "string",
        },
    },
}

M.Statement = {
    type = "structure",
    members = {
        ByteMatchStatement = M.ByteMatchStatement,
        SqliMatchStatement = M.SqliMatchStatement,
        XssMatchStatement = M.XssMatchStatement,
        SizeConstraintStatement = M.SizeConstraintStatement,
        GeoMatchStatement = M.GeoMatchStatement,
        RuleGroupReferenceStatement = M.RuleGroupReferenceStatement,
        IPSetReferenceStatement = M.IPSetReferenceStatement,
        RegexPatternSetReferenceStatement = M.RegexPatternSetReferenceStatement,
        RateBasedStatement = M.RateBasedStatement,
        AndStatement = M.AndStatement,
        OrStatement = M.OrStatement,
        NotStatement = M.NotStatement,
        ManagedRuleGroupStatement = M.ManagedRuleGroupStatement,
        LabelMatchStatement = M.LabelMatchStatement,
        RegexMatchStatement = M.RegexMatchStatement,
        AsnMatchStatement = M.AsnMatchStatement,
    },
}

M.ManagedRuleGroupStatement = {
    type = "structure",
    members = {
        VendorName = {
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
        Version = {
            type = "string",
        },
        ExcludedRules = {
            type = "list",
            member = M.ExcludedRule,
        },
        ScopeDownStatement = M.Statement,
        ManagedRuleGroupConfigs = {
            type = "list",
            member = M.ManagedRuleGroupConfig,
        },
        RuleActionOverrides = {
            type = "list",
            member = M.RuleActionOverride,
        },
    },
}

M.NotStatement = {
    type = "structure",
    members = {
        Statement = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Statement }),
    },
}

M.RateBasedStatement = {
    type = "structure",
    members = {
        Limit = {
            type = "long",
            traits = {
                required = true,
            },
        },
        EvaluationWindowSec = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        AggregateKeyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScopeDownStatement = M.Statement,
        ForwardedIPConfig = M.ForwardedIPConfig,
        CustomKeys = {
            type = "list",
            member = M.RateBasedStatementCustomKey,
        },
    },
}

M.Rule = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Priority = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        Statement = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Statement }),
        Action = M.RuleAction,
        OverrideAction = M.OverrideAction,
        RuleLabels = {
            type = "list",
            member = M.Label,
        },
        VisibilityConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VisibilityConfig }),
        CaptchaConfig = M.CaptchaConfig,
        ChallengeConfig = M.ChallengeConfig,
    },
}

M.AndStatement = {
    type = "structure",
    members = {
        Statements = {
            type = "list",
            member = M.Statement,
            traits = {
                required = true,
            },
        },
    },
}

M.OrStatement = {
    type = "structure",
    members = {
        Statements = {
            type = "list",
            member = M.Statement,
            traits = {
                required = true,
            },
        },
    },
}

M.FirewallManagerStatement = {
    type = "structure",
    members = {
        ManagedRuleGroupStatement = M.ManagedRuleGroupStatement,
        RuleGroupReferenceStatement = M.RuleGroupReferenceStatement,
    },
}

M.FirewallManagerRuleGroup = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Priority = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        FirewallManagerStatement = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FirewallManagerStatement }),
        OverrideAction = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OverrideAction }),
        VisibilityConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VisibilityConfig }),
    },
}

M.CheckCapacityInput = {
    type = "structure",
    members = {
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rules = {
            type = "list",
            member = M.Rule,
            traits = {
                required = true,
            },
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
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Capacity = {
            type = "long",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Rules = {
            type = "list",
            member = M.Rule,
        },
        VisibilityConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VisibilityConfig }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
        CustomResponseBodies = {
            type = "map",
            key = { type = "string" },
            value = M.CustomResponseBody,
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
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultAction = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DefaultAction }),
        Description = {
            type = "string",
        },
        Rules = {
            type = "list",
            member = M.Rule,
        },
        VisibilityConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VisibilityConfig }),
        DataProtectionConfig = M.DataProtectionConfig,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        CustomResponseBodies = {
            type = "map",
            key = { type = "string" },
            value = M.CustomResponseBody,
        },
        CaptchaConfig = M.CaptchaConfig,
        ChallengeConfig = M.ChallengeConfig,
        TokenDomains = {
            type = "list",
            member = { type = "string" },
        },
        AssociationConfig = M.AssociationConfig,
        OnSourceDDoSProtectionConfig = M.OnSourceDDoSProtectionConfig,
        ApplicationConfig = M.ApplicationConfig,
    },
}

M.RuleGroup = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Capacity = {
            type = "long",
            traits = {
                required = true,
            },
        },
        ARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Rules = {
            type = "list",
            member = M.Rule,
        },
        VisibilityConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VisibilityConfig }),
        LabelNamespace = {
            type = "string",
        },
        CustomResponseBodies = {
            type = "map",
            key = { type = "string" },
            value = M.CustomResponseBody,
        },
        AvailableLabels = {
            type = "list",
            member = M.LabelSummary,
        },
        ConsumedLabels = {
            type = "list",
            member = M.LabelSummary,
        },
    },
}

M.UpdateRuleGroupInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Rules = {
            type = "list",
            member = M.Rule,
        },
        VisibilityConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VisibilityConfig }),
        LockToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CustomResponseBodies = {
            type = "map",
            key = { type = "string" },
            value = M.CustomResponseBody,
        },
    },
}

M.UpdateWebACLInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultAction = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DefaultAction }),
        Description = {
            type = "string",
        },
        Rules = {
            type = "list",
            member = M.Rule,
        },
        VisibilityConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VisibilityConfig }),
        DataProtectionConfig = M.DataProtectionConfig,
        LockToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CustomResponseBodies = {
            type = "map",
            key = { type = "string" },
            value = M.CustomResponseBody,
        },
        CaptchaConfig = M.CaptchaConfig,
        ChallengeConfig = M.ChallengeConfig,
        TokenDomains = {
            type = "list",
            member = { type = "string" },
        },
        AssociationConfig = M.AssociationConfig,
        OnSourceDDoSProtectionConfig = M.OnSourceDDoSProtectionConfig,
        ApplicationConfig = M.ApplicationConfig,
    },
}

M.GetRuleGroupOutput = {
    type = "structure",
    members = {
        RuleGroup = M.RuleGroup,
        LockToken = {
            type = "string",
        },
    },
}

M.WebACL = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultAction = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DefaultAction }),
        Description = {
            type = "string",
        },
        Rules = {
            type = "list",
            member = M.Rule,
        },
        VisibilityConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VisibilityConfig }),
        DataProtectionConfig = M.DataProtectionConfig,
        Capacity = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        PreProcessFirewallManagerRuleGroups = {
            type = "list",
            member = M.FirewallManagerRuleGroup,
        },
        PostProcessFirewallManagerRuleGroups = {
            type = "list",
            member = M.FirewallManagerRuleGroup,
        },
        ManagedByFirewallManager = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        LabelNamespace = {
            type = "string",
        },
        CustomResponseBodies = {
            type = "map",
            key = { type = "string" },
            value = M.CustomResponseBody,
        },
        CaptchaConfig = M.CaptchaConfig,
        ChallengeConfig = M.ChallengeConfig,
        TokenDomains = {
            type = "list",
            member = { type = "string" },
        },
        AssociationConfig = M.AssociationConfig,
        RetrofittedByFirewallManager = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        OnSourceDDoSProtectionConfig = M.OnSourceDDoSProtectionConfig,
        ApplicationConfig = M.ApplicationConfig,
    },
}

M.GetWebACLForResourceOutput = {
    type = "structure",
    members = {
        WebACL = M.WebACL,
    },
}

M.GetWebACLOutput = {
    type = "structure",
    members = {
        WebACL = M.WebACL,
        LockToken = {
            type = "string",
        },
        ApplicationIntegrationURL = {
            type = "string",
        },
    },
}

return M
