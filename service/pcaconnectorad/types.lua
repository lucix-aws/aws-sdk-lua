local M = {}

M.AccessRight = {
    ALLOW = "ALLOW",
    DENY = "DENY",
}

M.AccessRights = {
    type = "structure",
    members = {
        Enroll = {
            type = "string",
        },
        AutoEnroll = {
            type = "string",
        },
    },
}

M.AccessControlEntry = {
    type = "structure",
    members = {
        GroupDisplayName = {
            type = "string",
        },
        GroupSecurityIdentifier = {
            type = "string",
        },
        AccessRights = {
            type = "structure",
        },
        TemplateArn = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.AccessControlEntrySummary = {
    type = "structure",
    members = {
        GroupDisplayName = {
            type = "string",
        },
        GroupSecurityIdentifier = {
            type = "string",
        },
        AccessRights = {
            type = "structure",
        },
        TemplateArn = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
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
    },
}

M.ApplicationPolicyType = {
    ALL_APPLICATION_POLICIES = "ALL_APPLICATION_POLICIES",
    ANY_PURPOSE = "ANY_PURPOSE",
    ATTESTATION_IDENTITY_KEY_CERTIFICATE = "ATTESTATION_IDENTITY_KEY_CERTIFICATE",
    CERTIFICATE_REQUEST_AGENT = "CERTIFICATE_REQUEST_AGENT",
    CLIENT_AUTHENTICATION = "CLIENT_AUTHENTICATION",
    CODE_SIGNING = "CODE_SIGNING",
    CTL_USAGE = "CTL_USAGE",
    DIGITAL_RIGHTS = "DIGITAL_RIGHTS",
    DIRECTORY_SERVICE_EMAIL_REPLICATION = "DIRECTORY_SERVICE_EMAIL_REPLICATION",
    DISALLOWED_LIST = "DISALLOWED_LIST",
    DNS_SERVER_TRUST = "DNS_SERVER_TRUST",
    DOCUMENT_ENCRYPTION = "DOCUMENT_ENCRYPTION",
    DOCUMENT_SIGNING = "DOCUMENT_SIGNING",
    DYNAMIC_CODE_GENERATOR = "DYNAMIC_CODE_GENERATOR",
    EARLY_LAUNCH_ANTIMALWARE_DRIVER = "EARLY_LAUNCH_ANTIMALWARE_DRIVER",
    EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION = "EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION",
    ENCLAVE = "ENCLAVE",
    ENCRYPTING_FILE_SYSTEM = "ENCRYPTING_FILE_SYSTEM",
    ENDORSEMENT_KEY_CERTIFICATE = "ENDORSEMENT_KEY_CERTIFICATE",
    FILE_RECOVERY = "FILE_RECOVERY",
    HAL_EXTENSION = "HAL_EXTENSION",
    IP_SECURITY_END_SYSTEM = "IP_SECURITY_END_SYSTEM",
    IP_SECURITY_IKE_INTERMEDIATE = "IP_SECURITY_IKE_INTERMEDIATE",
    IP_SECURITY_TUNNEL_TERMINATION = "IP_SECURITY_TUNNEL_TERMINATION",
    IP_SECURITY_USER = "IP_SECURITY_USER",
    ISOLATED_USER_MODE = "ISOLATED_USER_MODE",
    KDC_AUTHENTICATION = "KDC_AUTHENTICATION",
    KERNEL_MODE_CODE_SIGNING = "KERNEL_MODE_CODE_SIGNING",
    KEY_PACK_LICENSES = "KEY_PACK_LICENSES",
    KEY_RECOVERY = "KEY_RECOVERY",
    KEY_RECOVERY_AGENT = "KEY_RECOVERY_AGENT",
    LICENSE_SERVER_VERIFICATION = "LICENSE_SERVER_VERIFICATION",
    LIFETIME_SIGNING = "LIFETIME_SIGNING",
    MICROSOFT_PUBLISHER = "MICROSOFT_PUBLISHER",
    MICROSOFT_TIME_STAMPING = "MICROSOFT_TIME_STAMPING",
    MICROSOFT_TRUST_LIST_SIGNING = "MICROSOFT_TRUST_LIST_SIGNING",
    OCSP_SIGNING = "OCSP_SIGNING",
    OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION = "OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION",
    PLATFORM_CERTIFICATE = "PLATFORM_CERTIFICATE",
    PREVIEW_BUILD_SIGNING = "PREVIEW_BUILD_SIGNING",
    PRIVATE_KEY_ARCHIVAL = "PRIVATE_KEY_ARCHIVAL",
    PROTECTED_PROCESS_LIGHT_VERIFICATION = "PROTECTED_PROCESS_LIGHT_VERIFICATION",
    PROTECTED_PROCESS_VERIFICATION = "PROTECTED_PROCESS_VERIFICATION",
    QUALIFIED_SUBORDINATION = "QUALIFIED_SUBORDINATION",
    REVOKED_LIST_SIGNER = "REVOKED_LIST_SIGNER",
    ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION = "ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION",
    ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION = "ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION",
    ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL = "ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL",
    ROOT_LIST_SIGNER = "ROOT_LIST_SIGNER",
    SECURE_EMAIL = "SECURE_EMAIL",
    SERVER_AUTHENTICATION = "SERVER_AUTHENTICATION",
    SMART_CARD_LOGIN = "SMART_CARD_LOGIN",
    SPC_ENCRYPTED_DIGEST_RETRY_COUNT = "SPC_ENCRYPTED_DIGEST_RETRY_COUNT",
    SPC_RELAXED_PE_MARKER_CHECK = "SPC_RELAXED_PE_MARKER_CHECK",
    TIME_STAMPING = "TIME_STAMPING",
    WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION = "WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION",
    WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION = "WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION",
    WINDOWS_HARDWARE_DRIVER_VERIFICATION = "WINDOWS_HARDWARE_DRIVER_VERIFICATION",
    WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION = "WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION",
    WINDOWS_KITS_COMPONENT = "WINDOWS_KITS_COMPONENT",
    WINDOWS_RT_VERIFICATION = "WINDOWS_RT_VERIFICATION",
    WINDOWS_SOFTWARE_EXTENSION_VERIFICATION = "WINDOWS_SOFTWARE_EXTENSION_VERIFICATION",
    WINDOWS_STORE = "WINDOWS_STORE",
    WINDOWS_SYSTEM_COMPONENT_VERIFICATION = "WINDOWS_SYSTEM_COMPONENT_VERIFICATION",
    WINDOWS_TCB_COMPONENT = "WINDOWS_TCB_COMPONENT",
    WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT = "WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT",
    WINDOWS_UPDATE = "WINDOWS_UPDATE",
}

M.ApplicationPolicy = {
    type = "union",
    members = {
        PolicyType = {
            type = "string",
        },
        PolicyObjectIdentifier = {
            type = "string",
        },
    },
}

M.ApplicationPolicies = {
    type = "structure",
    members = {
        Critical = {
            type = "boolean",
        },
        Policies = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidityPeriodType = {
    HOURS = "HOURS",
    DAYS = "DAYS",
    WEEKS = "WEEKS",
    MONTHS = "MONTHS",
    YEARS = "YEARS",
}

M.ValidityPeriod = {
    type = "structure",
    members = {
        PeriodType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Period = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.CertificateValidity = {
    type = "structure",
    members = {
        ValidityPeriod = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        RenewalPeriod = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ClientCompatibilityV2 = {
    WINDOWS_SERVER_2003 = "WINDOWS_SERVER_2003",
    WINDOWS_SERVER_2008 = "WINDOWS_SERVER_2008",
    WINDOWS_SERVER_2008_R2 = "WINDOWS_SERVER_2008_R2",
    WINDOWS_SERVER_2012 = "WINDOWS_SERVER_2012",
    WINDOWS_SERVER_2012_R2 = "WINDOWS_SERVER_2012_R2",
    WINDOWS_SERVER_2016 = "WINDOWS_SERVER_2016",
}

M.ClientCompatibilityV3 = {
    WINDOWS_SERVER_2008 = "WINDOWS_SERVER_2008",
    WINDOWS_SERVER_2008_R2 = "WINDOWS_SERVER_2008_R2",
    WINDOWS_SERVER_2012 = "WINDOWS_SERVER_2012",
    WINDOWS_SERVER_2012_R2 = "WINDOWS_SERVER_2012_R2",
    WINDOWS_SERVER_2016 = "WINDOWS_SERVER_2016",
}

M.ClientCompatibilityV4 = {
    WINDOWS_SERVER_2012 = "WINDOWS_SERVER_2012",
    WINDOWS_SERVER_2012_R2 = "WINDOWS_SERVER_2012_R2",
    WINDOWS_SERVER_2016 = "WINDOWS_SERVER_2016",
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
    },
}

M.ConnectorStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.ConnectorStatusReason = {
    CA_CERTIFICATE_REGISTRATION_FAILED = "CA_CERTIFICATE_REGISTRATION_FAILED",
    DIRECTORY_ACCESS_DENIED = "DIRECTORY_ACCESS_DENIED",
    INTERNAL_FAILURE = "INTERNAL_FAILURE",
    INSUFFICIENT_FREE_ADDRESSES = "INSUFFICIENT_FREE_ADDRESSES",
    INVALID_SUBNET_IP_PROTOCOL = "INVALID_SUBNET_IP_PROTOCOL",
    PRIVATECA_ACCESS_DENIED = "PRIVATECA_ACCESS_DENIED",
    PRIVATECA_RESOURCE_NOT_FOUND = "PRIVATECA_RESOURCE_NOT_FOUND",
    SECURITY_GROUP_NOT_IN_VPC = "SECURITY_GROUP_NOT_IN_VPC",
    VPC_ACCESS_DENIED = "VPC_ACCESS_DENIED",
    VPC_ENDPOINT_LIMIT_EXCEEDED = "VPC_ENDPOINT_LIMIT_EXCEEDED",
    VPC_RESOURCE_NOT_FOUND = "VPC_RESOURCE_NOT_FOUND",
}

M.IpAddressType = {
    IPV4 = "IPV4",
    DUALSTACK = "DUALSTACK",
}

M.VpcInformation = {
    type = "structure",
    members = {
        IpAddressType = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Connector = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CertificateAuthorityArn = {
            type = "string",
        },
        CertificateEnrollmentPolicyServerEndpoint = {
            type = "string",
        },
        DirectoryId = {
            type = "string",
        },
        VpcInformation = {
            type = "structure",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ConnectorSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CertificateAuthorityArn = {
            type = "string",
        },
        CertificateEnrollmentPolicyServerEndpoint = {
            type = "string",
        },
        DirectoryId = {
            type = "string",
        },
        VpcInformation = {
            type = "structure",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.CreateConnectorInput = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CertificateAuthorityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcInformation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateConnectorOutput = {
    type = "structure",
    members = {
        ConnectorArn = {
            type = "string",
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
    },
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
        ServiceCode = {
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

M.ValidationExceptionReason = {
    FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED",
    INVALID_CA_SUBJECT = "INVALID_CA_SUBJECT",
    INVALID_PERMISSION = "INVALID_PERMISSION",
    INVALID_STATE = "INVALID_STATE",
    MISMATCHED_CONNECTOR = "MISMATCHED_CONNECTOR",
    MISMATCHED_VPC = "MISMATCHED_VPC",
    NO_CLIENT_TOKEN = "NO_CLIENT_TOKEN",
    UNKNOWN_OPERATION = "UNKNOWN_OPERATION",
    OTHER = "OTHER",
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
        },
    },
}

M.DeleteConnectorInput = {
    type = "structure",
    members = {
        ConnectorArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConnectorOutput = {
    type = "structure",
}

M.GetConnectorInput = {
    type = "structure",
    members = {
        ConnectorArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConnectorOutput = {
    type = "structure",
    members = {
        Connector = {
            type = "structure",
        },
    },
}

M.ListConnectorsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListConnectorsOutput = {
    type = "structure",
    members = {
        Connectors = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.CreateDirectoryRegistrationInput = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateDirectoryRegistrationOutput = {
    type = "structure",
    members = {
        DirectoryRegistrationArn = {
            type = "string",
        },
    },
}

M.CreateServicePrincipalNameInput = {
    type = "structure",
    members = {
        DirectoryRegistrationArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConnectorArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.CreateServicePrincipalNameOutput = {
    type = "structure",
}

M.EnrollmentFlagsV2 = {
    type = "structure",
    members = {
        IncludeSymmetricAlgorithms = {
            type = "boolean",
        },
        UserInteractionRequired = {
            type = "boolean",
        },
        RemoveInvalidCertificateFromPersonalStore = {
            type = "boolean",
        },
        NoSecurityExtension = {
            type = "boolean",
        },
        EnableKeyReuseOnNtTokenKeysetStorageFull = {
            type = "boolean",
        },
    },
}

M.KeyUsageFlags = {
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
    },
}

M.KeyUsage = {
    type = "structure",
    members = {
        Critical = {
            type = "boolean",
        },
        UsageFlags = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ExtensionsV2 = {
    type = "structure",
    members = {
        KeyUsage = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ApplicationPolicies = {
            type = "structure",
        },
    },
}

M.GeneralFlagsV2 = {
    type = "structure",
    members = {
        AutoEnrollment = {
            type = "boolean",
        },
        MachineType = {
            type = "boolean",
        },
    },
}

M.KeySpec = {
    KEY_EXCHANGE = "KEY_EXCHANGE",
    SIGNATURE = "SIGNATURE",
}

M.PrivateKeyAttributesV2 = {
    type = "structure",
    members = {
        MinimalKeyLength = {
            type = "number",
            traits = {
                required = true,
            },
        },
        KeySpec = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CryptoProviders = {
            type = "list",
            member_type = "string",
        },
    },
}

M.PrivateKeyFlagsV2 = {
    type = "structure",
    members = {
        ExportableKey = {
            type = "boolean",
        },
        StrongKeyProtectionRequired = {
            type = "boolean",
        },
        ClientVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SubjectNameFlagsV2 = {
    type = "structure",
    members = {
        SanRequireDomainDns = {
            type = "boolean",
        },
        SanRequireSpn = {
            type = "boolean",
        },
        SanRequireDirectoryGuid = {
            type = "boolean",
        },
        SanRequireUpn = {
            type = "boolean",
        },
        SanRequireEmail = {
            type = "boolean",
        },
        SanRequireDns = {
            type = "boolean",
        },
        RequireDnsAsCn = {
            type = "boolean",
        },
        RequireEmail = {
            type = "boolean",
        },
        RequireCommonName = {
            type = "boolean",
        },
        RequireDirectoryPath = {
            type = "boolean",
        },
    },
}

M.TemplateV2 = {
    type = "structure",
    members = {
        CertificateValidity = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SupersededTemplates = {
            type = "list",
            member_type = "string",
        },
        PrivateKeyAttributes = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        PrivateKeyFlags = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        EnrollmentFlags = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SubjectNameFlags = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        GeneralFlags = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Extensions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.EnrollmentFlagsV3 = {
    type = "structure",
    members = {
        IncludeSymmetricAlgorithms = {
            type = "boolean",
        },
        UserInteractionRequired = {
            type = "boolean",
        },
        RemoveInvalidCertificateFromPersonalStore = {
            type = "boolean",
        },
        NoSecurityExtension = {
            type = "boolean",
        },
        EnableKeyReuseOnNtTokenKeysetStorageFull = {
            type = "boolean",
        },
    },
}

M.ExtensionsV3 = {
    type = "structure",
    members = {
        KeyUsage = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ApplicationPolicies = {
            type = "structure",
        },
    },
}

M.GeneralFlagsV3 = {
    type = "structure",
    members = {
        AutoEnrollment = {
            type = "boolean",
        },
        MachineType = {
            type = "boolean",
        },
    },
}

M.HashAlgorithm = {
    SHA256 = "SHA256",
    SHA384 = "SHA384",
    SHA512 = "SHA512",
}

M.PrivateKeyAlgorithm = {
    RSA = "RSA",
    ECDH_P256 = "ECDH_P256",
    ECDH_P384 = "ECDH_P384",
    ECDH_P521 = "ECDH_P521",
}

M.KeyUsagePropertyFlags = {
    type = "structure",
    members = {
        Decrypt = {
            type = "boolean",
        },
        KeyAgreement = {
            type = "boolean",
        },
        Sign = {
            type = "boolean",
        },
    },
}

M.KeyUsagePropertyType = {
    ALL = "ALL",
}

M.KeyUsageProperty = {
    type = "union",
    members = {
        PropertyType = {
            type = "string",
        },
        PropertyFlags = {
            type = "structure",
        },
    },
}

M.PrivateKeyAttributesV3 = {
    type = "structure",
    members = {
        MinimalKeyLength = {
            type = "number",
            traits = {
                required = true,
            },
        },
        KeySpec = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CryptoProviders = {
            type = "list",
            member_type = "string",
        },
        KeyUsageProperty = {
            type = "union",
            traits = {
                required = true,
            },
        },
        Algorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PrivateKeyFlagsV3 = {
    type = "structure",
    members = {
        ExportableKey = {
            type = "boolean",
        },
        StrongKeyProtectionRequired = {
            type = "boolean",
        },
        RequireAlternateSignatureAlgorithm = {
            type = "boolean",
        },
        ClientVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SubjectNameFlagsV3 = {
    type = "structure",
    members = {
        SanRequireDomainDns = {
            type = "boolean",
        },
        SanRequireSpn = {
            type = "boolean",
        },
        SanRequireDirectoryGuid = {
            type = "boolean",
        },
        SanRequireUpn = {
            type = "boolean",
        },
        SanRequireEmail = {
            type = "boolean",
        },
        SanRequireDns = {
            type = "boolean",
        },
        RequireDnsAsCn = {
            type = "boolean",
        },
        RequireEmail = {
            type = "boolean",
        },
        RequireCommonName = {
            type = "boolean",
        },
        RequireDirectoryPath = {
            type = "boolean",
        },
    },
}

M.TemplateV3 = {
    type = "structure",
    members = {
        CertificateValidity = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SupersededTemplates = {
            type = "list",
            member_type = "string",
        },
        PrivateKeyAttributes = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        PrivateKeyFlags = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        EnrollmentFlags = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SubjectNameFlags = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        GeneralFlags = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        HashAlgorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Extensions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.EnrollmentFlagsV4 = {
    type = "structure",
    members = {
        IncludeSymmetricAlgorithms = {
            type = "boolean",
        },
        UserInteractionRequired = {
            type = "boolean",
        },
        RemoveInvalidCertificateFromPersonalStore = {
            type = "boolean",
        },
        NoSecurityExtension = {
            type = "boolean",
        },
        EnableKeyReuseOnNtTokenKeysetStorageFull = {
            type = "boolean",
        },
    },
}

M.ExtensionsV4 = {
    type = "structure",
    members = {
        KeyUsage = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ApplicationPolicies = {
            type = "structure",
        },
    },
}

M.GeneralFlagsV4 = {
    type = "structure",
    members = {
        AutoEnrollment = {
            type = "boolean",
        },
        MachineType = {
            type = "boolean",
        },
    },
}

M.PrivateKeyAttributesV4 = {
    type = "structure",
    members = {
        MinimalKeyLength = {
            type = "number",
            traits = {
                required = true,
            },
        },
        KeySpec = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CryptoProviders = {
            type = "list",
            member_type = "string",
        },
        KeyUsageProperty = {
            type = "union",
        },
        Algorithm = {
            type = "string",
        },
    },
}

M.PrivateKeyFlagsV4 = {
    type = "structure",
    members = {
        ExportableKey = {
            type = "boolean",
        },
        StrongKeyProtectionRequired = {
            type = "boolean",
        },
        RequireAlternateSignatureAlgorithm = {
            type = "boolean",
        },
        RequireSameKeyRenewal = {
            type = "boolean",
        },
        UseLegacyProvider = {
            type = "boolean",
        },
        ClientVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SubjectNameFlagsV4 = {
    type = "structure",
    members = {
        SanRequireDomainDns = {
            type = "boolean",
        },
        SanRequireSpn = {
            type = "boolean",
        },
        SanRequireDirectoryGuid = {
            type = "boolean",
        },
        SanRequireUpn = {
            type = "boolean",
        },
        SanRequireEmail = {
            type = "boolean",
        },
        SanRequireDns = {
            type = "boolean",
        },
        RequireDnsAsCn = {
            type = "boolean",
        },
        RequireEmail = {
            type = "boolean",
        },
        RequireCommonName = {
            type = "boolean",
        },
        RequireDirectoryPath = {
            type = "boolean",
        },
    },
}

M.TemplateV4 = {
    type = "structure",
    members = {
        CertificateValidity = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SupersededTemplates = {
            type = "list",
            member_type = "string",
        },
        PrivateKeyAttributes = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        PrivateKeyFlags = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        EnrollmentFlags = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SubjectNameFlags = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        GeneralFlags = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        HashAlgorithm = {
            type = "string",
        },
        Extensions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TemplateDefinition = {
    type = "union",
    members = {
        TemplateV2 = {
            type = "structure",
        },
        TemplateV3 = {
            type = "structure",
        },
        TemplateV4 = {
            type = "structure",
        },
    },
}

M.CreateTemplateInput = {
    type = "structure",
    members = {
        ConnectorArn = {
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
        Definition = {
            type = "union",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateTemplateOutput = {
    type = "structure",
    members = {
        TemplateArn = {
            type = "string",
        },
    },
}

M.CreateTemplateGroupAccessControlEntryInput = {
    type = "structure",
    members = {
        TemplateArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GroupSecurityIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupDisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccessRights = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.CreateTemplateGroupAccessControlEntryOutput = {
    type = "structure",
}

M.DeleteDirectoryRegistrationInput = {
    type = "structure",
    members = {
        DirectoryRegistrationArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDirectoryRegistrationOutput = {
    type = "structure",
}

M.DeleteServicePrincipalNameInput = {
    type = "structure",
    members = {
        DirectoryRegistrationArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConnectorArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteServicePrincipalNameOutput = {
    type = "structure",
}

M.DeleteTemplateInput = {
    type = "structure",
    members = {
        TemplateArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTemplateOutput = {
    type = "structure",
}

M.DeleteTemplateGroupAccessControlEntryInput = {
    type = "structure",
    members = {
        TemplateArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GroupSecurityIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTemplateGroupAccessControlEntryOutput = {
    type = "structure",
}

M.DirectoryRegistrationStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.DirectoryRegistrationStatusReason = {
    DIRECTORY_ACCESS_DENIED = "DIRECTORY_ACCESS_DENIED",
    DIRECTORY_RESOURCE_NOT_FOUND = "DIRECTORY_RESOURCE_NOT_FOUND",
    DIRECTORY_NOT_ACTIVE = "DIRECTORY_NOT_ACTIVE",
    DIRECTORY_NOT_REACHABLE = "DIRECTORY_NOT_REACHABLE",
    DIRECTORY_TYPE_NOT_SUPPORTED = "DIRECTORY_TYPE_NOT_SUPPORTED",
    INTERNAL_FAILURE = "INTERNAL_FAILURE",
}

M.DirectoryRegistration = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        DirectoryId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.DirectoryRegistrationSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        DirectoryId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.GetDirectoryRegistrationInput = {
    type = "structure",
    members = {
        DirectoryRegistrationArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDirectoryRegistrationOutput = {
    type = "structure",
    members = {
        DirectoryRegistration = {
            type = "structure",
        },
    },
}

M.ListDirectoryRegistrationsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListDirectoryRegistrationsOutput = {
    type = "structure",
    members = {
        DirectoryRegistrations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetServicePrincipalNameInput = {
    type = "structure",
    members = {
        DirectoryRegistrationArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConnectorArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ServicePrincipalNameStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.ServicePrincipalNameStatusReason = {
    DIRECTORY_ACCESS_DENIED = "DIRECTORY_ACCESS_DENIED",
    DIRECTORY_NOT_REACHABLE = "DIRECTORY_NOT_REACHABLE",
    DIRECTORY_RESOURCE_NOT_FOUND = "DIRECTORY_RESOURCE_NOT_FOUND",
    SPN_EXISTS_ON_DIFFERENT_AD_OBJECT = "SPN_EXISTS_ON_DIFFERENT_AD_OBJECT",
    SPN_LIMIT_EXCEEDED = "SPN_LIMIT_EXCEEDED",
    INTERNAL_FAILURE = "INTERNAL_FAILURE",
}

M.ServicePrincipalName = {
    type = "structure",
    members = {
        DirectoryRegistrationArn = {
            type = "string",
        },
        ConnectorArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.GetServicePrincipalNameOutput = {
    type = "structure",
    members = {
        ServicePrincipalName = {
            type = "structure",
        },
    },
}

M.GetTemplateInput = {
    type = "structure",
    members = {
        TemplateArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TemplateRevision = {
    type = "structure",
    members = {
        MajorRevision = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MinorRevision = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.TemplateStatus = {
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
}

M.Template = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        ConnectorArn = {
            type = "string",
        },
        Definition = {
            type = "union",
        },
        Name = {
            type = "string",
        },
        ObjectIdentifier = {
            type = "string",
        },
        PolicySchema = {
            type = "number",
        },
        Status = {
            type = "string",
        },
        Revision = {
            type = "structure",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.GetTemplateOutput = {
    type = "structure",
    members = {
        Template = {
            type = "structure",
        },
    },
}

M.GetTemplateGroupAccessControlEntryInput = {
    type = "structure",
    members = {
        TemplateArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GroupSecurityIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetTemplateGroupAccessControlEntryOutput = {
    type = "structure",
    members = {
        AccessControlEntry = {
            type = "structure",
        },
    },
}

M.ListServicePrincipalNamesInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        DirectoryRegistrationArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ServicePrincipalNameSummary = {
    type = "structure",
    members = {
        DirectoryRegistrationArn = {
            type = "string",
        },
        ConnectorArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ListServicePrincipalNamesOutput = {
    type = "structure",
    members = {
        ServicePrincipalNames = {
            type = "list",
            member_type = "structure",
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
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListTemplateGroupAccessControlEntriesInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        TemplateArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTemplateGroupAccessControlEntriesOutput = {
    type = "structure",
    members = {
        AccessControlEntries = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTemplatesInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        ConnectorArn = {
            type = "string",
            traits = {
                http_query = "ConnectorArn",
                required = true,
            },
        },
    },
}

M.TemplateSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        ConnectorArn = {
            type = "string",
        },
        Definition = {
            type = "union",
        },
        Name = {
            type = "string",
        },
        ObjectIdentifier = {
            type = "string",
        },
        PolicySchema = {
            type = "number",
        },
        Status = {
            type = "string",
        },
        Revision = {
            type = "structure",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ListTemplatesOutput = {
    type = "structure",
    members = {
        Templates = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UpdateTemplateGroupAccessControlEntryInput = {
    type = "structure",
    members = {
        TemplateArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GroupSecurityIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GroupDisplayName = {
            type = "string",
        },
        AccessRights = {
            type = "structure",
        },
    },
}

M.UpdateTemplateGroupAccessControlEntryOutput = {
    type = "structure",
}

M.UpdateTemplateInput = {
    type = "structure",
    members = {
        TemplateArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Definition = {
            type = "union",
        },
        ReenrollAllCertificateHolders = {
            type = "boolean",
        },
    },
}

M.UpdateTemplateOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

return M
