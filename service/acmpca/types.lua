local M = {}

M.CustomAttribute = {
    type = "structure",
    id = "CustomAttribute",
    members = {
        ObjectIdentifier = {
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

M.ASN1Subject = {
    type = "structure",
    id = "ASN1Subject",
    members = {
        Country = {
            type = "string",
        },
        Organization = {
            type = "string",
        },
        OrganizationalUnit = {
            type = "string",
        },
        DistinguishedNameQualifier = {
            type = "string",
        },
        State = {
            type = "string",
        },
        CommonName = {
            type = "string",
        },
        SerialNumber = {
            type = "string",
        },
        Locality = {
            type = "string",
        },
        Title = {
            type = "string",
        },
        Surname = {
            type = "string",
        },
        GivenName = {
            type = "string",
        },
        Initials = {
            type = "string",
        },
        Pseudonym = {
            type = "string",
        },
        GenerationQualifier = {
            type = "string",
        },
        CustomAttributes = {
            type = "list",
            member = M.CustomAttribute,
        },
    },
}

M.EdiPartyName = {
    type = "structure",
    id = "EdiPartyName",
    members = {
        PartyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NameAssigner = {
            type = "string",
        },
    },
}

M.OtherName = {
    type = "structure",
    id = "OtherName",
    members = {
        TypeId = {
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

M.GeneralName = {
    type = "structure",
    id = "GeneralName",
    members = {
        OtherName = M.OtherName,
        Rfc822Name = {
            type = "string",
        },
        DnsName = {
            type = "string",
        },
        DirectoryName = M.ASN1Subject,
        EdiPartyName = M.EdiPartyName,
        UniformResourceIdentifier = {
            type = "string",
        },
        IpAddress = {
            type = "string",
        },
        RegisteredId = {
            type = "string",
        },
    },
}

M.AccessMethodType = {
    CA_REPOSITORY = "CA_REPOSITORY",
    RESOURCE_PKI_MANIFEST = "RESOURCE_PKI_MANIFEST",
    RESOURCE_PKI_NOTIFY = "RESOURCE_PKI_NOTIFY",
}

M.AccessMethod = {
    type = "structure",
    id = "AccessMethod",
    members = {
        CustomObjectIdentifier = {
            type = "string",
        },
        AccessMethodType = {
            type = "string",
        },
    },
}

M.AccessDescription = {
    type = "structure",
    id = "AccessDescription",
    members = {
        AccessMethod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AccessMethod }),
        AccessLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GeneralName }),
    },
}

M.KeyUsage = {
    type = "structure",
    id = "KeyUsage",
    members = {
        DigitalSignature = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        NonRepudiation = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        KeyEncipherment = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        DataEncipherment = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        KeyAgreement = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        KeyCertSign = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CRLSign = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        EncipherOnly = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        DecipherOnly = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CsrExtensions = {
    type = "structure",
    id = "CsrExtensions",
    members = {
        KeyUsage = M.KeyUsage,
        SubjectInformationAccess = {
            type = "list",
            member = M.AccessDescription,
        },
    },
}

M.KeyAlgorithm = {
    RSA_2048 = "RSA_2048",
    RSA_3072 = "RSA_3072",
    RSA_4096 = "RSA_4096",
    EC_prime256v1 = "EC_prime256v1",
    EC_secp384r1 = "EC_secp384r1",
    EC_secp521r1 = "EC_secp521r1",
    ML_DSA_44 = "ML_DSA_44",
    ML_DSA_65 = "ML_DSA_65",
    ML_DSA_87 = "ML_DSA_87",
    SM2 = "SM2",
}

M.SigningAlgorithm = {
    SHA256WITHECDSA = "SHA256WITHECDSA",
    SHA384WITHECDSA = "SHA384WITHECDSA",
    SHA512WITHECDSA = "SHA512WITHECDSA",
    SHA256WITHRSA = "SHA256WITHRSA",
    SHA384WITHRSA = "SHA384WITHRSA",
    SHA512WITHRSA = "SHA512WITHRSA",
    SM3WITHSM2 = "SM3WITHSM2",
    ML_DSA_44 = "ML_DSA_44",
    ML_DSA_65 = "ML_DSA_65",
    ML_DSA_87 = "ML_DSA_87",
}

M.CertificateAuthorityConfiguration = {
    type = "structure",
    id = "CertificateAuthorityConfiguration",
    members = {
        KeyAlgorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SigningAlgorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subject = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ASN1Subject }),
        CsrExtensions = M.CsrExtensions,
    },
}

M.CertificateAuthorityType = {
    ROOT = "ROOT",
    SUBORDINATE = "SUBORDINATE",
}

M.KeyStorageSecurityStandard = {
    FIPS_140_2_LEVEL_2_OR_HIGHER = "FIPS_140_2_LEVEL_2_OR_HIGHER",
    FIPS_140_2_LEVEL_3_OR_HIGHER = "FIPS_140_2_LEVEL_3_OR_HIGHER",
    CCPC_LEVEL_1_OR_HIGHER = "CCPC_LEVEL_1_OR_HIGHER",
}

M.CrlDistributionPointExtensionConfiguration = {
    type = "structure",
    id = "CrlDistributionPointExtensionConfiguration",
    members = {
        OmitExtension = {
            type = "boolean",
            traits = {
                default = nil,
                required = true,
            },
        },
    },
}

M.CrlType = {
    COMPLETE = "COMPLETE",
    PARTITIONED = "PARTITIONED",
}

M.S3ObjectAcl = {
    PUBLIC_READ = "PUBLIC_READ",
    BUCKET_OWNER_FULL_CONTROL = "BUCKET_OWNER_FULL_CONTROL",
}

M.CrlConfiguration = {
    type = "structure",
    id = "CrlConfiguration",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = nil,
                required = true,
            },
        },
        ExpirationInDays = {
            type = "integer",
        },
        CustomCname = {
            type = "string",
        },
        S3BucketName = {
            type = "string",
        },
        S3ObjectAcl = {
            type = "string",
        },
        CrlDistributionPointExtensionConfiguration = M.CrlDistributionPointExtensionConfiguration,
        CrlType = {
            type = "string",
        },
        CustomPath = {
            type = "string",
        },
    },
}

M.OcspConfiguration = {
    type = "structure",
    id = "OcspConfiguration",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = nil,
                required = true,
            },
        },
        OcspCustomCname = {
            type = "string",
        },
    },
}

M.RevocationConfiguration = {
    type = "structure",
    id = "RevocationConfiguration",
    members = {
        CrlConfiguration = M.CrlConfiguration,
        OcspConfiguration = M.OcspConfiguration,
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
        },
    },
}

M.CertificateAuthorityUsageMode = {
    GENERAL_PURPOSE = "GENERAL_PURPOSE",
    SHORT_LIVED_CERTIFICATE = "SHORT_LIVED_CERTIFICATE",
}

M.CreateCertificateAuthorityInput = {
    type = "structure",
    id = "CreateCertificateAuthorityInput",
    members = {
        CertificateAuthorityConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CertificateAuthorityConfiguration }),
        RevocationConfiguration = M.RevocationConfiguration,
        CertificateAuthorityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdempotencyToken = {
            type = "string",
        },
        KeyStorageSecurityStandard = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        UsageMode = {
            type = "string",
        },
    },
}

M.CreateCertificateAuthorityOutput = {
    type = "structure",
    id = "CreateCertificateAuthorityOutput",
    members = {
        CertificateAuthorityArn = {
            type = "string",
        },
    },
}

M.InvalidArgsException = {
    type = "structure",
    id = "InvalidArgsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidPolicyException = {
    type = "structure",
    id = "InvalidPolicyException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTagException = {
    type = "structure",
    id = "InvalidTagException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AuditReportResponseFormat = {
    JSON = "JSON",
    CSV = "CSV",
}

M.CreateCertificateAuthorityAuditReportInput = {
    type = "structure",
    id = "CreateCertificateAuthorityAuditReportInput",
    members = {
        CertificateAuthorityArn = {
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
        AuditReportResponseFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCertificateAuthorityAuditReportOutput = {
    type = "structure",
    id = "CreateCertificateAuthorityAuditReportOutput",
    members = {
        AuditReportId = {
            type = "string",
        },
        S3Key = {
            type = "string",
        },
    },
}

M.InvalidArnException = {
    type = "structure",
    id = "InvalidArnException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidStateException = {
    type = "structure",
    id = "InvalidStateException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RequestFailedException = {
    type = "structure",
    id = "RequestFailedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RequestInProgressException = {
    type = "structure",
    id = "RequestInProgressException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ActionType = {
    IssueCertificate = "IssueCertificate",
    GetCertificate = "GetCertificate",
    ListPermissions = "ListPermissions",
}

M.CreatePermissionInput = {
    type = "structure",
    id = "CreatePermissionInput",
    members = {
        CertificateAuthorityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Principal = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceAccount = {
            type = "string",
        },
        Actions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CreatePermissionOutput = {
    type = "structure",
    id = "CreatePermissionOutput",
}

M.PermissionAlreadyExistsException = {
    type = "structure",
    id = "PermissionAlreadyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    id = "ConcurrentModificationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteCertificateAuthorityInput = {
    type = "structure",
    id = "DeleteCertificateAuthorityInput",
    members = {
        CertificateAuthorityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermanentDeletionTimeInDays = {
            type = "integer",
        },
    },
}

M.DeleteCertificateAuthorityOutput = {
    type = "structure",
    id = "DeleteCertificateAuthorityOutput",
}

M.DeletePermissionInput = {
    type = "structure",
    id = "DeletePermissionInput",
    members = {
        CertificateAuthorityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Principal = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceAccount = {
            type = "string",
        },
    },
}

M.DeletePermissionOutput = {
    type = "structure",
    id = "DeletePermissionOutput",
}

M.DeletePolicyInput = {
    type = "structure",
    id = "DeletePolicyInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePolicyOutput = {
    type = "structure",
    id = "DeletePolicyOutput",
}

M.LockoutPreventedException = {
    type = "structure",
    id = "LockoutPreventedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeCertificateAuthorityInput = {
    type = "structure",
    id = "DescribeCertificateAuthorityInput",
    members = {
        CertificateAuthorityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FailureReason = {
    REQUEST_TIMED_OUT = "REQUEST_TIMED_OUT",
    UNSUPPORTED_ALGORITHM = "UNSUPPORTED_ALGORITHM",
    OTHER = "OTHER",
}

M.CertificateAuthorityStatus = {
    CREATING = "CREATING",
    PENDING_CERTIFICATE = "PENDING_CERTIFICATE",
    ACTIVE = "ACTIVE",
    DELETED = "DELETED",
    DISABLED = "DISABLED",
    EXPIRED = "EXPIRED",
    FAILED = "FAILED",
}

M.CertificateAuthority = {
    type = "structure",
    id = "CertificateAuthority",
    members = {
        Arn = {
            type = "string",
        },
        OwnerAccount = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastStateChangeAt = {
            type = "timestamp",
        },
        Type = {
            type = "string",
        },
        Serial = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        NotBefore = {
            type = "timestamp",
        },
        NotAfter = {
            type = "timestamp",
        },
        FailureReason = {
            type = "string",
        },
        CertificateAuthorityConfiguration = M.CertificateAuthorityConfiguration,
        RevocationConfiguration = M.RevocationConfiguration,
        RestorableUntil = {
            type = "timestamp",
        },
        KeyStorageSecurityStandard = {
            type = "string",
        },
        UsageMode = {
            type = "string",
        },
    },
}

M.DescribeCertificateAuthorityOutput = {
    type = "structure",
    id = "DescribeCertificateAuthorityOutput",
    members = {
        CertificateAuthority = M.CertificateAuthority,
    },
}

M.DescribeCertificateAuthorityAuditReportInput = {
    type = "structure",
    id = "DescribeCertificateAuthorityAuditReportInput",
    members = {
        CertificateAuthorityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuditReportId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AuditReportStatus = {
    CREATING = "CREATING",
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
}

M.DescribeCertificateAuthorityAuditReportOutput = {
    type = "structure",
    id = "DescribeCertificateAuthorityAuditReportOutput",
    members = {
        AuditReportStatus = {
            type = "string",
        },
        S3BucketName = {
            type = "string",
        },
        S3Key = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
    },
}

M.GetCertificateInput = {
    type = "structure",
    id = "GetCertificateInput",
    members = {
        CertificateAuthorityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
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
    id = "GetCertificateOutput",
    members = {
        Certificate = {
            type = "string",
        },
        CertificateChain = {
            type = "string",
        },
    },
}

M.GetCertificateAuthorityCertificateInput = {
    type = "structure",
    id = "GetCertificateAuthorityCertificateInput",
    members = {
        CertificateAuthorityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCertificateAuthorityCertificateOutput = {
    type = "structure",
    id = "GetCertificateAuthorityCertificateOutput",
    members = {
        Certificate = {
            type = "string",
        },
        CertificateChain = {
            type = "string",
        },
    },
}

M.GetCertificateAuthorityCsrInput = {
    type = "structure",
    id = "GetCertificateAuthorityCsrInput",
    members = {
        CertificateAuthorityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCertificateAuthorityCsrOutput = {
    type = "structure",
    id = "GetCertificateAuthorityCsrOutput",
    members = {
        Csr = {
            type = "string",
        },
    },
}

M.GetPolicyInput = {
    type = "structure",
    id = "GetPolicyInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPolicyOutput = {
    type = "structure",
    id = "GetPolicyOutput",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.CertificateMismatchException = {
    type = "structure",
    id = "CertificateMismatchException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ImportCertificateAuthorityCertificateInput = {
    type = "structure",
    id = "ImportCertificateAuthorityCertificateInput",
    members = {
        CertificateAuthorityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Certificate = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        CertificateChain = {
            type = "blob",
        },
    },
}

M.ImportCertificateAuthorityCertificateOutput = {
    type = "structure",
    id = "ImportCertificateAuthorityCertificateOutput",
}

M.InvalidRequestException = {
    type = "structure",
    id = "InvalidRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MalformedCertificateException = {
    type = "structure",
    id = "MalformedCertificateException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PolicyQualifierId = {
    CPS = "CPS",
}

M.Qualifier = {
    type = "structure",
    id = "Qualifier",
    members = {
        CpsUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PolicyQualifierInfo = {
    type = "structure",
    id = "PolicyQualifierInfo",
    members = {
        PolicyQualifierId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Qualifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Qualifier }),
    },
}

M.PolicyInformation = {
    type = "structure",
    id = "PolicyInformation",
    members = {
        CertPolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyQualifiers = {
            type = "list",
            member = M.PolicyQualifierInfo,
        },
    },
}

M.CustomExtension = {
    type = "structure",
    id = "CustomExtension",
    members = {
        ObjectIdentifier = {
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
        Critical = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.ExtendedKeyUsageType = {
    SERVER_AUTH = "SERVER_AUTH",
    CLIENT_AUTH = "CLIENT_AUTH",
    CODE_SIGNING = "CODE_SIGNING",
    EMAIL_PROTECTION = "EMAIL_PROTECTION",
    TIME_STAMPING = "TIME_STAMPING",
    OCSP_SIGNING = "OCSP_SIGNING",
    SMART_CARD_LOGIN = "SMART_CARD_LOGIN",
    DOCUMENT_SIGNING = "DOCUMENT_SIGNING",
    CERTIFICATE_TRANSPARENCY = "CERTIFICATE_TRANSPARENCY",
}

M.ExtendedKeyUsage = {
    type = "structure",
    id = "ExtendedKeyUsage",
    members = {
        ExtendedKeyUsageType = {
            type = "string",
        },
        ExtendedKeyUsageObjectIdentifier = {
            type = "string",
        },
    },
}

M.Extensions = {
    type = "structure",
    id = "Extensions",
    members = {
        CertificatePolicies = {
            type = "list",
            member = M.PolicyInformation,
        },
        ExtendedKeyUsage = {
            type = "list",
            member = M.ExtendedKeyUsage,
        },
        KeyUsage = M.KeyUsage,
        SubjectAlternativeNames = {
            type = "list",
            member = M.GeneralName,
        },
        CustomExtensions = {
            type = "list",
            member = M.CustomExtension,
        },
    },
}

M.ApiPassthrough = {
    type = "structure",
    id = "ApiPassthrough",
    members = {
        Extensions = M.Extensions,
        Subject = M.ASN1Subject,
    },
}

M.ValidityPeriodType = {
    END_DATE = "END_DATE",
    ABSOLUTE = "ABSOLUTE",
    DAYS = "DAYS",
    MONTHS = "MONTHS",
    YEARS = "YEARS",
}

M.Validity = {
    type = "structure",
    id = "Validity",
    members = {
        Value = {
            type = "long",
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

M.IssueCertificateInput = {
    type = "structure",
    id = "IssueCertificateInput",
    members = {
        ApiPassthrough = M.ApiPassthrough,
        CertificateAuthorityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Csr = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        SigningAlgorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateArn = {
            type = "string",
        },
        Validity = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Validity }),
        ValidityNotBefore = M.Validity,
        IdempotencyToken = {
            type = "string",
        },
    },
}

M.IssueCertificateOutput = {
    type = "structure",
    id = "IssueCertificateOutput",
    members = {
        CertificateArn = {
            type = "string",
        },
    },
}

M.MalformedCSRException = {
    type = "structure",
    id = "MalformedCSRException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    id = "InvalidNextTokenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceOwner = {
    SELF = "SELF",
    OTHER_ACCOUNTS = "OTHER_ACCOUNTS",
}

M.ListCertificateAuthoritiesInput = {
    type = "structure",
    id = "ListCertificateAuthoritiesInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        ResourceOwner = {
            type = "string",
        },
    },
}

M.ListCertificateAuthoritiesOutput = {
    type = "structure",
    id = "ListCertificateAuthoritiesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        CertificateAuthorities = {
            type = "list",
            member = M.CertificateAuthority,
        },
    },
}

M.ListPermissionsInput = {
    type = "structure",
    id = "ListPermissionsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        CertificateAuthorityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Permission = {
    type = "structure",
    id = "Permission",
    members = {
        CertificateAuthorityArn = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        Principal = {
            type = "string",
        },
        SourceAccount = {
            type = "string",
        },
        Actions = {
            type = "list",
            member = { type = "string" },
        },
        Policy = {
            type = "string",
        },
    },
}

M.ListPermissionsOutput = {
    type = "structure",
    id = "ListPermissionsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Permissions = {
            type = "list",
            member = M.Permission,
        },
    },
}

M.ListTagsInput = {
    type = "structure",
    id = "ListTagsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        CertificateAuthorityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsOutput = {
    type = "structure",
    id = "ListTagsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutPolicyInput = {
    type = "structure",
    id = "PutPolicyInput",
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

M.PutPolicyOutput = {
    type = "structure",
    id = "PutPolicyOutput",
}

M.RestoreCertificateAuthorityInput = {
    type = "structure",
    id = "RestoreCertificateAuthorityInput",
    members = {
        CertificateAuthorityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RestoreCertificateAuthorityOutput = {
    type = "structure",
    id = "RestoreCertificateAuthorityOutput",
}

M.RequestAlreadyProcessedException = {
    type = "structure",
    id = "RequestAlreadyProcessedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RevocationReason = {
    UNSPECIFIED = "UNSPECIFIED",
    KEY_COMPROMISE = "KEY_COMPROMISE",
    CERTIFICATE_AUTHORITY_COMPROMISE = "CERTIFICATE_AUTHORITY_COMPROMISE",
    AFFILIATION_CHANGED = "AFFILIATION_CHANGED",
    SUPERSEDED = "SUPERSEDED",
    CESSATION_OF_OPERATION = "CESSATION_OF_OPERATION",
    PRIVILEGE_WITHDRAWN = "PRIVILEGE_WITHDRAWN",
    A_A_COMPROMISE = "A_A_COMPROMISE",
}

M.RevokeCertificateInput = {
    type = "structure",
    id = "RevokeCertificateInput",
    members = {
        CertificateAuthorityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CertificateSerial = {
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
    id = "RevokeCertificateOutput",
}

M.TagCertificateAuthorityInput = {
    type = "structure",
    id = "TagCertificateAuthorityInput",
    members = {
        CertificateAuthorityArn = {
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

M.TagCertificateAuthorityOutput = {
    type = "structure",
    id = "TagCertificateAuthorityOutput",
}

M.TooManyTagsException = {
    type = "structure",
    id = "TooManyTagsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UntagCertificateAuthorityInput = {
    type = "structure",
    id = "UntagCertificateAuthorityInput",
    members = {
        CertificateAuthorityArn = {
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

M.UntagCertificateAuthorityOutput = {
    type = "structure",
    id = "UntagCertificateAuthorityOutput",
}

M.UpdateCertificateAuthorityInput = {
    type = "structure",
    id = "UpdateCertificateAuthorityInput",
    members = {
        CertificateAuthorityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RevocationConfiguration = M.RevocationConfiguration,
        Status = {
            type = "string",
        },
    },
}

M.UpdateCertificateAuthorityOutput = {
    type = "structure",
    id = "UpdateCertificateAuthorityOutput",
}

return M
