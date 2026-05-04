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

M.CustomDirectoriesType = {
    type = "structure",
    members = {
        FailedFilesDirectory = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MdnFilesDirectory = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PayloadFilesDirectory = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StatusFilesDirectory = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemporaryFilesDirectory = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnforceMessageSigningType = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.PreserveFilenameType = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AgreementStatusType = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
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

M.CreateAgreementInput = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LocalProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PartnerProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BaseDirectory = {
            type = "string",
        },
        AccessRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        PreserveFilename = {
            type = "string",
        },
        EnforceMessageSigning = {
            type = "string",
        },
        CustomDirectories = {
            type = "structure",
        },
    },
}

M.CreateAgreementOutput = {
    type = "structure",
    members = {
        AgreementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServiceError = {
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

M.InvalidRequestException = {
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

M.ResourceExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Resource = {
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
        Resource = {
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

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        RetryAfterSeconds = {
            type = "string",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.DeleteAgreementInput = {
    type = "structure",
    members = {
        AgreementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAgreementOutput = {
    type = "structure",
}

M.DescribeAgreementInput = {
    type = "structure",
    members = {
        AgreementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribedAgreement = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AgreementId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ServerId = {
            type = "string",
        },
        LocalProfileId = {
            type = "string",
        },
        PartnerProfileId = {
            type = "string",
        },
        BaseDirectory = {
            type = "string",
        },
        AccessRole = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        PreserveFilename = {
            type = "string",
        },
        EnforceMessageSigning = {
            type = "string",
        },
        CustomDirectories = {
            type = "structure",
        },
    },
}

M.DescribeAgreementOutput = {
    type = "structure",
    members = {
        Agreement = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidNextTokenException = {
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

M.ListAgreementsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListedAgreement = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        AgreementId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ServerId = {
            type = "string",
        },
        LocalProfileId = {
            type = "string",
        },
        PartnerProfileId = {
            type = "string",
        },
    },
}

M.ListAgreementsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Agreements = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAgreementInput = {
    type = "structure",
    members = {
        AgreementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        LocalProfileId = {
            type = "string",
        },
        PartnerProfileId = {
            type = "string",
        },
        BaseDirectory = {
            type = "string",
        },
        AccessRole = {
            type = "string",
        },
        PreserveFilename = {
            type = "string",
        },
        EnforceMessageSigning = {
            type = "string",
        },
        CustomDirectories = {
            type = "structure",
        },
    },
}

M.UpdateAgreementOutput = {
    type = "structure",
    members = {
        AgreementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.As2AsyncMdnConnectorConfig = {
    type = "structure",
    members = {
        Url = {
            type = "string",
        },
        ServerIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CompressionEnum = {
    ZLIB = "ZLIB",
    DISABLED = "DISABLED",
}

M.EncryptionAlg = {
    AES128_CBC = "AES128_CBC",
    AES192_CBC = "AES192_CBC",
    AES256_CBC = "AES256_CBC",
    DES_EDE3_CBC = "DES_EDE3_CBC",
    NONE = "NONE",
}

M.MdnResponse = {
    SYNC = "SYNC",
    NONE = "NONE",
    ASYNC = "ASYNC",
}

M.MdnSigningAlg = {
    SHA256 = "SHA256",
    SHA384 = "SHA384",
    SHA512 = "SHA512",
    SHA1 = "SHA1",
    NONE = "NONE",
    DEFAULT = "DEFAULT",
}

M.PreserveContentType = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.SigningAlg = {
    SHA256 = "SHA256",
    SHA384 = "SHA384",
    SHA512 = "SHA512",
    SHA1 = "SHA1",
    NONE = "NONE",
}

M.As2ConnectorConfig = {
    type = "structure",
    members = {
        LocalProfileId = {
            type = "string",
        },
        PartnerProfileId = {
            type = "string",
        },
        MessageSubject = {
            type = "string",
        },
        Compression = {
            type = "string",
        },
        EncryptionAlgorithm = {
            type = "string",
        },
        SigningAlgorithm = {
            type = "string",
        },
        MdnSigningAlgorithm = {
            type = "string",
        },
        MdnResponse = {
            type = "string",
        },
        BasicAuthSecretId = {
            type = "string",
        },
        PreserveContentType = {
            type = "string",
        },
        AsyncMdnConfig = {
            type = "structure",
        },
    },
}

M.As2Transport = {
    HTTP = "HTTP",
}

M.DeleteCertificateInput = {
    type = "structure",
    members = {
        CertificateId = {
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

M.DescribeCertificateInput = {
    type = "structure",
    members = {
        CertificateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CertificateStatusType = {
    ACTIVE = "ACTIVE",
    PENDING_ROTATION = "PENDING_ROTATION",
    INACTIVE = "INACTIVE",
}

M.CertificateType = {
    CERTIFICATE = "CERTIFICATE",
    CERTIFICATE_WITH_PRIVATE_KEY = "CERTIFICATE_WITH_PRIVATE_KEY",
}

M.CertificateUsageType = {
    SIGNING = "SIGNING",
    ENCRYPTION = "ENCRYPTION",
    TLS = "TLS",
}

M.DescribedCertificate = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CertificateId = {
            type = "string",
        },
        Usage = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Certificate = {
            type = "string",
        },
        CertificateChain = {
            type = "string",
        },
        ActiveDate = {
            type = "timestamp",
        },
        InactiveDate = {
            type = "timestamp",
        },
        Serial = {
            type = "string",
        },
        NotBeforeDate = {
            type = "timestamp",
        },
        NotAfterDate = {
            type = "timestamp",
        },
        Type = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeCertificateOutput = {
    type = "structure",
    members = {
        Certificate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportCertificateInput = {
    type = "structure",
    members = {
        Usage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Certificate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CertificateChain = {
            type = "string",
        },
        PrivateKey = {
            type = "string",
        },
        ActiveDate = {
            type = "timestamp",
        },
        InactiveDate = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ImportCertificateOutput = {
    type = "structure",
    members = {
        CertificateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCertificatesInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListedCertificate = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CertificateId = {
            type = "string",
        },
        Usage = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ActiveDate = {
            type = "timestamp",
        },
        InactiveDate = {
            type = "timestamp",
        },
        Type = {
            type = "string",
        },
        Description = {
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
        Certificates = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCertificateInput = {
    type = "structure",
    members = {
        CertificateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActiveDate = {
            type = "timestamp",
        },
        InactiveDate = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateCertificateOutput = {
    type = "structure",
    members = {
        CertificateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
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

M.ConnectorVpcLatticeEgressConfig = {
    type = "structure",
    members = {
        ResourceConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PortNumber = {
            type = "number",
        },
    },
}

M.ConnectorEgressConfig = {
    type = "union",
    members = {
        VpcLattice = {
            type = "structure",
        },
    },
}

M.ConnectorEgressType = {
    SERVICE_MANAGED = "SERVICE_MANAGED",
    VPC_LATTICE = "VPC_LATTICE",
}

M.TransferTableStatus = {
    QUEUED = "QUEUED",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.ConnectorFileTransferResult = {
    type = "structure",
    members = {
        FilePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StatusCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureCode = {
            type = "string",
        },
        FailureMessage = {
            type = "string",
        },
    },
}

M.ConnectorsIpAddressType = {
    IPV4 = "IPV4",
    DUALSTACK = "DUALSTACK",
}

M.SftpConnectorConfig = {
    type = "structure",
    members = {
        UserSecretId = {
            type = "string",
        },
        TrustedHostKeys = {
            type = "list",
            member_type = "string",
        },
        MaxConcurrentConnections = {
            type = "number",
        },
    },
}

M.CreateConnectorInput = {
    type = "structure",
    members = {
        Url = {
            type = "string",
        },
        As2Config = {
            type = "structure",
        },
        AccessRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LoggingRole = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        SftpConfig = {
            type = "structure",
        },
        SecurityPolicyName = {
            type = "string",
        },
        EgressConfig = {
            type = "union",
        },
        IpAddressType = {
            type = "string",
        },
    },
}

M.CreateConnectorOutput = {
    type = "structure",
    members = {
        ConnectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConnectorInput = {
    type = "structure",
    members = {
        ConnectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConnectorOutput = {
    type = "structure",
}

M.DescribeConnectorInput = {
    type = "structure",
    members = {
        ConnectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribedConnectorVpcLatticeEgressConfig = {
    type = "structure",
    members = {
        ResourceConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PortNumber = {
            type = "number",
        },
    },
}

M.DescribedConnectorEgressConfig = {
    type = "union",
    members = {
        VpcLattice = {
            type = "structure",
        },
    },
}

M.ConnectorStatus = {
    ACTIVE = "ACTIVE",
    ERRORED = "ERRORED",
    PENDING = "PENDING",
}

M.DescribedConnector = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectorId = {
            type = "string",
        },
        Url = {
            type = "string",
        },
        As2Config = {
            type = "structure",
        },
        AccessRole = {
            type = "string",
        },
        LoggingRole = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        SftpConfig = {
            type = "structure",
        },
        ServiceManagedEgressIpAddresses = {
            type = "list",
            member_type = "string",
        },
        SecurityPolicyName = {
            type = "string",
        },
        EgressConfig = {
            type = "union",
        },
        EgressType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorMessage = {
            type = "string",
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IpAddressType = {
            type = "string",
        },
    },
}

M.DescribeConnectorOutput = {
    type = "structure",
    members = {
        Connector = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListConnectorsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListedConnector = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        ConnectorId = {
            type = "string",
        },
        Url = {
            type = "string",
        },
    },
}

M.ListConnectorsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Connectors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateConnectorVpcLatticeEgressConfig = {
    type = "structure",
    members = {
        ResourceConfigurationArn = {
            type = "string",
        },
        PortNumber = {
            type = "number",
        },
    },
}

M.UpdateConnectorEgressConfig = {
    type = "union",
    members = {
        VpcLattice = {
            type = "structure",
        },
    },
}

M.UpdateConnectorInput = {
    type = "structure",
    members = {
        ConnectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Url = {
            type = "string",
        },
        As2Config = {
            type = "structure",
        },
        AccessRole = {
            type = "string",
        },
        LoggingRole = {
            type = "string",
        },
        SftpConfig = {
            type = "structure",
        },
        SecurityPolicyName = {
            type = "string",
        },
        EgressConfig = {
            type = "union",
        },
        IpAddressType = {
            type = "string",
        },
    },
}

M.UpdateConnectorOutput = {
    type = "structure",
    members = {
        ConnectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EfsFileLocation = {
    type = "structure",
    members = {
        FileSystemId = {
            type = "string",
        },
        Path = {
            type = "string",
        },
    },
}

M.S3InputFileLocation = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
        },
        Key = {
            type = "string",
        },
    },
}

M.InputFileLocation = {
    type = "structure",
    members = {
        S3FileLocation = {
            type = "structure",
        },
        EfsFileLocation = {
            type = "structure",
        },
    },
}

M.OverwriteExisting = {
    TRUE = "TRUE",
    FALSE = "FALSE",
}

M.CopyStepDetails = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        DestinationFileLocation = {
            type = "structure",
        },
        OverwriteExisting = {
            type = "string",
        },
        SourceFileLocation = {
            type = "string",
        },
    },
}

M.MapType = {
    FILE = "FILE",
    DIRECTORY = "DIRECTORY",
}

M.HomeDirectoryMapEntry = {
    type = "structure",
    members = {
        Entry = {
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
        Type = {
            type = "string",
        },
    },
}

M.HomeDirectoryType = {
    PATH = "PATH",
    LOGICAL = "LOGICAL",
}

M.PosixProfile = {
    type = "structure",
    members = {
        Uid = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Gid = {
            type = "number",
            traits = {
                required = true,
            },
        },
        SecondaryGids = {
            type = "list",
            member_type = "number",
        },
    },
}

M.CreateAccessInput = {
    type = "structure",
    members = {
        HomeDirectory = {
            type = "string",
        },
        HomeDirectoryType = {
            type = "string",
        },
        HomeDirectoryMappings = {
            type = "list",
            member_type = "structure",
        },
        Policy = {
            type = "string",
        },
        PosixProfile = {
            type = "structure",
        },
        Role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExternalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAccessOutput = {
    type = "structure",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExternalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProfileType = {
    LOCAL = "LOCAL",
    PARTNER = "PARTNER",
}

M.CreateProfileInput = {
    type = "structure",
    members = {
        As2Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProfileType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CertificateIds = {
            type = "list",
            member_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateProfileOutput = {
    type = "structure",
    members = {
        ProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Domain = {
    S3 = "S3",
    EFS = "EFS",
}

M.EndpointDetails = {
    type = "structure",
    members = {
        AddressAllocationIds = {
            type = "list",
            member_type = "string",
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
        },
        VpcEndpointId = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.EndpointType = {
    PUBLIC = "PUBLIC",
    VPC = "VPC",
    VPC_ENDPOINT = "VPC_ENDPOINT",
}

M.SftpAuthenticationMethods = {
    PASSWORD = "PASSWORD",
    PUBLIC_KEY = "PUBLIC_KEY",
    PUBLIC_KEY_OR_PASSWORD = "PUBLIC_KEY_OR_PASSWORD",
    PUBLIC_KEY_AND_PASSWORD = "PUBLIC_KEY_AND_PASSWORD",
}

M.IdentityProviderDetails = {
    type = "structure",
    members = {
        Url = {
            type = "string",
        },
        InvocationRole = {
            type = "string",
        },
        DirectoryId = {
            type = "string",
        },
        Function = {
            type = "string",
        },
        SftpAuthenticationMethods = {
            type = "string",
        },
    },
}

M.IdentityProviderType = {
    SERVICE_MANAGED = "SERVICE_MANAGED",
    API_GATEWAY = "API_GATEWAY",
    AWS_DIRECTORY_SERVICE = "AWS_DIRECTORY_SERVICE",
    AWS_LAMBDA = "AWS_LAMBDA",
}

M.IpAddressType = {
    IPV4 = "IPV4",
    DUALSTACK = "DUALSTACK",
}

M.SetStatOption = {
    DEFAULT = "DEFAULT",
    ENABLE_NO_OP = "ENABLE_NO_OP",
}

M.TlsSessionResumptionMode = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
    ENFORCED = "ENFORCED",
}

M.ProtocolDetails = {
    type = "structure",
    members = {
        PassiveIp = {
            type = "string",
        },
        TlsSessionResumptionMode = {
            type = "string",
        },
        SetStatOption = {
            type = "string",
        },
        As2Transports = {
            type = "list",
            member_type = "string",
        },
    },
}

M.Protocol = {
    SFTP = "SFTP",
    FTP = "FTP",
    FTPS = "FTPS",
    AS2 = "AS2",
}

M.DirectoryListingOptimization = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.S3StorageOptions = {
    type = "structure",
    members = {
        DirectoryListingOptimization = {
            type = "string",
        },
    },
}

M.WorkflowDetail = {
    type = "structure",
    members = {
        WorkflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExecutionRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkflowDetails = {
    type = "structure",
    members = {
        OnUpload = {
            type = "list",
            member_type = "structure",
        },
        OnPartialUpload = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateServerInput = {
    type = "structure",
    members = {
        Certificate = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
        EndpointDetails = {
            type = "structure",
        },
        EndpointType = {
            type = "string",
        },
        HostKey = {
            type = "string",
        },
        IdentityProviderDetails = {
            type = "structure",
        },
        IdentityProviderType = {
            type = "string",
        },
        LoggingRole = {
            type = "string",
        },
        PostAuthenticationLoginBanner = {
            type = "string",
        },
        PreAuthenticationLoginBanner = {
            type = "string",
        },
        Protocols = {
            type = "list",
            member_type = "string",
        },
        ProtocolDetails = {
            type = "structure",
        },
        SecurityPolicyName = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        WorkflowDetails = {
            type = "structure",
        },
        StructuredLogDestinations = {
            type = "list",
            member_type = "string",
        },
        S3StorageOptions = {
            type = "structure",
        },
        IpAddressType = {
            type = "string",
        },
    },
}

M.CreateServerOutput = {
    type = "structure",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateUserInput = {
    type = "structure",
    members = {
        HomeDirectory = {
            type = "string",
        },
        HomeDirectoryType = {
            type = "string",
        },
        HomeDirectoryMappings = {
            type = "list",
            member_type = "structure",
        },
        Policy = {
            type = "string",
        },
        PosixProfile = {
            type = "structure",
        },
        Role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SshPublicKeyBody = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateUserOutput = {
    type = "structure",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WebAppVpcEndpointIpAddressType = {
    IPV4 = "IPV4",
    DUALSTACK = "DUALSTACK",
}

M.WebAppVpcConfig = {
    type = "structure",
    members = {
        SubnetIds = {
            type = "list",
            member_type = "string",
        },
        VpcId = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        IpAddressType = {
            type = "string",
        },
    },
}

M.WebAppEndpointDetails = {
    type = "union",
    members = {
        Vpc = {
            type = "structure",
        },
    },
}

M.IdentityCenterConfig = {
    type = "structure",
    members = {
        InstanceArn = {
            type = "string",
        },
        Role = {
            type = "string",
        },
    },
}

M.WebAppIdentityProviderDetails = {
    type = "union",
    members = {
        IdentityCenterConfig = {
            type = "structure",
        },
    },
}

M.WebAppEndpointPolicy = {
    FIPS = "FIPS",
    STANDARD = "STANDARD",
}

M.WebAppUnits = {
    type = "union",
    members = {
        Provisioned = {
            type = "number",
        },
    },
}

M.CreateWebAppInput = {
    type = "structure",
    members = {
        IdentityProviderDetails = {
            type = "union",
            traits = {
                required = true,
            },
        },
        AccessEndpoint = {
            type = "string",
        },
        WebAppUnits = {
            type = "union",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        WebAppEndpointPolicy = {
            type = "string",
        },
        EndpointDetails = {
            type = "union",
        },
    },
}

M.CreateWebAppOutput = {
    type = "structure",
    members = {
        WebAppId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomStepDetails = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Target = {
            type = "string",
        },
        TimeoutSeconds = {
            type = "number",
        },
        SourceFileLocation = {
            type = "string",
        },
    },
}

M.EncryptionType = {
    PGP = "PGP",
}

M.DecryptStepDetails = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceFileLocation = {
            type = "string",
        },
        OverwriteExisting = {
            type = "string",
        },
        DestinationFileLocation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteStepDetails = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        SourceFileLocation = {
            type = "string",
        },
    },
}

M.S3Tag = {
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

M.TagStepDetails = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        SourceFileLocation = {
            type = "string",
        },
    },
}

M.WorkflowStepType = {
    COPY = "COPY",
    CUSTOM = "CUSTOM",
    TAG = "TAG",
    DELETE = "DELETE",
    DECRYPT = "DECRYPT",
}

M.WorkflowStep = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        CopyStepDetails = {
            type = "structure",
        },
        CustomStepDetails = {
            type = "structure",
        },
        DeleteStepDetails = {
            type = "structure",
        },
        TagStepDetails = {
            type = "structure",
        },
        DecryptStepDetails = {
            type = "structure",
        },
    },
}

M.CreateWorkflowInput = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        Steps = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        OnExceptionSteps = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateWorkflowOutput = {
    type = "structure",
    members = {
        WorkflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomHttpHeader = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.CustomStepStatus = {
    SUCCESS = "SUCCESS",
    FAILURE = "FAILURE",
}

M.DeleteAccessInput = {
    type = "structure",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExternalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAccessOutput = {
    type = "structure",
}

M.DeleteHostKeyInput = {
    type = "structure",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HostKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteHostKeyOutput = {
    type = "structure",
}

M.DeleteProfileInput = {
    type = "structure",
    members = {
        ProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteProfileOutput = {
    type = "structure",
}

M.DeleteServerInput = {
    type = "structure",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteServerOutput = {
    type = "structure",
}

M.DeleteSshPublicKeyInput = {
    type = "structure",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SshPublicKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSshPublicKeyOutput = {
    type = "structure",
}

M.DeleteUserInput = {
    type = "structure",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteUserOutput = {
    type = "structure",
}

M.DeleteWebAppInput = {
    type = "structure",
    members = {
        WebAppId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWebAppOutput = {
    type = "structure",
}

M.DeleteWebAppCustomizationInput = {
    type = "structure",
    members = {
        WebAppId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWebAppCustomizationOutput = {
    type = "structure",
}

M.DeleteWorkflowInput = {
    type = "structure",
    members = {
        WorkflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWorkflowOutput = {
    type = "structure",
}

M.DescribeAccessInput = {
    type = "structure",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExternalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribedAccess = {
    type = "structure",
    members = {
        HomeDirectory = {
            type = "string",
        },
        HomeDirectoryMappings = {
            type = "list",
            member_type = "structure",
        },
        HomeDirectoryType = {
            type = "string",
        },
        Policy = {
            type = "string",
        },
        PosixProfile = {
            type = "structure",
        },
        Role = {
            type = "string",
        },
        ExternalId = {
            type = "string",
        },
    },
}

M.DescribeAccessOutput = {
    type = "structure",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Access = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.S3FileLocation = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
        },
        Key = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
        Etag = {
            type = "string",
        },
    },
}

M.FileLocation = {
    type = "structure",
    members = {
        S3FileLocation = {
            type = "structure",
        },
        EfsFileLocation = {
            type = "structure",
        },
    },
}

M.LoggingConfiguration = {
    type = "structure",
    members = {
        LoggingRole = {
            type = "string",
        },
        LogGroupName = {
            type = "string",
        },
    },
}

M.ExecutionErrorType = {
    PERMISSION_DENIED = "PERMISSION_DENIED",
    CUSTOM_STEP_FAILED = "CUSTOM_STEP_FAILED",
    THROTTLED = "THROTTLED",
    ALREADY_EXISTS = "ALREADY_EXISTS",
    NOT_FOUND = "NOT_FOUND",
    BAD_REQUEST = "BAD_REQUEST",
    TIMEOUT = "TIMEOUT",
    INTERNAL_SERVER_ERROR = "INTERNAL_SERVER_ERROR",
}

M.ExecutionError = {
    type = "structure",
    members = {
        Type = {
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
    },
}

M.ExecutionStepResult = {
    type = "structure",
    members = {
        StepType = {
            type = "string",
        },
        Outputs = {
            type = "string",
        },
        Error = {
            type = "structure",
        },
    },
}

M.ExecutionResults = {
    type = "structure",
    members = {
        Steps = {
            type = "list",
            member_type = "structure",
        },
        OnExceptionSteps = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UserDetails = {
    type = "structure",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SessionId = {
            type = "string",
        },
    },
}

M.ServiceMetadata = {
    type = "structure",
    members = {
        UserDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecutionStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    EXCEPTION = "EXCEPTION",
    HANDLING_EXCEPTION = "HANDLING_EXCEPTION",
}

M.DescribedExecution = {
    type = "structure",
    members = {
        ExecutionId = {
            type = "string",
        },
        InitialFileLocation = {
            type = "structure",
        },
        ServiceMetadata = {
            type = "structure",
        },
        ExecutionRole = {
            type = "string",
        },
        LoggingConfiguration = {
            type = "structure",
        },
        PosixProfile = {
            type = "structure",
        },
        Status = {
            type = "string",
        },
        Results = {
            type = "structure",
        },
    },
}

M.DescribedHostKey = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HostKeyId = {
            type = "string",
        },
        HostKeyFingerprint = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        DateImported = {
            type = "timestamp",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribedIdentityCenterConfig = {
    type = "structure",
    members = {
        ApplicationArn = {
            type = "string",
        },
        InstanceArn = {
            type = "string",
        },
        Role = {
            type = "string",
        },
    },
}

M.DescribedProfile = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProfileId = {
            type = "string",
        },
        ProfileType = {
            type = "string",
        },
        As2Id = {
            type = "string",
        },
        CertificateIds = {
            type = "list",
            member_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SecurityPolicyProtocol = {
    SFTP = "SFTP",
    FTPS = "FTPS",
}

M.SecurityPolicyResourceType = {
    SERVER = "SERVER",
    CONNECTOR = "CONNECTOR",
}

M.DescribedSecurityPolicy = {
    type = "structure",
    members = {
        Fips = {
            type = "boolean",
        },
        SecurityPolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SshCiphers = {
            type = "list",
            member_type = "string",
        },
        SshKexs = {
            type = "list",
            member_type = "string",
        },
        SshMacs = {
            type = "list",
            member_type = "string",
        },
        TlsCiphers = {
            type = "list",
            member_type = "string",
        },
        SshHostKeyAlgorithms = {
            type = "list",
            member_type = "string",
        },
        Type = {
            type = "string",
        },
        Protocols = {
            type = "list",
            member_type = "string",
        },
    },
}

M.State = {
    OFFLINE = "OFFLINE",
    ONLINE = "ONLINE",
    STARTING = "STARTING",
    STOPPING = "STOPPING",
    START_FAILED = "START_FAILED",
    STOP_FAILED = "STOP_FAILED",
}

M.DescribedServer = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Certificate = {
            type = "string",
        },
        ProtocolDetails = {
            type = "structure",
        },
        Domain = {
            type = "string",
        },
        EndpointDetails = {
            type = "structure",
        },
        EndpointType = {
            type = "string",
        },
        HostKeyFingerprint = {
            type = "string",
        },
        IdentityProviderDetails = {
            type = "structure",
        },
        IdentityProviderType = {
            type = "string",
        },
        LoggingRole = {
            type = "string",
        },
        PostAuthenticationLoginBanner = {
            type = "string",
        },
        PreAuthenticationLoginBanner = {
            type = "string",
        },
        Protocols = {
            type = "list",
            member_type = "string",
        },
        SecurityPolicyName = {
            type = "string",
        },
        ServerId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        UserCount = {
            type = "number",
        },
        WorkflowDetails = {
            type = "structure",
        },
        StructuredLogDestinations = {
            type = "list",
            member_type = "string",
        },
        S3StorageOptions = {
            type = "structure",
        },
        As2ServiceManagedEgressIpAddresses = {
            type = "list",
            member_type = "string",
        },
        IpAddressType = {
            type = "string",
        },
    },
}

M.SshPublicKey = {
    type = "structure",
    members = {
        DateImported = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        SshPublicKeyBody = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SshPublicKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribedUser = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HomeDirectory = {
            type = "string",
        },
        HomeDirectoryMappings = {
            type = "list",
            member_type = "structure",
        },
        HomeDirectoryType = {
            type = "string",
        },
        Policy = {
            type = "string",
        },
        PosixProfile = {
            type = "structure",
        },
        Role = {
            type = "string",
        },
        SshPublicKeys = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        UserName = {
            type = "string",
        },
    },
}

M.DescribedWebAppVpcConfig = {
    type = "structure",
    members = {
        SubnetIds = {
            type = "list",
            member_type = "string",
        },
        VpcId = {
            type = "string",
        },
        VpcEndpointId = {
            type = "string",
        },
    },
}

M.DescribedWebAppEndpointDetails = {
    type = "union",
    members = {
        Vpc = {
            type = "structure",
        },
    },
}

M.DescribedWebAppIdentityProviderDetails = {
    type = "union",
    members = {
        IdentityCenterConfig = {
            type = "structure",
        },
    },
}

M.WebAppEndpointType = {
    PUBLIC = "PUBLIC",
    VPC = "VPC",
}

M.DescribedWebApp = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WebAppId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DescribedIdentityProviderDetails = {
            type = "union",
        },
        AccessEndpoint = {
            type = "string",
        },
        WebAppEndpoint = {
            type = "string",
        },
        WebAppUnits = {
            type = "union",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        WebAppEndpointPolicy = {
            type = "string",
        },
        EndpointType = {
            type = "string",
        },
        DescribedEndpointDetails = {
            type = "union",
        },
    },
}

M.DescribedWebAppCustomization = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WebAppId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
        },
        LogoFile = {
            type = "blob",
        },
        FaviconFile = {
            type = "blob",
        },
    },
}

M.DescribedWorkflow = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Steps = {
            type = "list",
            member_type = "structure",
        },
        OnExceptionSteps = {
            type = "list",
            member_type = "structure",
        },
        WorkflowId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeExecutionInput = {
    type = "structure",
    members = {
        ExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeExecutionOutput = {
    type = "structure",
    members = {
        WorkflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Execution = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeHostKeyInput = {
    type = "structure",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HostKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeHostKeyOutput = {
    type = "structure",
    members = {
        HostKey = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeProfileInput = {
    type = "structure",
    members = {
        ProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeProfileOutput = {
    type = "structure",
    members = {
        Profile = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeSecurityPolicyInput = {
    type = "structure",
    members = {
        SecurityPolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeSecurityPolicyOutput = {
    type = "structure",
    members = {
        SecurityPolicy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeServerInput = {
    type = "structure",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeServerOutput = {
    type = "structure",
    members = {
        Server = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeUserInput = {
    type = "structure",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeUserOutput = {
    type = "structure",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        User = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeWebAppInput = {
    type = "structure",
    members = {
        WebAppId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeWebAppOutput = {
    type = "structure",
    members = {
        WebApp = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeWebAppCustomizationInput = {
    type = "structure",
    members = {
        WebAppId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeWebAppCustomizationOutput = {
    type = "structure",
    members = {
        WebAppCustomization = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeWorkflowInput = {
    type = "structure",
    members = {
        WorkflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeWorkflowOutput = {
    type = "structure",
    members = {
        Workflow = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportHostKeyInput = {
    type = "structure",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HostKeyBody = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ImportHostKeyOutput = {
    type = "structure",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HostKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportSshPublicKeyInput = {
    type = "structure",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SshPublicKeyBody = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportSshPublicKeyOutput = {
    type = "structure",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SshPublicKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAccessesInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListedAccess = {
    type = "structure",
    members = {
        HomeDirectory = {
            type = "string",
        },
        HomeDirectoryType = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        ExternalId = {
            type = "string",
        },
    },
}

M.ListAccessesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Accesses = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListedExecution = {
    type = "structure",
    members = {
        ExecutionId = {
            type = "string",
        },
        InitialFileLocation = {
            type = "structure",
        },
        ServiceMetadata = {
            type = "structure",
        },
        Status = {
            type = "string",
        },
    },
}

M.ListedHostKey = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HostKeyId = {
            type = "string",
        },
        Fingerprint = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        DateImported = {
            type = "timestamp",
        },
    },
}

M.ListedProfile = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        ProfileId = {
            type = "string",
        },
        As2Id = {
            type = "string",
        },
        ProfileType = {
            type = "string",
        },
    },
}

M.ListedServer = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Domain = {
            type = "string",
        },
        IdentityProviderType = {
            type = "string",
        },
        EndpointType = {
            type = "string",
        },
        LoggingRole = {
            type = "string",
        },
        ServerId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        UserCount = {
            type = "number",
        },
    },
}

M.ListedUser = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HomeDirectory = {
            type = "string",
        },
        HomeDirectoryType = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        SshPublicKeyCount = {
            type = "number",
        },
        UserName = {
            type = "string",
        },
    },
}

M.ListedWebApp = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WebAppId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccessEndpoint = {
            type = "string",
        },
        WebAppEndpoint = {
            type = "string",
        },
        EndpointType = {
            type = "string",
        },
    },
}

M.ListedWorkflow = {
    type = "structure",
    members = {
        WorkflowId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.ListExecutionsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        WorkflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListExecutionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        WorkflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Executions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListFileTransferResultsInput = {
    type = "structure",
    members = {
        ConnectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TransferId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListFileTransferResultsOutput = {
    type = "structure",
    members = {
        FileTransferResults = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListHostKeysInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListHostKeysOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HostKeys = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListProfilesInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        ProfileType = {
            type = "string",
        },
    },
}

M.ListProfilesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Profiles = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListSecurityPoliciesInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSecurityPoliciesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        SecurityPolicyNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListServersInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListServersOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Servers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListUsersInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListUsersOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Users = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListWebAppsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListWebAppsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        WebApps = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListWorkflowsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListWorkflowsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Workflows = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateProfileInput = {
    type = "structure",
    members = {
        ProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CertificateIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UpdateProfileOutput = {
    type = "structure",
    members = {
        ProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SendWorkflowStepStateInput = {
    type = "structure",
    members = {
        WorkflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExecutionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Token = {
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

M.SendWorkflowStepStateOutput = {
    type = "structure",
}

M.UpdateServerInput = {
    type = "structure",
    members = {
        Certificate = {
            type = "string",
        },
        ProtocolDetails = {
            type = "structure",
        },
        EndpointDetails = {
            type = "structure",
        },
        EndpointType = {
            type = "string",
        },
        HostKey = {
            type = "string",
        },
        IdentityProviderDetails = {
            type = "structure",
        },
        LoggingRole = {
            type = "string",
        },
        PostAuthenticationLoginBanner = {
            type = "string",
        },
        PreAuthenticationLoginBanner = {
            type = "string",
        },
        Protocols = {
            type = "list",
            member_type = "string",
        },
        SecurityPolicyName = {
            type = "string",
        },
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkflowDetails = {
            type = "structure",
        },
        StructuredLogDestinations = {
            type = "list",
            member_type = "string",
        },
        S3StorageOptions = {
            type = "structure",
        },
        IpAddressType = {
            type = "string",
        },
        IdentityProviderType = {
            type = "string",
        },
    },
}

M.UpdateServerOutput = {
    type = "structure",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SftpConnectorConnectionDetails = {
    type = "structure",
    members = {
        HostKey = {
            type = "string",
        },
    },
}

M.StartDirectoryListingInput = {
    type = "structure",
    members = {
        ConnectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RemoteDirectoryPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxItems = {
            type = "number",
        },
        OutputDirectoryPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartDirectoryListingOutput = {
    type = "structure",
    members = {
        ListingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputFileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartFileTransferInput = {
    type = "structure",
    members = {
        ConnectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SendFilePaths = {
            type = "list",
            member_type = "string",
        },
        RetrieveFilePaths = {
            type = "list",
            member_type = "string",
        },
        LocalDirectoryPath = {
            type = "string",
        },
        RemoteDirectoryPath = {
            type = "string",
        },
        CustomHttpHeaders = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StartFileTransferOutput = {
    type = "structure",
    members = {
        TransferId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartRemoteDeleteInput = {
    type = "structure",
    members = {
        ConnectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeletePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartRemoteDeleteOutput = {
    type = "structure",
    members = {
        DeleteId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartRemoteMoveInput = {
    type = "structure",
    members = {
        ConnectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourcePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartRemoteMoveOutput = {
    type = "structure",
    members = {
        MoveId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartServerInput = {
    type = "structure",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartServerOutput = {
    type = "structure",
}

M.StopServerInput = {
    type = "structure",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopServerOutput = {
    type = "structure",
}

M.TagResourceInput = {
    type = "structure",
    members = {
        Arn = {
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

M.TestConnectionInput = {
    type = "structure",
    members = {
        ConnectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TestConnectionOutput = {
    type = "structure",
    members = {
        ConnectorId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        SftpConnectionDetails = {
            type = "structure",
        },
    },
}

M.TestIdentityProviderInput = {
    type = "structure",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServerProtocol = {
            type = "string",
        },
        SourceIp = {
            type = "string",
        },
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserPassword = {
            type = "string",
        },
    },
}

M.TestIdentityProviderOutput = {
    type = "structure",
    members = {
        Response = {
            type = "string",
        },
        StatusCode = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
        Url = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        Arn = {
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

M.UpdateAccessInput = {
    type = "structure",
    members = {
        HomeDirectory = {
            type = "string",
        },
        HomeDirectoryType = {
            type = "string",
        },
        HomeDirectoryMappings = {
            type = "list",
            member_type = "structure",
        },
        Policy = {
            type = "string",
        },
        PosixProfile = {
            type = "structure",
        },
        Role = {
            type = "string",
        },
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExternalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAccessOutput = {
    type = "structure",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExternalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateHostKeyInput = {
    type = "structure",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HostKeyId = {
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
    },
}

M.UpdateHostKeyOutput = {
    type = "structure",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HostKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateUserInput = {
    type = "structure",
    members = {
        HomeDirectory = {
            type = "string",
        },
        HomeDirectoryType = {
            type = "string",
        },
        HomeDirectoryMappings = {
            type = "list",
            member_type = "structure",
        },
        Policy = {
            type = "string",
        },
        PosixProfile = {
            type = "structure",
        },
        Role = {
            type = "string",
        },
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateUserOutput = {
    type = "structure",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateWebAppCustomizationInput = {
    type = "structure",
    members = {
        WebAppId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
        },
        LogoFile = {
            type = "blob",
        },
        FaviconFile = {
            type = "blob",
        },
    },
}

M.UpdateWebAppCustomizationOutput = {
    type = "structure",
    members = {
        WebAppId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateWebAppVpcConfig = {
    type = "structure",
    members = {
        SubnetIds = {
            type = "list",
            member_type = "string",
        },
        IpAddressType = {
            type = "string",
        },
    },
}

M.UpdateWebAppEndpointDetails = {
    type = "union",
    members = {
        Vpc = {
            type = "structure",
        },
    },
}

M.UpdateWebAppIdentityCenterConfig = {
    type = "structure",
    members = {
        Role = {
            type = "string",
        },
    },
}

M.UpdateWebAppIdentityProviderDetails = {
    type = "union",
    members = {
        IdentityCenterConfig = {
            type = "structure",
        },
    },
}

M.UpdateWebAppInput = {
    type = "structure",
    members = {
        WebAppId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityProviderDetails = {
            type = "union",
        },
        AccessEndpoint = {
            type = "string",
        },
        WebAppUnits = {
            type = "union",
        },
        EndpointDetails = {
            type = "union",
        },
    },
}

M.UpdateWebAppOutput = {
    type = "structure",
    members = {
        WebAppId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

return M
