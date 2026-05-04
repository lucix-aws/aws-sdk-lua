local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CustomDirectoriesType = {
    type = "structure",
    id = "CustomDirectoriesType",
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

M.CreateAgreementInput = {
    type = "structure",
    id = "CreateAgreementInput",
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
            member = M.Tag,
        },
        PreserveFilename = {
            type = "string",
        },
        EnforceMessageSigning = {
            type = "string",
        },
        CustomDirectories = M.CustomDirectoriesType,
    },
}

M.CreateAgreementOutput = {
    type = "structure",
    id = "CreateAgreementOutput",
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
    id = "InternalServiceError",
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
    id = "InvalidRequestException",
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
    id = "ResourceExistsException",
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
    id = "ResourceNotFoundException",
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
    id = "ServiceUnavailableException",
    error = "server",
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
    id = "DeleteAgreementInput",
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
    id = "DeleteAgreementOutput",
}

M.DescribeAgreementInput = {
    type = "structure",
    id = "DescribeAgreementInput",
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
    id = "DescribedAgreement",
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
            member = M.Tag,
        },
        PreserveFilename = {
            type = "string",
        },
        EnforceMessageSigning = {
            type = "string",
        },
        CustomDirectories = M.CustomDirectoriesType,
    },
}

M.DescribeAgreementOutput = {
    type = "structure",
    id = "DescribeAgreementOutput",
    members = {
        Agreement = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DescribedAgreement }),
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    id = "InvalidNextTokenException",
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
    id = "ListAgreementsInput",
    members = {
        MaxResults = {
            type = "integer",
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
    id = "ListedAgreement",
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
    id = "ListAgreementsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Agreements = {
            type = "list",
            member = M.ListedAgreement,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAgreementInput = {
    type = "structure",
    id = "UpdateAgreementInput",
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
        CustomDirectories = M.CustomDirectoriesType,
    },
}

M.UpdateAgreementOutput = {
    type = "structure",
    id = "UpdateAgreementOutput",
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
    id = "As2AsyncMdnConnectorConfig",
    members = {
        Url = {
            type = "string",
        },
        ServerIds = {
            type = "list",
            member = { type = "string" },
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
    id = "As2ConnectorConfig",
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
        AsyncMdnConfig = M.As2AsyncMdnConnectorConfig,
    },
}

M.As2Transport = {
    HTTP = "HTTP",
}

M.DeleteCertificateInput = {
    type = "structure",
    id = "DeleteCertificateInput",
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
    id = "DeleteCertificateOutput",
}

M.DescribeCertificateInput = {
    type = "structure",
    id = "DescribeCertificateInput",
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
    id = "DescribedCertificate",
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
            member = M.Tag,
        },
    },
}

M.DescribeCertificateOutput = {
    type = "structure",
    id = "DescribeCertificateOutput",
    members = {
        Certificate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DescribedCertificate }),
    },
}

M.ImportCertificateInput = {
    type = "structure",
    id = "ImportCertificateInput",
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
            member = M.Tag,
        },
    },
}

M.ImportCertificateOutput = {
    type = "structure",
    id = "ImportCertificateOutput",
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
    id = "ListCertificatesInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListedCertificate = {
    type = "structure",
    id = "ListedCertificate",
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
    id = "ListCertificatesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Certificates = {
            type = "list",
            member = M.ListedCertificate,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCertificateInput = {
    type = "structure",
    id = "UpdateCertificateInput",
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
    id = "UpdateCertificateOutput",
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
    id = "ConflictException",
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
    id = "ConnectorVpcLatticeEgressConfig",
    members = {
        ResourceConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PortNumber = {
            type = "integer",
        },
    },
}

M.ConnectorEgressConfig = {
    type = "union",
    id = "ConnectorEgressConfig",
    members = {
        VpcLattice = M.ConnectorVpcLatticeEgressConfig,
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
    id = "ConnectorFileTransferResult",
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
    id = "SftpConnectorConfig",
    members = {
        UserSecretId = {
            type = "string",
        },
        TrustedHostKeys = {
            type = "list",
            member = { type = "string" },
        },
        MaxConcurrentConnections = {
            type = "integer",
            traits = {
                default = 1,
            },
        },
    },
}

M.CreateConnectorInput = {
    type = "structure",
    id = "CreateConnectorInput",
    members = {
        Url = {
            type = "string",
        },
        As2Config = M.As2ConnectorConfig,
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
            member = M.Tag,
        },
        SftpConfig = M.SftpConnectorConfig,
        SecurityPolicyName = {
            type = "string",
        },
        EgressConfig = M.ConnectorEgressConfig,
        IpAddressType = {
            type = "string",
        },
    },
}

M.CreateConnectorOutput = {
    type = "structure",
    id = "CreateConnectorOutput",
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
    id = "DeleteConnectorInput",
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
    id = "DeleteConnectorOutput",
}

M.DescribeConnectorInput = {
    type = "structure",
    id = "DescribeConnectorInput",
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
    id = "DescribedConnectorVpcLatticeEgressConfig",
    members = {
        ResourceConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PortNumber = {
            type = "integer",
        },
    },
}

M.DescribedConnectorEgressConfig = {
    type = "union",
    id = "DescribedConnectorEgressConfig",
    members = {
        VpcLattice = M.DescribedConnectorVpcLatticeEgressConfig,
    },
}

M.ConnectorStatus = {
    ACTIVE = "ACTIVE",
    ERRORED = "ERRORED",
    PENDING = "PENDING",
}

M.DescribedConnector = {
    type = "structure",
    id = "DescribedConnector",
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
        As2Config = M.As2ConnectorConfig,
        AccessRole = {
            type = "string",
        },
        LoggingRole = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        SftpConfig = M.SftpConnectorConfig,
        ServiceManagedEgressIpAddresses = {
            type = "list",
            member = { type = "string" },
        },
        SecurityPolicyName = {
            type = "string",
        },
        EgressConfig = M.DescribedConnectorEgressConfig,
        EgressType = {
            type = "string",
            traits = {
                default = "SERVICE_MANAGED",
                required = true,
            },
        },
        ErrorMessage = {
            type = "string",
        },
        Status = {
            type = "string",
            traits = {
                default = "ACTIVE",
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
    id = "DescribeConnectorOutput",
    members = {
        Connector = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DescribedConnector }),
    },
}

M.ListConnectorsInput = {
    type = "structure",
    id = "ListConnectorsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListedConnector = {
    type = "structure",
    id = "ListedConnector",
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
    id = "ListConnectorsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Connectors = {
            type = "list",
            member = M.ListedConnector,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateConnectorVpcLatticeEgressConfig = {
    type = "structure",
    id = "UpdateConnectorVpcLatticeEgressConfig",
    members = {
        ResourceConfigurationArn = {
            type = "string",
        },
        PortNumber = {
            type = "integer",
        },
    },
}

M.UpdateConnectorEgressConfig = {
    type = "union",
    id = "UpdateConnectorEgressConfig",
    members = {
        VpcLattice = M.UpdateConnectorVpcLatticeEgressConfig,
    },
}

M.UpdateConnectorInput = {
    type = "structure",
    id = "UpdateConnectorInput",
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
        As2Config = M.As2ConnectorConfig,
        AccessRole = {
            type = "string",
        },
        LoggingRole = {
            type = "string",
        },
        SftpConfig = M.SftpConnectorConfig,
        SecurityPolicyName = {
            type = "string",
        },
        EgressConfig = M.UpdateConnectorEgressConfig,
        IpAddressType = {
            type = "string",
        },
    },
}

M.UpdateConnectorOutput = {
    type = "structure",
    id = "UpdateConnectorOutput",
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
    id = "EfsFileLocation",
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
    id = "S3InputFileLocation",
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
    id = "InputFileLocation",
    members = {
        S3FileLocation = M.S3InputFileLocation,
        EfsFileLocation = M.EfsFileLocation,
    },
}

M.OverwriteExisting = {
    TRUE = "TRUE",
    FALSE = "FALSE",
}

M.CopyStepDetails = {
    type = "structure",
    id = "CopyStepDetails",
    members = {
        Name = {
            type = "string",
        },
        DestinationFileLocation = M.InputFileLocation,
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
    id = "HomeDirectoryMapEntry",
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
    id = "PosixProfile",
    members = {
        Uid = {
            type = "long",
            traits = {
                required = true,
            },
        },
        Gid = {
            type = "long",
            traits = {
                required = true,
            },
        },
        SecondaryGids = {
            type = "list",
            member = { type = "long" },
        },
    },
}

M.CreateAccessInput = {
    type = "structure",
    id = "CreateAccessInput",
    members = {
        HomeDirectory = {
            type = "string",
        },
        HomeDirectoryType = {
            type = "string",
        },
        HomeDirectoryMappings = {
            type = "list",
            member = M.HomeDirectoryMapEntry,
        },
        Policy = {
            type = "string",
        },
        PosixProfile = M.PosixProfile,
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
    id = "CreateAccessOutput",
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
    id = "CreateProfileInput",
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
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateProfileOutput = {
    type = "structure",
    id = "CreateProfileOutput",
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
    id = "EndpointDetails",
    members = {
        AddressAllocationIds = {
            type = "list",
            member = { type = "string" },
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        VpcEndpointId = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
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
    id = "IdentityProviderDetails",
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
    id = "ProtocolDetails",
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
            member = { type = "string" },
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
    id = "S3StorageOptions",
    members = {
        DirectoryListingOptimization = {
            type = "string",
        },
    },
}

M.WorkflowDetail = {
    type = "structure",
    id = "WorkflowDetail",
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
    id = "WorkflowDetails",
    members = {
        OnUpload = {
            type = "list",
            member = M.WorkflowDetail,
        },
        OnPartialUpload = {
            type = "list",
            member = M.WorkflowDetail,
        },
    },
}

M.CreateServerInput = {
    type = "structure",
    id = "CreateServerInput",
    members = {
        Certificate = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
        EndpointDetails = M.EndpointDetails,
        EndpointType = {
            type = "string",
        },
        HostKey = {
            type = "string",
        },
        IdentityProviderDetails = M.IdentityProviderDetails,
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
            member = { type = "string" },
        },
        ProtocolDetails = M.ProtocolDetails,
        SecurityPolicyName = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        WorkflowDetails = M.WorkflowDetails,
        StructuredLogDestinations = {
            type = "list",
            member = { type = "string" },
        },
        S3StorageOptions = M.S3StorageOptions,
        IpAddressType = {
            type = "string",
        },
    },
}

M.CreateServerOutput = {
    type = "structure",
    id = "CreateServerOutput",
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
    id = "CreateUserInput",
    members = {
        HomeDirectory = {
            type = "string",
        },
        HomeDirectoryType = {
            type = "string",
        },
        HomeDirectoryMappings = {
            type = "list",
            member = M.HomeDirectoryMapEntry,
        },
        Policy = {
            type = "string",
        },
        PosixProfile = M.PosixProfile,
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
            member = M.Tag,
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
    id = "CreateUserOutput",
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
    id = "WebAppVpcConfig",
    members = {
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        VpcId = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        IpAddressType = {
            type = "string",
        },
    },
}

M.WebAppEndpointDetails = {
    type = "union",
    id = "WebAppEndpointDetails",
    members = {
        Vpc = M.WebAppVpcConfig,
    },
}

M.IdentityCenterConfig = {
    type = "structure",
    id = "IdentityCenterConfig",
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
    id = "WebAppIdentityProviderDetails",
    members = {
        IdentityCenterConfig = M.IdentityCenterConfig,
    },
}

M.WebAppEndpointPolicy = {
    FIPS = "FIPS",
    STANDARD = "STANDARD",
}

M.WebAppUnits = {
    type = "union",
    id = "WebAppUnits",
    members = {
        Provisioned = {
            type = "integer",
        },
    },
}

M.CreateWebAppInput = {
    type = "structure",
    id = "CreateWebAppInput",
    members = {
        IdentityProviderDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WebAppIdentityProviderDetails }),
        AccessEndpoint = {
            type = "string",
        },
        WebAppUnits = M.WebAppUnits,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        WebAppEndpointPolicy = {
            type = "string",
        },
        EndpointDetails = M.WebAppEndpointDetails,
    },
}

M.CreateWebAppOutput = {
    type = "structure",
    id = "CreateWebAppOutput",
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
    id = "CustomStepDetails",
    members = {
        Name = {
            type = "string",
        },
        Target = {
            type = "string",
        },
        TimeoutSeconds = {
            type = "integer",
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
    id = "DecryptStepDetails",
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
        DestinationFileLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputFileLocation }),
    },
}

M.DeleteStepDetails = {
    type = "structure",
    id = "DeleteStepDetails",
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
    id = "S3Tag",
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
    id = "TagStepDetails",
    members = {
        Name = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.S3Tag,
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
    id = "WorkflowStep",
    members = {
        Type = {
            type = "string",
        },
        CopyStepDetails = M.CopyStepDetails,
        CustomStepDetails = M.CustomStepDetails,
        DeleteStepDetails = M.DeleteStepDetails,
        TagStepDetails = M.TagStepDetails,
        DecryptStepDetails = M.DecryptStepDetails,
    },
}

M.CreateWorkflowInput = {
    type = "structure",
    id = "CreateWorkflowInput",
    members = {
        Description = {
            type = "string",
        },
        Steps = {
            type = "list",
            member = M.WorkflowStep,
            traits = {
                required = true,
            },
        },
        OnExceptionSteps = {
            type = "list",
            member = M.WorkflowStep,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateWorkflowOutput = {
    type = "structure",
    id = "CreateWorkflowOutput",
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
    id = "CustomHttpHeader",
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
    id = "DeleteAccessInput",
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
    id = "DeleteAccessOutput",
}

M.DeleteHostKeyInput = {
    type = "structure",
    id = "DeleteHostKeyInput",
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
    id = "DeleteHostKeyOutput",
}

M.DeleteProfileInput = {
    type = "structure",
    id = "DeleteProfileInput",
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
    id = "DeleteProfileOutput",
}

M.DeleteServerInput = {
    type = "structure",
    id = "DeleteServerInput",
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
    id = "DeleteServerOutput",
}

M.DeleteSshPublicKeyInput = {
    type = "structure",
    id = "DeleteSshPublicKeyInput",
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
    id = "DeleteSshPublicKeyOutput",
}

M.DeleteUserInput = {
    type = "structure",
    id = "DeleteUserInput",
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
    id = "DeleteUserOutput",
}

M.DeleteWebAppInput = {
    type = "structure",
    id = "DeleteWebAppInput",
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
    id = "DeleteWebAppOutput",
}

M.DeleteWebAppCustomizationInput = {
    type = "structure",
    id = "DeleteWebAppCustomizationInput",
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
    id = "DeleteWebAppCustomizationOutput",
}

M.DeleteWorkflowInput = {
    type = "structure",
    id = "DeleteWorkflowInput",
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
    id = "DeleteWorkflowOutput",
}

M.DescribeAccessInput = {
    type = "structure",
    id = "DescribeAccessInput",
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
    id = "DescribedAccess",
    members = {
        HomeDirectory = {
            type = "string",
        },
        HomeDirectoryMappings = {
            type = "list",
            member = M.HomeDirectoryMapEntry,
        },
        HomeDirectoryType = {
            type = "string",
        },
        Policy = {
            type = "string",
        },
        PosixProfile = M.PosixProfile,
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
    id = "DescribeAccessOutput",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Access = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DescribedAccess }),
    },
}

M.S3FileLocation = {
    type = "structure",
    id = "S3FileLocation",
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
    id = "FileLocation",
    members = {
        S3FileLocation = M.S3FileLocation,
        EfsFileLocation = M.EfsFileLocation,
    },
}

M.LoggingConfiguration = {
    type = "structure",
    id = "LoggingConfiguration",
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
    id = "ExecutionError",
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
    id = "ExecutionStepResult",
    members = {
        StepType = {
            type = "string",
        },
        Outputs = {
            type = "string",
        },
        Error = M.ExecutionError,
    },
}

M.ExecutionResults = {
    type = "structure",
    id = "ExecutionResults",
    members = {
        Steps = {
            type = "list",
            member = M.ExecutionStepResult,
        },
        OnExceptionSteps = {
            type = "list",
            member = M.ExecutionStepResult,
        },
    },
}

M.UserDetails = {
    type = "structure",
    id = "UserDetails",
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
    id = "ServiceMetadata",
    members = {
        UserDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UserDetails }),
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
    id = "DescribedExecution",
    members = {
        ExecutionId = {
            type = "string",
        },
        InitialFileLocation = M.FileLocation,
        ServiceMetadata = M.ServiceMetadata,
        ExecutionRole = {
            type = "string",
        },
        LoggingConfiguration = M.LoggingConfiguration,
        PosixProfile = M.PosixProfile,
        Status = {
            type = "string",
        },
        Results = M.ExecutionResults,
    },
}

M.DescribedHostKey = {
    type = "structure",
    id = "DescribedHostKey",
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
            member = M.Tag,
        },
    },
}

M.DescribedIdentityCenterConfig = {
    type = "structure",
    id = "DescribedIdentityCenterConfig",
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
    id = "DescribedProfile",
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
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
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
    id = "DescribedSecurityPolicy",
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
            member = { type = "string" },
        },
        SshKexs = {
            type = "list",
            member = { type = "string" },
        },
        SshMacs = {
            type = "list",
            member = { type = "string" },
        },
        TlsCiphers = {
            type = "list",
            member = { type = "string" },
        },
        SshHostKeyAlgorithms = {
            type = "list",
            member = { type = "string" },
        },
        Type = {
            type = "string",
        },
        Protocols = {
            type = "list",
            member = { type = "string" },
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
    id = "DescribedServer",
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
        ProtocolDetails = M.ProtocolDetails,
        Domain = {
            type = "string",
        },
        EndpointDetails = M.EndpointDetails,
        EndpointType = {
            type = "string",
        },
        HostKeyFingerprint = {
            type = "string",
        },
        IdentityProviderDetails = M.IdentityProviderDetails,
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
            member = { type = "string" },
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
            member = M.Tag,
        },
        UserCount = {
            type = "integer",
        },
        WorkflowDetails = M.WorkflowDetails,
        StructuredLogDestinations = {
            type = "list",
            member = { type = "string" },
        },
        S3StorageOptions = M.S3StorageOptions,
        As2ServiceManagedEgressIpAddresses = {
            type = "list",
            member = { type = "string" },
        },
        IpAddressType = {
            type = "string",
        },
    },
}

M.SshPublicKey = {
    type = "structure",
    id = "SshPublicKey",
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
    id = "DescribedUser",
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
            member = M.HomeDirectoryMapEntry,
        },
        HomeDirectoryType = {
            type = "string",
        },
        Policy = {
            type = "string",
        },
        PosixProfile = M.PosixProfile,
        Role = {
            type = "string",
        },
        SshPublicKeys = {
            type = "list",
            member = M.SshPublicKey,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        UserName = {
            type = "string",
        },
    },
}

M.DescribedWebAppVpcConfig = {
    type = "structure",
    id = "DescribedWebAppVpcConfig",
    members = {
        SubnetIds = {
            type = "list",
            member = { type = "string" },
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
    id = "DescribedWebAppEndpointDetails",
    members = {
        Vpc = M.DescribedWebAppVpcConfig,
    },
}

M.DescribedWebAppIdentityProviderDetails = {
    type = "union",
    id = "DescribedWebAppIdentityProviderDetails",
    members = {
        IdentityCenterConfig = M.DescribedIdentityCenterConfig,
    },
}

M.WebAppEndpointType = {
    PUBLIC = "PUBLIC",
    VPC = "VPC",
}

M.DescribedWebApp = {
    type = "structure",
    id = "DescribedWebApp",
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
        DescribedIdentityProviderDetails = M.DescribedWebAppIdentityProviderDetails,
        AccessEndpoint = {
            type = "string",
        },
        WebAppEndpoint = {
            type = "string",
        },
        WebAppUnits = M.WebAppUnits,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        WebAppEndpointPolicy = {
            type = "string",
        },
        EndpointType = {
            type = "string",
        },
        DescribedEndpointDetails = M.DescribedWebAppEndpointDetails,
    },
}

M.DescribedWebAppCustomization = {
    type = "structure",
    id = "DescribedWebAppCustomization",
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
    id = "DescribedWorkflow",
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
            member = M.WorkflowStep,
        },
        OnExceptionSteps = {
            type = "list",
            member = M.WorkflowStep,
        },
        WorkflowId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DescribeExecutionInput = {
    type = "structure",
    id = "DescribeExecutionInput",
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
    id = "DescribeExecutionOutput",
    members = {
        WorkflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Execution = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DescribedExecution }),
    },
}

M.DescribeHostKeyInput = {
    type = "structure",
    id = "DescribeHostKeyInput",
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
    id = "DescribeHostKeyOutput",
    members = {
        HostKey = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DescribedHostKey }),
    },
}

M.DescribeProfileInput = {
    type = "structure",
    id = "DescribeProfileInput",
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
    id = "DescribeProfileOutput",
    members = {
        Profile = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DescribedProfile }),
    },
}

M.DescribeSecurityPolicyInput = {
    type = "structure",
    id = "DescribeSecurityPolicyInput",
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
    id = "DescribeSecurityPolicyOutput",
    members = {
        SecurityPolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DescribedSecurityPolicy }),
    },
}

M.DescribeServerInput = {
    type = "structure",
    id = "DescribeServerInput",
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
    id = "DescribeServerOutput",
    members = {
        Server = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DescribedServer }),
    },
}

M.DescribeUserInput = {
    type = "structure",
    id = "DescribeUserInput",
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
    id = "DescribeUserOutput",
    members = {
        ServerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        User = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DescribedUser }),
    },
}

M.DescribeWebAppInput = {
    type = "structure",
    id = "DescribeWebAppInput",
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
    id = "DescribeWebAppOutput",
    members = {
        WebApp = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DescribedWebApp }),
    },
}

M.DescribeWebAppCustomizationInput = {
    type = "structure",
    id = "DescribeWebAppCustomizationInput",
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
    id = "DescribeWebAppCustomizationOutput",
    members = {
        WebAppCustomization = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DescribedWebAppCustomization }),
    },
}

M.DescribeWorkflowInput = {
    type = "structure",
    id = "DescribeWorkflowInput",
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
    id = "DescribeWorkflowOutput",
    members = {
        Workflow = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DescribedWorkflow }),
    },
}

M.ImportHostKeyInput = {
    type = "structure",
    id = "ImportHostKeyInput",
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
            member = M.Tag,
        },
    },
}

M.ImportHostKeyOutput = {
    type = "structure",
    id = "ImportHostKeyOutput",
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
    id = "ImportSshPublicKeyInput",
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
    id = "ImportSshPublicKeyOutput",
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
    id = "ListAccessesInput",
    members = {
        MaxResults = {
            type = "integer",
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
    id = "ListedAccess",
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
    id = "ListAccessesOutput",
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
            member = M.ListedAccess,
            traits = {
                required = true,
            },
        },
    },
}

M.ListedExecution = {
    type = "structure",
    id = "ListedExecution",
    members = {
        ExecutionId = {
            type = "string",
        },
        InitialFileLocation = M.FileLocation,
        ServiceMetadata = M.ServiceMetadata,
        Status = {
            type = "string",
        },
    },
}

M.ListedHostKey = {
    type = "structure",
    id = "ListedHostKey",
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
    id = "ListedProfile",
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
    id = "ListedServer",
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
            type = "integer",
        },
    },
}

M.ListedUser = {
    type = "structure",
    id = "ListedUser",
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
            type = "integer",
        },
        UserName = {
            type = "string",
        },
    },
}

M.ListedWebApp = {
    type = "structure",
    id = "ListedWebApp",
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
    id = "ListedWorkflow",
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
    id = "ListExecutionsInput",
    members = {
        MaxResults = {
            type = "integer",
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
    id = "ListExecutionsOutput",
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
            member = M.ListedExecution,
            traits = {
                required = true,
            },
        },
    },
}

M.ListFileTransferResultsInput = {
    type = "structure",
    id = "ListFileTransferResultsInput",
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
            type = "integer",
        },
    },
}

M.ListFileTransferResultsOutput = {
    type = "structure",
    id = "ListFileTransferResultsOutput",
    members = {
        FileTransferResults = {
            type = "list",
            member = M.ConnectorFileTransferResult,
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
    id = "ListHostKeysInput",
    members = {
        MaxResults = {
            type = "integer",
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
    id = "ListHostKeysOutput",
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
            member = M.ListedHostKey,
            traits = {
                required = true,
            },
        },
    },
}

M.ListProfilesInput = {
    type = "structure",
    id = "ListProfilesInput",
    members = {
        MaxResults = {
            type = "integer",
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
    id = "ListProfilesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Profiles = {
            type = "list",
            member = M.ListedProfile,
            traits = {
                required = true,
            },
        },
    },
}

M.ListSecurityPoliciesInput = {
    type = "structure",
    id = "ListSecurityPoliciesInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSecurityPoliciesOutput = {
    type = "structure",
    id = "ListSecurityPoliciesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        SecurityPolicyNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ListServersInput = {
    type = "structure",
    id = "ListServersInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListServersOutput = {
    type = "structure",
    id = "ListServersOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Servers = {
            type = "list",
            member = M.ListedServer,
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        Arn = {
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
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        Arn = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListUsersInput = {
    type = "structure",
    id = "ListUsersInput",
    members = {
        MaxResults = {
            type = "integer",
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
    id = "ListUsersOutput",
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
            member = M.ListedUser,
            traits = {
                required = true,
            },
        },
    },
}

M.ListWebAppsInput = {
    type = "structure",
    id = "ListWebAppsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListWebAppsOutput = {
    type = "structure",
    id = "ListWebAppsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        WebApps = {
            type = "list",
            member = M.ListedWebApp,
            traits = {
                required = true,
            },
        },
    },
}

M.ListWorkflowsInput = {
    type = "structure",
    id = "ListWorkflowsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListWorkflowsOutput = {
    type = "structure",
    id = "ListWorkflowsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Workflows = {
            type = "list",
            member = M.ListedWorkflow,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateProfileInput = {
    type = "structure",
    id = "UpdateProfileInput",
    members = {
        ProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CertificateIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateProfileOutput = {
    type = "structure",
    id = "UpdateProfileOutput",
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
    id = "SendWorkflowStepStateInput",
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
    id = "SendWorkflowStepStateOutput",
}

M.UpdateServerInput = {
    type = "structure",
    id = "UpdateServerInput",
    members = {
        Certificate = {
            type = "string",
        },
        ProtocolDetails = M.ProtocolDetails,
        EndpointDetails = M.EndpointDetails,
        EndpointType = {
            type = "string",
        },
        HostKey = {
            type = "string",
        },
        IdentityProviderDetails = M.IdentityProviderDetails,
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
            member = { type = "string" },
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
        WorkflowDetails = M.WorkflowDetails,
        StructuredLogDestinations = {
            type = "list",
            member = { type = "string" },
        },
        S3StorageOptions = M.S3StorageOptions,
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
    id = "UpdateServerOutput",
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
    id = "SftpConnectorConnectionDetails",
    members = {
        HostKey = {
            type = "string",
        },
    },
}

M.StartDirectoryListingInput = {
    type = "structure",
    id = "StartDirectoryListingInput",
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
            type = "integer",
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
    id = "StartDirectoryListingOutput",
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
    id = "StartFileTransferInput",
    members = {
        ConnectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SendFilePaths = {
            type = "list",
            member = { type = "string" },
        },
        RetrieveFilePaths = {
            type = "list",
            member = { type = "string" },
        },
        LocalDirectoryPath = {
            type = "string",
        },
        RemoteDirectoryPath = {
            type = "string",
        },
        CustomHttpHeaders = {
            type = "list",
            member = M.CustomHttpHeader,
        },
    },
}

M.StartFileTransferOutput = {
    type = "structure",
    id = "StartFileTransferOutput",
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
    id = "StartRemoteDeleteInput",
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
    id = "StartRemoteDeleteOutput",
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
    id = "StartRemoteMoveInput",
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
    id = "StartRemoteMoveOutput",
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
    id = "StartServerInput",
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
    id = "StartServerOutput",
}

M.StopServerInput = {
    type = "structure",
    id = "StopServerInput",
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
    id = "StopServerOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        Arn = {
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

M.TestConnectionInput = {
    type = "structure",
    id = "TestConnectionInput",
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
    id = "TestConnectionOutput",
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
        SftpConnectionDetails = M.SftpConnectorConnectionDetails,
    },
}

M.TestIdentityProviderInput = {
    type = "structure",
    id = "TestIdentityProviderInput",
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
    id = "TestIdentityProviderOutput",
    members = {
        Response = {
            type = "string",
        },
        StatusCode = {
            type = "integer",
            traits = {
                default = 0,
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
    id = "UntagResourceInput",
    members = {
        Arn = {
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

M.UpdateAccessInput = {
    type = "structure",
    id = "UpdateAccessInput",
    members = {
        HomeDirectory = {
            type = "string",
        },
        HomeDirectoryType = {
            type = "string",
        },
        HomeDirectoryMappings = {
            type = "list",
            member = M.HomeDirectoryMapEntry,
        },
        Policy = {
            type = "string",
        },
        PosixProfile = M.PosixProfile,
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
    id = "UpdateAccessOutput",
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
    id = "UpdateHostKeyInput",
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
    id = "UpdateHostKeyOutput",
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
    id = "UpdateUserInput",
    members = {
        HomeDirectory = {
            type = "string",
        },
        HomeDirectoryType = {
            type = "string",
        },
        HomeDirectoryMappings = {
            type = "list",
            member = M.HomeDirectoryMapEntry,
        },
        Policy = {
            type = "string",
        },
        PosixProfile = M.PosixProfile,
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
    id = "UpdateUserOutput",
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
    id = "UpdateWebAppCustomizationInput",
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
    id = "UpdateWebAppCustomizationOutput",
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
    id = "UpdateWebAppVpcConfig",
    members = {
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        IpAddressType = {
            type = "string",
        },
    },
}

M.UpdateWebAppEndpointDetails = {
    type = "union",
    id = "UpdateWebAppEndpointDetails",
    members = {
        Vpc = M.UpdateWebAppVpcConfig,
    },
}

M.UpdateWebAppIdentityCenterConfig = {
    type = "structure",
    id = "UpdateWebAppIdentityCenterConfig",
    members = {
        Role = {
            type = "string",
        },
    },
}

M.UpdateWebAppIdentityProviderDetails = {
    type = "union",
    id = "UpdateWebAppIdentityProviderDetails",
    members = {
        IdentityCenterConfig = M.UpdateWebAppIdentityCenterConfig,
    },
}

M.UpdateWebAppInput = {
    type = "structure",
    id = "UpdateWebAppInput",
    members = {
        WebAppId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityProviderDetails = M.UpdateWebAppIdentityProviderDetails,
        AccessEndpoint = {
            type = "string",
        },
        WebAppUnits = M.WebAppUnits,
        EndpointDetails = M.UpdateWebAppEndpointDetails,
    },
}

M.UpdateWebAppOutput = {
    type = "structure",
    id = "UpdateWebAppOutput",
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
