local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CertificateExport = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CertificateManagedBy = {
    CLOUDFRONT = "CLOUDFRONT",
}

M.RenewalEligibility = {
    ELIGIBLE = "ELIGIBLE",
    INELIGIBLE = "INELIGIBLE",
}

M.RenewalStatus = {
    PENDING_AUTO_RENEWAL = "PENDING_AUTO_RENEWAL",
    PENDING_VALIDATION = "PENDING_VALIDATION",
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
}

M.CertificateStatus = {
    PENDING_VALIDATION = "PENDING_VALIDATION",
    ISSUED = "ISSUED",
    INACTIVE = "INACTIVE",
    EXPIRED = "EXPIRED",
    VALIDATION_TIMED_OUT = "VALIDATION_TIMED_OUT",
    REVOKED = "REVOKED",
    FAILED = "FAILED",
}

M.CertificateType = {
    IMPORTED = "IMPORTED",
    AMAZON_ISSUED = "AMAZON_ISSUED",
    PRIVATE = "PRIVATE",
}

M.ValidationMethod = {
    EMAIL = "EMAIL",
    DNS = "DNS",
    HTTP = "HTTP",
}

M.AcmCertificateMetadata = {
    type = "structure",
    members = {
        CreatedAt = {
            type = "timestamp",
        },
        Exported = {
            type = "boolean",
        },
        ImportedAt = {
            type = "timestamp",
        },
        InUse = {
            type = "boolean",
        },
        IssuedAt = {
            type = "timestamp",
        },
        RenewalEligibility = {
            type = "string",
        },
        RevokedAt = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        RenewalStatus = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        ExportOption = {
            type = "string",
        },
        ManagedBy = {
            type = "string",
        },
        ValidationMethod = {
            type = "string",
        },
    },
}

M.AcmCertificateMetadataFilter = {
    type = "union",
    members = {
        Status = {
            type = "string",
        },
        RenewalStatus = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        InUse = {
            type = "boolean",
        },
        Exported = {
            type = "boolean",
        },
        ExportOption = {
            type = "string",
        },
        ManagedBy = {
            type = "string",
        },
        ValidationMethod = {
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
        },
    },
}

M.AddTagsToCertificateInput = {
    type = "structure",
    members = {
        CertificateArn = {
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

M.AddTagsToCertificateOutput = {
    type = "structure",
}

M.InvalidArnException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTagException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TagPolicyException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottlingReason = {
    type = "structure",
    members = {
        reason = {
            type = "string",
        },
        resource = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        throttlingReasons = {
            type = "list",
            member = M.ThrottlingReason,
        },
    },
}

M.TooManyTagsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.HttpRedirect = {
    type = "structure",
    members = {
        RedirectFrom = {
            type = "string",
        },
        RedirectTo = {
            type = "string",
        },
    },
}

M.RecordType = {
    CNAME = "CNAME",
}

M.ResourceRecord = {
    type = "structure",
    members = {
        Name = {
            type = "string",
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
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DomainStatus = {
    PENDING_VALIDATION = "PENDING_VALIDATION",
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
}

M.DomainValidation = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValidationEmails = {
            type = "list",
            member = { type = "string" },
        },
        ValidationDomain = {
            type = "string",
        },
        ValidationStatus = {
            type = "string",
        },
        ResourceRecord = M.ResourceRecord,
        HttpRedirect = M.HttpRedirect,
        ValidationMethod = {
            type = "string",
        },
    },
}

M.ExtendedKeyUsageName = {
    TLS_WEB_SERVER_AUTHENTICATION = "TLS_WEB_SERVER_AUTHENTICATION",
    TLS_WEB_CLIENT_AUTHENTICATION = "TLS_WEB_CLIENT_AUTHENTICATION",
    CODE_SIGNING = "CODE_SIGNING",
    EMAIL_PROTECTION = "EMAIL_PROTECTION",
    TIME_STAMPING = "TIME_STAMPING",
    OCSP_SIGNING = "OCSP_SIGNING",
    IPSEC_END_SYSTEM = "IPSEC_END_SYSTEM",
    IPSEC_TUNNEL = "IPSEC_TUNNEL",
    IPSEC_USER = "IPSEC_USER",
    ANY = "ANY",
    NONE = "NONE",
    CUSTOM = "CUSTOM",
}

M.ExtendedKeyUsage = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        OID = {
            type = "string",
        },
    },
}

M.FailureReason = {
    NO_AVAILABLE_CONTACTS = "NO_AVAILABLE_CONTACTS",
    ADDITIONAL_VERIFICATION_REQUIRED = "ADDITIONAL_VERIFICATION_REQUIRED",
    DOMAIN_NOT_ALLOWED = "DOMAIN_NOT_ALLOWED",
    INVALID_PUBLIC_DOMAIN = "INVALID_PUBLIC_DOMAIN",
    DOMAIN_VALIDATION_DENIED = "DOMAIN_VALIDATION_DENIED",
    CAA_ERROR = "CAA_ERROR",
    PCA_LIMIT_EXCEEDED = "PCA_LIMIT_EXCEEDED",
    PCA_INVALID_ARN = "PCA_INVALID_ARN",
    PCA_INVALID_STATE = "PCA_INVALID_STATE",
    PCA_REQUEST_FAILED = "PCA_REQUEST_FAILED",
    PCA_NAME_CONSTRAINTS_VALIDATION = "PCA_NAME_CONSTRAINTS_VALIDATION",
    PCA_RESOURCE_NOT_FOUND = "PCA_RESOURCE_NOT_FOUND",
    PCA_INVALID_ARGS = "PCA_INVALID_ARGS",
    PCA_INVALID_DURATION = "PCA_INVALID_DURATION",
    PCA_ACCESS_DENIED = "PCA_ACCESS_DENIED",
    SLR_NOT_FOUND = "SLR_NOT_FOUND",
    OTHER = "OTHER",
}

M.KeyAlgorithm = {
    RSA_1024 = "RSA_1024",
    RSA_2048 = "RSA_2048",
    RSA_3072 = "RSA_3072",
    RSA_4096 = "RSA_4096",
    EC_prime256v1 = "EC_prime256v1",
    EC_secp384r1 = "EC_secp384r1",
    EC_secp521r1 = "EC_secp521r1",
}

M.KeyUsageName = {
    DIGITAL_SIGNATURE = "DIGITAL_SIGNATURE",
    NON_REPUDATION = "NON_REPUDIATION",
    KEY_ENCIPHERMENT = "KEY_ENCIPHERMENT",
    DATA_ENCIPHERMENT = "DATA_ENCIPHERMENT",
    KEY_AGREEMENT = "KEY_AGREEMENT",
    CERTIFICATE_SIGNING = "CERTIFICATE_SIGNING",
    CRL_SIGNING = "CRL_SIGNING",
    ENCHIPER_ONLY = "ENCIPHER_ONLY",
    DECIPHER_ONLY = "DECIPHER_ONLY",
    ANY = "ANY",
    CUSTOM = "CUSTOM",
}

M.KeyUsage = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.CertificateTransparencyLoggingPreference = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CertificateOptions = {
    type = "structure",
    members = {
        CertificateTransparencyLoggingPreference = {
            type = "string",
        },
        Export = {
            type = "string",
        },
    },
}

M.RenewalSummary = {
    type = "structure",
    members = {
        RenewalStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DomainValidationOptions = {
            type = "list",
            member = M.DomainValidation,
            traits = {
                required = true,
            },
        },
        RenewalStatusReason = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.RevocationReason = {
    UNSPECIFIED = "UNSPECIFIED",
    KEY_COMPROMISE = "KEY_COMPROMISE",
    CA_COMPROMISE = "CA_COMPROMISE",
    AFFILIATION_CHANGED = "AFFILIATION_CHANGED",
    SUPERCEDED = "SUPERCEDED",
    SUPERSEDED = "SUPERSEDED",
    CESSATION_OF_OPERATION = "CESSATION_OF_OPERATION",
    CERTIFICATE_HOLD = "CERTIFICATE_HOLD",
    REMOVE_FROM_CRL = "REMOVE_FROM_CRL",
    PRIVILEGE_WITHDRAWN = "PRIVILEGE_WITHDRAWN",
    A_A_COMPROMISE = "A_A_COMPROMISE",
}

M.CertificateDetail = {
    type = "structure",
    members = {
        CertificateArn = {
            type = "string",
        },
        DomainName = {
            type = "string",
        },
        SubjectAlternativeNames = {
            type = "list",
            member = { type = "string" },
        },
        ManagedBy = {
            type = "string",
        },
        DomainValidationOptions = {
            type = "list",
            member = M.DomainValidation,
        },
        Serial = {
            type = "string",
        },
        Subject = {
            type = "string",
        },
        Issuer = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        IssuedAt = {
            type = "timestamp",
        },
        ImportedAt = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        RevokedAt = {
            type = "timestamp",
        },
        RevocationReason = {
            type = "string",
        },
        NotBefore = {
            type = "timestamp",
        },
        NotAfter = {
            type = "timestamp",
        },
        KeyAlgorithm = {
            type = "string",
        },
        SignatureAlgorithm = {
            type = "string",
        },
        InUseBy = {
            type = "list",
            member = { type = "string" },
        },
        FailureReason = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        RenewalSummary = M.RenewalSummary,
        KeyUsages = {
            type = "list",
            member = M.KeyUsage,
        },
        ExtendedKeyUsages = {
            type = "list",
            member = M.ExtendedKeyUsage,
        },
        CertificateAuthorityArn = {
            type = "string",
        },
        RenewalEligibility = {
            type = "string",
        },
        Options = M.CertificateOptions,
    },
}

M.TimestampRange = {
    type = "structure",
    members = {
        Start = {
            type = "timestamp",
        },
        End = {
            type = "timestamp",
        },
    },
}

M.ComparisonOperator = {
    CONTAINS = "CONTAINS",
    EQUALS = "EQUALS",
}

M.CommonNameFilter = {
    type = "structure",
    members = {
        Value = {
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
    },
}

M.SubjectFilter = {
    type = "union",
    members = {
        CommonName = M.CommonNameFilter,
    },
}

M.DnsNameFilter = {
    type = "structure",
    members = {
        Value = {
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
    },
}

M.SubjectAlternativeNameFilter = {
    type = "union",
    members = {
        DnsName = M.DnsNameFilter,
    },
}

M.X509AttributeFilter = {
    type = "union",
    members = {
        Subject = M.SubjectFilter,
        SubjectAlternativeName = M.SubjectAlternativeNameFilter,
        ExtendedKeyUsage = {
            type = "string",
        },
        KeyUsage = {
            type = "string",
        },
        KeyAlgorithm = {
            type = "string",
        },
        SerialNumber = {
            type = "string",
        },
        NotAfter = M.TimestampRange,
        NotBefore = M.TimestampRange,
    },
}

M.CertificateFilter = {
    type = "union",
    members = {
        CertificateArn = {
            type = "string",
        },
        X509AttributeFilter = M.X509AttributeFilter,
        AcmCertificateMetadataFilter = M.AcmCertificateMetadataFilter,
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteCertificateInput = {
    type = "structure",
    members = {
        CertificateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCertificateOutput = {
    type = "structure",
}

M.ResourceInUseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeCertificateInput = {
    type = "structure",
    members = {
        CertificateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeCertificateOutput = {
    type = "structure",
    members = {
        Certificate = M.CertificateDetail,
    },
}

M.ExportCertificateInput = {
    type = "structure",
    members = {
        CertificateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Passphrase = {
            type = "blob",
            traits = {
                required = true,
            },
        },
    },
}

M.ExportCertificateOutput = {
    type = "structure",
    members = {
        Certificate = {
            type = "string",
        },
        CertificateChain = {
            type = "string",
        },
        PrivateKey = {
            type = "string",
        },
    },
}

M.RequestInProgressException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetAccountConfigurationInput = {
    type = "structure",
}

M.ExpiryEventsConfiguration = {
    type = "structure",
    members = {
        DaysBeforeExpiry = {
            type = "integer",
        },
    },
}

M.GetAccountConfigurationOutput = {
    type = "structure",
    members = {
        ExpiryEvents = M.ExpiryEventsConfiguration,
    },
}

M.GetCertificateInput = {
    type = "structure",
    members = {
        CertificateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCertificateOutput = {
    type = "structure",
    members = {
        Certificate = {
            type = "string",
        },
        CertificateChain = {
            type = "string",
        },
    },
}

M.ImportCertificateInput = {
    type = "structure",
    members = {
        CertificateArn = {
            type = "string",
        },
        Certificate = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        PrivateKey = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        CertificateChain = {
            type = "blob",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ImportCertificateOutput = {
    type = "structure",
    members = {
        CertificateArn = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidArgsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Filters = {
    type = "structure",
    members = {
        extendedKeyUsage = {
            type = "list",
            member = { type = "string" },
        },
        keyUsage = {
            type = "list",
            member = { type = "string" },
        },
        keyTypes = {
            type = "list",
            member = { type = "string" },
        },
        exportOption = {
            type = "string",
        },
        managedBy = {
            type = "string",
        },
    },
}

M.SortBy = {
    CREATED_AT = "CREATED_AT",
}

M.SortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.ListCertificatesInput = {
    type = "structure",
    members = {
        CertificateStatuses = {
            type = "list",
            member = { type = "string" },
        },
        Includes = M.Filters,
        NextToken = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.CertificateSummary = {
    type = "structure",
    members = {
        CertificateArn = {
            type = "string",
        },
        DomainName = {
            type = "string",
        },
        SubjectAlternativeNameSummaries = {
            type = "list",
            member = { type = "string" },
        },
        HasAdditionalSubjectAlternativeNames = {
            type = "boolean",
        },
        Status = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        KeyAlgorithm = {
            type = "string",
        },
        KeyUsages = {
            type = "list",
            member = { type = "string" },
        },
        ExtendedKeyUsages = {
            type = "list",
            member = { type = "string" },
        },
        ExportOption = {
            type = "string",
        },
        InUse = {
            type = "boolean",
        },
        Exported = {
            type = "boolean",
        },
        RenewalEligibility = {
            type = "string",
        },
        NotBefore = {
            type = "timestamp",
        },
        NotAfter = {
            type = "timestamp",
        },
        CreatedAt = {
            type = "timestamp",
        },
        IssuedAt = {
            type = "timestamp",
        },
        ImportedAt = {
            type = "timestamp",
        },
        RevokedAt = {
            type = "timestamp",
        },
        ManagedBy = {
            type = "string",
        },
    },
}

M.ListCertificatesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        CertificateSummaryList = {
            type = "list",
            member = M.CertificateSummary,
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListTagsForCertificateInput = {
    type = "structure",
    members = {
        CertificateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForCertificateOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutAccountConfigurationInput = {
    type = "structure",
    members = {
        ExpiryEvents = M.ExpiryEventsConfiguration,
        IdempotencyToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutAccountConfigurationOutput = {
    type = "structure",
}

M.RemoveTagsFromCertificateInput = {
    type = "structure",
    members = {
        CertificateArn = {
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

M.RemoveTagsFromCertificateOutput = {
    type = "structure",
}

M.RenewCertificateInput = {
    type = "structure",
    members = {
        CertificateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RenewCertificateOutput = {
    type = "structure",
}

M.InvalidDomainValidationOptionsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DomainValidationOption = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValidationDomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RequestCertificateInput = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValidationMethod = {
            type = "string",
        },
        SubjectAlternativeNames = {
            type = "list",
            member = { type = "string" },
        },
        IdempotencyToken = {
            type = "string",
        },
        DomainValidationOptions = {
            type = "list",
            member = M.DomainValidationOption,
        },
        Options = M.CertificateOptions,
        CertificateAuthorityArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        KeyAlgorithm = {
            type = "string",
        },
        ManagedBy = {
            type = "string",
        },
    },
}

M.RequestCertificateOutput = {
    type = "structure",
    members = {
        CertificateArn = {
            type = "string",
        },
    },
}

M.InvalidStateException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResendValidationEmailInput = {
    type = "structure",
    members = {
        CertificateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValidationDomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResendValidationEmailOutput = {
    type = "structure",
}

M.RevokeCertificateInput = {
    type = "structure",
    members = {
        CertificateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RevocationReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RevokeCertificateOutput = {
    type = "structure",
    members = {
        CertificateArn = {
            type = "string",
        },
    },
}

M.SearchCertificatesSortBy = {
    CREATED_AT = "CREATED_AT",
    NOT_AFTER = "NOT_AFTER",
    STATUS = "STATUS",
    RENEWAL_STATUS = "RENEWAL_STATUS",
    EXPORTED = "EXPORTED",
    IN_USE = "IN_USE",
    NOT_BEFORE = "NOT_BEFORE",
    KEY_ALGORITHM = "KEY_ALGORITHM",
    TYPE = "TYPE",
    CERTIFICATE_ARN = "CERTIFICATE_ARN",
    COMMON_NAME = "COMMON_NAME",
    REVOKED_AT = "REVOKED_AT",
    RENEWAL_ELIGIBILITY = "RENEWAL_ELIGIBILITY",
    ISSUED_AT = "ISSUED_AT",
    MANAGED_BY = "MANAGED_BY",
    EXPORT_OPTION = "EXPORT_OPTION",
    VALIDATION_METHOD = "VALIDATION_METHOD",
    IMPORTED_AT = "IMPORTED_AT",
}

M.SearchCertificatesSortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.CertificateMetadata = {
    type = "union",
    members = {
        AcmCertificateMetadata = M.AcmCertificateMetadata,
    },
}

M.CustomAttribute = {
    type = "structure",
    members = {
        ObjectIdentifier = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.DistinguishedName = {
    type = "structure",
    members = {
        CommonName = {
            type = "string",
        },
        DomainComponents = {
            type = "list",
            member = { type = "string" },
        },
        Country = {
            type = "string",
        },
        CustomAttributes = {
            type = "list",
            member = M.CustomAttribute,
        },
        DistinguishedNameQualifier = {
            type = "string",
        },
        GenerationQualifier = {
            type = "string",
        },
        GivenName = {
            type = "string",
        },
        Initials = {
            type = "string",
        },
        Locality = {
            type = "string",
        },
        Organization = {
            type = "string",
        },
        OrganizationalUnit = {
            type = "string",
        },
        Pseudonym = {
            type = "string",
        },
        SerialNumber = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Surname = {
            type = "string",
        },
        Title = {
            type = "string",
        },
    },
}

M.OtherName = {
    type = "structure",
    members = {
        ObjectIdentifier = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.GeneralName = {
    type = "union",
    members = {
        DirectoryName = M.DistinguishedName,
        DnsName = {
            type = "string",
        },
        IpAddress = {
            type = "string",
        },
        OtherName = M.OtherName,
        RegisteredId = {
            type = "string",
        },
        Rfc822Name = {
            type = "string",
        },
        UniformResourceIdentifier = {
            type = "string",
        },
    },
}

M.X509Attributes = {
    type = "structure",
    members = {
        Issuer = M.DistinguishedName,
        Subject = M.DistinguishedName,
        SubjectAlternativeNames = {
            type = "list",
            member = M.GeneralName,
        },
        ExtendedKeyUsages = {
            type = "list",
            member = { type = "string" },
        },
        KeyAlgorithm = {
            type = "string",
        },
        KeyUsages = {
            type = "list",
            member = { type = "string" },
        },
        SerialNumber = {
            type = "string",
        },
        NotAfter = {
            type = "timestamp",
        },
        NotBefore = {
            type = "timestamp",
        },
    },
}

M.CertificateSearchResult = {
    type = "structure",
    members = {
        CertificateArn = {
            type = "string",
        },
        X509Attributes = M.X509Attributes,
        CertificateMetadata = M.CertificateMetadata,
    },
}

M.SearchCertificatesOutput = {
    type = "structure",
    members = {
        Results = {
            type = "list",
            member = M.CertificateSearchResult,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateCertificateOptionsInput = {
    type = "structure",
    members = {
        CertificateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Options = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CertificateOptions }),
    },
}

M.UpdateCertificateOptionsOutput = {
    type = "structure",
}

M.CertificateFilterStatement = {
    type = "union",
    members = {
        And = {
            type = "list",
            member = M.CertificateFilterStatement,
        },
        Or = {
            type = "list",
            member = M.CertificateFilterStatement,
        },
        Not = M.CertificateFilterStatement,
        Filter = M.CertificateFilter,
    },
}

M.SearchCertificatesInput = {
    type = "structure",
    members = {
        FilterStatement = M.CertificateFilterStatement,
        MaxResults = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
        NextToken = {
            type = "string",
        },
        SortBy = {
            type = "string",
            traits = {
                default = "CREATED_AT",
            },
        },
        SortOrder = {
            type = "string",
            traits = {
                default = "ASCENDING",
            },
        },
    },
}

return M
