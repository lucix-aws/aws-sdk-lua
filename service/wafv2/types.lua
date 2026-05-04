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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AllowAction = {
    type = "structure",
    members = {
        CustomRequestHandling = {
            type = "structure",
        },
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
            member_type = "number",
            traits = {
                required = true,
            },
        },
        ForwardedIPConfig = {
            type = "structure",
        },
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
        All = {
            type = "structure",
        },
        IncludedCookies = {
            type = "list",
            member_type = "string",
        },
        ExcludedCookies = {
            type = "list",
            member_type = "string",
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
        MatchPattern = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        All = {
            type = "structure",
        },
        IncludedHeaders = {
            type = "list",
            member_type = "string",
        },
        ExcludedHeaders = {
            type = "list",
            member_type = "string",
        },
    },
}

M.Headers = {
    type = "structure",
    members = {
        MatchPattern = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        All = {
            type = "structure",
        },
        IncludedPaths = {
            type = "list",
            member_type = "string",
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
        MatchPattern = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        SingleHeader = {
            type = "structure",
        },
        SingleQueryArgument = {
            type = "structure",
        },
        AllQueryArguments = {
            type = "structure",
        },
        UriPath = {
            type = "structure",
        },
        QueryString = {
            type = "structure",
        },
        Body = {
            type = "structure",
        },
        Method = {
            type = "structure",
        },
        JsonBody = {
            type = "structure",
        },
        Headers = {
            type = "structure",
        },
        Cookies = {
            type = "structure",
        },
        HeaderOrder = {
            type = "structure",
        },
        JA3Fingerprint = {
            type = "structure",
        },
        JA4Fingerprint = {
            type = "structure",
        },
        UriFragment = {
            type = "structure",
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
            type = "number",
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
        FieldToMatch = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TextTransformations = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        ForwardedIPConfig = {
            type = "structure",
        },
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
        IPSetForwardedIPConfig = {
            type = "structure",
        },
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
        UsernameField = {
            type = "structure",
        },
        PasswordField = {
            type = "structure",
        },
        EmailField = {
            type = "structure",
        },
        PhoneNumberFields = {
            type = "list",
            member_type = "structure",
        },
        AddressFields = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ResponseInspectionBodyContains = {
    type = "structure",
    members = {
        SuccessStrings = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        FailureStrings = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        FailureValues = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        FailureValues = {
            type = "list",
            member_type = "string",
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
            member_type = "number",
            traits = {
                required = true,
            },
        },
        FailureCodes = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ResponseInspection = {
    type = "structure",
    members = {
        StatusCode = {
            type = "structure",
        },
        Header = {
            type = "structure",
        },
        BodyContains = {
            type = "structure",
        },
        Json = {
            type = "structure",
        },
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
        RequestInspection = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ResponseInspection = {
            type = "structure",
        },
        EnableRegexInPath = {
            type = "boolean",
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
            member_type = "structure",
        },
    },
}

M.ClientSideActionConfig = {
    type = "structure",
    members = {
        Challenge = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AWSManagedRulesAntiDDoSRuleSet = {
    type = "structure",
    members = {
        ClientSideActionConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        UsernameField = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        PasswordField = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        RequestInspection = {
            type = "structure",
        },
        ResponseInspection = {
            type = "structure",
        },
        EnableRegexInPath = {
            type = "boolean",
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
        UsernameField = {
            type = "structure",
        },
        PasswordField = {
            type = "structure",
        },
        AWSManagedRulesBotControlRuleSet = {
            type = "structure",
        },
        AWSManagedRulesATPRuleSet = {
            type = "structure",
        },
        AWSManagedRulesACFPRuleSet = {
            type = "structure",
        },
        AWSManagedRulesAntiDDoSRuleSet = {
            type = "structure",
        },
    },
}

M.CustomResponse = {
    type = "structure",
    members = {
        ResponseCode = {
            type = "number",
            traits = {
                required = true,
            },
        },
        CustomResponseBodyKey = {
            type = "string",
        },
        ResponseHeaders = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BlockAction = {
    type = "structure",
    members = {
        CustomResponse = {
            type = "structure",
        },
    },
}

M.CaptchaAction = {
    type = "structure",
    members = {
        CustomRequestHandling = {
            type = "structure",
        },
    },
}

M.ChallengeAction = {
    type = "structure",
    members = {
        CustomRequestHandling = {
            type = "structure",
        },
    },
}

M.CountAction = {
    type = "structure",
    members = {
        CustomRequestHandling = {
            type = "structure",
        },
    },
}

M.RuleAction = {
    type = "structure",
    members = {
        Block = {
            type = "structure",
        },
        Allow = {
            type = "structure",
        },
        Count = {
            type = "structure",
        },
        Captcha = {
            type = "structure",
        },
        Challenge = {
            type = "structure",
        },
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
        ActionToUse = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RateBasedStatementCustomKey = {
    type = "structure",
    members = {
        Header = {
            type = "structure",
        },
        Cookie = {
            type = "structure",
        },
        QueryArgument = {
            type = "structure",
        },
        QueryString = {
            type = "structure",
        },
        HTTPMethod = {
            type = "structure",
        },
        ForwardedIP = {
            type = "structure",
        },
        IP = {
            type = "structure",
        },
        LabelNamespace = {
            type = "structure",
        },
        UriPath = {
            type = "structure",
        },
        JA3Fingerprint = {
            type = "structure",
        },
        JA4Fingerprint = {
            type = "structure",
        },
        ASN = {
            type = "structure",
        },
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
        FieldToMatch = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TextTransformations = {
            type = "list",
            member_type = "structure",
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
        FieldToMatch = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TextTransformations = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        RuleActionOverrides = {
            type = "list",
            member_type = "structure",
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
        FieldToMatch = {
            type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        TextTransformations = {
            type = "list",
            member_type = "structure",
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
        FieldToMatch = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TextTransformations = {
            type = "list",
            member_type = "structure",
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
        FieldToMatch = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TextTransformations = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        APIKey = {
            type = "string",
        },
        CreationTimestamp = {
            type = "timestamp",
        },
        Version = {
            type = "number",
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
            member_type = "string",
        },
    },
}

M.ApplicationConfig = {
    type = "structure",
    members = {
        Attributes = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.ImmunityTimeProperty = {
    type = "structure",
    members = {
        ImmunityTime = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.CaptchaConfig = {
    type = "structure",
    members = {
        ImmunityTimeProperty = {
            type = "structure",
        },
    },
}

M.ChallengeConfig = {
    type = "structure",
    members = {
        ImmunityTimeProperty = {
            type = "structure",
        },
    },
}

M.NoneAction = {
    type = "structure",
}

M.OverrideAction = {
    type = "structure",
    members = {
        Count = {
            type = "structure",
        },
        None = {
            type = "structure",
        },
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
                required = true,
            },
        },
        CloudWatchMetricsEnabled = {
            type = "boolean",
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

M.Scope = {
    CLOUDFRONT = "CLOUDFRONT",
    REGIONAL = "REGIONAL",
}

M.CheckCapacityOutput = {
    type = "structure",
    members = {
        Capacity = {
            type = "number",
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
            member_type = "string",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        Summary = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        Summary = {
            type = "structure",
        },
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
        Summary = {
            type = "structure",
        },
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
            member_type = "string",
        },
    },
}

M.DataProtection = {
    type = "structure",
    members = {
        Field = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExcludeRuleMatchDetails = {
            type = "boolean",
        },
        ExcludeRateBasedDetails = {
            type = "boolean",
        },
    },
}

M.DataProtectionConfig = {
    type = "structure",
    members = {
        DataProtections = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DefaultAction = {
    type = "structure",
    members = {
        Block = {
            type = "structure",
        },
        Allow = {
            type = "structure",
        },
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
        Summary = {
            type = "structure",
        },
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
        },
        IsAdvancedManagedRuleSet = {
            type = "boolean",
        },
    },
}

M.DescribeAllManagedProductsOutput = {
    type = "structure",
    members = {
        ManagedProducts = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        Action = {
            type = "structure",
        },
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
            type = "number",
        },
        Rules = {
            type = "list",
            member_type = "structure",
        },
        LabelNamespace = {
            type = "string",
        },
        AvailableLabels = {
            type = "list",
            member_type = "structure",
        },
        ConsumedLabels = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetIPSetOutput = {
    type = "structure",
    members = {
        IPSet = {
            type = "structure",
        },
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
        ActionCondition = {
            type = "structure",
        },
        LabelNameCondition = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        RedactedFields = {
            type = "list",
            member_type = "structure",
        },
        ManagedByFirewallManager = {
            type = "boolean",
        },
        LoggingFilter = {
            type = "structure",
        },
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
        LoggingConfiguration = {
            type = "structure",
        },
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
            type = "number",
        },
        ForecastedLifetime = {
            type = "number",
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
            key_type = "string",
            value_type = "structure",
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
        ManagedRuleSet = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.GetMobileSdkReleaseOutput = {
    type = "structure",
    members = {
        MobileSdkRelease = {
            type = "structure",
        },
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
            member_type = "string",
        },
    },
}

M.GetRateBasedStatementManagedKeysOutput = {
    type = "structure",
    members = {
        ManagedKeysIPV4 = {
            type = "structure",
        },
        ManagedKeysIPV6 = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.GetRegexPatternSetOutput = {
    type = "structure",
    members = {
        RegexPatternSet = {
            type = "structure",
        },
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
        TimeWindow = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        MaxItems = {
            type = "number",
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
            type = "number",
        },
        SolveTimestamp = {
            type = "number",
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
            type = "number",
        },
        SolveTimestamp = {
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.SampledHTTPRequest = {
    type = "structure",
    members = {
        Request = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Weight = {
            type = "number",
            traits = {
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
            member_type = "structure",
        },
        ResponseCodeSent = {
            type = "number",
        },
        Labels = {
            type = "list",
            member_type = "structure",
        },
        CaptchaResponse = {
            type = "structure",
        },
        ChallengeResponse = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        PopulationSize = {
            type = "number",
        },
        TimeWindow = {
            type = "structure",
        },
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
        TimeWindow = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        NumberOfTopTrafficBotsPerPath = {
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Percentage = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.PathStatistics = {
    type = "structure",
    members = {
        Source = {
            type = "structure",
        },
        Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RequestCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Percentage = {
            type = "number",
            traits = {
                required = true,
            },
        },
        TopBots = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetTopPathStatisticsByTrafficOutput = {
    type = "structure",
    members = {
        PathStatistics = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        TotalRequestCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
        TopCategories = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        TagInfoForResource = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.PutLoggingConfigurationInput = {
    type = "structure",
    members = {
        LoggingConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutLoggingConfigurationOutput = {
    type = "structure",
    members = {
        LoggingConfiguration = {
            type = "structure",
        },
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
            type = "number",
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
            key_type = "string",
            value_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
        ByteMatchStatement = {
            type = "structure",
        },
        SqliMatchStatement = {
            type = "structure",
        },
        XssMatchStatement = {
            type = "structure",
        },
        SizeConstraintStatement = {
            type = "structure",
        },
        GeoMatchStatement = {
            type = "structure",
        },
        RuleGroupReferenceStatement = {
            type = "structure",
        },
        IPSetReferenceStatement = {
            type = "structure",
        },
        RegexPatternSetReferenceStatement = {
            type = "structure",
        },
        RateBasedStatement = {
            type = "structure",
        },
        AndStatement = {
            type = "structure",
        },
        OrStatement = {
            type = "structure",
        },
        NotStatement = {
            type = "structure",
        },
        ManagedRuleGroupStatement = {
            type = "structure",
        },
        LabelMatchStatement = {
            type = "structure",
        },
        RegexMatchStatement = {
            type = "structure",
        },
        AsnMatchStatement = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        ScopeDownStatement = {
            type = "structure",
        },
        ManagedRuleGroupConfigs = {
            type = "list",
            member_type = "structure",
        },
        RuleActionOverrides = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.NotStatement = {
    type = "structure",
    members = {
        Statement = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RateBasedStatement = {
    type = "structure",
    members = {
        Limit = {
            type = "number",
            traits = {
                required = true,
            },
        },
        EvaluationWindowSec = {
            type = "number",
        },
        AggregateKeyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScopeDownStatement = {
            type = "structure",
        },
        ForwardedIPConfig = {
            type = "structure",
        },
        CustomKeys = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Statement = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Action = {
            type = "structure",
        },
        OverrideAction = {
            type = "structure",
        },
        RuleLabels = {
            type = "list",
            member_type = "structure",
        },
        VisibilityConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CaptchaConfig = {
            type = "structure",
        },
        ChallengeConfig = {
            type = "structure",
        },
    },
}

M.AndStatement = {
    type = "structure",
    members = {
        Statements = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.FirewallManagerStatement = {
    type = "structure",
    members = {
        ManagedRuleGroupStatement = {
            type = "structure",
        },
        RuleGroupReferenceStatement = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        FirewallManagerStatement = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        OverrideAction = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        VisibilityConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Rules = {
            type = "list",
            member_type = "structure",
        },
        VisibilityConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        CustomResponseBodies = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
        DefaultAction = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Rules = {
            type = "list",
            member_type = "structure",
        },
        VisibilityConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DataProtectionConfig = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        CustomResponseBodies = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        CaptchaConfig = {
            type = "structure",
        },
        ChallengeConfig = {
            type = "structure",
        },
        TokenDomains = {
            type = "list",
            member_type = "string",
        },
        AssociationConfig = {
            type = "structure",
        },
        OnSourceDDoSProtectionConfig = {
            type = "structure",
        },
        ApplicationConfig = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
        },
        VisibilityConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        LabelNamespace = {
            type = "string",
        },
        CustomResponseBodies = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        AvailableLabels = {
            type = "list",
            member_type = "structure",
        },
        ConsumedLabels = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        VisibilityConfig = {
            type = "structure",
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
        CustomResponseBodies = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
        DefaultAction = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Rules = {
            type = "list",
            member_type = "structure",
        },
        VisibilityConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DataProtectionConfig = {
            type = "structure",
        },
        LockToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CustomResponseBodies = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        CaptchaConfig = {
            type = "structure",
        },
        ChallengeConfig = {
            type = "structure",
        },
        TokenDomains = {
            type = "list",
            member_type = "string",
        },
        AssociationConfig = {
            type = "structure",
        },
        OnSourceDDoSProtectionConfig = {
            type = "structure",
        },
        ApplicationConfig = {
            type = "structure",
        },
    },
}

M.GetRuleGroupOutput = {
    type = "structure",
    members = {
        RuleGroup = {
            type = "structure",
        },
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
        DefaultAction = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Rules = {
            type = "list",
            member_type = "structure",
        },
        VisibilityConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DataProtectionConfig = {
            type = "structure",
        },
        Capacity = {
            type = "number",
        },
        PreProcessFirewallManagerRuleGroups = {
            type = "list",
            member_type = "structure",
        },
        PostProcessFirewallManagerRuleGroups = {
            type = "list",
            member_type = "structure",
        },
        ManagedByFirewallManager = {
            type = "boolean",
        },
        LabelNamespace = {
            type = "string",
        },
        CustomResponseBodies = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        CaptchaConfig = {
            type = "structure",
        },
        ChallengeConfig = {
            type = "structure",
        },
        TokenDomains = {
            type = "list",
            member_type = "string",
        },
        AssociationConfig = {
            type = "structure",
        },
        RetrofittedByFirewallManager = {
            type = "boolean",
        },
        OnSourceDDoSProtectionConfig = {
            type = "structure",
        },
        ApplicationConfig = {
            type = "structure",
        },
    },
}

M.GetWebACLForResourceOutput = {
    type = "structure",
    members = {
        WebACL = {
            type = "structure",
        },
    },
}

M.GetWebACLOutput = {
    type = "structure",
    members = {
        WebACL = {
            type = "structure",
        },
        LockToken = {
            type = "string",
        },
        ApplicationIntegrationURL = {
            type = "string",
        },
    },
}

return M
