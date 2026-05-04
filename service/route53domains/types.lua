local M = {}

M.AcceptDomainTransferFromAnotherAwsAccountInput = {
    type = "structure",
    id = "AcceptDomainTransferFromAnotherAwsAccountInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Password = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AcceptDomainTransferFromAnotherAwsAccountOutput = {
    type = "structure",
    id = "AcceptDomainTransferFromAnotherAwsAccountOutput",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.DomainLimitExceeded = {
    type = "structure",
    id = "DomainLimitExceeded",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidInput = {
    type = "structure",
    id = "InvalidInput",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OperationLimitExceeded = {
    type = "structure",
    id = "OperationLimitExceeded",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedTLD = {
    type = "structure",
    id = "UnsupportedTLD",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DnssecSigningAttributes = {
    type = "structure",
    id = "DnssecSigningAttributes",
    members = {
        Algorithm = {
            type = "integer",
        },
        Flags = {
            type = "integer",
        },
        PublicKey = {
            type = "string",
        },
    },
}

M.AssociateDelegationSignerToDomainInput = {
    type = "structure",
    id = "AssociateDelegationSignerToDomainInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SigningAttributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DnssecSigningAttributes }),
    },
}

M.AssociateDelegationSignerToDomainOutput = {
    type = "structure",
    id = "AssociateDelegationSignerToDomainOutput",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.DnssecLimitExceeded = {
    type = "structure",
    id = "DnssecLimitExceeded",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DuplicateRequest = {
    type = "structure",
    id = "DuplicateRequest",
    error = "client",
    members = {
        requestId = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.TLDRulesViolation = {
    type = "structure",
    id = "TLDRulesViolation",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OperationType = {
    REGISTER_DOMAIN = "REGISTER_DOMAIN",
    DELETE_DOMAIN = "DELETE_DOMAIN",
    TRANSFER_IN_DOMAIN = "TRANSFER_IN_DOMAIN",
    UPDATE_DOMAIN_CONTACT = "UPDATE_DOMAIN_CONTACT",
    UPDATE_NAMESERVER = "UPDATE_NAMESERVER",
    CHANGE_PRIVACY_PROTECTION = "CHANGE_PRIVACY_PROTECTION",
    DOMAIN_LOCK = "DOMAIN_LOCK",
    ENABLE_AUTORENEW = "ENABLE_AUTORENEW",
    DISABLE_AUTORENEW = "DISABLE_AUTORENEW",
    ADD_DNSSEC = "ADD_DNSSEC",
    REMOVE_DNSSEC = "REMOVE_DNSSEC",
    EXPIRE_DOMAIN = "EXPIRE_DOMAIN",
    TRANSFER_OUT_DOMAIN = "TRANSFER_OUT_DOMAIN",
    CHANGE_DOMAIN_OWNER = "CHANGE_DOMAIN_OWNER",
    RENEW_DOMAIN = "RENEW_DOMAIN",
    PUSH_DOMAIN = "PUSH_DOMAIN",
    INTERNAL_TRANSFER_OUT_DOMAIN = "INTERNAL_TRANSFER_OUT_DOMAIN",
    INTERNAL_TRANSFER_IN_DOMAIN = "INTERNAL_TRANSFER_IN_DOMAIN",
    RELEASE_TO_GANDI = "RELEASE_TO_GANDI",
    TRANSFER_ON_RENEW = "TRANSFER_ON_RENEW",
    RESTORE_DOMAIN = "RESTORE_DOMAIN",
}

M.BillingRecord = {
    type = "structure",
    id = "BillingRecord",
    members = {
        DomainName = {
            type = "string",
        },
        Operation = {
            type = "string",
        },
        InvoiceId = {
            type = "string",
        },
        BillDate = {
            type = "timestamp",
        },
        Price = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.CancelDomainTransferToAnotherAwsAccountInput = {
    type = "structure",
    id = "CancelDomainTransferToAnotherAwsAccountInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelDomainTransferToAnotherAwsAccountOutput = {
    type = "structure",
    id = "CancelDomainTransferToAnotherAwsAccountOutput",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.CheckDomainAvailabilityInput = {
    type = "structure",
    id = "CheckDomainAvailabilityInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdnLangCode = {
            type = "string",
        },
    },
}

M.DomainAvailability = {
    AVAILABLE = "AVAILABLE",
    AVAILABLE_RESERVED = "AVAILABLE_RESERVED",
    AVAILABLE_PREORDER = "AVAILABLE_PREORDER",
    UNAVAILABLE = "UNAVAILABLE",
    UNAVAILABLE_PREMIUM = "UNAVAILABLE_PREMIUM",
    UNAVAILABLE_RESTRICTED = "UNAVAILABLE_RESTRICTED",
    RESERVED = "RESERVED",
    DONT_KNOW = "DONT_KNOW",
    INVALID_NAME_FOR_TLD = "INVALID_NAME_FOR_TLD",
    PENDING = "PENDING",
}

M.CheckDomainAvailabilityOutput = {
    type = "structure",
    id = "CheckDomainAvailabilityOutput",
    members = {
        Availability = {
            type = "string",
        },
    },
}

M.CheckDomainTransferabilityInput = {
    type = "structure",
    id = "CheckDomainTransferabilityInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthCode = {
            type = "string",
        },
    },
}

M.Transferable = {
    TRANSFERABLE = "TRANSFERABLE",
    UNTRANSFERABLE = "UNTRANSFERABLE",
    DONT_KNOW = "DONT_KNOW",
    DOMAIN_IN_OWN_ACCOUNT = "DOMAIN_IN_OWN_ACCOUNT",
    DOMAIN_IN_ANOTHER_ACCOUNT = "DOMAIN_IN_ANOTHER_ACCOUNT",
    PREMIUM_DOMAIN = "PREMIUM_DOMAIN",
}

M.DomainTransferability = {
    type = "structure",
    id = "DomainTransferability",
    members = {
        Transferable = {
            type = "string",
        },
    },
}

M.CheckDomainTransferabilityOutput = {
    type = "structure",
    id = "CheckDomainTransferabilityOutput",
    members = {
        Transferability = M.DomainTransferability,
        Message = {
            type = "string",
        },
    },
}

M.Consent = {
    type = "structure",
    id = "Consent",
    members = {
        MaxPrice = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
        Currency = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ContactType = {
    PERSON = "PERSON",
    COMPANY = "COMPANY",
    ASSOCIATION = "ASSOCIATION",
    PUBLIC_BODY = "PUBLIC_BODY",
    RESELLER = "RESELLER",
}

M.CountryCode = {
    AC = "AC",
    AD = "AD",
    AE = "AE",
    AF = "AF",
    AG = "AG",
    AI = "AI",
    AL = "AL",
    AM = "AM",
    AN = "AN",
    AO = "AO",
    AQ = "AQ",
    AR = "AR",
    AS = "AS",
    AT = "AT",
    AU = "AU",
    AW = "AW",
    AX = "AX",
    AZ = "AZ",
    BA = "BA",
    BB = "BB",
    BD = "BD",
    BE = "BE",
    BF = "BF",
    BG = "BG",
    BH = "BH",
    BI = "BI",
    BJ = "BJ",
    BL = "BL",
    BM = "BM",
    BN = "BN",
    BO = "BO",
    BQ = "BQ",
    BR = "BR",
    BS = "BS",
    BT = "BT",
    BV = "BV",
    BW = "BW",
    BY = "BY",
    BZ = "BZ",
    CA = "CA",
    CC = "CC",
    CD = "CD",
    CF = "CF",
    CG = "CG",
    CH = "CH",
    CI = "CI",
    CK = "CK",
    CL = "CL",
    CM = "CM",
    CN = "CN",
    CO = "CO",
    CR = "CR",
    CU = "CU",
    CV = "CV",
    CW = "CW",
    CX = "CX",
    CY = "CY",
    CZ = "CZ",
    DE = "DE",
    DJ = "DJ",
    DK = "DK",
    DM = "DM",
    DO = "DO",
    DZ = "DZ",
    EC = "EC",
    EE = "EE",
    EG = "EG",
    EH = "EH",
    ER = "ER",
    ES = "ES",
    ET = "ET",
    FI = "FI",
    FJ = "FJ",
    FK = "FK",
    FM = "FM",
    FO = "FO",
    FR = "FR",
    GA = "GA",
    GB = "GB",
    GD = "GD",
    GE = "GE",
    GF = "GF",
    GG = "GG",
    GH = "GH",
    GI = "GI",
    GL = "GL",
    GM = "GM",
    GN = "GN",
    GP = "GP",
    GQ = "GQ",
    GR = "GR",
    GS = "GS",
    GT = "GT",
    GU = "GU",
    GW = "GW",
    GY = "GY",
    HK = "HK",
    HM = "HM",
    HN = "HN",
    HR = "HR",
    HT = "HT",
    HU = "HU",
    ID = "ID",
    IE = "IE",
    IL = "IL",
    IM = "IM",
    IN = "IN",
    IO = "IO",
    IQ = "IQ",
    IR = "IR",
    IS = "IS",
    IT = "IT",
    JE = "JE",
    JM = "JM",
    JO = "JO",
    JP = "JP",
    KE = "KE",
    KG = "KG",
    KH = "KH",
    KI = "KI",
    KM = "KM",
    KN = "KN",
    KP = "KP",
    KR = "KR",
    KW = "KW",
    KY = "KY",
    KZ = "KZ",
    LA = "LA",
    LB = "LB",
    LC = "LC",
    LI = "LI",
    LK = "LK",
    LR = "LR",
    LS = "LS",
    LT = "LT",
    LU = "LU",
    LV = "LV",
    LY = "LY",
    MA = "MA",
    MC = "MC",
    MD = "MD",
    ME = "ME",
    MF = "MF",
    MG = "MG",
    MH = "MH",
    MK = "MK",
    ML = "ML",
    MM = "MM",
    MN = "MN",
    MO = "MO",
    MP = "MP",
    MQ = "MQ",
    MR = "MR",
    MS = "MS",
    MT = "MT",
    MU = "MU",
    MV = "MV",
    MW = "MW",
    MX = "MX",
    MY = "MY",
    MZ = "MZ",
    NA = "NA",
    NC = "NC",
    NE = "NE",
    NF = "NF",
    NG = "NG",
    NI = "NI",
    NL = "NL",
    NO = "NO",
    NP = "NP",
    NR = "NR",
    NU = "NU",
    NZ = "NZ",
    OM = "OM",
    PA = "PA",
    PE = "PE",
    PF = "PF",
    PG = "PG",
    PH = "PH",
    PK = "PK",
    PL = "PL",
    PM = "PM",
    PN = "PN",
    PR = "PR",
    PS = "PS",
    PT = "PT",
    PW = "PW",
    PY = "PY",
    QA = "QA",
    RE = "RE",
    RO = "RO",
    RS = "RS",
    RU = "RU",
    RW = "RW",
    SA = "SA",
    SB = "SB",
    SC = "SC",
    SD = "SD",
    SE = "SE",
    SG = "SG",
    SH = "SH",
    SI = "SI",
    SJ = "SJ",
    SK = "SK",
    SL = "SL",
    SM = "SM",
    SN = "SN",
    SO = "SO",
    SR = "SR",
    SS = "SS",
    ST = "ST",
    SV = "SV",
    SX = "SX",
    SY = "SY",
    SZ = "SZ",
    TC = "TC",
    TD = "TD",
    TF = "TF",
    TG = "TG",
    TH = "TH",
    TJ = "TJ",
    TK = "TK",
    TL = "TL",
    TM = "TM",
    TN = "TN",
    TO = "TO",
    TP = "TP",
    TR = "TR",
    TT = "TT",
    TV = "TV",
    TW = "TW",
    TZ = "TZ",
    UA = "UA",
    UG = "UG",
    US = "US",
    UY = "UY",
    UZ = "UZ",
    VA = "VA",
    VC = "VC",
    VE = "VE",
    VG = "VG",
    VI = "VI",
    VN = "VN",
    VU = "VU",
    WF = "WF",
    WS = "WS",
    YE = "YE",
    YT = "YT",
    ZA = "ZA",
    ZM = "ZM",
    ZW = "ZW",
}

M.ExtraParamName = {
    DUNS_NUMBER = "DUNS_NUMBER",
    BRAND_NUMBER = "BRAND_NUMBER",
    BIRTH_DEPARTMENT = "BIRTH_DEPARTMENT",
    BIRTH_DATE_IN_YYYY_MM_DD = "BIRTH_DATE_IN_YYYY_MM_DD",
    BIRTH_COUNTRY = "BIRTH_COUNTRY",
    BIRTH_CITY = "BIRTH_CITY",
    DOCUMENT_NUMBER = "DOCUMENT_NUMBER",
    AU_ID_NUMBER = "AU_ID_NUMBER",
    AU_ID_TYPE = "AU_ID_TYPE",
    CA_LEGAL_TYPE = "CA_LEGAL_TYPE",
    CA_BUSINESS_ENTITY_TYPE = "CA_BUSINESS_ENTITY_TYPE",
    CA_LEGAL_REPRESENTATIVE = "CA_LEGAL_REPRESENTATIVE",
    CA_LEGAL_REPRESENTATIVE_CAPACITY = "CA_LEGAL_REPRESENTATIVE_CAPACITY",
    ES_IDENTIFICATION = "ES_IDENTIFICATION",
    ES_IDENTIFICATION_TYPE = "ES_IDENTIFICATION_TYPE",
    ES_LEGAL_FORM = "ES_LEGAL_FORM",
    FI_BUSINESS_NUMBER = "FI_BUSINESS_NUMBER",
    ONWER_FI_ID_NUMBER = "FI_ID_NUMBER",
    FI_NATIONALITY = "FI_NATIONALITY",
    FI_ORGANIZATION_TYPE = "FI_ORGANIZATION_TYPE",
    IT_NATIONALITY = "IT_NATIONALITY",
    IT_PIN = "IT_PIN",
    IT_REGISTRANT_ENTITY_TYPE = "IT_REGISTRANT_ENTITY_TYPE",
    RU_PASSPORT_DATA = "RU_PASSPORT_DATA",
    SE_ID_NUMBER = "SE_ID_NUMBER",
    SG_ID_NUMBER = "SG_ID_NUMBER",
    VAT_NUMBER = "VAT_NUMBER",
    UK_CONTACT_TYPE = "UK_CONTACT_TYPE",
    UK_COMPANY_NUMBER = "UK_COMPANY_NUMBER",
    EU_COUNTRY_OF_CITIZENSHIP = "EU_COUNTRY_OF_CITIZENSHIP",
    AU_PRIORITY_TOKEN = "AU_PRIORITY_TOKEN",
    AU_ELIGIBILITY_TYPE = "AU_ELIGIBILITY_TYPE",
    AU_POLICY_REASON = "AU_POLICY_REASON",
    AU_REGISTRANT_NAME = "AU_REGISTRANT_NAME",
}

M.ExtraParam = {
    type = "structure",
    id = "ExtraParam",
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

M.ContactDetail = {
    type = "structure",
    id = "ContactDetail",
    members = {
        FirstName = {
            type = "string",
        },
        LastName = {
            type = "string",
        },
        ContactType = {
            type = "string",
        },
        OrganizationName = {
            type = "string",
        },
        AddressLine1 = {
            type = "string",
        },
        AddressLine2 = {
            type = "string",
        },
        City = {
            type = "string",
        },
        State = {
            type = "string",
        },
        CountryCode = {
            type = "string",
        },
        ZipCode = {
            type = "string",
        },
        PhoneNumber = {
            type = "string",
        },
        Email = {
            type = "string",
        },
        Fax = {
            type = "string",
        },
        ExtraParams = {
            type = "list",
            member = M.ExtraParam,
        },
    },
}

M.DeleteDomainInput = {
    type = "structure",
    id = "DeleteDomainInput",
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
    id = "DeleteDomainOutput",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.DeleteTagsForDomainInput = {
    type = "structure",
    id = "DeleteTagsForDomainInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagsToDelete = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTagsForDomainOutput = {
    type = "structure",
    id = "DeleteTagsForDomainOutput",
}

M.DisableDomainAutoRenewInput = {
    type = "structure",
    id = "DisableDomainAutoRenewInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisableDomainAutoRenewOutput = {
    type = "structure",
    id = "DisableDomainAutoRenewOutput",
}

M.DisableDomainTransferLockInput = {
    type = "structure",
    id = "DisableDomainTransferLockInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisableDomainTransferLockOutput = {
    type = "structure",
    id = "DisableDomainTransferLockOutput",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.DisassociateDelegationSignerFromDomainInput = {
    type = "structure",
    id = "DisassociateDelegationSignerFromDomainInput",
    members = {
        DomainName = {
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

M.DisassociateDelegationSignerFromDomainOutput = {
    type = "structure",
    id = "DisassociateDelegationSignerFromDomainOutput",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.DnssecKey = {
    type = "structure",
    id = "DnssecKey",
    members = {
        Algorithm = {
            type = "integer",
        },
        Flags = {
            type = "integer",
        },
        PublicKey = {
            type = "string",
        },
        DigestType = {
            type = "integer",
        },
        Digest = {
            type = "string",
        },
        KeyTag = {
            type = "integer",
        },
        Id = {
            type = "string",
        },
    },
}

M.PriceWithCurrency = {
    type = "structure",
    id = "PriceWithCurrency",
    members = {
        Price = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
        Currency = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DomainPrice = {
    type = "structure",
    id = "DomainPrice",
    members = {
        Name = {
            type = "string",
        },
        RegistrationPrice = M.PriceWithCurrency,
        TransferPrice = M.PriceWithCurrency,
        RenewalPrice = M.PriceWithCurrency,
        ChangeOwnershipPrice = M.PriceWithCurrency,
        RestorationPrice = M.PriceWithCurrency,
    },
}

M.DomainSuggestion = {
    type = "structure",
    id = "DomainSuggestion",
    members = {
        DomainName = {
            type = "string",
        },
        Availability = {
            type = "string",
        },
    },
}

M.DomainSummary = {
    type = "structure",
    id = "DomainSummary",
    members = {
        DomainName = {
            type = "string",
        },
        AutoRenew = {
            type = "boolean",
        },
        TransferLock = {
            type = "boolean",
        },
        Expiry = {
            type = "timestamp",
        },
    },
}

M.EnableDomainAutoRenewInput = {
    type = "structure",
    id = "EnableDomainAutoRenewInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnableDomainAutoRenewOutput = {
    type = "structure",
    id = "EnableDomainAutoRenewOutput",
}

M.EnableDomainTransferLockInput = {
    type = "structure",
    id = "EnableDomainTransferLockInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnableDomainTransferLockOutput = {
    type = "structure",
    id = "EnableDomainTransferLockOutput",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.ListDomainsAttributeName = {
    DomainName = "DomainName",
    Expiry = "Expiry",
}

M.Operator = {
    LE = "LE",
    GE = "GE",
    BEGINS_WITH = "BEGINS_WITH",
}

M.FilterCondition = {
    type = "structure",
    id = "FilterCondition",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetContactReachabilityStatusInput = {
    type = "structure",
    id = "GetContactReachabilityStatusInput",
    members = {
        domainName = {
            type = "string",
        },
    },
}

M.ReachabilityStatus = {
    PENDING = "PENDING",
    DONE = "DONE",
    EXPIRED = "EXPIRED",
}

M.GetContactReachabilityStatusOutput = {
    type = "structure",
    id = "GetContactReachabilityStatusOutput",
    members = {
        domainName = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.GetDomainDetailInput = {
    type = "structure",
    id = "GetDomainDetailInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Nameserver = {
    type = "structure",
    id = "Nameserver",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GlueIps = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetDomainDetailOutput = {
    type = "structure",
    id = "GetDomainDetailOutput",
    members = {
        DomainName = {
            type = "string",
        },
        Nameservers = {
            type = "list",
            member = M.Nameserver,
        },
        AutoRenew = {
            type = "boolean",
        },
        AdminContact = M.ContactDetail,
        RegistrantContact = M.ContactDetail,
        TechContact = M.ContactDetail,
        AdminPrivacy = {
            type = "boolean",
        },
        RegistrantPrivacy = {
            type = "boolean",
        },
        TechPrivacy = {
            type = "boolean",
        },
        RegistrarName = {
            type = "string",
        },
        WhoIsServer = {
            type = "string",
        },
        RegistrarUrl = {
            type = "string",
        },
        AbuseContactEmail = {
            type = "string",
        },
        AbuseContactPhone = {
            type = "string",
        },
        RegistryDomainId = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        UpdatedDate = {
            type = "timestamp",
        },
        ExpirationDate = {
            type = "timestamp",
        },
        Reseller = {
            type = "string",
        },
        DnsSec = {
            type = "string",
        },
        StatusList = {
            type = "list",
            member = { type = "string" },
        },
        DnssecKeys = {
            type = "list",
            member = M.DnssecKey,
        },
        BillingContact = M.ContactDetail,
        BillingPrivacy = {
            type = "boolean",
        },
    },
}

M.GetDomainSuggestionsInput = {
    type = "structure",
    id = "GetDomainSuggestionsInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SuggestionCount = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        OnlyAvailable = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDomainSuggestionsOutput = {
    type = "structure",
    id = "GetDomainSuggestionsOutput",
    members = {
        SuggestionsList = {
            type = "list",
            member = M.DomainSuggestion,
        },
    },
}

M.GetOperationDetailInput = {
    type = "structure",
    id = "GetOperationDetailInput",
    members = {
        OperationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OperationStatus = {
    SUBMITTED = "SUBMITTED",
    IN_PROGRESS = "IN_PROGRESS",
    ERROR = "ERROR",
    SUCCESSFUL = "SUCCESSFUL",
    FAILED = "FAILED",
}

M.StatusFlag = {
    PENDING_ACCEPTANCE = "PENDING_ACCEPTANCE",
    PENDING_CUSTOMER_ACTION = "PENDING_CUSTOMER_ACTION",
    PENDING_AUTHORIZATION = "PENDING_AUTHORIZATION",
    PENDING_PAYMENT_VERIFICATION = "PENDING_PAYMENT_VERIFICATION",
    PENDING_SUPPORT_CASE = "PENDING_SUPPORT_CASE",
}

M.GetOperationDetailOutput = {
    type = "structure",
    id = "GetOperationDetailOutput",
    members = {
        OperationId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        DomainName = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        SubmittedDate = {
            type = "timestamp",
        },
        LastUpdatedDate = {
            type = "timestamp",
        },
        StatusFlag = {
            type = "string",
        },
    },
}

M.SortOrder = {
    ASC = "ASC",
    DESC = "DESC",
}

M.SortCondition = {
    type = "structure",
    id = "SortCondition",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SortOrder = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListDomainsInput = {
    type = "structure",
    id = "ListDomainsInput",
    members = {
        FilterConditions = {
            type = "list",
            member = M.FilterCondition,
        },
        SortCondition = M.SortCondition,
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListDomainsOutput = {
    type = "structure",
    id = "ListDomainsOutput",
    members = {
        Domains = {
            type = "list",
            member = M.DomainSummary,
        },
        NextPageMarker = {
            type = "string",
        },
    },
}

M.ListOperationsSortAttributeName = {
    SubmittedDate = "SubmittedDate",
}

M.ListOperationsInput = {
    type = "structure",
    id = "ListOperationsInput",
    members = {
        SubmittedSince = {
            type = "timestamp",
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
        Status = {
            type = "list",
            member = { type = "string" },
        },
        Type = {
            type = "list",
            member = { type = "string" },
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.OperationSummary = {
    type = "structure",
    id = "OperationSummary",
    members = {
        OperationId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        SubmittedDate = {
            type = "timestamp",
        },
        DomainName = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        StatusFlag = {
            type = "string",
        },
        LastUpdatedDate = {
            type = "timestamp",
        },
    },
}

M.ListOperationsOutput = {
    type = "structure",
    id = "ListOperationsOutput",
    members = {
        Operations = {
            type = "list",
            member = M.OperationSummary,
        },
        NextPageMarker = {
            type = "string",
        },
    },
}

M.ListPricesInput = {
    type = "structure",
    id = "ListPricesInput",
    members = {
        Tld = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListPricesOutput = {
    type = "structure",
    id = "ListPricesOutput",
    members = {
        Prices = {
            type = "list",
            member = M.DomainPrice,
        },
        NextPageMarker = {
            type = "string",
        },
    },
}

M.ListTagsForDomainInput = {
    type = "structure",
    id = "ListTagsForDomainInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.ListTagsForDomainOutput = {
    type = "structure",
    id = "ListTagsForDomainOutput",
    members = {
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PushDomainInput = {
    type = "structure",
    id = "PushDomainInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Target = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PushDomainOutput = {
    type = "structure",
    id = "PushDomainOutput",
}

M.RegisterDomainInput = {
    type = "structure",
    id = "RegisterDomainInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdnLangCode = {
            type = "string",
        },
        DurationInYears = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        AutoRenew = {
            type = "boolean",
        },
        AdminContact = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContactDetail }),
        RegistrantContact = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContactDetail }),
        TechContact = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContactDetail }),
        PrivacyProtectAdminContact = {
            type = "boolean",
        },
        PrivacyProtectRegistrantContact = {
            type = "boolean",
        },
        PrivacyProtectTechContact = {
            type = "boolean",
        },
        BillingContact = M.ContactDetail,
        PrivacyProtectBillingContact = {
            type = "boolean",
        },
    },
}

M.RegisterDomainOutput = {
    type = "structure",
    id = "RegisterDomainOutput",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.RejectDomainTransferFromAnotherAwsAccountInput = {
    type = "structure",
    id = "RejectDomainTransferFromAnotherAwsAccountInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RejectDomainTransferFromAnotherAwsAccountOutput = {
    type = "structure",
    id = "RejectDomainTransferFromAnotherAwsAccountOutput",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.RenewDomainInput = {
    type = "structure",
    id = "RenewDomainInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DurationInYears = {
            type = "integer",
        },
        CurrentExpiryYear = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.RenewDomainOutput = {
    type = "structure",
    id = "RenewDomainOutput",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.ResendContactReachabilityEmailInput = {
    type = "structure",
    id = "ResendContactReachabilityEmailInput",
    members = {
        domainName = {
            type = "string",
        },
    },
}

M.ResendContactReachabilityEmailOutput = {
    type = "structure",
    id = "ResendContactReachabilityEmailOutput",
    members = {
        domainName = {
            type = "string",
        },
        emailAddress = {
            type = "string",
        },
        isAlreadyVerified = {
            type = "boolean",
        },
    },
}

M.ResendOperationAuthorizationInput = {
    type = "structure",
    id = "ResendOperationAuthorizationInput",
    members = {
        OperationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResendOperationAuthorizationOutput = {
    type = "structure",
    id = "ResendOperationAuthorizationOutput",
}

M.RetrieveDomainAuthCodeInput = {
    type = "structure",
    id = "RetrieveDomainAuthCodeInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RetrieveDomainAuthCodeOutput = {
    type = "structure",
    id = "RetrieveDomainAuthCodeOutput",
    members = {
        AuthCode = {
            type = "string",
        },
    },
}

M.TransferDomainInput = {
    type = "structure",
    id = "TransferDomainInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdnLangCode = {
            type = "string",
        },
        DurationInYears = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Nameservers = {
            type = "list",
            member = M.Nameserver,
        },
        AuthCode = {
            type = "string",
        },
        AutoRenew = {
            type = "boolean",
        },
        AdminContact = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContactDetail }),
        RegistrantContact = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContactDetail }),
        TechContact = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContactDetail }),
        PrivacyProtectAdminContact = {
            type = "boolean",
        },
        PrivacyProtectRegistrantContact = {
            type = "boolean",
        },
        PrivacyProtectTechContact = {
            type = "boolean",
        },
        BillingContact = M.ContactDetail,
        PrivacyProtectBillingContact = {
            type = "boolean",
        },
    },
}

M.TransferDomainOutput = {
    type = "structure",
    id = "TransferDomainOutput",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.TransferDomainToAnotherAwsAccountInput = {
    type = "structure",
    id = "TransferDomainToAnotherAwsAccountInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TransferDomainToAnotherAwsAccountOutput = {
    type = "structure",
    id = "TransferDomainToAnotherAwsAccountOutput",
    members = {
        OperationId = {
            type = "string",
        },
        Password = {
            type = "string",
        },
    },
}

M.UpdateDomainContactInput = {
    type = "structure",
    id = "UpdateDomainContactInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdminContact = M.ContactDetail,
        RegistrantContact = M.ContactDetail,
        TechContact = M.ContactDetail,
        Consent = M.Consent,
        BillingContact = M.ContactDetail,
    },
}

M.UpdateDomainContactOutput = {
    type = "structure",
    id = "UpdateDomainContactOutput",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.UpdateDomainContactPrivacyInput = {
    type = "structure",
    id = "UpdateDomainContactPrivacyInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdminPrivacy = {
            type = "boolean",
        },
        RegistrantPrivacy = {
            type = "boolean",
        },
        TechPrivacy = {
            type = "boolean",
        },
        BillingPrivacy = {
            type = "boolean",
        },
    },
}

M.UpdateDomainContactPrivacyOutput = {
    type = "structure",
    id = "UpdateDomainContactPrivacyOutput",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.UpdateDomainNameserversInput = {
    type = "structure",
    id = "UpdateDomainNameserversInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FIAuthKey = {
            type = "string",
        },
        Nameservers = {
            type = "list",
            member = M.Nameserver,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateDomainNameserversOutput = {
    type = "structure",
    id = "UpdateDomainNameserversOutput",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.UpdateTagsForDomainInput = {
    type = "structure",
    id = "UpdateTagsForDomainInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagsToUpdate = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.UpdateTagsForDomainOutput = {
    type = "structure",
    id = "UpdateTagsForDomainOutput",
}

M.ViewBillingInput = {
    type = "structure",
    id = "ViewBillingInput",
    members = {
        Start = {
            type = "timestamp",
        },
        End = {
            type = "timestamp",
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ViewBillingOutput = {
    type = "structure",
    id = "ViewBillingOutput",
    members = {
        NextPageMarker = {
            type = "string",
        },
        BillingRecords = {
            type = "list",
            member = M.BillingRecord,
        },
    },
}

return M
