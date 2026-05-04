local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AccessDetails = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
    },
}

M.Amendment = {
    type = "structure",
    members = {
        FieldPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AmendBenefitApplicationInput = {
    type = "structure",
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
                required = true,
            },
        },
        Revision = {
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
        AmendmentReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Amendments = {
            type = "list",
            member = M.Amendment,
            traits = {
                required = true,
            },
        },
    },
}

M.AmendBenefitApplicationOutput = {
    type = "structure",
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
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

M.ValidationExceptionField = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Code = {
            type = "string",
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
    BUSINESS_VALIDATION_FAILED = "BUSINESS_VALIDATION_FAILED",
}

M.ValidationException = {
    type = "structure",
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
        FieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.AssociateBenefitApplicationResourceInput = {
    type = "structure",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BenefitApplicationIdentifier = {
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

M.AssociateBenefitApplicationResourceOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Revision = {
            type = "string",
        },
    },
}

M.ResourceType = {
    OPPORTUNITY = "OPPORTUNITY",
    BENEFIT_ALLOCATION = "BENEFIT_ALLOCATION",
}

M.AssociatedResource = {
    type = "structure",
    members = {
        ResourceType = {
            type = "string",
        },
        ResourceIdentifier = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
    },
}

M.BenefitAllocationStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    FULFILLED = "FULFILLED",
}

M.FulfillmentType = {
    CREDITS = "CREDITS",
    CASH = "CASH",
    ACCESS = "ACCESS",
}

M.BenefitAllocationSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Catalog = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        BenefitId = {
            type = "string",
        },
        BenefitApplicationId = {
            type = "string",
        },
        FulfillmentTypes = {
            type = "list",
            member = { type = "string" },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ExpiresAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ApplicableBenefitIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BenefitApplicationStatus = {
    PENDING_SUBMISSION = "PENDING_SUBMISSION",
    IN_REVIEW = "IN_REVIEW",
    ACTION_REQUIRED = "ACTION_REQUIRED",
    APPROVED = "APPROVED",
    REJECTED = "REJECTED",
    CANCELED = "CANCELED",
}

M.BenefitApplicationSummary = {
    type = "structure",
    members = {
        Catalog = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        BenefitId = {
            type = "string",
        },
        Programs = {
            type = "list",
            member = { type = "string" },
        },
        FulfillmentTypes = {
            type = "list",
            member = { type = "string" },
        },
        Status = {
            type = "string",
        },
        Stage = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        BenefitApplicationDetails = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AssociatedResources = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BenefitStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.BenefitSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Catalog = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Programs = {
            type = "list",
            member = { type = "string" },
        },
        FulfillmentTypes = {
            type = "list",
            member = { type = "string" },
        },
        Status = {
            type = "string",
        },
    },
}

M.CancelBenefitApplicationInput = {
    type = "structure",
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
                required = true,
            },
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Reason = {
            type = "string",
        },
    },
}

M.CancelBenefitApplicationOutput = {
    type = "structure",
}

M.CurrencyCode = {
    AED = "AED",
    AMD = "AMD",
    ARS = "ARS",
    AUD = "AUD",
    AWG = "AWG",
    AZN = "AZN",
    BBD = "BBD",
    BDT = "BDT",
    BGN = "BGN",
    BMD = "BMD",
    BND = "BND",
    BOB = "BOB",
    BRL = "BRL",
    BSD = "BSD",
    BYR = "BYR",
    BZD = "BZD",
    CAD = "CAD",
    CHF = "CHF",
    CLP = "CLP",
    CNY = "CNY",
    COP = "COP",
    CRC = "CRC",
    CZK = "CZK",
    DKK = "DKK",
    DOP = "DOP",
    EEK = "EEK",
    EGP = "EGP",
    EUR = "EUR",
    GBP = "GBP",
    GEL = "GEL",
    GHS = "GHS",
    GTQ = "GTQ",
    GYD = "GYD",
    HKD = "HKD",
    HNL = "HNL",
    HRK = "HRK",
    HTG = "HTG",
    HUF = "HUF",
    IDR = "IDR",
    ILS = "ILS",
    INR = "INR",
    ISK = "ISK",
    JMD = "JMD",
    JPY = "JPY",
    KES = "KES",
    KHR = "KHR",
    KRW = "KRW",
    KYD = "KYD",
    KZT = "KZT",
    LBP = "LBP",
    LKR = "LKR",
    LTL = "LTL",
    LVL = "LVL",
    MAD = "MAD",
    MNT = "MNT",
    MOP = "MOP",
    MUR = "MUR",
    MVR = "MVR",
    MXN = "MXN",
    MYR = "MYR",
    NAD = "NAD",
    NGN = "NGN",
    NIO = "NIO",
    NOK = "NOK",
    NZD = "NZD",
    PAB = "PAB",
    PEN = "PEN",
    PHP = "PHP",
    PKR = "PKR",
    PLN = "PLN",
    PYG = "PYG",
    QAR = "QAR",
    RON = "RON",
    RUB = "RUB",
    SAR = "SAR",
    SEK = "SEK",
    SGD = "SGD",
    SIT = "SIT",
    SKK = "SKK",
    THB = "THB",
    TND = "TND",
    TRY = "TRY",
    TTD = "TTD",
    TWD = "TWD",
    TZS = "TZS",
    UAH = "UAH",
    USD = "USD",
    UYU = "UYU",
    UZS = "UZS",
    VND = "VND",
    XAF = "XAF",
    XCD = "XCD",
    XOF = "XOF",
    XPF = "XPF",
    ZAR = "ZAR",
}

M.MonetaryValue = {
    type = "structure",
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

M.IssuanceDetail = {
    type = "structure",
    members = {
        IssuanceId = {
            type = "string",
        },
        IssuanceAmount = M.MonetaryValue,
        IssuedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ConsumableDetails = {
    type = "structure",
    members = {
        AllocatedAmount = M.MonetaryValue,
        RemainingAmount = M.MonetaryValue,
        UtilizedAmount = M.MonetaryValue,
        IssuanceDetails = M.IssuanceDetail,
    },
}

M.Contact = {
    type = "structure",
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

M.FileInput = {
    type = "structure",
    members = {
        FileURI = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BusinessUseCase = {
            type = "string",
        },
    },
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

M.CreateBenefitApplicationInput = {
    type = "structure",
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
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        BenefitIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FulfillmentTypes = {
            type = "list",
            member = { type = "string" },
        },
        BenefitApplicationDetails = {
            type = "document",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        AssociatedResources = {
            type = "list",
            member = { type = "string" },
        },
        PartnerContacts = {
            type = "list",
            member = M.Contact,
        },
        FileDetails = {
            type = "list",
            member = M.FileInput,
        },
    },
}

M.CreateBenefitApplicationOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Revision = {
            type = "string",
        },
    },
}

M.CreditCode = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonetaryValue }),
        AwsCreditCode = {
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
        IssuedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        ExpiresAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreditDetails = {
    type = "structure",
    members = {
        AllocatedAmount = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonetaryValue }),
        IssuedAmount = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonetaryValue }),
        Codes = {
            type = "list",
            member = M.CreditCode,
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateBenefitApplicationResourceInput = {
    type = "structure",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BenefitApplicationIdentifier = {
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

M.DisassociateBenefitApplicationResourceOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Revision = {
            type = "string",
        },
    },
}

M.DisbursementDetails = {
    type = "structure",
    members = {
        DisbursedAmount = M.MonetaryValue,
        IssuanceDetails = M.IssuanceDetail,
    },
}

M.FileType = {
    DOC = "application/msword",
    DOCX = "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
    XLSX = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
    PPTX = "application/vnd.openxmlformats-officedocument.presentationml.presentation",
    PDF = "application/pdf",
    PNG = "image/png",
    JPG = "image/jpeg",
    SVG = "image/svg+xml",
    CSV = "text/csv",
}

M.FileDetail = {
    type = "structure",
    members = {
        FileURI = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BusinessUseCase = {
            type = "string",
        },
        FileName = {
            type = "string",
        },
        FileStatus = {
            type = "string",
        },
        FileStatusReason = {
            type = "string",
        },
        FileType = {
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
    },
}

M.FulfillmentDetails = {
    type = "union",
    members = {
        DisbursementDetails = M.DisbursementDetails,
        ConsumableDetails = M.ConsumableDetails,
        CreditDetails = M.CreditDetails,
        AccessDetails = M.AccessDetails,
    },
}

M.GetBenefitInput = {
    type = "structure",
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

M.GetBenefitOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Catalog = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Programs = {
            type = "list",
            member = { type = "string" },
        },
        FulfillmentTypes = {
            type = "list",
            member = { type = "string" },
        },
        BenefitRequestSchema = {
            type = "document",
        },
        Status = {
            type = "string",
        },
    },
}

M.GetBenefitAllocationInput = {
    type = "structure",
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

M.GetBenefitAllocationOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Catalog = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        BenefitApplicationId = {
            type = "string",
        },
        BenefitId = {
            type = "string",
        },
        FulfillmentType = {
            type = "string",
        },
        ApplicableBenefitIds = {
            type = "list",
            member = { type = "string" },
        },
        FulfillmentDetail = M.FulfillmentDetails,
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        StartsAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ExpiresAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetBenefitApplicationInput = {
    type = "structure",
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

M.GetBenefitApplicationOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Catalog = {
            type = "string",
        },
        BenefitId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        FulfillmentTypes = {
            type = "list",
            member = { type = "string" },
        },
        BenefitApplicationDetails = {
            type = "document",
        },
        Programs = {
            type = "list",
            member = { type = "string" },
        },
        Status = {
            type = "string",
        },
        Stage = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        StatusReasonCode = {
            type = "string",
        },
        StatusReasonCodes = {
            type = "list",
            member = { type = "string" },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Revision = {
            type = "string",
        },
        AssociatedResources = {
            type = "list",
            member = { type = "string" },
        },
        PartnerContacts = {
            type = "list",
            member = M.Contact,
        },
        FileDetails = {
            type = "list",
            member = M.FileDetail,
        },
    },
}

M.ListBenefitAllocationsInput = {
    type = "structure",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FulfillmentTypes = {
            type = "list",
            member = { type = "string" },
        },
        BenefitIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        BenefitApplicationIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        Status = {
            type = "list",
            member = { type = "string" },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListBenefitAllocationsOutput = {
    type = "structure",
    members = {
        BenefitAllocationSummaries = {
            type = "list",
            member = M.BenefitAllocationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListBenefitApplicationsInput = {
    type = "structure",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Programs = {
            type = "list",
            member = { type = "string" },
        },
        FulfillmentTypes = {
            type = "list",
            member = { type = "string" },
        },
        BenefitIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        Status = {
            type = "list",
            member = { type = "string" },
        },
        Stages = {
            type = "list",
            member = { type = "string" },
        },
        AssociatedResources = {
            type = "list",
            member = M.AssociatedResource,
        },
        AssociatedResourceArns = {
            type = "list",
            member = { type = "string" },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListBenefitApplicationsOutput = {
    type = "structure",
    members = {
        BenefitApplicationSummaries = {
            type = "list",
            member = M.BenefitApplicationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListBenefitsInput = {
    type = "structure",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Programs = {
            type = "list",
            member = { type = "string" },
        },
        FulfillmentTypes = {
            type = "list",
            member = { type = "string" },
        },
        Status = {
            type = "list",
            member = { type = "string" },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListBenefitsOutput = {
    type = "structure",
    members = {
        BenefitSummaries = {
            type = "list",
            member = M.BenefitSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
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
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.RecallBenefitApplicationInput = {
    type = "structure",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
        Identifier = {
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
    },
}

M.RecallBenefitApplicationOutput = {
    type = "structure",
}

M.SubmitBenefitApplicationInput = {
    type = "structure",
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

M.SubmitBenefitApplicationOutput = {
    type = "structure",
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
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
        QuotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
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
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagKeys = {
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

M.UpdateBenefitApplicationInput = {
    type = "structure",
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
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Revision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BenefitApplicationDetails = {
            type = "document",
        },
        PartnerContacts = {
            type = "list",
            member = M.Contact,
        },
        FileDetails = {
            type = "list",
            member = M.FileInput,
        },
    },
}

M.UpdateBenefitApplicationOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Revision = {
            type = "string",
        },
    },
}

return M
