local M = {}

M.CustomAttribute = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.EdiPartyName = {
    type = "structure",
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
    members = {
        OtherName = {
            type = "structure",
        },
        Rfc822Name = {
            type = "string",
        },
        DnsName = {
            type = "string",
        },
        DirectoryName = {
            type = "structure",
        },
        EdiPartyName = {
            type = "structure",
        },
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
    members = {
        AccessMethod = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AccessLocation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.KeyUsage = {
    type = "structure",
    members = {
        DigitalSignature = {
            type = "boolean",
        },
        NonRepudiation = {
            type = "boolean",
        },
        KeyEncipherment = {
            type = "boolean",
        },
        DataEncipherment = {
            type = "boolean",
        },
        KeyAgreement = {
            type = "boolean",
        },
        KeyCertSign = {
            type = "boolean",
        },
        CRLSign = {
            type = "boolean",
        },
        EncipherOnly = {
            type = "boolean",
        },
        DecipherOnly = {
            type = "boolean",
        },
    },
}

M.CsrExtensions = {
    type = "structure",
    members = {
        KeyUsage = {
            type = "structure",
        },
        SubjectInformationAccess = {
            type = "list",
            member_type = "structure",
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
        Subject = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CsrExtensions = {
            type = "structure",
        },
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
    members = {
        OmitExtension = {
            type = "boolean",
            traits = {
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
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        ExpirationInDays = {
            type = "number",
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
        CrlDistributionPointExtensionConfiguration = {
            type = "structure",
        },
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
    members = {
        Enabled = {
            type = "boolean",
            traits = {
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
    members = {
        CrlConfiguration = {
            type = "structure",
        },
        OcspConfiguration = {
            type = "structure",
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

M.CertificateAuthorityUsageMode = {
    GENERAL_PURPOSE = "GENERAL_PURPOSE",
    SHORT_LIVED_CERTIFICATE = "SHORT_LIVED_CERTIFICATE",
}

M.CreateCertificateAuthorityInput = {
    type = "structure",
    members = {
        CertificateAuthorityConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        RevocationConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        UsageMode = {
            type = "string",
        },
    },
}

M.CreateCertificateAuthorityOutput = {
    type = "structure",
    members = {
        CertificateAuthorityArn = {
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

M.InvalidPolicyException = {
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

M.LimitExceededException = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
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

M.RequestFailedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
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

M.ResourceNotFoundException = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreatePermissionOutput = {
    type = "structure",
}

M.PermissionAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteCertificateAuthorityInput = {
    type = "structure",
    members = {
        CertificateAuthorityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermanentDeletionTimeInDays = {
            type = "number",
        },
    },
}

M.DeleteCertificateAuthorityOutput = {
    type = "structure",
}

M.DeletePermissionInput = {
    type = "structure",
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
}

M.DeletePolicyInput = {
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

M.DeletePolicyOutput = {
    type = "structure",
}

M.LockoutPreventedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeCertificateAuthorityInput = {
    type = "structure",
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
        CertificateAuthorityConfiguration = {
            type = "structure",
        },
        RevocationConfiguration = {
            type = "structure",
        },
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
    members = {
        CertificateAuthority = {
            type = "structure",
        },
    },
}

M.DescribeCertificateAuthorityAuditReportInput = {
    type = "structure",
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
    members = {
        Csr = {
            type = "string",
        },
    },
}

M.GetPolicyInput = {
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

M.GetPolicyOutput = {
    type = "structure",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.CertificateMismatchException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ImportCertificateAuthorityCertificateInput = {
    type = "structure",
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
}

M.InvalidRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MalformedCertificateException = {
    type = "structure",
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
    members = {
        PolicyQualifierId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Qualifier = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PolicyInformation = {
    type = "structure",
    members = {
        CertPolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyQualifiers = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CustomExtension = {
    type = "structure",
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
    members = {
        CertificatePolicies = {
            type = "list",
            member_type = "structure",
        },
        ExtendedKeyUsage = {
            type = "list",
            member_type = "structure",
        },
        KeyUsage = {
            type = "structure",
        },
        SubjectAlternativeNames = {
            type = "list",
            member_type = "structure",
        },
        CustomExtensions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ApiPassthrough = {
    type = "structure",
    members = {
        Extensions = {
            type = "structure",
        },
        Subject = {
            type = "structure",
        },
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
    members = {
        Value = {
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

M.IssueCertificateInput = {
    type = "structure",
    members = {
        ApiPassthrough = {
            type = "structure",
        },
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
        Validity = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ValidityNotBefore = {
            type = "structure",
        },
        IdempotencyToken = {
            type = "string",
        },
    },
}

M.IssueCertificateOutput = {
    type = "structure",
    members = {
        CertificateArn = {
            type = "string",
        },
    },
}

M.MalformedCSRException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
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
    members = {
        MaxResults = {
            type = "number",
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
    members = {
        NextToken = {
            type = "string",
        },
        CertificateAuthorities = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListPermissionsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
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
            member_type = "string",
        },
        Policy = {
            type = "string",
        },
    },
}

M.ListPermissionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Permissions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListTagsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
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
    members = {
        NextToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PutPolicyInput = {
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

M.PutPolicyOutput = {
    type = "structure",
}

M.RestoreCertificateAuthorityInput = {
    type = "structure",
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
}

M.RequestAlreadyProcessedException = {
    type = "structure",
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
}

M.TagCertificateAuthorityInput = {
    type = "structure",
    members = {
        CertificateAuthorityArn = {
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

M.TagCertificateAuthorityOutput = {
    type = "structure",
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

M.UntagCertificateAuthorityInput = {
    type = "structure",
    members = {
        CertificateAuthorityArn = {
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

M.UntagCertificateAuthorityOutput = {
    type = "structure",
}

M.UpdateCertificateAuthorityInput = {
    type = "structure",
    members = {
        CertificateAuthorityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RevocationConfiguration = {
            type = "structure",
        },
        Status = {
            type = "string",
        },
    },
}

M.UpdateCertificateAuthorityOutput = {
    type = "structure",
}

return M
