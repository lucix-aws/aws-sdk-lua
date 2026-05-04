local M = {}

M.AcceptConnectionInvitationInput = {
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
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.ConnectionType = {
    OPPORTUNITY_COLLABORATION = "OPPORTUNITY_COLLABORATION",
    SUBSIDIARY = "SUBSIDIARY",
}

M.AccountSummary = {
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

M.PartnerProfileSummary = {
    type = "structure",
    members = {
        Id = {
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

M.SellerProfileSummary = {
    type = "structure",
    members = {
        Id = {
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

M.Participant = {
    type = "union",
    members = {
        PartnerProfile = M.PartnerProfileSummary,
        SellerProfile = M.SellerProfileSummary,
        Account = M.AccountSummary,
    },
}

M.ConnectionTypeStatus = {
    ACTIVE = "ACTIVE",
    CANCELED = "CANCELED",
}

M.ConnectionTypeDetail = {
    type = "structure",
    members = {
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        InviterEmail = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InviterName = {
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
        CanceledAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        CanceledBy = {
            type = "string",
        },
        OtherParticipant = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Participant }),
    },
}

M.Connection = {
    type = "structure",
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
            traits = {
                required = true,
            },
        },
        OtherParticipantAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        ConnectionTypes = {
            type = "map",
            key = { type = "string" },
            value = M.ConnectionTypeDetail,
            traits = {
                required = true,
            },
        },
    },
}

M.AcceptConnectionInvitationOutput = {
    type = "structure",
    members = {
        Connection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Connection }),
    },
}

M.AccessDeniedExceptionReason = {
    ACCESS_DENIED = "ACCESS_DENIED",
    INCOMPATIBLE_BENEFIT_AWS_PARTNER_STATE = "INCOMPATIBLE_BENEFIT_AWS_PARTNER_STATE",
}

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
        Reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConflictExceptionReason = {
    CONFLICT_CLIENT_TOKEN = "CONFLICT_CLIENT_TOKEN",
    DUPLICATE_PARTNER = "DUPLICATE_PARTNER",
    INCOMPATIBLE_PROFILE_STATE = "INCOMPATIBLE_PROFILE_STATE",
    INCOMPATIBLE_PARTNER_PROFILE_TASK_STATE = "INCOMPATIBLE_PARTNER_PROFILE_TASK_STATE",
    DUPLICATE_CONNECTION_INVITATION = "DUPLICATE_CONNECTION_INVITATION",
    INCOMPATIBLE_CONNECTION_INVITATION_STATE = "INCOMPATIBLE_CONNECTION_INVITATION_STATE",
    INCOMPATIBLE_CONNECTION_INVITATION_RECEIVER = "INCOMPATIBLE_CONNECTION_INVITATION_RECEIVER",
    DUPLICATE_CONNECTION = "DUPLICATE_CONNECTION",
    INCOMPATIBLE_CONNECTION_STATE = "INCOMPATIBLE_CONNECTION_STATE",
    INCOMPATIBLE_CONNECTION_PREFERENCES_REVISION = "INCOMPATIBLE_CONNECTION_PREFERENCES_REVISION",
    ACCOUNT_ALREADY_VERIFIED = "ACCOUNT_ALREADY_VERIFIED",
    VERIFICATION_ALREADY_IN_PROGRESS = "VERIFICATION_ALREADY_IN_PROGRESS",
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
        Reason = {
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

M.ResourceNotFoundExceptionReason = {
    PARTNER_NOT_FOUND = "PARTNER_NOT_FOUND",
    PARTNER_PROFILE_NOT_FOUND = "PARTNER_PROFILE_NOT_FOUND",
    PARTNER_PROFILE_TASK_NOT_FOUND = "PARTNER_PROFILE_TASK_NOT_FOUND",
    PARTNER_DOMAIN_NOT_FOUND = "PARTNER_DOMAIN_NOT_FOUND",
    SENDER_PROFILE_NOT_FOUND = "SENDER_PROFILE_NOT_FOUND",
    RECEIVER_PROFILE_NOT_FOUND = "RECEIVER_PROFILE_NOT_FOUND",
    CONNECTION_INVITATION_NOT_FOUND = "CONNECTION_INVITATION_NOT_FOUND",
    CONNECTION_NOT_FOUND = "CONNECTION_NOT_FOUND",
    VERIFICATION_NOT_FOUND = "VERIFICATION_NOT_FOUND",
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
        Reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceQuotaExceededExceptionReason = {
    LIMIT_EXCEEDED_NUMBER_OF_EMAIL = "LIMIT_EXCEEDED_NUMBER_OF_EMAIL",
    LIMIT_EXCEEDED_NUMBER_OF_DOMAIN = "LIMIT_EXCEEDED_NUMBER_OF_DOMAIN",
    LIMIT_EXCEEDED_NUMBER_OF_CONNECTION_INVITATION_PER_DAY = "LIMIT_EXCEEDED_NUMBER_OF_CONNECTION_INVITATION_PER_DAY",
    LIMIT_EXCEEDED_NUMBER_OF_ACTIVE_CONNECTION = "LIMIT_EXCEEDED_NUMBER_OF_ACTIVE_CONNECTION",
    LIMIT_EXCEEDED_NUMBER_OF_OPEN_CONNECTION_INVITATION = "LIMIT_EXCEEDED_NUMBER_OF_OPEN_CONNECTION_INVITATION",
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
        Reason = {
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
        ServiceCode = {
            type = "string",
        },
        QuotaCode = {
            type = "string",
        },
    },
}

M.BusinessValidationCode = {
    INCOMPATIBLE_CONNECTION_INVITATION_REQUEST = "INCOMPATIBLE_CONNECTION_INVITATION_REQUEST",
    INCOMPATIBLE_LEGAL_NAME = "INCOMPATIBLE_LEGAL_NAME",
    INCOMPATIBLE_KNOW_YOUR_BUSINESS_STATUS = "INCOMPATIBLE_KNOW_YOUR_BUSINESS_STATUS",
    INCOMPATIBLE_IDENTITY_VERIFICATION_STATUS = "INCOMPATIBLE_IDENTITY_VERIFICATION_STATUS",
    INVALID_ACCOUNT_LINKING_STATUS = "INVALID_ACCOUNT_LINKING_STATUS",
    INVALID_ACCOUNT_STATE = "INVALID_ACCOUNT_STATE",
    INCOMPATIBLE_DOMAIN = "INCOMPATIBLE_DOMAIN",
}

M.BusinessValidationError = {
    type = "structure",
    members = {
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

M.FieldValidationCode = {
    REQUIRED_FIELD_MISSING = "REQUIRED_FIELD_MISSING",
    DUPLICATE_VALUE = "DUPLICATE_VALUE",
    INVALID_VALUE = "INVALID_VALUE",
    INVALID_STRING_FORMAT = "INVALID_STRING_FORMAT",
    TOO_MANY_VALUES = "TOO_MANY_VALUES",
    ACTION_NOT_PERMITTED = "ACTION_NOT_PERMITTED",
    INVALID_ENUM_VALUE = "INVALID_ENUM_VALUE",
}

M.FieldValidationError = {
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
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationError = {
    type = "union",
    members = {
        FieldValidationError = M.FieldValidationError,
        BusinessValidationError = M.BusinessValidationError,
    },
}

M.ValidationExceptionReason = {
    REQUEST_VALIDATION_FAILED = "REQUEST_VALIDATION_FAILED",
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
        ErrorDetails = {
            type = "list",
            member = M.ValidationError,
        },
    },
}

M.AccessType = {
    ALLOW_ALL = "ALLOW_ALL",
    DENY_ALL = "DENY_ALL",
    ALLOW_BY_DEFAULT_DENY_SOME = "ALLOW_BY_DEFAULT_DENY_SOME",
}

M.AllianceLeadContact = {
    type = "structure",
    members = {
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
        Email = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BusinessTitle = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateAwsTrainingCertificationEmailDomainInput = {
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
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Email = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EmailVerificationCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateAwsTrainingCertificationEmailDomainOutput = {
    type = "structure",
}

M.BusinessVerificationDetails = {
    type = "structure",
    members = {
        LegalName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationId = {
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
        JurisdictionOfIncorporation = {
            type = "string",
        },
    },
}

M.BusinessVerificationResponse = {
    type = "structure",
    members = {
        BusinessVerificationDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BusinessVerificationDetails }),
        CompletionUrl = {
            type = "string",
        },
        CompletionUrlExpiresAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.CancelConnectionInput = {
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
        ConnectionType = {
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
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CancelConnectionOutput = {
    type = "structure",
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
            traits = {
                required = true,
            },
        },
        OtherParticipantAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        ConnectionTypes = {
            type = "map",
            key = { type = "string" },
            value = M.ConnectionTypeDetail,
            traits = {
                required = true,
            },
        },
    },
}

M.CancelConnectionInvitationInput = {
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
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.ParticipantType = {
    SENDER = "SENDER",
    RECEIVER = "RECEIVER",
}

M.InvitationStatus = {
    PENDING = "PENDING",
    ACCEPTED = "ACCEPTED",
    REJECTED = "REJECTED",
    CANCELED = "CANCELED",
    EXPIRED = "EXPIRED",
}

M.CancelConnectionInvitationOutput = {
    type = "structure",
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
            traits = {
                required = true,
            },
        },
        ConnectionId = {
            type = "string",
        },
        ConnectionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        ExpiresAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        OtherParticipantIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParticipantType = {
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
        InvitationMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InviterEmail = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InviterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelProfileUpdateTaskInput = {
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
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        TaskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProfileValidationErrorReason = {
    INVALID_CONTENT = "INVALID_CONTENT",
    DUPLICATE_PROFILE = "DUPLICATE_PROFILE",
    INVALID_LOGO = "INVALID_LOGO",
    INVALID_LOGO_URL = "INVALID_LOGO_URL",
    INVALID_LOGO_FILE = "INVALID_LOGO_FILE",
    INVALID_LOGO_SIZE = "INVALID_LOGO_SIZE",
    INVALID_WEBSITE_URL = "INVALID_WEBSITE_URL",
}

M.ErrorDetail = {
    type = "structure",
    members = {
        Locale = {
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
        Reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProfileTaskStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    CANCELED = "CANCELED",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.IndustrySegment = {
    AGRICULTURE_MINING = "AGRICULTURE_MINING",
    BIOTECHNOLOGY = "BIOTECHNOLOGY",
    BUSINESS_CONSUMER_SERVICES = "BUSINESS_CONSUMER_SERVICES",
    BUSINESS_SERV = "BUSINESS_SERV",
    COMMUNICATIONS = "COMMUNICATIONS",
    COMPUTER_HARDWARE = "COMPUTER_HARDWARE",
    COMPUTERS_ELECTRONICS = "COMPUTERS_ELECTRONICS",
    COMPUTER_SOFTWARE = "COMPUTER_SOFTWARE",
    CONSUMER_GOODS = "CONSUMER_GOODS",
    CONSUMER_RELATED = "CONSUMER_RELATED",
    EDUCATION = "EDUCATION",
    ENERGY_UTILITIES = "ENERGY_UTILITIES",
    FINANCIAL_SERVICES = "FINANCIAL_SERVICES",
    GAMING = "GAMING",
    GOVERNMENT = "GOVERNMENT",
    GOVERNMENT_EDUCATION_PUBLIC_SERVICES = "GOVERNMENT_EDUCATION_PUBLIC_SERVICES",
    HEALTHCARE = "HEALTHCARE",
    HEALTHCARE_PHARMACEUTICALS_BIOTECH = "HEALTHCARE_PHARMACEUTICALS_BIOTECH",
    INDUSTRIAL_ENERGY = "INDUSTRIAL_ENERGY",
    INTERNET_SPECIFIC = "INTERNET_SPECIFIC",
    LIFE_SCIENCES = "LIFE_SCIENCES",
    MANUFACTURING = "MANUFACTURING",
    MEDIA_ENTERTAINMENT_LEISURE = "MEDIA_ENTERTAINMENT_LEISURE",
    MEDIA_ENTERTAINMENT = "MEDIA_ENTERTAINMENT",
    MEDICAL_HEALTH = "MEDICAL_HEALTH",
    NON_PROFIT_ORGANIZATION = "NON_PROFIT_ORGANIZATION",
    OTHER = "OTHER",
    PROFESSIONAL_SERVICES = "PROFESSIONAL_SERVICES",
    REAL_ESTATE_CONSTRUCTION = "REAL_ESTATE_CONSTRUCTION",
    RETAIL = "RETAIL",
    RETAIL_WHOLESALE_DISTRIBUTION = "RETAIL_WHOLESALE_DISTRIBUTION",
    SEMICONDUCTOR_ELECTR = "SEMICONDUCTOR_ELECTR",
    SOFTWARE_INTERNET = "SOFTWARE_INTERNET",
    TELECOMMUNICATIONS = "TELECOMMUNICATIONS",
    TRANSPORTATION_LOGISTICS = "TRANSPORTATION_LOGISTICS",
    TRAVEL_HOSPITALITY = "TRAVEL_HOSPITALITY",
    WHOLESALE_DISTRIBUTION = "WHOLESALE_DISTRIBUTION",
}

M.LocalizedContent = {
    type = "structure",
    members = {
        DisplayName = {
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
        WebsiteUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogoUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Locale = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PrimarySolutionType = {
    SOFTWARE_PRODUCTS = "SOFTWARE_PRODUCTS",
    CONSULTING_SERVICES = "CONSULTING_SERVICES",
    PROFESSIONAL_SERVICES = "PROFESSIONAL_SERVICES",
    MANAGED_SERVICES = "MANAGED_SERVICES",
    HARDWARE_PRODUCTS = "HARDWARE_PRODUCTS",
    COMMUNICATION_SERVICES = "COMMUNICATION_SERVICES",
    VALUE_ADDED_RESALE_AWS_SERVICES = "VALUE_ADDED_RESALE_AWS_SERVICES",
    TRAINING_SERVICES = "TRAINING_SERVICES",
}

M.TaskDetails = {
    type = "structure",
    members = {
        DisplayName = {
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
        WebsiteUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogoUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimarySolutionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndustrySegments = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        TranslationSourceLocale = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LocalizedContents = {
            type = "list",
            member = M.LocalizedContent,
        },
    },
}

M.CancelProfileUpdateTaskOutput = {
    type = "structure",
    members = {
        Catalog = {
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
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TaskDetails }),
        StartedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ErrorDetailList = {
            type = "list",
            member = M.ErrorDetail,
        },
    },
}

M.CreateConnectionInvitationInput = {
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
                idempotency_token = true,
                required = true,
            },
        },
        ConnectionType = {
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
        Message = {
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
        ReceiverIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateConnectionInvitationOutput = {
    type = "structure",
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
            traits = {
                required = true,
            },
        },
        ConnectionId = {
            type = "string",
        },
        ConnectionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        ExpiresAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        OtherParticipantIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParticipantType = {
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
        InvitationMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InviterEmail = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InviterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetConnectionInvitationInput = {
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

M.GetConnectionInvitationOutput = {
    type = "structure",
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
            traits = {
                required = true,
            },
        },
        ConnectionId = {
            type = "string",
        },
        ConnectionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        ExpiresAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        OtherParticipantIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParticipantType = {
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
        InvitationMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InviterEmail = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InviterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListConnectionInvitationsInput = {
    type = "structure",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        ConnectionType = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 20,
            },
        },
        OtherParticipantIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        ParticipantType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.ConnectionInvitationSummary = {
    type = "structure",
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
            traits = {
                required = true,
            },
        },
        ConnectionId = {
            type = "string",
        },
        ConnectionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        ExpiresAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        OtherParticipantIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParticipantType = {
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
    },
}

M.ListConnectionInvitationsOutput = {
    type = "structure",
    members = {
        ConnectionInvitationSummaries = {
            type = "list",
            member = M.ConnectionInvitationSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RejectConnectionInvitationInput = {
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
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        Reason = {
            type = "string",
        },
    },
}

M.RejectConnectionInvitationOutput = {
    type = "structure",
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
            traits = {
                required = true,
            },
        },
        ConnectionId = {
            type = "string",
        },
        ConnectionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        ExpiresAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        OtherParticipantIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParticipantType = {
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
        InvitationMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InviterEmail = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InviterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetConnectionPreferencesInput = {
    type = "structure",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetConnectionPreferencesOutput = {
    type = "structure",
    members = {
        Catalog = {
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
        AccessType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExcludedParticipantIds = {
            type = "list",
            member = { type = "string" },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        Revision = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateConnectionPreferencesInput = {
    type = "structure",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Revision = {
            type = "long",
            traits = {
                required = true,
            },
        },
        AccessType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExcludedParticipantIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateConnectionPreferencesOutput = {
    type = "structure",
    members = {
        Catalog = {
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
        AccessType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExcludedParticipantIds = {
            type = "list",
            member = { type = "string" },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        Revision = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.GetConnectionInput = {
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

M.GetConnectionOutput = {
    type = "structure",
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
            traits = {
                required = true,
            },
        },
        OtherParticipantAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        ConnectionTypes = {
            type = "map",
            key = { type = "string" },
            value = M.ConnectionTypeDetail,
            traits = {
                required = true,
            },
        },
    },
}

M.ListConnectionsInput = {
    type = "structure",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        ConnectionType = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 20,
            },
        },
        OtherParticipantIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ConnectionTypeSummary = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OtherParticipant = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Participant }),
    },
}

M.ConnectionSummary = {
    type = "structure",
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
            traits = {
                required = true,
            },
        },
        OtherParticipantAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        ConnectionTypes = {
            type = "map",
            key = { type = "string" },
            value = M.ConnectionTypeSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListConnectionsOutput = {
    type = "structure",
    members = {
        ConnectionSummaries = {
            type = "list",
            member = M.ConnectionSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
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

M.CreatePartnerInput = {
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
                idempotency_token = true,
            },
        },
        LegalName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimarySolutionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllianceLeadContact = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AllianceLeadContact }),
        EmailVerificationCode = {
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

M.PartnerDomain = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegisteredAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.PartnerProfile = {
    type = "structure",
    members = {
        DisplayName = {
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
        WebsiteUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogoUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimarySolutionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndustrySegments = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        TranslationSourceLocale = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LocalizedContents = {
            type = "list",
            member = M.LocalizedContent,
        },
        ProfileId = {
            type = "string",
        },
    },
}

M.CreatePartnerOutput = {
    type = "structure",
    members = {
        Catalog = {
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
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LegalName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        Profile = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PartnerProfile }),
        AwsTrainingCertificationEmailDomains = {
            type = "list",
            member = M.PartnerDomain,
        },
        AllianceLeadContact = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AllianceLeadContact }),
    },
}

M.DisassociateAwsTrainingCertificationEmailDomainInput = {
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
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateAwsTrainingCertificationEmailDomainOutput = {
    type = "structure",
}

M.GetAllianceLeadContactInput = {
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

M.GetAllianceLeadContactOutput = {
    type = "structure",
    members = {
        Catalog = {
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
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllianceLeadContact = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AllianceLeadContact }),
    },
}

M.GetPartnerInput = {
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

M.GetPartnerOutput = {
    type = "structure",
    members = {
        Catalog = {
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
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LegalName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        Profile = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PartnerProfile }),
        AwsTrainingCertificationEmailDomains = {
            type = "list",
            member = M.PartnerDomain,
        },
    },
}

M.GetProfileUpdateTaskInput = {
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

M.GetProfileUpdateTaskOutput = {
    type = "structure",
    members = {
        Catalog = {
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
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TaskDetails }),
        StartedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ErrorDetailList = {
            type = "list",
            member = M.ErrorDetail,
        },
    },
}

M.GetProfileVisibilityInput = {
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

M.ProfileVisibility = {
    PRIVATE = "PRIVATE",
    PUBLIC = "PUBLIC",
}

M.GetProfileVisibilityOutput = {
    type = "structure",
    members = {
        Catalog = {
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
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Visibility = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VerificationType = {
    BUSINESS_VERIFICATION = "BUSINESS_VERIFICATION",
    REGISTRANT_VERIFICATION = "REGISTRANT_VERIFICATION",
}

M.GetVerificationInput = {
    type = "structure",
    members = {
        VerificationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegistrantVerificationResponse = {
    type = "structure",
    members = {
        CompletionUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CompletionUrlExpiresAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.VerificationResponseDetails = {
    type = "union",
    members = {
        BusinessVerificationResponse = M.BusinessVerificationResponse,
        RegistrantVerificationResponse = M.RegistrantVerificationResponse,
    },
}

M.VerificationStatus = {
    PENDING_CUSTOMER_ACTION = "PENDING_CUSTOMER_ACTION",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
    REJECTED = "REJECTED",
}

M.GetVerificationOutput = {
    type = "structure",
    members = {
        VerificationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VerificationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VerificationStatusReason = {
            type = "string",
        },
        VerificationResponseDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VerificationResponseDetails }),
        StartedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        CompletedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListPartnersInput = {
    type = "structure",
    members = {
        Catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PartnerSummary = {
    type = "structure",
    members = {
        Catalog = {
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
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LegalName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListPartnersOutput = {
    type = "structure",
    members = {
        PartnerSummaryList = {
            type = "list",
            member = M.PartnerSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
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

M.ListTagsForResourceOutput = {
    type = "structure",
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
        },
    },
}

M.PutAllianceLeadContactInput = {
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
        AllianceLeadContact = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AllianceLeadContact }),
        EmailVerificationCode = {
            type = "string",
        },
    },
}

M.PutAllianceLeadContactOutput = {
    type = "structure",
    members = {
        Catalog = {
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
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllianceLeadContact = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AllianceLeadContact }),
    },
}

M.PutProfileVisibilityInput = {
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
        Visibility = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutProfileVisibilityOutput = {
    type = "structure",
    members = {
        Catalog = {
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
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Visibility = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartProfileUpdateTaskInput = {
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
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        TaskDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TaskDetails }),
    },
}

M.StartProfileUpdateTaskOutput = {
    type = "structure",
    members = {
        Catalog = {
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
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TaskDetails }),
        StartedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ErrorDetailList = {
            type = "list",
            member = M.ErrorDetail,
        },
    },
}

M.SendEmailVerificationCodeInput = {
    type = "structure",
    members = {
        Catalog = {
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
    },
}

M.SendEmailVerificationCodeOutput = {
    type = "structure",
}

M.RegistrantVerificationDetails = {
    type = "structure",
}

M.VerificationDetails = {
    type = "union",
    members = {
        BusinessVerificationDetails = M.BusinessVerificationDetails,
        RegistrantVerificationDetails = M.RegistrantVerificationDetails,
    },
}

M.StartVerificationInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        VerificationDetails = M.VerificationDetails,
    },
}

M.StartVerificationOutput = {
    type = "structure",
    members = {
        VerificationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VerificationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VerificationStatusReason = {
            type = "string",
        },
        VerificationResponseDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VerificationResponseDetails }),
        StartedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        CompletedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

return M
