local M = {}

M.AssociateCustomDomainInput = {
    type = "structure",
    id = "AssociateCustomDomainInput",
    members = {
        ServiceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EnableWWWSubdomain = {
            type = "boolean",
        },
    },
}

M.CertificateValidationRecordStatus = {
    PENDING_VALIDATION = "PENDING_VALIDATION",
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
}

M.CertificateValidationRecord = {
    type = "structure",
    id = "CertificateValidationRecord",
    members = {
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.CustomDomainAssociationStatus = {
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
    PENDING_CERTIFICATE_DNS_VALIDATION = "PENDING_CERTIFICATE_DNS_VALIDATION",
    BINDING_CERTIFICATE = "BINDING_CERTIFICATE",
}

M.CustomDomain = {
    type = "structure",
    id = "CustomDomain",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EnableWWWSubdomain = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        CertificateValidationRecords = {
            type = "list",
            member = M.CertificateValidationRecord,
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VpcDNSTarget = {
    type = "structure",
    id = "VpcDNSTarget",
    members = {
        VpcIngressConnectionArn = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        DomainName = {
            type = "string",
        },
    },
}

M.AssociateCustomDomainOutput = {
    type = "structure",
    id = "AssociateCustomDomainOutput",
    members = {
        DNSTarget = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CustomDomain = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CustomDomain }),
        VpcDNSTargets = {
            type = "list",
            member = M.VpcDNSTarget,
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServiceErrorException = {
    type = "structure",
    id = "InternalServiceErrorException",
    error = "server",
    members = {
        Message = {
            type = "string",
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
        },
    },
}

M.InvalidStateException = {
    type = "structure",
    id = "InvalidStateException",
    error = "client",
    members = {
        Message = {
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
        },
        Value = {
            type = "string",
        },
    },
}

M.CreateAutoScalingConfigurationInput = {
    type = "structure",
    id = "CreateAutoScalingConfigurationInput",
    members = {
        AutoScalingConfigurationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxConcurrency = {
            type = "integer",
        },
        MinSize = {
            type = "integer",
        },
        MaxSize = {
            type = "integer",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.AutoScalingConfigurationStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.AutoScalingConfiguration = {
    type = "structure",
    id = "AutoScalingConfiguration",
    members = {
        AutoScalingConfigurationArn = {
            type = "string",
        },
        AutoScalingConfigurationName = {
            type = "string",
        },
        AutoScalingConfigurationRevision = {
            type = "integer",
        },
        Latest = {
            type = "boolean",
        },
        Status = {
            type = "string",
        },
        MaxConcurrency = {
            type = "integer",
        },
        MinSize = {
            type = "integer",
        },
        MaxSize = {
            type = "integer",
        },
        CreatedAt = {
            type = "timestamp",
        },
        DeletedAt = {
            type = "timestamp",
        },
        HasAssociatedService = {
            type = "boolean",
        },
        IsDefault = {
            type = "boolean",
        },
    },
}

M.CreateAutoScalingConfigurationOutput = {
    type = "structure",
    id = "CreateAutoScalingConfigurationOutput",
    members = {
        AutoScalingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutoScalingConfiguration }),
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

M.ProviderType = {
    GITHUB = "GITHUB",
    BITBUCKET = "BITBUCKET",
}

M.CreateConnectionInput = {
    type = "structure",
    id = "CreateConnectionInput",
    members = {
        ConnectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProviderType = {
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

M.ConnectionStatus = {
    PENDING_HANDSHAKE = "PENDING_HANDSHAKE",
    AVAILABLE = "AVAILABLE",
    ERROR = "ERROR",
    DELETED = "DELETED",
}

M.Connection = {
    type = "structure",
    id = "Connection",
    members = {
        ConnectionName = {
            type = "string",
        },
        ConnectionArn = {
            type = "string",
        },
        ProviderType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
    },
}

M.CreateConnectionOutput = {
    type = "structure",
    id = "CreateConnectionOutput",
    members = {
        Connection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Connection }),
    },
}

M.TracingVendor = {
    AWSXRAY = "AWSXRAY",
}

M.TraceConfiguration = {
    type = "structure",
    id = "TraceConfiguration",
    members = {
        Vendor = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateObservabilityConfigurationInput = {
    type = "structure",
    id = "CreateObservabilityConfigurationInput",
    members = {
        ObservabilityConfigurationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TraceConfiguration = M.TraceConfiguration,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ObservabilityConfigurationStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.ObservabilityConfiguration = {
    type = "structure",
    id = "ObservabilityConfiguration",
    members = {
        ObservabilityConfigurationArn = {
            type = "string",
        },
        ObservabilityConfigurationName = {
            type = "string",
        },
        TraceConfiguration = M.TraceConfiguration,
        ObservabilityConfigurationRevision = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Latest = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Status = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        DeletedAt = {
            type = "timestamp",
        },
    },
}

M.CreateObservabilityConfigurationOutput = {
    type = "structure",
    id = "CreateObservabilityConfigurationOutput",
    members = {
        ObservabilityConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObservabilityConfiguration }),
    },
}

M.EncryptionConfiguration = {
    type = "structure",
    id = "EncryptionConfiguration",
    members = {
        KmsKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HealthCheckProtocol = {
    TCP = "TCP",
    HTTP = "HTTP",
}

M.HealthCheckConfiguration = {
    type = "structure",
    id = "HealthCheckConfiguration",
    members = {
        Protocol = {
            type = "string",
        },
        Path = {
            type = "string",
        },
        Interval = {
            type = "integer",
        },
        Timeout = {
            type = "integer",
        },
        HealthyThreshold = {
            type = "integer",
        },
        UnhealthyThreshold = {
            type = "integer",
        },
    },
}

M.InstanceConfiguration = {
    type = "structure",
    id = "InstanceConfiguration",
    members = {
        Cpu = {
            type = "string",
        },
        Memory = {
            type = "string",
        },
        InstanceRoleArn = {
            type = "string",
        },
    },
}

M.EgressType = {
    DEFAULT = "DEFAULT",
    VPC = "VPC",
}

M.EgressConfiguration = {
    type = "structure",
    id = "EgressConfiguration",
    members = {
        EgressType = {
            type = "string",
        },
        VpcConnectorArn = {
            type = "string",
        },
    },
}

M.IngressConfiguration = {
    type = "structure",
    id = "IngressConfiguration",
    members = {
        IsPubliclyAccessible = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.IpAddressType = {
    IPV4 = "IPV4",
    DUAL_STACK = "DUAL_STACK",
}

M.NetworkConfiguration = {
    type = "structure",
    id = "NetworkConfiguration",
    members = {
        EgressConfiguration = M.EgressConfiguration,
        IngressConfiguration = M.IngressConfiguration,
        IpAddressType = {
            type = "string",
        },
    },
}

M.ServiceObservabilityConfiguration = {
    type = "structure",
    id = "ServiceObservabilityConfiguration",
    members = {
        ObservabilityEnabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        ObservabilityConfigurationArn = {
            type = "string",
        },
    },
}

M.AuthenticationConfiguration = {
    type = "structure",
    id = "AuthenticationConfiguration",
    members = {
        ConnectionArn = {
            type = "string",
        },
        AccessRoleArn = {
            type = "string",
        },
    },
}

M.Runtime = {
    PYTHON_3 = "PYTHON_3",
    NODEJS_12 = "NODEJS_12",
    NODEJS_14 = "NODEJS_14",
    CORRETTO_8 = "CORRETTO_8",
    CORRETTO_11 = "CORRETTO_11",
    NODEJS_16 = "NODEJS_16",
    GO_1 = "GO_1",
    DOTNET_6 = "DOTNET_6",
    PHP_81 = "PHP_81",
    RUBY_31 = "RUBY_31",
    PYTHON_311 = "PYTHON_311",
    NODEJS_18 = "NODEJS_18",
    NODEJS_22 = "NODEJS_22",
}

M.CodeConfigurationValues = {
    type = "structure",
    id = "CodeConfigurationValues",
    members = {
        Runtime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BuildCommand = {
            type = "string",
        },
        StartCommand = {
            type = "string",
        },
        Port = {
            type = "string",
        },
        RuntimeEnvironmentVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        RuntimeEnvironmentSecrets = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ConfigurationSource = {
    REPOSITORY = "REPOSITORY",
    API = "API",
}

M.CodeConfiguration = {
    type = "structure",
    id = "CodeConfiguration",
    members = {
        ConfigurationSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CodeConfigurationValues = M.CodeConfigurationValues,
    },
}

M.SourceCodeVersionType = {
    BRANCH = "BRANCH",
}

M.SourceCodeVersion = {
    type = "structure",
    id = "SourceCodeVersion",
    members = {
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

M.CodeRepository = {
    type = "structure",
    id = "CodeRepository",
    members = {
        RepositoryUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceCodeVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SourceCodeVersion }),
        CodeConfiguration = M.CodeConfiguration,
        SourceDirectory = {
            type = "string",
        },
    },
}

M.ImageConfiguration = {
    type = "structure",
    id = "ImageConfiguration",
    members = {
        RuntimeEnvironmentVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        StartCommand = {
            type = "string",
        },
        Port = {
            type = "string",
        },
        RuntimeEnvironmentSecrets = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ImageRepositoryType = {
    ECR = "ECR",
    ECR_PUBLIC = "ECR_PUBLIC",
}

M.ImageRepository = {
    type = "structure",
    id = "ImageRepository",
    members = {
        ImageIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImageConfiguration = M.ImageConfiguration,
        ImageRepositoryType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SourceConfiguration = {
    type = "structure",
    id = "SourceConfiguration",
    members = {
        CodeRepository = M.CodeRepository,
        ImageRepository = M.ImageRepository,
        AutoDeploymentsEnabled = {
            type = "boolean",
        },
        AuthenticationConfiguration = M.AuthenticationConfiguration,
    },
}

M.CreateServiceInput = {
    type = "structure",
    id = "CreateServiceInput",
    members = {
        ServiceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SourceConfiguration }),
        InstanceConfiguration = M.InstanceConfiguration,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        EncryptionConfiguration = M.EncryptionConfiguration,
        HealthCheckConfiguration = M.HealthCheckConfiguration,
        AutoScalingConfigurationArn = {
            type = "string",
        },
        NetworkConfiguration = M.NetworkConfiguration,
        ObservabilityConfiguration = M.ServiceObservabilityConfiguration,
    },
}

M.AutoScalingConfigurationSummary = {
    type = "structure",
    id = "AutoScalingConfigurationSummary",
    members = {
        AutoScalingConfigurationArn = {
            type = "string",
        },
        AutoScalingConfigurationName = {
            type = "string",
        },
        AutoScalingConfigurationRevision = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Status = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        HasAssociatedService = {
            type = "boolean",
        },
        IsDefault = {
            type = "boolean",
        },
    },
}

M.ServiceStatus = {
    CREATE_FAILED = "CREATE_FAILED",
    RUNNING = "RUNNING",
    DELETED = "DELETED",
    DELETE_FAILED = "DELETE_FAILED",
    PAUSED = "PAUSED",
    OPERATION_IN_PROGRESS = "OPERATION_IN_PROGRESS",
}

M.Service = {
    type = "structure",
    id = "Service",
    members = {
        ServiceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceUrl = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        DeletedAt = {
            type = "timestamp",
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SourceConfiguration }),
        InstanceConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InstanceConfiguration }),
        EncryptionConfiguration = M.EncryptionConfiguration,
        HealthCheckConfiguration = M.HealthCheckConfiguration,
        AutoScalingConfigurationSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutoScalingConfigurationSummary }),
        NetworkConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NetworkConfiguration }),
        ObservabilityConfiguration = M.ServiceObservabilityConfiguration,
    },
}

M.CreateServiceOutput = {
    type = "structure",
    id = "CreateServiceOutput",
    members = {
        Service = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Service }),
        OperationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateVpcConnectorInput = {
    type = "structure",
    id = "CreateVpcConnectorInput",
    members = {
        VpcConnectorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subnets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.VpcConnectorStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.VpcConnector = {
    type = "structure",
    id = "VpcConnector",
    members = {
        VpcConnectorName = {
            type = "string",
        },
        VpcConnectorArn = {
            type = "string",
        },
        VpcConnectorRevision = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Subnets = {
            type = "list",
            member = { type = "string" },
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        Status = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        DeletedAt = {
            type = "timestamp",
        },
    },
}

M.CreateVpcConnectorOutput = {
    type = "structure",
    id = "CreateVpcConnectorOutput",
    members = {
        VpcConnector = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VpcConnector }),
    },
}

M.IngressVpcConfiguration = {
    type = "structure",
    id = "IngressVpcConfiguration",
    members = {
        VpcId = {
            type = "string",
        },
        VpcEndpointId = {
            type = "string",
        },
    },
}

M.CreateVpcIngressConnectionInput = {
    type = "structure",
    id = "CreateVpcIngressConnectionInput",
    members = {
        ServiceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcIngressConnectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IngressVpcConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IngressVpcConfiguration }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.VpcIngressConnectionStatus = {
    AVAILABLE = "AVAILABLE",
    PENDING_CREATION = "PENDING_CREATION",
    PENDING_UPDATE = "PENDING_UPDATE",
    PENDING_DELETION = "PENDING_DELETION",
    FAILED_CREATION = "FAILED_CREATION",
    FAILED_UPDATE = "FAILED_UPDATE",
    FAILED_DELETION = "FAILED_DELETION",
    DELETED = "DELETED",
}

M.VpcIngressConnection = {
    type = "structure",
    id = "VpcIngressConnection",
    members = {
        VpcIngressConnectionArn = {
            type = "string",
        },
        VpcIngressConnectionName = {
            type = "string",
        },
        ServiceArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        DomainName = {
            type = "string",
        },
        IngressVpcConfiguration = M.IngressVpcConfiguration,
        CreatedAt = {
            type = "timestamp",
        },
        DeletedAt = {
            type = "timestamp",
        },
    },
}

M.CreateVpcIngressConnectionOutput = {
    type = "structure",
    id = "CreateVpcIngressConnectionOutput",
    members = {
        VpcIngressConnection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VpcIngressConnection }),
    },
}

M.DeleteAutoScalingConfigurationInput = {
    type = "structure",
    id = "DeleteAutoScalingConfigurationInput",
    members = {
        AutoScalingConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeleteAllRevisions = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DeleteAutoScalingConfigurationOutput = {
    type = "structure",
    id = "DeleteAutoScalingConfigurationOutput",
    members = {
        AutoScalingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutoScalingConfiguration }),
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

M.DeleteConnectionInput = {
    type = "structure",
    id = "DeleteConnectionInput",
    members = {
        ConnectionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConnectionOutput = {
    type = "structure",
    id = "DeleteConnectionOutput",
    members = {
        Connection = M.Connection,
    },
}

M.DeleteObservabilityConfigurationInput = {
    type = "structure",
    id = "DeleteObservabilityConfigurationInput",
    members = {
        ObservabilityConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteObservabilityConfigurationOutput = {
    type = "structure",
    id = "DeleteObservabilityConfigurationOutput",
    members = {
        ObservabilityConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObservabilityConfiguration }),
    },
}

M.DeleteServiceInput = {
    type = "structure",
    id = "DeleteServiceInput",
    members = {
        ServiceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteServiceOutput = {
    type = "structure",
    id = "DeleteServiceOutput",
    members = {
        Service = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Service }),
        OperationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteVpcConnectorInput = {
    type = "structure",
    id = "DeleteVpcConnectorInput",
    members = {
        VpcConnectorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteVpcConnectorOutput = {
    type = "structure",
    id = "DeleteVpcConnectorOutput",
    members = {
        VpcConnector = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VpcConnector }),
    },
}

M.DeleteVpcIngressConnectionInput = {
    type = "structure",
    id = "DeleteVpcIngressConnectionInput",
    members = {
        VpcIngressConnectionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteVpcIngressConnectionOutput = {
    type = "structure",
    id = "DeleteVpcIngressConnectionOutput",
    members = {
        VpcIngressConnection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VpcIngressConnection }),
    },
}

M.DescribeAutoScalingConfigurationInput = {
    type = "structure",
    id = "DescribeAutoScalingConfigurationInput",
    members = {
        AutoScalingConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAutoScalingConfigurationOutput = {
    type = "structure",
    id = "DescribeAutoScalingConfigurationOutput",
    members = {
        AutoScalingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutoScalingConfiguration }),
    },
}

M.DescribeCustomDomainsInput = {
    type = "structure",
    id = "DescribeCustomDomainsInput",
    members = {
        ServiceArn = {
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

M.DescribeCustomDomainsOutput = {
    type = "structure",
    id = "DescribeCustomDomainsOutput",
    members = {
        DNSTarget = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CustomDomains = {
            type = "list",
            member = M.CustomDomain,
            traits = {
                required = true,
            },
        },
        VpcDNSTargets = {
            type = "list",
            member = M.VpcDNSTarget,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeObservabilityConfigurationInput = {
    type = "structure",
    id = "DescribeObservabilityConfigurationInput",
    members = {
        ObservabilityConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeObservabilityConfigurationOutput = {
    type = "structure",
    id = "DescribeObservabilityConfigurationOutput",
    members = {
        ObservabilityConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObservabilityConfiguration }),
    },
}

M.DescribeServiceInput = {
    type = "structure",
    id = "DescribeServiceInput",
    members = {
        ServiceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeServiceOutput = {
    type = "structure",
    id = "DescribeServiceOutput",
    members = {
        Service = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Service }),
    },
}

M.DescribeVpcConnectorInput = {
    type = "structure",
    id = "DescribeVpcConnectorInput",
    members = {
        VpcConnectorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeVpcConnectorOutput = {
    type = "structure",
    id = "DescribeVpcConnectorOutput",
    members = {
        VpcConnector = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VpcConnector }),
    },
}

M.DescribeVpcIngressConnectionInput = {
    type = "structure",
    id = "DescribeVpcIngressConnectionInput",
    members = {
        VpcIngressConnectionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeVpcIngressConnectionOutput = {
    type = "structure",
    id = "DescribeVpcIngressConnectionOutput",
    members = {
        VpcIngressConnection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VpcIngressConnection }),
    },
}

M.DisassociateCustomDomainInput = {
    type = "structure",
    id = "DisassociateCustomDomainInput",
    members = {
        ServiceArn = {
            type = "string",
            traits = {
                required = true,
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

M.DisassociateCustomDomainOutput = {
    type = "structure",
    id = "DisassociateCustomDomainOutput",
    members = {
        DNSTarget = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CustomDomain = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CustomDomain }),
        VpcDNSTargets = {
            type = "list",
            member = M.VpcDNSTarget,
            traits = {
                required = true,
            },
        },
    },
}

M.ListAutoScalingConfigurationsInput = {
    type = "structure",
    id = "ListAutoScalingConfigurationsInput",
    members = {
        AutoScalingConfigurationName = {
            type = "string",
        },
        LatestOnly = {
            type = "boolean",
            traits = {
                default = false,
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

M.ListAutoScalingConfigurationsOutput = {
    type = "structure",
    id = "ListAutoScalingConfigurationsOutput",
    members = {
        AutoScalingConfigurationSummaryList = {
            type = "list",
            member = M.AutoScalingConfigurationSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListConnectionsInput = {
    type = "structure",
    id = "ListConnectionsInput",
    members = {
        ConnectionName = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ConnectionSummary = {
    type = "structure",
    id = "ConnectionSummary",
    members = {
        ConnectionName = {
            type = "string",
        },
        ConnectionArn = {
            type = "string",
        },
        ProviderType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
    },
}

M.ListConnectionsOutput = {
    type = "structure",
    id = "ListConnectionsOutput",
    members = {
        ConnectionSummaryList = {
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

M.ListObservabilityConfigurationsInput = {
    type = "structure",
    id = "ListObservabilityConfigurationsInput",
    members = {
        ObservabilityConfigurationName = {
            type = "string",
        },
        LatestOnly = {
            type = "boolean",
            traits = {
                default = false,
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

M.ObservabilityConfigurationSummary = {
    type = "structure",
    id = "ObservabilityConfigurationSummary",
    members = {
        ObservabilityConfigurationArn = {
            type = "string",
        },
        ObservabilityConfigurationName = {
            type = "string",
        },
        ObservabilityConfigurationRevision = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ListObservabilityConfigurationsOutput = {
    type = "structure",
    id = "ListObservabilityConfigurationsOutput",
    members = {
        ObservabilityConfigurationSummaryList = {
            type = "list",
            member = M.ObservabilityConfigurationSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListOperationsInput = {
    type = "structure",
    id = "ListOperationsInput",
    members = {
        ServiceArn = {
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

M.OperationStatus = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
    ROLLBACK_IN_PROGRESS = "ROLLBACK_IN_PROGRESS",
    ROLLBACK_FAILED = "ROLLBACK_FAILED",
    ROLLBACK_SUCCEEDED = "ROLLBACK_SUCCEEDED",
}

M.OperationType = {
    START_DEPLOYMENT = "START_DEPLOYMENT",
    CREATE_SERVICE = "CREATE_SERVICE",
    PAUSE_SERVICE = "PAUSE_SERVICE",
    RESUME_SERVICE = "RESUME_SERVICE",
    DELETE_SERVICE = "DELETE_SERVICE",
    UPDATE_SERVICE = "UPDATE_SERVICE",
}

M.OperationSummary = {
    type = "structure",
    id = "OperationSummary",
    members = {
        Id = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        TargetArn = {
            type = "string",
        },
        StartedAt = {
            type = "timestamp",
        },
        EndedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ListOperationsOutput = {
    type = "structure",
    id = "ListOperationsOutput",
    members = {
        OperationSummaryList = {
            type = "list",
            member = M.OperationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListServicesInput = {
    type = "structure",
    id = "ListServicesInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ServiceSummary = {
    type = "structure",
    id = "ServiceSummary",
    members = {
        ServiceName = {
            type = "string",
        },
        ServiceId = {
            type = "string",
        },
        ServiceArn = {
            type = "string",
        },
        ServiceUrl = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
    },
}

M.ListServicesOutput = {
    type = "structure",
    id = "ListServicesOutput",
    members = {
        ServiceSummaryList = {
            type = "list",
            member = M.ServiceSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListServicesForAutoScalingConfigurationInput = {
    type = "structure",
    id = "ListServicesForAutoScalingConfigurationInput",
    members = {
        AutoScalingConfigurationArn = {
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

M.ListServicesForAutoScalingConfigurationOutput = {
    type = "structure",
    id = "ListServicesForAutoScalingConfigurationOutput",
    members = {
        ServiceArnList = {
            type = "list",
            member = { type = "string" },
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
        },
    },
}

M.ListVpcConnectorsInput = {
    type = "structure",
    id = "ListVpcConnectorsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListVpcConnectorsOutput = {
    type = "structure",
    id = "ListVpcConnectorsOutput",
    members = {
        VpcConnectors = {
            type = "list",
            member = M.VpcConnector,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListVpcIngressConnectionsFilter = {
    type = "structure",
    id = "ListVpcIngressConnectionsFilter",
    members = {
        ServiceArn = {
            type = "string",
        },
        VpcEndpointId = {
            type = "string",
        },
    },
}

M.ListVpcIngressConnectionsInput = {
    type = "structure",
    id = "ListVpcIngressConnectionsInput",
    members = {
        Filter = M.ListVpcIngressConnectionsFilter,
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.VpcIngressConnectionSummary = {
    type = "structure",
    id = "VpcIngressConnectionSummary",
    members = {
        VpcIngressConnectionArn = {
            type = "string",
        },
        ServiceArn = {
            type = "string",
        },
    },
}

M.ListVpcIngressConnectionsOutput = {
    type = "structure",
    id = "ListVpcIngressConnectionsOutput",
    members = {
        VpcIngressConnectionSummaryList = {
            type = "list",
            member = M.VpcIngressConnectionSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PauseServiceInput = {
    type = "structure",
    id = "PauseServiceInput",
    members = {
        ServiceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PauseServiceOutput = {
    type = "structure",
    id = "PauseServiceOutput",
    members = {
        Service = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Service }),
        OperationId = {
            type = "string",
        },
    },
}

M.ResumeServiceInput = {
    type = "structure",
    id = "ResumeServiceInput",
    members = {
        ServiceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResumeServiceOutput = {
    type = "structure",
    id = "ResumeServiceOutput",
    members = {
        Service = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Service }),
        OperationId = {
            type = "string",
        },
    },
}

M.StartDeploymentInput = {
    type = "structure",
    id = "StartDeploymentInput",
    members = {
        ServiceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartDeploymentOutput = {
    type = "structure",
    id = "StartDeploymentOutput",
    members = {
        OperationId = {
            type = "string",
            traits = {
                required = true,
            },
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

M.UpdateDefaultAutoScalingConfigurationInput = {
    type = "structure",
    id = "UpdateDefaultAutoScalingConfigurationInput",
    members = {
        AutoScalingConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateDefaultAutoScalingConfigurationOutput = {
    type = "structure",
    id = "UpdateDefaultAutoScalingConfigurationOutput",
    members = {
        AutoScalingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutoScalingConfiguration }),
    },
}

M.UpdateServiceInput = {
    type = "structure",
    id = "UpdateServiceInput",
    members = {
        ServiceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceConfiguration = M.SourceConfiguration,
        InstanceConfiguration = M.InstanceConfiguration,
        AutoScalingConfigurationArn = {
            type = "string",
        },
        HealthCheckConfiguration = M.HealthCheckConfiguration,
        NetworkConfiguration = M.NetworkConfiguration,
        ObservabilityConfiguration = M.ServiceObservabilityConfiguration,
    },
}

M.UpdateServiceOutput = {
    type = "structure",
    id = "UpdateServiceOutput",
    members = {
        Service = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Service }),
        OperationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateVpcIngressConnectionInput = {
    type = "structure",
    id = "UpdateVpcIngressConnectionInput",
    members = {
        VpcIngressConnectionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IngressVpcConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IngressVpcConfiguration }),
    },
}

M.UpdateVpcIngressConnectionOutput = {
    type = "structure",
    id = "UpdateVpcIngressConnectionOutput",
    members = {
        VpcIngressConnection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VpcIngressConnection }),
    },
}

return M
