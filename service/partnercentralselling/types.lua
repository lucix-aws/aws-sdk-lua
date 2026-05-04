local M = {}

M.AcceptEngagementInvitationInput = {
    type = "structure",
    id = "AcceptEngagementInvitationInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AcceptEngagementInvitationOutput = {
    type = "structure",
    id = "AcceptEngagementInvitationOutput",
}

M.AccessDeniedExceptionErrorCode = {
    INCOMPATIBLE_BENEFIT_AWS_PARTNER_STATE = "INCOMPATIBLE_BENEFIT_AWS_PARTNER_STATE",
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
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

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationExceptionErrorCode = {
    REQUIRED_FIELD_MISSING = "REQUIRED_FIELD_MISSING",
    INVALID_ENUM_VALUE = "INVALID_ENUM_VALUE",
    INVALID_STRING_FORMAT = "INVALID_STRING_FORMAT",
    INVALID_VALUE = "INVALID_VALUE",
    NOT_ENOUGH_VALUES = "NOT_ENOUGH_VALUES",
    TOO_MANY_VALUES = "TOO_MANY_VALUES",
    INVALID_RESOURCE_STATE = "INVALID_RESOURCE_STATE",
    DUPLICATE_KEY_VALUE = "DUPLICATE_KEY_VALUE",
    VALUE_OUT_OF_RANGE = "VALUE_OUT_OF_RANGE",
    ACTION_NOT_PERMITTED = "ACTION_NOT_PERMITTED",
}

M.ValidationExceptionError = {
    type = "structure",
    id = "ValidationExceptionError",
    members = {
        FieldName = {
            type = "string",
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    REQUEST_VALIDATION_FAILED = "REQUEST_VALIDATION_FAILED",
    BUSINESS_VALIDATION_FAILED = "BUSINESS_VALIDATION_FAILED",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorList = {
            type = "list",
            member = M.ValidationExceptionError,
        },
    },
}

M.CountryCode = {
    US = "US",
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
    CK = "CK",
    CR = "CR",
    CI = "CI",
    HR = "HR",
    CU = "CU",
    CW = "CW",
    CY = "CY",
    CZ = "CZ",
    CD = "CD",
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
    AN = "AN",
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

M.Address = {
    type = "structure",
    id = "Address",
    members = {
        City = {
            type = "string",
        },
        PostalCode = {
            type = "string",
        },
        StateOrRegion = {
            type = "string",
        },
        CountryCode = {
            type = "string",
        },
        StreetAddress = {
            type = "string",
        },
    },
}

M.Industry = {
    AEROSPACE_SATELLITE = "Aerospace",
    AGRICULTURE = "Agriculture",
    AUTOMOTIVE = "Automotive",
    COMPUTERS_ELECTRONICS = "Computers and Electronics",
    CONSUMER_GOODS = "Consumer Goods",
    EDUCATION = "Education",
    ENERGY_OIL_GAS = "Energy - Oil and Gas",
    ENERGY_POWER_UTILITIES = "Energy - Power and Utilities",
    FINANCIAL_SERVICES = "Financial Services",
    GAMING = "Gaming",
    GOVERNMENT = "Government",
    HEALTHCARE = "Healthcare",
    HOSPITALITY = "Hospitality",
    LIFE_SCIENCES = "Life Sciences",
    MANUFACTURING = "Manufacturing",
    MARKETING_ADVERTISING = "Marketing and Advertising",
    MEDIA_ENTERTAINMENT = "Media and Entertainment",
    MINING = "Mining",
    NON_PROFIT_ORGANIZATION = "Non-Profit Organization",
    PROFESSIONAL_SERVICES = "Professional Services",
    REALESTATE_CONSTRUCTION = "Real Estate and Construction",
    RETAIL = "Retail",
    SOFTWARE_INTERNET = "Software and Internet",
    TELECOMMUNICATIONS = "Telecommunications",
    TRANSPORTATION_LOGISTICS = "Transportation and Logistics",
    TRAVEL = "Travel",
    WHOLESALE_DISTRIBUTION = "Wholesale and Distribution",
    OTHER = "Other",
}

M.Account = {
    type = "structure",
    id = "Account",
    members = {
        Industry = {
            type = "string",
        },
        OtherIndustry = {
            type = "string",
        },
        CompanyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WebsiteUrl = {
            type = "string",
        },
        AwsAccountId = {
            type = "string",
        },
        Address = M.Address,
        Duns = {
            type = "string",
        },
    },
}

M.AccountReceiver = {
    type = "structure",
    id = "AccountReceiver",
    members = {
        Alias = {
            type = "string",
        },
        AwsAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AddressSummary = {
    type = "structure",
    id = "AddressSummary",
    members = {
        City = {
            type = "string",
        },
        PostalCode = {
            type = "string",
        },
        StateOrRegion = {
            type = "string",
        },
        CountryCode = {
            type = "string",
        },
    },
}

M.AccountSummary = {
    type = "structure",
    id = "AccountSummary",
    members = {
        Industry = {
            type = "string",
        },
        OtherIndustry = {
            type = "string",
        },
        CompanyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WebsiteUrl = {
            type = "string",
        },
        Address = M.AddressSummary,
    },
}

M.AssigneeContact = {
    type = "structure",
    id = "AssigneeContact",
    members = {
        Email = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FirstName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Phone = {
            type = "string",
        },
        BusinessTitle = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssignOpportunityInput = {
    type = "structure",
    id = "AssignOpportunityInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Assignee = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssigneeContact }),
    },
}

M.AssignOpportunityOutput = {
    type = "structure",
    id = "AssignOpportunityOutput",
}

M.RelatedEntityType = {
    SOLUTIONS = "Solutions",
    AWS_PRODUCTS = "AwsProducts",
    AWS_MARKETPLACE_OFFERS = "AwsMarketplaceOffers",
    AWS_MARKETPLACE_OFFER_SETS = "AwsMarketplaceOfferSets",
}

M.AssociateOpportunityInput = {
    type = "structure",
    id = "AssociateOpportunityInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OpportunityIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RelatedEntityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RelatedEntityIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateOpportunityOutput = {
    type = "structure",
    id = "AssociateOpportunityOutput",
}

M.AwsClosedLostReason = {
    ADMINISTRATIVE = "Administrative",
    BUSINESS_ASSOCIATE_AGREEMENT = "Business Associate Agreement",
    COMPANY_ACQUIRED_DISSOLVED = "Company Acquired/Dissolved",
    COMPETITIVE_OFFERING = "Competitive Offering",
    CUSTOMER_DATA_REQUIREMENT = "Customer Data Requirement",
    CUSTOMER_DEFICIENCY = "Customer Deficiency",
    CUSTOMER_EXPERIENCE = "Customer Experience",
    DELAY_CANCELLATION_OF_PROJECT = "Delay / Cancellation of Project",
    DUPLICATE = "Duplicate",
    DUPLICATE_OPPORTUNITY = "Duplicate Opportunity",
    EXECUTIVE_BLOCKER = "Executive Blocker",
    FAILED_VETTING = "Failed Vetting",
    FEATURE_LIMITATION = "Feature Limitation",
    FINANCIAL_COMMERCIAL = "Financial/Commercial",
    INSUFFICIENT_AMAZON_VALUE = "Insufficient Amazon Value",
    INSUFFICIENT_AWS_VALUE = "Insufficient AWS Value",
    INTERNATIONAL_CONSTRAINTS = "International Constraints",
    LEGAL_TAX_REGULATORY = "Legal / Tax / Regulatory",
    LEGAL_TERMS_AND_CONDITIONS = "Legal Terms and Conditions",
    LOST_TO_COMPETITOR = "Lost to Competitor",
    LOST_TO_COMPETITOR_GOOGLE = "Lost to Competitor - Google",
    LOST_TO_COMPETITOR_MICROSOFT = "Lost to Competitor - Microsoft",
    LOST_TO_COMPETITOR_OTHER = "Lost to Competitor - Other",
    LOST_TO_COMPETITOR_RACKSPACE = "Lost to Competitor - Rackspace",
    LOST_TO_COMPETITOR_SOFTLAYER = "Lost to Competitor - SoftLayer",
    LOST_TO_COMPETITOR_VMWARE = "Lost to Competitor - VMWare",
    NO_CUSTOMER_REFERENCE = "No Customer Reference",
    NO_INTEGRATION_RESOURCES = "No Integration Resources",
    NO_OPPORTUNITY = "No Opportunity",
    NO_PERCEIVED_VALUE_OF_MP = "No Perceived Value of MP",
    NO_RESPONSE = "No Response",
    NOT_COMMITTED_TO_AWS = "Not Committed to AWS",
    NO_UPDATE = "No Update",
    ON_PREMISES_DEPLOYMENT = "On Premises Deployment",
    OTHER = "Other",
    OTHER_DETAILS_IN_DESCRIPTION = "Other (Details in Description)",
    PARTNER_GAP = "Partner Gap",
    PAST_DUE = "Past Due",
    PEOPLE_RELATIONSHIP_GOVERNANCE = "People/Relationship/Governance",
    PLATFORM_TECHNOLOGY_LIMITATION = "Platform Technology Limitation",
    PREFERENCE_FOR_COMPETITOR = "Preference for Competitor",
    PRICE = "Price",
    PRODUCT_TECHNOLOGY = "Product/Technology",
    PRODUCT_NOT_ON_AWS = "Product Not on AWS",
    SECURITY_COMPLIANCE = "Security / Compliance",
    SELF_SERVICE = "Self-Service",
    TECHNICAL_LIMITATIONS = "Technical Limitations",
    TERM_SHEET_IMPASSE = "Term Sheet Impasse",
}

M.AwsFundingUsed = {
    YES = "Yes",
    NO = "No",
}

M.AwsMemberBusinessTitle = {
    AWS_SALES_REP = "AWSSalesRep",
    AWS_ACCOUNT_OWNER = "AWSAccountOwner",
    WWPSPDM = "WWPSPDM",
    PDM = "PDM",
    PSM = "PSM",
    ISVSM = "ISVSM",
}

M.Contact = {
    type = "structure",
    id = "Contact",
    members = {
        Email = {
            type = "string",
        },
        FirstName = {
            type = "string",
        },
        LastName = {
            type = "string",
        },
        BusinessTitle = {
            type = "string",
        },
        Phone = {
            type = "string",
        },
    },
}

M.AwsOpportunityCustomer = {
    type = "structure",
    id = "AwsOpportunityCustomer",
    members = {
        Contacts = {
            type = "list",
            member = M.Contact,
        },
    },
}

M.AwsProductOptimization = {
    type = "structure",
    id = "AwsProductOptimization",
    members = {
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SavingsAmount = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AwsProductDetails = {
    type = "structure",
    id = "AwsProductDetails",
    members = {
        ProductCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceCode = {
            type = "string",
        },
        Categories = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Amount = {
            type = "string",
        },
        OptimizedAmount = {
            type = "string",
        },
        PotentialSavingsAmount = {
            type = "string",
        },
        Optimizations = {
            type = "list",
            member = M.AwsProductOptimization,
            traits = {
                required = true,
            },
        },
    },
}

M.CurrencyCode = {
    USD = "USD",
    EUR = "EUR",
    GBP = "GBP",
    AUD = "AUD",
    CAD = "CAD",
    CNY = "CNY",
    NZD = "NZD",
    INR = "INR",
    JPY = "JPY",
    CHF = "CHF",
    SEK = "SEK",
    AED = "AED",
    AFN = "AFN",
    ALL = "ALL",
    AMD = "AMD",
    ANG = "ANG",
    AOA = "AOA",
    ARS = "ARS",
    AWG = "AWG",
    AZN = "AZN",
    BAM = "BAM",
    BBD = "BBD",
    BDT = "BDT",
    BGN = "BGN",
    BHD = "BHD",
    BIF = "BIF",
    BMD = "BMD",
    BND = "BND",
    BOB = "BOB",
    BOV = "BOV",
    BRL = "BRL",
    BSD = "BSD",
    BTN = "BTN",
    BWP = "BWP",
    BYN = "BYN",
    BZD = "BZD",
    CDF = "CDF",
    CHE = "CHE",
    CHW = "CHW",
    CLF = "CLF",
    CLP = "CLP",
    COP = "COP",
    COU = "COU",
    CRC = "CRC",
    CUC = "CUC",
    CUP = "CUP",
    CVE = "CVE",
    CZK = "CZK",
    DJF = "DJF",
    DKK = "DKK",
    DOP = "DOP",
    DZD = "DZD",
    EGP = "EGP",
    ERN = "ERN",
    ETB = "ETB",
    FJD = "FJD",
    FKP = "FKP",
    GEL = "GEL",
    GHS = "GHS",
    GIP = "GIP",
    GMD = "GMD",
    GNF = "GNF",
    GTQ = "GTQ",
    GYD = "GYD",
    HKD = "HKD",
    HNL = "HNL",
    HRK = "HRK",
    HTG = "HTG",
    HUF = "HUF",
    IDR = "IDR",
    ILS = "ILS",
    IQD = "IQD",
    IRR = "IRR",
    ISK = "ISK",
    JMD = "JMD",
    JOD = "JOD",
    KES = "KES",
    KGS = "KGS",
    KHR = "KHR",
    KMF = "KMF",
    KPW = "KPW",
    KRW = "KRW",
    KWD = "KWD",
    KYD = "KYD",
    KZT = "KZT",
    LAK = "LAK",
    LBP = "LBP",
    LKR = "LKR",
    LRD = "LRD",
    LSL = "LSL",
    LYD = "LYD",
    MAD = "MAD",
    MDL = "MDL",
    MGA = "MGA",
    MKD = "MKD",
    MMK = "MMK",
    MNT = "MNT",
    MOP = "MOP",
    MRU = "MRU",
    MUR = "MUR",
    MVR = "MVR",
    MWK = "MWK",
    MXN = "MXN",
    MXV = "MXV",
    MYR = "MYR",
    MZN = "MZN",
    NAD = "NAD",
    NGN = "NGN",
    NIO = "NIO",
    NOK = "NOK",
    NPR = "NPR",
    OMR = "OMR",
    PAB = "PAB",
    PEN = "PEN",
    PGK = "PGK",
    PHP = "PHP",
    PKR = "PKR",
    PLN = "PLN",
    PYG = "PYG",
    QAR = "QAR",
    RON = "RON",
    RSD = "RSD",
    RUB = "RUB",
    RWF = "RWF",
    SAR = "SAR",
    SBD = "SBD",
    SCR = "SCR",
    SDG = "SDG",
    SGD = "SGD",
    SHP = "SHP",
    SLL = "SLL",
    SOS = "SOS",
    SRD = "SRD",
    SSP = "SSP",
    STN = "STN",
    SVC = "SVC",
    SYP = "SYP",
    SZL = "SZL",
    THB = "THB",
    TJS = "TJS",
    TMT = "TMT",
    TND = "TND",
    TOP = "TOP",
    TRY = "TRY",
    TTD = "TTD",
    TWD = "TWD",
    TZS = "TZS",
    UAH = "UAH",
    UGX = "UGX",
    USN = "USN",
    UYI = "UYI",
    UYU = "UYU",
    UZS = "UZS",
    VEF = "VEF",
    VND = "VND",
    VUV = "VUV",
    WST = "WST",
    XAF = "XAF",
    XCD = "XCD",
    XDR = "XDR",
    XOF = "XOF",
    XPF = "XPF",
    XSU = "XSU",
    XUA = "XUA",
    YER = "YER",
    ZAR = "ZAR",
    ZMW = "ZMW",
    ZWL = "ZWL",
}

M.PaymentFrequency = {
    MONTHLY = "Monthly",
}

M.AwsProductInsights = {
    type = "structure",
    id = "AwsProductInsights",
    members = {
        CurrencyCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Frequency = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TotalAmount = {
            type = "string",
        },
        TotalOptimizedAmount = {
            type = "string",
        },
        TotalPotentialSavingsAmount = {
            type = "string",
        },
        TotalAmountByCategory = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        AwsProducts = {
            type = "list",
            member = M.AwsProductDetails,
            traits = {
                required = true,
            },
        },
    },
}

M.AwsProductsSpendInsightsBySource = {
    type = "structure",
    id = "AwsProductsSpendInsightsBySource",
    members = {
        Partner = M.AwsProductInsights,
        AWS = M.AwsProductInsights,
    },
}

M.EngagementScore = {
    HIGH = "High",
    MEDIUM = "Medium",
    LOW = "Low",
}

M.AwsOpportunityInsights = {
    type = "structure",
    id = "AwsOpportunityInsights",
    members = {
        NextBestActions = {
            type = "string",
        },
        EngagementScore = {
            type = "string",
        },
        AwsProductsSpendInsightsBySource = M.AwsProductsSpendInsightsBySource,
    },
}

M.ProfileNextStepsHistory = {
    type = "structure",
    id = "ProfileNextStepsHistory",
    members = {
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Time = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.AwsOpportunityStage = {
    NOT_STARTED = "Not Started",
    IN_PROGRESS = "In Progress",
    PROSPECT = "Prospect",
    ENGAGED = "Engaged",
    IDENTIFIED = "Identified",
    QUALIFY = "Qualify",
    RESEARCH = "Research",
    SELLER_ENGAGED = "Seller Engaged",
    EVALUATING = "Evaluating",
    SELLER_REGISTERED = "Seller Registered",
    TERM_SHEET_NEGOTIATION = "Term Sheet Negotiation",
    CONTRACT_NEGOTIATION = "Contract Negotiation",
    ONBOARDING = "Onboarding",
    BUILDING_INTEGRATION = "Building Integration",
    QUALIFIED = "Qualified",
    ON_HOLD = "On-hold",
    TECHNICAL_VALIDATION = "Technical Validation",
    BUSINESS_VALIDATION = "Business Validation",
    COMMITTED = "Committed",
    LAUNCHED = "Launched",
    DEFERRED_TO_PARTNER = "Deferred to Partner",
    CLOSED_LOST = "Closed Lost",
    COMPLETED = "Completed",
    CLOSED_INCOMPLETE = "Closed Incomplete",
}

M.AwsOpportunityLifeCycle = {
    type = "structure",
    id = "AwsOpportunityLifeCycle",
    members = {
        TargetCloseDate = {
            type = "string",
        },
        ClosedLostReason = {
            type = "string",
        },
        Stage = {
            type = "string",
        },
        NextSteps = {
            type = "string",
        },
        NextStepsHistory = {
            type = "list",
            member = M.ProfileNextStepsHistory,
        },
    },
}

M.AwsPartition = {
    AWS_EUSC = "aws-eusc",
}

M.ExpectedCustomerSpend = {
    type = "structure",
    id = "ExpectedCustomerSpend",
    members = {
        Amount = {
            type = "string",
            traits = {
                default = "",
            },
        },
        CurrencyCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Frequency = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetCompany = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EstimationUrl = {
            type = "string",
        },
    },
}

M.AwsOpportunityProject = {
    type = "structure",
    id = "AwsOpportunityProject",
    members = {
        ExpectedCustomerSpend = {
            type = "list",
            member = M.ExpectedCustomerSpend,
        },
        AwsPartition = {
            type = "string",
        },
    },
}

M.AwsOpportunityRelatedEntities = {
    type = "structure",
    id = "AwsOpportunityRelatedEntities",
    members = {
        AwsProducts = {
            type = "list",
            member = { type = "string" },
        },
        Solutions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SalesInvolvementType = {
    FOR_VISIBILITY_ONLY = "For Visibility Only",
    CO_SELL = "Co-Sell",
}

M.InvolvementTypeChangeReason = {
    EXPANSION_OPPORTUNITY = "Expansion Opportunity",
    CHANGE_IN_DEAL_INFORMATION = "Change in Deal Information",
    CUSTOMER_REQUESTED = "Customer Requested",
    TECHNICAL_COMPLEXITY = "Technical Complexity",
    RISK_MITIGATION = "Risk Mitigation",
}

M.AwsTeamMember = {
    type = "structure",
    id = "AwsTeamMember",
    members = {
        Email = {
            type = "string",
        },
        FirstName = {
            type = "string",
        },
        LastName = {
            type = "string",
        },
        BusinessTitle = {
            type = "string",
        },
    },
}

M.OpportunityOrigin = {
    AWS_REFERRAL = "AWS Referral",
    PARTNER_REFERRAL = "Partner Referral",
}

M.Visibility = {
    FULL = "Full",
    LIMITED = "Limited",
}

M.AwsOpportunitySummaryFullView = {
    type = "structure",
    id = "AwsOpportunitySummaryFullView",
    members = {
        RelatedOpportunityId = {
            type = "string",
        },
        Origin = {
            type = "string",
        },
        InvolvementType = {
            type = "string",
        },
        Visibility = {
            type = "string",
        },
        LifeCycle = M.AwsOpportunityLifeCycle,
        OpportunityTeam = {
            type = "list",
            member = M.AwsTeamMember,
        },
        Insights = M.AwsOpportunityInsights,
        InvolvementTypeChangeReason = {
            type = "string",
        },
        RelatedEntityIds = M.AwsOpportunityRelatedEntities,
        Customer = M.AwsOpportunityCustomer,
        Project = M.AwsOpportunityProject,
    },
}

M.EngagementCustomer = {
    type = "structure",
    id = "EngagementCustomer",
    members = {
        Industry = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CompanyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WebsiteUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CountryCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EngagementCustomerProjectDetails = {
    type = "structure",
    id = "EngagementCustomerProjectDetails",
    members = {
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BusinessProblem = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetCompletionDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomerProjectsContext = {
    type = "structure",
    id = "CustomerProjectsContext",
    members = {
        Customer = M.EngagementCustomer,
        Project = M.EngagementCustomerProjectDetails,
    },
}

M.MarketSegment = {
    ENTERPRISE = "Enterprise",
    LARGE = "Large",
    MEDIUM = "Medium",
    SMALL = "Small",
    MICRO = "Micro",
}

M.LeadCustomer = {
    type = "structure",
    id = "LeadCustomer",
    members = {
        Industry = {
            type = "string",
        },
        CompanyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WebsiteUrl = {
            type = "string",
        },
        Address = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AddressSummary }),
        AwsMaturity = {
            type = "string",
        },
        MarketSegment = {
            type = "string",
        },
    },
}

M.LeadContact = {
    type = "structure",
    id = "LeadContact",
    members = {
        BusinessTitle = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Email = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FirstName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Phone = {
            type = "string",
        },
    },
}

M.LeadInteraction = {
    type = "structure",
    id = "LeadInteraction",
    members = {
        SourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Usecase = {
            type = "string",
        },
        InteractionDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        CustomerAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BusinessProblem = {
            type = "string",
        },
        Contact = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LeadContact }),
    },
}

M.LeadContext = {
    type = "structure",
    id = "LeadContext",
    members = {
        QualificationStatus = {
            type = "string",
            traits = {
                default = "Unqualified",
            },
        },
        Customer = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LeadCustomer }),
        Interactions = {
            type = "list",
            member = M.LeadInteraction,
            traits = {
                required = true,
            },
        },
    },
}

M.EngagementContextPayload = {
    type = "union",
    id = "EngagementContextPayload",
    members = {
        CustomerProject = M.CustomerProjectsContext,
        Lead = M.LeadContext,
    },
}

M.EngagementContextType = {
    CUSTOMER_PROJECT = "CustomerProject",
    LEAD = "Lead",
}

M.CreateEngagementContextInput = {
    type = "structure",
    id = "CreateEngagementContextInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EngagementIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Payload = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EngagementContextPayload }),
    },
}

M.CreateEngagementContextOutput = {
    type = "structure",
    id = "CreateEngagementContextOutput",
    members = {
        EngagementId = {
            type = "string",
        },
        EngagementArn = {
            type = "string",
        },
        EngagementLastModifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ContextId = {
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
    },
}

M.EngagementContextDetails = {
    type = "structure",
    id = "EngagementContextDetails",
    members = {
        Id = {
            type = "string",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Payload = M.EngagementContextPayload,
    },
}

M.CreateEngagementInput = {
    type = "structure",
    id = "CreateEngagementInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Contexts = {
            type = "list",
            member = M.EngagementContextDetails,
        },
    },
}

M.CreateEngagementOutput = {
    type = "structure",
    id = "CreateEngagementOutput",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetEngagementInput = {
    type = "structure",
    id = "GetEngagementInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetEngagementOutput = {
    type = "structure",
    id = "GetEngagementOutput",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Title = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        CreatedBy = {
            type = "string",
        },
        MemberCount = {
            type = "integer",
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ModifiedBy = {
            type = "string",
        },
        Contexts = {
            type = "list",
            member = M.EngagementContextDetails,
        },
    },
}

M.ListEngagementMembersInput = {
    type = "structure",
    id = "ListEngagementMembersInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 5,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.EngagementMember = {
    type = "structure",
    id = "EngagementMember",
    members = {
        CompanyName = {
            type = "string",
        },
        WebsiteUrl = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
    },
}

M.ListEngagementMembersOutput = {
    type = "structure",
    id = "ListEngagementMembersOutput",
    members = {
        EngagementMemberList = {
            type = "list",
            member = M.EngagementMember,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.EngagementSortName = {
    CreatedDate = "CreatedDate",
}

M.SortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.EngagementSort = {
    type = "structure",
    id = "EngagementSort",
    members = {
        SortOrder = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SortBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListEngagementsInput = {
    type = "structure",
    id = "ListEngagementsInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedBy = {
            type = "list",
            member = { type = "string" },
        },
        ExcludeCreatedBy = {
            type = "list",
            member = { type = "string" },
        },
        ContextTypes = {
            type = "list",
            member = { type = "string" },
        },
        ExcludeContextTypes = {
            type = "list",
            member = { type = "string" },
        },
        Sort = M.EngagementSort,
        MaxResults = {
            type = "integer",
            traits = {
                default = 20,
            },
        },
        NextToken = {
            type = "string",
        },
        EngagementIdentifier = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EngagementSummary = {
    type = "structure",
    id = "EngagementSummary",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Title = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        CreatedBy = {
            type = "string",
        },
        MemberCount = {
            type = "integer",
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ModifiedBy = {
            type = "string",
        },
        ContextTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListEngagementsOutput = {
    type = "structure",
    id = "ListEngagementsOutput",
    members = {
        EngagementSummaryList = {
            type = "list",
            member = M.EngagementSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTasksSortName = {
    START_TIME = "StartTime",
}

M.ListTasksSortBase = {
    type = "structure",
    id = "ListTasksSortBase",
    members = {
        SortOrder = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SortBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TaskStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETE = "COMPLETE",
    FAILED = "FAILED",
}

M.ListEngagementByAcceptingInvitationTasksInput = {
    type = "structure",
    id = "ListEngagementByAcceptingInvitationTasksInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Sort = M.ListTasksSortBase,
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskStatus = {
            type = "list",
            member = { type = "string" },
        },
        OpportunityIdentifier = {
            type = "list",
            member = { type = "string" },
        },
        EngagementInvitationIdentifier = {
            type = "list",
            member = { type = "string" },
        },
        TaskIdentifier = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ReasonCode = {
    INVITATION_ACCESS_DENIED = "InvitationAccessDenied",
    INVITATION_VALIDATION_FAILED = "InvitationValidationFailed",
    ENGAGEMENT_ACCESS_DENIED = "EngagementAccessDenied",
    OPPORTUNITY_ACCESS_DENIED = "OpportunityAccessDenied",
    RESOURCE_SNAPSHOT_JOB_ACCESS_DENIED = "ResourceSnapshotJobAccessDenied",
    RESOURCE_SNAPSHOT_JOB_VALIDATION_FAILED = "ResourceSnapshotJobValidationFailed",
    RESOURCE_SNAPSHOT_JOB_CONFLICT = "ResourceSnapshotJobConflict",
    ENGAGEMENT_VALIDATION_FAILED = "EngagementValidationFailed",
    ENGAGEMENT_CONFLICT = "EngagementConflict",
    OPPORTUNITY_SUBMISSION_FAILED = "OpportunitySubmissionFailed",
    ENGAGEMENT_INVITATION_CONFLICT = "EngagementInvitationConflict",
    INTERNAL_ERROR = "InternalError",
    OPPORTUNITY_VALIDATION_FAILED = "OpportunityValidationFailed",
    OPPORTUNITY_CONFLICT = "OpportunityConflict",
    RESOURCE_SNAPSHOT_ACCESS_DENIED = "ResourceSnapshotAccessDenied",
    RESOURCE_SNAPSHOT_VALIDATION_FAILED = "ResourceSnapshotValidationFailed",
    RESOURCE_SNAPSHOT_CONFLICT = "ResourceSnapshotConflict",
    SERVICE_QUOTA_EXCEEDED = "ServiceQuotaExceeded",
    REQUEST_THROTTLED = "RequestThrottled",
    CONTEXT_NOT_FOUND = "ContextNotFound",
    CUSTOMER_PROJECT_CONTEXT_NOT_PERMITTED = "CustomerProjectContextNotPermitted",
    DISQUALIFIED_LEAD_NOT_PERMITTED = "DisqualifiedLeadNotPermitted",
}

M.ListEngagementByAcceptingInvitationTaskSummary = {
    type = "structure",
    id = "ListEngagementByAcceptingInvitationTaskSummary",
    members = {
        TaskId = {
            type = "string",
        },
        TaskArn = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        TaskStatus = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        ReasonCode = {
            type = "string",
        },
        OpportunityId = {
            type = "string",
        },
        ResourceSnapshotJobId = {
            type = "string",
        },
        EngagementInvitationId = {
            type = "string",
        },
    },
}

M.ListEngagementByAcceptingInvitationTasksOutput = {
    type = "structure",
    id = "ListEngagementByAcceptingInvitationTasksOutput",
    members = {
        TaskSummaries = {
            type = "list",
            member = M.ListEngagementByAcceptingInvitationTaskSummary,
        },
        NextToken = {
            type = "string",
        },
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
            traits = {
                required = true,
            },
        },
    },
}

M.StartEngagementByAcceptingInvitationTaskInput = {
    type = "structure",
    id = "StartEngagementByAcceptingInvitationTaskInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        Identifier = {
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

M.StartEngagementByAcceptingInvitationTaskOutput = {
    type = "structure",
    id = "StartEngagementByAcceptingInvitationTaskOutput",
    members = {
        TaskId = {
            type = "string",
        },
        TaskArn = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        TaskStatus = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        ReasonCode = {
            type = "string",
        },
        OpportunityId = {
            type = "string",
        },
        ResourceSnapshotJobId = {
            type = "string",
        },
        EngagementInvitationId = {
            type = "string",
        },
    },
}

M.ListEngagementFromOpportunityTasksInput = {
    type = "structure",
    id = "ListEngagementFromOpportunityTasksInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Sort = M.ListTasksSortBase,
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskStatus = {
            type = "list",
            member = { type = "string" },
        },
        TaskIdentifier = {
            type = "list",
            member = { type = "string" },
        },
        OpportunityIdentifier = {
            type = "list",
            member = { type = "string" },
        },
        EngagementIdentifier = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListEngagementFromOpportunityTaskSummary = {
    type = "structure",
    id = "ListEngagementFromOpportunityTaskSummary",
    members = {
        TaskId = {
            type = "string",
        },
        TaskArn = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        TaskStatus = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        ReasonCode = {
            type = "string",
        },
        OpportunityId = {
            type = "string",
        },
        ResourceSnapshotJobId = {
            type = "string",
        },
        EngagementId = {
            type = "string",
        },
        EngagementInvitationId = {
            type = "string",
        },
    },
}

M.ListEngagementFromOpportunityTasksOutput = {
    type = "structure",
    id = "ListEngagementFromOpportunityTasksOutput",
    members = {
        TaskSummaries = {
            type = "list",
            member = M.ListEngagementFromOpportunityTaskSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.AwsSubmission = {
    type = "structure",
    id = "AwsSubmission",
    members = {
        InvolvementType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Visibility = {
            type = "string",
        },
    },
}

M.StartEngagementFromOpportunityTaskInput = {
    type = "structure",
    id = "StartEngagementFromOpportunityTaskInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AwsSubmission = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AwsSubmission }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.StartEngagementFromOpportunityTaskOutput = {
    type = "structure",
    id = "StartEngagementFromOpportunityTaskOutput",
    members = {
        TaskId = {
            type = "string",
        },
        TaskArn = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        TaskStatus = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        ReasonCode = {
            type = "string",
        },
        OpportunityId = {
            type = "string",
        },
        ResourceSnapshotJobId = {
            type = "string",
        },
        EngagementId = {
            type = "string",
        },
        EngagementInvitationId = {
            type = "string",
        },
    },
}

M.LeadInvitationCustomer = {
    type = "structure",
    id = "LeadInvitationCustomer",
    members = {
        Industry = {
            type = "string",
        },
        CompanyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WebsiteUrl = {
            type = "string",
        },
        CountryCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AwsMaturity = {
            type = "string",
        },
        MarketSegment = {
            type = "string",
        },
    },
}

M.LeadInvitationInteraction = {
    type = "structure",
    id = "LeadInvitationInteraction",
    members = {
        SourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Usecase = {
            type = "string",
        },
        ContactBusinessTitle = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LeadInvitationPayload = {
    type = "structure",
    id = "LeadInvitationPayload",
    members = {
        Customer = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LeadInvitationCustomer }),
        Interaction = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LeadInvitationInteraction }),
    },
}

M.ProjectDetails = {
    type = "structure",
    id = "ProjectDetails",
    members = {
        BusinessProblem = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetCompletionDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExpectedCustomerSpend = {
            type = "list",
            member = M.ExpectedCustomerSpend,
            traits = {
                required = true,
            },
        },
    },
}

M.ReceiverResponsibility = {
    DISTRIBUTOR = "Distributor",
    RESELLER = "Reseller",
    HARDWARE_PARTNER = "Hardware Partner",
    MANAGED_SERVICE_PROVIDER = "Managed Service Provider",
    SOFTWARE_PARTNER = "Software Partner",
    SERVICES_PARTNER = "Services Partner",
    TRAINING_PARTNER = "Training Partner",
    CO_SELL_FACILITATOR = "Co-Sell Facilitator",
    FACILITATOR = "Facilitator",
}

M.SenderContact = {
    type = "structure",
    id = "SenderContact",
    members = {
        Email = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FirstName = {
            type = "string",
        },
        LastName = {
            type = "string",
        },
        BusinessTitle = {
            type = "string",
        },
        Phone = {
            type = "string",
        },
    },
}

M.OpportunityInvitationPayload = {
    type = "structure",
    id = "OpportunityInvitationPayload",
    members = {
        SenderContacts = {
            type = "list",
            member = M.SenderContact,
        },
        ReceiverResponsibilities = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Customer = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EngagementCustomer }),
        Project = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProjectDetails }),
    },
}

M.Payload = {
    type = "union",
    id = "Payload",
    members = {
        OpportunityInvitation = M.OpportunityInvitationPayload,
        LeadInvitation = M.LeadInvitationPayload,
    },
}

M.Receiver = {
    type = "union",
    id = "Receiver",
    members = {
        Account = M.AccountReceiver,
    },
}

M.Invitation = {
    type = "structure",
    id = "Invitation",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Receiver = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Receiver }),
        Payload = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Payload }),
    },
}

M.CreateEngagementInvitationInput = {
    type = "structure",
    id = "CreateEngagementInvitationInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        EngagementIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Invitation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Invitation }),
    },
}

M.CreateEngagementInvitationOutput = {
    type = "structure",
    id = "CreateEngagementInvitationOutput",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetEngagementInvitationInput = {
    type = "structure",
    id = "GetEngagementInvitationInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EngagementMemberSummary = {
    type = "structure",
    id = "EngagementMemberSummary",
    members = {
        CompanyName = {
            type = "string",
        },
        WebsiteUrl = {
            type = "string",
        },
    },
}

M.EngagementInvitationPayloadType = {
    OPPORTUNITY_INVITATION = "OpportunityInvitation",
    LEAD_INVITATION = "LeadInvitation",
}

M.InvitationStatus = {
    ACCEPTED = "ACCEPTED",
    PENDING = "PENDING",
    REJECTED = "REJECTED",
    EXPIRED = "EXPIRED",
}

M.GetEngagementInvitationOutput = {
    type = "structure",
    id = "GetEngagementInvitationOutput",
    members = {
        Arn = {
            type = "string",
        },
        PayloadType = {
            type = "string",
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EngagementId = {
            type = "string",
        },
        EngagementTitle = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        InvitationDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ExpirationDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        SenderAwsAccountId = {
            type = "string",
        },
        SenderCompanyName = {
            type = "string",
        },
        Receiver = M.Receiver,
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RejectionReason = {
            type = "string",
        },
        Payload = M.Payload,
        InvitationMessage = {
            type = "string",
        },
        EngagementDescription = {
            type = "string",
        },
        ExistingMembers = {
            type = "list",
            member = M.EngagementMemberSummary,
        },
    },
}

M.ParticipantType = {
    SENDER = "SENDER",
    RECEIVER = "RECEIVER",
}

M.OpportunityEngagementInvitationSortName = {
    INVITATION_DATE = "InvitationDate",
}

M.OpportunityEngagementInvitationSort = {
    type = "structure",
    id = "OpportunityEngagementInvitationSort",
    members = {
        SortOrder = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SortBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListEngagementInvitationsInput = {
    type = "structure",
    id = "ListEngagementInvitationsInput",
    members = {
        Catalog = {
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
        Sort = M.OpportunityEngagementInvitationSort,
        PayloadType = {
            type = "list",
            member = { type = "string" },
        },
        ParticipantType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "list",
            member = { type = "string" },
        },
        EngagementIdentifier = {
            type = "list",
            member = { type = "string" },
        },
        SenderAwsAccountId = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EngagementInvitationSummary = {
    type = "structure",
    id = "EngagementInvitationSummary",
    members = {
        Arn = {
            type = "string",
        },
        PayloadType = {
            type = "string",
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EngagementId = {
            type = "string",
        },
        EngagementTitle = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        InvitationDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ExpirationDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        SenderAwsAccountId = {
            type = "string",
        },
        SenderCompanyName = {
            type = "string",
        },
        Receiver = M.Receiver,
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParticipantType = {
            type = "string",
        },
    },
}

M.ListEngagementInvitationsOutput = {
    type = "structure",
    id = "ListEngagementInvitationsOutput",
    members = {
        EngagementInvitationSummaries = {
            type = "list",
            member = M.EngagementInvitationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RejectEngagementInvitationInput = {
    type = "structure",
    id = "RejectEngagementInvitationInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RejectionReason = {
            type = "string",
        },
    },
}

M.RejectEngagementInvitationOutput = {
    type = "structure",
    id = "RejectEngagementInvitationOutput",
}

M.GetSellingSystemSettingsInput = {
    type = "structure",
    id = "GetSellingSystemSettingsInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSellingSystemSettingsOutput = {
    type = "structure",
    id = "GetSellingSystemSettingsOutput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceSnapshotJobRoleArn = {
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
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.Customer = {
    type = "structure",
    id = "Customer",
    members = {
        Account = M.Account,
        Contacts = {
            type = "list",
            member = M.Contact,
        },
    },
}

M.ClosedLostReason = {
    CUSTOMER_DEFICIENCY = "Customer Deficiency",
    DELAY_CANCELLATION_OF_PROJECT = "Delay / Cancellation of Project",
    LEGAL_TAX_REGULATORY = "Legal / Tax / Regulatory",
    LOST_TO_COMPETITOR_GOOGLE = "Lost to Competitor - Google",
    LOST_TO_COMPETITOR_MICROSOFT = "Lost to Competitor - Microsoft",
    LOST_TO_COMPETITOR_SOFTLAYER = "Lost to Competitor - SoftLayer",
    LOST_TO_COMPETITOR_VMWARE = "Lost to Competitor - VMWare",
    LOST_TO_COMPETITOR_OTHER = "Lost to Competitor - Other",
    NO_OPPORTUNITY = "No Opportunity",
    ON_PREMISES_DEPLOYMENT = "On Premises Deployment",
    PARTNER_GAP = "Partner Gap",
    PRICE = "Price",
    SECURITY_COMPLIANCE = "Security / Compliance",
    TECHNICAL_LIMITATIONS = "Technical Limitations",
    CUSTOMER_EXPERIENCE = "Customer Experience",
    OTHER = "Other",
    PEOPLERELATIONSHIPGOVERNANCE = "People/Relationship/Governance",
    PRODUCTTECHNOLOGY = "Product/Technology",
    FINANCIALCOMMERCIAL = "Financial/Commercial",
}

M.NextStepsHistory = {
    type = "structure",
    id = "NextStepsHistory",
    members = {
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Time = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ReviewStatus = {
    PENDING_SUBMISSION = "Pending Submission",
    SUBMITTED = "Submitted",
    IN_REVIEW = "In review",
    APPROVED = "Approved",
    REJECTED = "Rejected",
    ACTION_REQUIRED = "Action Required",
}

M.Stage = {
    PROSPECT = "Prospect",
    QUALIFIED = "Qualified",
    TECHNICAL_VALIDATION = "Technical Validation",
    BUSINESS_VALIDATION = "Business Validation",
    COMMITTED = "Committed",
    LAUNCHED = "Launched",
    CLOSED_LOST = "Closed Lost",
}

M.LifeCycle = {
    type = "structure",
    id = "LifeCycle",
    members = {
        Stage = {
            type = "string",
        },
        ClosedLostReason = {
            type = "string",
        },
        NextSteps = {
            type = "string",
        },
        TargetCloseDate = {
            type = "string",
        },
        ReviewStatus = {
            type = "string",
        },
        ReviewComments = {
            type = "string",
        },
        ReviewStatusReason = {
            type = "string",
        },
        NextStepsHistory = {
            type = "list",
            member = M.NextStepsHistory,
        },
    },
}

M.Channel = {
    AWS_MARKETING_CENTRAL = "AWS Marketing Central",
    CONTENT_SYNDICATION = "Content Syndication",
    DISPLAY = "Display",
    EMAIL = "Email",
    LIVE_EVENT = "Live Event",
    OUT_OF_HOME = "Out Of Home (OOH)",
    PRINT = "Print",
    SEARCH = "Search",
    SOCIAL = "Social",
    TELEMARKETING = "Telemarketing",
    TV = "TV",
    VIDEO = "Video",
    VIRTUAL_EVENT = "Virtual Event",
}

M.MarketingSource = {
    MARKETING_ACTIVITY = "Marketing Activity",
    NONE = "None",
}

M.Marketing = {
    type = "structure",
    id = "Marketing",
    members = {
        CampaignName = {
            type = "string",
        },
        Source = {
            type = "string",
        },
        UseCases = {
            type = "list",
            member = { type = "string" },
        },
        Channels = {
            type = "list",
            member = { type = "string" },
        },
        AwsFundingUsed = {
            type = "string",
        },
    },
}

M.NationalSecurity = {
    YES = "Yes",
    NO = "No",
}

M.OpportunityType = {
    NET_NEW_BUSINESS = "Net New Business",
    FLAT_RENEWAL = "Flat Renewal",
    EXPANSION = "Expansion",
}

M.PrimaryNeedFromAws = {
    CO_SELL_ARCHITECTURAL_VALIDATION = "Co-Sell - Architectural Validation",
    CO_SELL_BUSINESS_PRESENTATION = "Co-Sell - Business Presentation",
    CO_SELL_COMPETITIVE_INFORMATION = "Co-Sell - Competitive Information",
    CO_SELL_PRICING_ASSISTANCE = "Co-Sell - Pricing Assistance",
    CO_SELL_TECHNICAL_CONSULTATION = "Co-Sell - Technical Consultation",
    CO_SELL_TOTAL_COST_OF_OWNERSHIP_EVALUATION = "Co-Sell - Total Cost of Ownership Evaluation",
    CO_SELL_DEAL_SUPPORT = "Co-Sell - Deal Support",
    CO_SELL_SUPPORT_FOR_PUBLIC_TENDER_RFX = "Co-Sell - Support for Public Tender / RFx",
}

M.CompetitorName = {
    ORACLE_CLOUD = "Oracle Cloud",
    ON_PREM = "On-Prem",
    CO_LOCATION = "Co-location",
    AKAMAI = "Akamai",
    ALICLOUD = "AliCloud",
    GOOGLE_CLOUD_PLATFORM = "Google Cloud Platform",
    IBM_SOFTLAYER = "IBM Softlayer",
    MICROSOFT_AZURE = "Microsoft Azure",
    OTHER_COST_OPTIMIZATION = "Other- Cost Optimization",
    NO_COMPETITION = "No Competition",
    OTHER = "*Other",
}

M.DeliveryModel = {
    SAAS_OR_PAAS = "SaaS or PaaS",
    BYOL_OR_AMI = "BYOL or AMI",
    MANAGED_SERVICES = "Managed Services",
    PROFESSIONAL_SERVICES = "Professional Services",
    RESELL = "Resell",
    OTHER = "Other",
}

M.SalesActivity = {
    INITIALIZED_DISCUSSIONS_WITH_CUSTOMER = "Initialized discussions with customer",
    CUSTOMER_HAS_SHOWN_INTEREST = "Customer has shown interest in solution",
    CONDUCTED_POC_DEMO = "Conducted POC / Demo",
    IN_EVALUATION_PLANNING_STAGE = "In evaluation / planning stage",
    AGREED_ON_SOLUTION_TO_BUSINESS_PROBLEM = "Agreed on solution to Business Problem",
    COMPLETED_ACTION_PLAN = "Completed Action Plan",
    FINALIZED_DEPLOYMENT_NEEDS = "Finalized Deployment Need",
    SOW_SIGNED = "SOW Signed",
}

M.Project = {
    type = "structure",
    id = "Project",
    members = {
        DeliveryModels = {
            type = "list",
            member = { type = "string" },
        },
        ExpectedCustomerSpend = {
            type = "list",
            member = M.ExpectedCustomerSpend,
        },
        Title = {
            type = "string",
        },
        ApnPrograms = {
            type = "list",
            member = { type = "string" },
        },
        CustomerBusinessProblem = {
            type = "string",
        },
        CustomerUseCase = {
            type = "string",
        },
        RelatedOpportunityIdentifier = {
            type = "string",
        },
        SalesActivities = {
            type = "list",
            member = { type = "string" },
        },
        CompetitorName = {
            type = "string",
        },
        OtherCompetitorNames = {
            type = "string",
        },
        OtherSolutionDescription = {
            type = "string",
        },
        AdditionalComments = {
            type = "string",
        },
        AwsPartition = {
            type = "string",
        },
    },
}

M.RevenueModel = {
    CONTRACT = "Contract",
    PAY_AS_YOU_GO = "Pay-as-you-go",
    SUBSCRIPTION = "Subscription",
}

M.MonetaryValue = {
    type = "structure",
    id = "MonetaryValue",
    members = {
        Amount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrencyCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SoftwareRevenue = {
    type = "structure",
    id = "SoftwareRevenue",
    members = {
        DeliveryModel = {
            type = "string",
        },
        Value = M.MonetaryValue,
        EffectiveDate = {
            type = "string",
        },
        ExpirationDate = {
            type = "string",
        },
    },
}

M.CreateOpportunityInput = {
    type = "structure",
    id = "CreateOpportunityInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimaryNeedsFromAws = {
            type = "list",
            member = { type = "string" },
        },
        NationalSecurity = {
            type = "string",
        },
        PartnerOpportunityIdentifier = {
            type = "string",
        },
        Customer = M.Customer,
        Project = M.Project,
        OpportunityType = {
            type = "string",
        },
        Marketing = M.Marketing,
        SoftwareRevenue = M.SoftwareRevenue,
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        LifeCycle = M.LifeCycle,
        Origin = {
            type = "string",
        },
        OpportunityTeam = {
            type = "list",
            member = M.Contact,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateOpportunityOutput = {
    type = "structure",
    id = "CreateOpportunityOutput",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PartnerOpportunityIdentifier = {
            type = "string",
        },
        LastModifiedDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.DisassociateOpportunityInput = {
    type = "structure",
    id = "DisassociateOpportunityInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OpportunityIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RelatedEntityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RelatedEntityIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateOpportunityOutput = {
    type = "structure",
    id = "DisassociateOpportunityOutput",
}

M.GetAwsOpportunitySummaryInput = {
    type = "structure",
    id = "GetAwsOpportunitySummaryInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RelatedOpportunityIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAwsOpportunitySummaryOutput = {
    type = "structure",
    id = "GetAwsOpportunitySummaryOutput",
    members = {
        RelatedOpportunityId = {
            type = "string",
        },
        Origin = {
            type = "string",
        },
        InvolvementType = {
            type = "string",
        },
        Visibility = {
            type = "string",
        },
        LifeCycle = M.AwsOpportunityLifeCycle,
        OpportunityTeam = {
            type = "list",
            member = M.AwsTeamMember,
        },
        Insights = M.AwsOpportunityInsights,
        InvolvementTypeChangeReason = {
            type = "string",
        },
        RelatedEntityIds = M.AwsOpportunityRelatedEntities,
        Customer = M.AwsOpportunityCustomer,
        Project = M.AwsOpportunityProject,
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetOpportunityInput = {
    type = "structure",
    id = "GetOpportunityInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RelatedEntityIdentifiers = {
    type = "structure",
    id = "RelatedEntityIdentifiers",
    members = {
        AwsMarketplaceOffers = {
            type = "list",
            member = { type = "string" },
        },
        AwsMarketplaceOfferSets = {
            type = "list",
            member = { type = "string" },
        },
        Solutions = {
            type = "list",
            member = { type = "string" },
        },
        AwsProducts = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetOpportunityOutput = {
    type = "structure",
    id = "GetOpportunityOutput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimaryNeedsFromAws = {
            type = "list",
            member = { type = "string" },
        },
        NationalSecurity = {
            type = "string",
        },
        PartnerOpportunityIdentifier = {
            type = "string",
        },
        Customer = M.Customer,
        Project = M.Project,
        OpportunityType = {
            type = "string",
        },
        Marketing = M.Marketing,
        SoftwareRevenue = M.SoftwareRevenue,
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
        },
        LastModifiedDate = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        CreatedDate = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        RelatedEntityIdentifiers = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RelatedEntityIdentifiers }),
        LifeCycle = M.LifeCycle,
        OpportunityTeam = {
            type = "list",
            member = M.Contact,
        },
    },
}

M.CreatedDateFilter = {
    type = "structure",
    id = "CreatedDateFilter",
    members = {
        AfterCreatedDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        BeforeCreatedDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.LastModifiedDate = {
    type = "structure",
    id = "LastModifiedDate",
    members = {
        AfterLastModifiedDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        BeforeLastModifiedDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.OpportunitySortName = {
    LAST_MODIFIEDDATE = "LastModifiedDate",
    IDENTIFIER = "Identifier",
    CUSTOMER_COMPANY_NAME = "CustomerCompanyName",
    CREATED_DATE = "CreatedDate",
    TARGET_CLOSE_DATE = "TargetCloseDate",
}

M.OpportunitySort = {
    type = "structure",
    id = "OpportunitySort",
    members = {
        SortOrder = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SortBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TargetCloseDateFilter = {
    type = "structure",
    id = "TargetCloseDateFilter",
    members = {
        AfterTargetCloseDate = {
            type = "string",
        },
        BeforeTargetCloseDate = {
            type = "string",
        },
    },
}

M.ListOpportunitiesInput = {
    type = "structure",
    id = "ListOpportunitiesInput",
    members = {
        Catalog = {
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
        Sort = M.OpportunitySort,
        LastModifiedDate = M.LastModifiedDate,
        Identifier = {
            type = "list",
            member = { type = "string" },
        },
        LifeCycleStage = {
            type = "list",
            member = { type = "string" },
        },
        LifeCycleReviewStatus = {
            type = "list",
            member = { type = "string" },
        },
        CustomerCompanyName = {
            type = "list",
            member = { type = "string" },
        },
        CreatedDate = M.CreatedDateFilter,
        TargetCloseDate = M.TargetCloseDateFilter,
    },
}

M.CustomerSummary = {
    type = "structure",
    id = "CustomerSummary",
    members = {
        Account = M.AccountSummary,
    },
}

M.LifeCycleSummary = {
    type = "structure",
    id = "LifeCycleSummary",
    members = {
        Stage = {
            type = "string",
        },
        ClosedLostReason = {
            type = "string",
        },
        NextSteps = {
            type = "string",
        },
        TargetCloseDate = {
            type = "string",
        },
        ReviewStatus = {
            type = "string",
        },
        ReviewComments = {
            type = "string",
        },
        ReviewStatusReason = {
            type = "string",
        },
    },
}

M.ProjectSummary = {
    type = "structure",
    id = "ProjectSummary",
    members = {
        DeliveryModels = {
            type = "list",
            member = { type = "string" },
        },
        ExpectedCustomerSpend = {
            type = "list",
            member = M.ExpectedCustomerSpend,
        },
    },
}

M.OpportunitySummary = {
    type = "structure",
    id = "OpportunitySummary",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        PartnerOpportunityIdentifier = {
            type = "string",
        },
        OpportunityType = {
            type = "string",
        },
        LastModifiedDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        CreatedDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        LifeCycle = M.LifeCycleSummary,
        Customer = M.CustomerSummary,
        Project = M.ProjectSummary,
    },
}

M.ListOpportunitiesOutput = {
    type = "structure",
    id = "ListOpportunitiesOutput",
    members = {
        OpportunitySummaries = {
            type = "list",
            member = M.OpportunitySummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SubmitOpportunityInput = {
    type = "structure",
    id = "SubmitOpportunityInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InvolvementType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Visibility = {
            type = "string",
        },
    },
}

M.SubmitOpportunityOutput = {
    type = "structure",
    id = "SubmitOpportunityOutput",
}

M.UpdateOpportunityInput = {
    type = "structure",
    id = "UpdateOpportunityInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimaryNeedsFromAws = {
            type = "list",
            member = { type = "string" },
        },
        NationalSecurity = {
            type = "string",
        },
        PartnerOpportunityIdentifier = {
            type = "string",
        },
        Customer = M.Customer,
        Project = M.Project,
        OpportunityType = {
            type = "string",
        },
        Marketing = M.Marketing,
        SoftwareRevenue = M.SoftwareRevenue,
        LastModifiedDate = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LifeCycle = M.LifeCycle,
    },
}

M.UpdateOpportunityOutput = {
    type = "structure",
    id = "UpdateOpportunityOutput",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedDate = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListOpportunityFromEngagementTasksInput = {
    type = "structure",
    id = "ListOpportunityFromEngagementTasksInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Sort = M.ListTasksSortBase,
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskStatus = {
            type = "list",
            member = { type = "string" },
        },
        TaskIdentifier = {
            type = "list",
            member = { type = "string" },
        },
        OpportunityIdentifier = {
            type = "list",
            member = { type = "string" },
        },
        EngagementIdentifier = {
            type = "list",
            member = { type = "string" },
        },
        ContextIdentifier = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListOpportunityFromEngagementTaskSummary = {
    type = "structure",
    id = "ListOpportunityFromEngagementTaskSummary",
    members = {
        TaskId = {
            type = "string",
        },
        TaskArn = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        TaskStatus = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        ReasonCode = {
            type = "string",
        },
        OpportunityId = {
            type = "string",
        },
        ResourceSnapshotJobId = {
            type = "string",
        },
        EngagementId = {
            type = "string",
        },
        ContextId = {
            type = "string",
        },
    },
}

M.ListOpportunityFromEngagementTasksOutput = {
    type = "structure",
    id = "ListOpportunityFromEngagementTasksOutput",
    members = {
        TaskSummaries = {
            type = "list",
            member = M.ListOpportunityFromEngagementTaskSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StartOpportunityFromEngagementTaskInput = {
    type = "structure",
    id = "StartOpportunityFromEngagementTaskInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContextIdentifier = {
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

M.StartOpportunityFromEngagementTaskOutput = {
    type = "structure",
    id = "StartOpportunityFromEngagementTaskOutput",
    members = {
        TaskId = {
            type = "string",
        },
        TaskArn = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        TaskStatus = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        ReasonCode = {
            type = "string",
        },
        OpportunityId = {
            type = "string",
        },
        ResourceSnapshotJobId = {
            type = "string",
        },
        EngagementId = {
            type = "string",
        },
        ContextId = {
            type = "string",
        },
    },
}

M.PutSellingSystemSettingsInput = {
    type = "structure",
    id = "PutSellingSystemSettingsInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceSnapshotJobRoleIdentifier = {
            type = "string",
        },
    },
}

M.PutSellingSystemSettingsOutput = {
    type = "structure",
    id = "PutSellingSystemSettingsOutput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceSnapshotJobRoleArn = {
            type = "string",
        },
    },
}

M.ResourceType = {
    OPPORTUNITY = "Opportunity",
}

M.CreateResourceSnapshotInput = {
    type = "structure",
    id = "CreateResourceSnapshotInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EngagementIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceSnapshotTemplateIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CreateResourceSnapshotOutput = {
    type = "structure",
    id = "CreateResourceSnapshotOutput",
    members = {
        Arn = {
            type = "string",
        },
        Revision = {
            type = "integer",
        },
    },
}

M.GetResourceSnapshotInput = {
    type = "structure",
    id = "GetResourceSnapshotInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EngagementIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceSnapshotTemplateIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Revision = {
            type = "integer",
        },
    },
}

M.LifeCycleForView = {
    type = "structure",
    id = "LifeCycleForView",
    members = {
        TargetCloseDate = {
            type = "string",
        },
        ReviewStatus = {
            type = "string",
        },
        Stage = {
            type = "string",
        },
        NextSteps = {
            type = "string",
        },
    },
}

M.ProjectView = {
    type = "structure",
    id = "ProjectView",
    members = {
        DeliveryModels = {
            type = "list",
            member = { type = "string" },
        },
        ExpectedCustomerSpend = {
            type = "list",
            member = M.ExpectedCustomerSpend,
        },
        CustomerUseCase = {
            type = "string",
        },
        SalesActivities = {
            type = "list",
            member = { type = "string" },
        },
        OtherSolutionDescription = {
            type = "string",
        },
    },
}

M.OpportunitySummaryView = {
    type = "structure",
    id = "OpportunitySummaryView",
    members = {
        OpportunityType = {
            type = "string",
        },
        Lifecycle = M.LifeCycleForView,
        OpportunityTeam = {
            type = "list",
            member = M.Contact,
        },
        PrimaryNeedsFromAws = {
            type = "list",
            member = { type = "string" },
        },
        Customer = M.Customer,
        Project = M.ProjectView,
        RelatedEntityIdentifiers = M.RelatedEntityIdentifiers,
    },
}

M.ResourceSnapshotPayload = {
    type = "union",
    id = "ResourceSnapshotPayload",
    members = {
        OpportunitySummary = M.OpportunitySummaryView,
        AwsOpportunitySummaryFullView = M.AwsOpportunitySummaryFullView,
    },
}

M.GetResourceSnapshotOutput = {
    type = "structure",
    id = "GetResourceSnapshotOutput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
        },
        CreatedBy = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        EngagementId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        ResourceSnapshotTemplateName = {
            type = "string",
        },
        Revision = {
            type = "integer",
        },
        Payload = M.ResourceSnapshotPayload,
        TargetMemberAccounts = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListEngagementResourceAssociationsInput = {
    type = "structure",
    id = "ListEngagementResourceAssociationsInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
        NextToken = {
            type = "string",
        },
        EngagementIdentifier = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceIdentifier = {
            type = "string",
        },
        CreatedBy = {
            type = "string",
        },
    },
}

M.EngagementResourceAssociationSummary = {
    type = "structure",
    id = "EngagementResourceAssociationSummary",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EngagementId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        CreatedBy = {
            type = "string",
        },
    },
}

M.ListEngagementResourceAssociationsOutput = {
    type = "structure",
    id = "ListEngagementResourceAssociationsOutput",
    members = {
        EngagementResourceAssociationSummaries = {
            type = "list",
            member = M.EngagementResourceAssociationSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListResourceSnapshotsInput = {
    type = "structure",
    id = "ListResourceSnapshotsInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
        NextToken = {
            type = "string",
        },
        EngagementIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
        },
        ResourceIdentifier = {
            type = "string",
        },
        ResourceSnapshotTemplateIdentifier = {
            type = "string",
        },
        CreatedBy = {
            type = "string",
        },
    },
}

M.ResourceSnapshotSummary = {
    type = "structure",
    id = "ResourceSnapshotSummary",
    members = {
        Arn = {
            type = "string",
        },
        Revision = {
            type = "integer",
        },
        ResourceType = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        ResourceSnapshotTemplateName = {
            type = "string",
        },
        CreatedBy = {
            type = "string",
        },
    },
}

M.ListResourceSnapshotsOutput = {
    type = "structure",
    id = "ListResourceSnapshotsOutput",
    members = {
        ResourceSnapshotSummaries = {
            type = "list",
            member = M.ResourceSnapshotSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.CreateResourceSnapshotJobInput = {
    type = "structure",
    id = "CreateResourceSnapshotJobInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        EngagementIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceSnapshotTemplateIdentifier = {
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

M.CreateResourceSnapshotJobOutput = {
    type = "structure",
    id = "CreateResourceSnapshotJobOutput",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.DeleteResourceSnapshotJobInput = {
    type = "structure",
    id = "DeleteResourceSnapshotJobInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceSnapshotJobIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteResourceSnapshotJobOutput = {
    type = "structure",
    id = "DeleteResourceSnapshotJobOutput",
}

M.GetResourceSnapshotJobInput = {
    type = "structure",
    id = "GetResourceSnapshotJobInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceSnapshotJobIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceSnapshotJobStatus = {
    RUNNING = "Running",
    STOPPED = "Stopped",
}

M.GetResourceSnapshotJobOutput = {
    type = "structure",
    id = "GetResourceSnapshotJobOutput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        EngagementId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        ResourceSnapshotTemplateName = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Status = {
            type = "string",
        },
        LastSuccessfulExecutionDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        LastFailure = {
            type = "string",
        },
    },
}

M.SortBy = {
    CREATED_DATE = "CreatedDate",
}

M.SortObject = {
    type = "structure",
    id = "SortObject",
    members = {
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.ListResourceSnapshotJobsInput = {
    type = "structure",
    id = "ListResourceSnapshotJobsInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
        NextToken = {
            type = "string",
        },
        EngagementIdentifier = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Sort = M.SortObject,
    },
}

M.ResourceSnapshotJobSummary = {
    type = "structure",
    id = "ResourceSnapshotJobSummary",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        EngagementId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.ListResourceSnapshotJobsOutput = {
    type = "structure",
    id = "ListResourceSnapshotJobsOutput",
    members = {
        ResourceSnapshotJobSummaries = {
            type = "list",
            member = M.ResourceSnapshotJobSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StartResourceSnapshotJobInput = {
    type = "structure",
    id = "StartResourceSnapshotJobInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceSnapshotJobIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartResourceSnapshotJobOutput = {
    type = "structure",
    id = "StartResourceSnapshotJobOutput",
}

M.StopResourceSnapshotJobInput = {
    type = "structure",
    id = "StopResourceSnapshotJobInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceSnapshotJobIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopResourceSnapshotJobOutput = {
    type = "structure",
    id = "StopResourceSnapshotJobOutput",
}

M.SolutionSortName = {
    IDENTIFIER = "Identifier",
    NAME = "Name",
    STATUS = "Status",
    CATEGORY = "Category",
    CREATEDDATE = "CreatedDate",
}

M.SolutionSort = {
    type = "structure",
    id = "SolutionSort",
    members = {
        SortOrder = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SortBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SolutionStatus = {
    ACTIVE = "Active",
    INACTIVE = "Inactive",
    DRAFT = "Draft",
}

M.ListSolutionsInput = {
    type = "structure",
    id = "ListSolutionsInput",
    members = {
        Catalog = {
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
        Sort = M.SolutionSort,
        Status = {
            type = "list",
            member = { type = "string" },
        },
        Identifier = {
            type = "list",
            member = { type = "string" },
        },
        Category = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SolutionBase = {
    type = "structure",
    id = "SolutionBase",
    members = {
        Catalog = {
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
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Category = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedDate = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListSolutionsOutput = {
    type = "structure",
    id = "ListSolutionsOutput",
    members = {
        SolutionSummaries = {
            type = "list",
            member = M.SolutionBase,
            traits = {
                required = true,
            },
        },
        NextToken = {
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

M.UpdateLeadContext = {
    type = "structure",
    id = "UpdateLeadContext",
    members = {
        QualificationStatus = {
            type = "string",
            traits = {
                default = "Unqualified",
            },
        },
        Customer = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LeadCustomer }),
        Interaction = M.LeadInteraction,
    },
}

M.UpdateEngagementContextPayload = {
    type = "union",
    id = "UpdateEngagementContextPayload",
    members = {
        Lead = M.UpdateLeadContext,
        CustomerProject = M.CustomerProjectsContext,
    },
}

M.UpdateEngagementContextInput = {
    type = "structure",
    id = "UpdateEngagementContextInput",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EngagementIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContextIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EngagementLastModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Payload = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UpdateEngagementContextPayload }),
    },
}

M.UpdateEngagementContextOutput = {
    type = "structure",
    id = "UpdateEngagementContextOutput",
    members = {
        EngagementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EngagementArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EngagementLastModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        ContextId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

return M
