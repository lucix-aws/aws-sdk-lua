local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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

M.AmdSevSnpEnum = {
    ENABLED = "enabled",
    DISABLED = "disabled",
}

M.AssociateVolumeInput = {
    type = "structure",
    id = "AssociateVolumeInput",
    members = {
        WorkspaceInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VolumeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Device = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateVolumeOutput = {
    type = "structure",
    id = "AssociateVolumeOutput",
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

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
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

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
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
        RetryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
    members = {
        Name = {
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
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "UNKNOWN_OPERATION",
    UNSUPPORTED_OPERATION = "UNSUPPORTED_OPERATION",
    CANNOT_PARSE = "CANNOT_PARSE",
    FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED",
    DEPENDENCY_FAILURE = "DEPENDENCY_FAILURE",
    OTHER = "OTHER",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
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

M.AutoRecoveryEnum = {
    DISABLED = "disabled",
    DEFAULT = "default",
}

M.BandwidthWeightingEnum = {
    DEFAULT = "default",
    VPC_1 = "vpc-1",
    EBS_1 = "ebs-1",
}

M.BillingMode = {
    MONTHLY = "MONTHLY",
    HOURLY = "HOURLY",
}

M.BillingConfiguration = {
    type = "structure",
    id = "BillingConfiguration",
    members = {
        BillingMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VolumeTypeEnum = {
    STANDARD = "standard",
    IO1 = "io1",
    IO2 = "io2",
    GP2 = "gp2",
    SC1 = "sc1",
    ST1 = "st1",
    GP3 = "gp3",
}

M.EbsBlockDevice = {
    type = "structure",
    id = "EbsBlockDevice",
    members = {
        VolumeType = {
            type = "string",
        },
        Encrypted = {
            type = "boolean",
        },
        KmsKeyId = {
            type = "string",
        },
        Iops = {
            type = "integer",
        },
        Throughput = {
            type = "integer",
        },
        VolumeSize = {
            type = "integer",
        },
    },
}

M.BlockDeviceMappingRequest = {
    type = "structure",
    id = "BlockDeviceMappingRequest",
    members = {
        DeviceName = {
            type = "string",
        },
        Ebs = M.EbsBlockDevice,
        NoDevice = {
            type = "string",
        },
        VirtualName = {
            type = "string",
        },
    },
}

M.CapacityReservationPreferenceEnum = {
    CAPACITY_RESERVATIONS_ONLY = "capacity-reservations-only",
    OPEN = "open",
    NONE = "none",
}

M.CapacityReservationTarget = {
    type = "structure",
    id = "CapacityReservationTarget",
    members = {
        CapacityReservationId = {
            type = "string",
        },
        CapacityReservationResourceGroupArn = {
            type = "string",
        },
    },
}

M.CapacityReservationSpecification = {
    type = "structure",
    id = "CapacityReservationSpecification",
    members = {
        CapacityReservationPreference = {
            type = "string",
        },
        CapacityReservationTarget = M.CapacityReservationTarget,
    },
}

M.ConnectionTrackingSpecificationRequest = {
    type = "structure",
    id = "ConnectionTrackingSpecificationRequest",
    members = {
        TcpEstablishedTimeout = {
            type = "integer",
        },
        UdpStreamTimeout = {
            type = "integer",
        },
        UdpTimeout = {
            type = "integer",
        },
    },
}

M.CpuCreditsEnum = {
    STANDARD = "standard",
    UNLIMITED = "unlimited",
}

M.CpuOptionsRequest = {
    type = "structure",
    id = "CpuOptionsRequest",
    members = {
        AmdSevSnp = {
            type = "string",
        },
        CoreCount = {
            type = "integer",
        },
        ThreadsPerCore = {
            type = "integer",
        },
    },
}

M.ResourceTypeEnum = {
    INSTANCE = "instance",
    VOLUME = "volume",
    SPOT_INSTANCES_REQUEST = "spot-instances-request",
    NETWORK_INTERFACE = "network-interface",
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

M.TagSpecification = {
    type = "structure",
    id = "TagSpecification",
    members = {
        ResourceType = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateVolumeInput = {
    type = "structure",
    id = "CreateVolumeInput",
    members = {
        AvailabilityZone = {
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
        Encrypted = {
            type = "boolean",
        },
        Iops = {
            type = "integer",
        },
        KmsKeyId = {
            type = "string",
        },
        SizeInGB = {
            type = "integer",
        },
        SnapshotId = {
            type = "string",
        },
        TagSpecifications = {
            type = "list",
            member = M.TagSpecification,
        },
        Throughput = {
            type = "integer",
        },
        VolumeType = {
            type = "string",
        },
    },
}

M.CreateVolumeOutput = {
    type = "structure",
    id = "CreateVolumeOutput",
    members = {
        VolumeId = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
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

M.CreditSpecificationRequest = {
    type = "structure",
    id = "CreditSpecificationRequest",
    members = {
        CpuCredits = {
            type = "string",
        },
    },
}

M.EnclaveOptionsRequest = {
    type = "structure",
    id = "EnclaveOptionsRequest",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.HibernationOptionsRequest = {
    type = "structure",
    id = "HibernationOptionsRequest",
    members = {
        Configured = {
            type = "boolean",
        },
    },
}

M.IamInstanceProfileSpecification = {
    type = "structure",
    id = "IamInstanceProfileSpecification",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.MarketTypeEnum = {
    SPOT = "spot",
    CAPACITY_BLOCK = "capacity-block",
}

M.InstanceInterruptionBehaviorEnum = {
    HIBERNATE = "hibernate",
    STOP = "stop",
}

M.SpotInstanceTypeEnum = {
    ONE_TIME = "one-time",
    PERSISTENT = "persistent",
}

M.SpotMarketOptions = {
    type = "structure",
    id = "SpotMarketOptions",
    members = {
        BlockDurationMinutes = {
            type = "integer",
        },
        InstanceInterruptionBehavior = {
            type = "string",
        },
        MaxPrice = {
            type = "string",
        },
        SpotInstanceType = {
            type = "string",
        },
        ValidUntilUtc = {
            type = "timestamp",
        },
    },
}

M.InstanceMarketOptionsRequest = {
    type = "structure",
    id = "InstanceMarketOptionsRequest",
    members = {
        MarketType = {
            type = "string",
        },
        SpotOptions = M.SpotMarketOptions,
    },
}

M.InstanceIpv6Address = {
    type = "structure",
    id = "InstanceIpv6Address",
    members = {
        Ipv6Address = {
            type = "string",
        },
        IsPrimaryIpv6 = {
            type = "boolean",
        },
    },
}

M.LicenseConfigurationRequest = {
    type = "structure",
    id = "LicenseConfigurationRequest",
    members = {
        LicenseConfigurationArn = {
            type = "string",
        },
    },
}

M.InstanceMaintenanceOptionsRequest = {
    type = "structure",
    id = "InstanceMaintenanceOptionsRequest",
    members = {
        AutoRecovery = {
            type = "string",
        },
    },
}

M.HttpEndpointEnum = {
    ENABLED = "enabled",
    DISABLED = "disabled",
}

M.HttpProtocolIpv6Enum = {
    ENABLED = "enabled",
    DISABLED = "disabled",
}

M.HttpTokensEnum = {
    OPTIONAL = "optional",
    REQUIRED = "required",
}

M.InstanceMetadataTagsEnum = {
    ENABLED = "enabled",
    DISABLED = "disabled",
}

M.InstanceMetadataOptionsRequest = {
    type = "structure",
    id = "InstanceMetadataOptionsRequest",
    members = {
        HttpEndpoint = {
            type = "string",
        },
        HttpProtocolIpv6 = {
            type = "string",
        },
        HttpPutResponseHopLimit = {
            type = "integer",
        },
        HttpTokens = {
            type = "string",
        },
        InstanceMetadataTags = {
            type = "string",
        },
    },
}

M.RunInstancesMonitoringEnabled = {
    type = "structure",
    id = "RunInstancesMonitoringEnabled",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.EnaSrdUdpSpecificationRequest = {
    type = "structure",
    id = "EnaSrdUdpSpecificationRequest",
    members = {
        EnaSrdUdpEnabled = {
            type = "boolean",
        },
    },
}

M.EnaSrdSpecificationRequest = {
    type = "structure",
    id = "EnaSrdSpecificationRequest",
    members = {
        EnaSrdEnabled = {
            type = "boolean",
        },
        EnaSrdUdpSpecification = M.EnaSrdUdpSpecificationRequest,
    },
}

M.InterfaceTypeEnum = {
    INTERFACE = "interface",
    EFA = "efa",
    EFA_ONLY = "efa-only",
}

M.Ipv4PrefixSpecificationRequest = {
    type = "structure",
    id = "Ipv4PrefixSpecificationRequest",
    members = {
        Ipv4Prefix = {
            type = "string",
        },
    },
}

M.Ipv6PrefixSpecificationRequest = {
    type = "structure",
    id = "Ipv6PrefixSpecificationRequest",
    members = {
        Ipv6Prefix = {
            type = "string",
        },
    },
}

M.PrivateIpAddressSpecification = {
    type = "structure",
    id = "PrivateIpAddressSpecification",
    members = {
        Primary = {
            type = "boolean",
        },
        PrivateIpAddress = {
            type = "string",
        },
    },
}

M.InstanceNetworkInterfaceSpecification = {
    type = "structure",
    id = "InstanceNetworkInterfaceSpecification",
    members = {
        AssociateCarrierIpAddress = {
            type = "boolean",
        },
        AssociatePublicIpAddress = {
            type = "boolean",
        },
        ConnectionTrackingSpecification = M.ConnectionTrackingSpecificationRequest,
        Description = {
            type = "string",
        },
        DeviceIndex = {
            type = "integer",
        },
        EnaSrdSpecification = M.EnaSrdSpecificationRequest,
        InterfaceType = {
            type = "string",
        },
        Ipv4Prefixes = {
            type = "list",
            member = M.Ipv4PrefixSpecificationRequest,
        },
        Ipv4PrefixCount = {
            type = "integer",
        },
        Ipv6AddressCount = {
            type = "integer",
        },
        Ipv6Addresses = {
            type = "list",
            member = M.InstanceIpv6Address,
        },
        Ipv6Prefixes = {
            type = "list",
            member = M.Ipv6PrefixSpecificationRequest,
        },
        Ipv6PrefixCount = {
            type = "integer",
        },
        NetworkCardIndex = {
            type = "integer",
        },
        NetworkInterfaceId = {
            type = "string",
        },
        PrimaryIpv6 = {
            type = "boolean",
        },
        PrivateIpAddress = {
            type = "string",
        },
        PrivateIpAddresses = {
            type = "list",
            member = M.PrivateIpAddressSpecification,
        },
        SecondaryPrivateIpAddressCount = {
            type = "integer",
        },
        Groups = {
            type = "list",
            member = { type = "string" },
        },
        SubnetId = {
            type = "string",
        },
    },
}

M.InstanceNetworkPerformanceOptionsRequest = {
    type = "structure",
    id = "InstanceNetworkPerformanceOptionsRequest",
    members = {
        BandwidthWeighting = {
            type = "string",
        },
    },
}

M.TenancyEnum = {
    DEFAULT = "default",
    DEDICATED = "dedicated",
    HOST = "host",
}

M.Placement = {
    type = "structure",
    id = "Placement",
    members = {
        Affinity = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        GroupId = {
            type = "string",
        },
        GroupName = {
            type = "string",
        },
        HostId = {
            type = "string",
        },
        HostResourceGroupArn = {
            type = "string",
        },
        PartitionNumber = {
            type = "integer",
        },
        Tenancy = {
            type = "string",
        },
    },
}

M.HostnameTypeEnum = {
    IP_NAME = "ip-name",
    RESOURCE_NAME = "resource-name",
}

M.PrivateDnsNameOptionsRequest = {
    type = "structure",
    id = "PrivateDnsNameOptionsRequest",
    members = {
        HostnameType = {
            type = "string",
        },
        EnableResourceNameDnsARecord = {
            type = "boolean",
        },
        EnableResourceNameDnsAAAARecord = {
            type = "boolean",
        },
    },
}

M.ManagedInstanceRequest = {
    type = "structure",
    id = "ManagedInstanceRequest",
    members = {
        BlockDeviceMappings = {
            type = "list",
            member = M.BlockDeviceMappingRequest,
        },
        CapacityReservationSpecification = M.CapacityReservationSpecification,
        CpuOptions = M.CpuOptionsRequest,
        CreditSpecification = M.CreditSpecificationRequest,
        DisableApiStop = {
            type = "boolean",
        },
        EbsOptimized = {
            type = "boolean",
        },
        EnablePrimaryIpv6 = {
            type = "boolean",
        },
        EnclaveOptions = M.EnclaveOptionsRequest,
        HibernationOptions = M.HibernationOptionsRequest,
        IamInstanceProfile = M.IamInstanceProfileSpecification,
        ImageId = {
            type = "string",
        },
        InstanceMarketOptions = M.InstanceMarketOptionsRequest,
        InstanceType = {
            type = "string",
        },
        Ipv6Addresses = {
            type = "list",
            member = M.InstanceIpv6Address,
        },
        Ipv6AddressCount = {
            type = "integer",
        },
        KernelId = {
            type = "string",
        },
        KeyName = {
            type = "string",
        },
        LicenseSpecifications = {
            type = "list",
            member = M.LicenseConfigurationRequest,
        },
        MaintenanceOptions = M.InstanceMaintenanceOptionsRequest,
        MetadataOptions = M.InstanceMetadataOptionsRequest,
        Monitoring = M.RunInstancesMonitoringEnabled,
        NetworkInterfaces = {
            type = "list",
            member = M.InstanceNetworkInterfaceSpecification,
        },
        NetworkPerformanceOptions = M.InstanceNetworkPerformanceOptionsRequest,
        Placement = M.Placement,
        PrivateDnsNameOptions = M.PrivateDnsNameOptionsRequest,
        PrivateIpAddress = {
            type = "string",
        },
        RamdiskId = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        SubnetId = {
            type = "string",
        },
        TagSpecifications = {
            type = "list",
            member = M.TagSpecification,
        },
        UserData = {
            type = "string",
        },
    },
}

M.CreateWorkspaceInstanceInput = {
    type = "structure",
    id = "CreateWorkspaceInstanceInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ManagedInstance = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ManagedInstanceRequest }),
        BillingConfiguration = M.BillingConfiguration,
    },
}

M.CreateWorkspaceInstanceOutput = {
    type = "structure",
    id = "CreateWorkspaceInstanceOutput",
    members = {
        WorkspaceInstanceId = {
            type = "string",
        },
    },
}

M.DeleteVolumeInput = {
    type = "structure",
    id = "DeleteVolumeInput",
    members = {
        VolumeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteVolumeOutput = {
    type = "structure",
    id = "DeleteVolumeOutput",
}

M.DeleteWorkspaceInstanceInput = {
    type = "structure",
    id = "DeleteWorkspaceInstanceInput",
    members = {
        WorkspaceInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWorkspaceInstanceOutput = {
    type = "structure",
    id = "DeleteWorkspaceInstanceOutput",
}

M.DisassociateModeEnum = {
    FORCE = "FORCE",
    NO_FORCE = "NO_FORCE",
}

M.DisassociateVolumeInput = {
    type = "structure",
    id = "DisassociateVolumeInput",
    members = {
        WorkspaceInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VolumeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Device = {
            type = "string",
        },
        DisassociateMode = {
            type = "string",
        },
    },
}

M.DisassociateVolumeOutput = {
    type = "structure",
    id = "DisassociateVolumeOutput",
}

M.EC2InstanceError = {
    type = "structure",
    id = "EC2InstanceError",
    members = {
        EC2ErrorCode = {
            type = "string",
        },
        EC2ExceptionType = {
            type = "string",
        },
        EC2ErrorMessage = {
            type = "string",
        },
    },
}

M.EC2ManagedInstance = {
    type = "structure",
    id = "EC2ManagedInstance",
    members = {
        InstanceId = {
            type = "string",
        },
    },
}

M.GetWorkspaceInstanceInput = {
    type = "structure",
    id = "GetWorkspaceInstanceInput",
    members = {
        WorkspaceInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProvisionStateEnum = {
    ALLOCATING = "ALLOCATING",
    ALLOCATED = "ALLOCATED",
    DEALLOCATING = "DEALLOCATING",
    DEALLOCATED = "DEALLOCATED",
    ERROR_ALLOCATING = "ERROR_ALLOCATING",
    ERROR_DEALLOCATING = "ERROR_DEALLOCATING",
}

M.WorkspaceInstanceError = {
    type = "structure",
    id = "WorkspaceInstanceError",
    members = {
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.GetWorkspaceInstanceOutput = {
    type = "structure",
    id = "GetWorkspaceInstanceOutput",
    members = {
        WorkspaceInstanceErrors = {
            type = "list",
            member = M.WorkspaceInstanceError,
        },
        EC2InstanceErrors = {
            type = "list",
            member = M.EC2InstanceError,
        },
        ProvisionState = {
            type = "string",
        },
        WorkspaceInstanceId = {
            type = "string",
        },
        EC2ManagedInstance = M.EC2ManagedInstance,
        BillingConfiguration = M.BillingConfiguration,
    },
}

M.PlatformTypeEnum = {
    WINDOWS = "Windows",
    WINDOWS_BYOL = "Windows BYOL",
    LINUX_UNIX = "Linux/UNIX",
    UBUNTU_PRO = "Ubuntu Pro Linux",
    RHEL = "Red Hat Enterprise Linux",
    LINUX_BYOL = "Red Hat BYOL Linux",
    SUSE = "SUSE Linux",
}

M.InstanceConfigurationTenancyEnum = {
    SHARED = "SHARED",
    DEDICATED = "DEDICATED",
}

M.InstanceConfigurationFilter = {
    type = "structure",
    id = "InstanceConfigurationFilter",
    members = {
        BillingMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PlatformType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tenancy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListInstanceTypesInput = {
    type = "structure",
    id = "ListInstanceTypesInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        InstanceConfigurationFilter = M.InstanceConfigurationFilter,
    },
}

M.SupportedInstanceConfiguration = {
    type = "structure",
    id = "SupportedInstanceConfiguration",
    members = {
        BillingMode = {
            type = "string",
        },
        PlatformType = {
            type = "string",
        },
        Tenancy = {
            type = "string",
        },
    },
}

M.InstanceTypeInfo = {
    type = "structure",
    id = "InstanceTypeInfo",
    members = {
        InstanceType = {
            type = "string",
        },
        SupportedInstanceConfigurations = {
            type = "list",
            member = M.SupportedInstanceConfiguration,
        },
    },
}

M.ListInstanceTypesOutput = {
    type = "structure",
    id = "ListInstanceTypesOutput",
    members = {
        InstanceTypes = {
            type = "list",
            member = M.InstanceTypeInfo,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRegionsInput = {
    type = "structure",
    id = "ListRegionsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Region = {
    type = "structure",
    id = "Region",
    members = {
        RegionName = {
            type = "string",
        },
    },
}

M.ListRegionsOutput = {
    type = "structure",
    id = "ListRegionsOutput",
    members = {
        Regions = {
            type = "list",
            member = M.Region,
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
        WorkspaceInstanceId = {
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

M.ListWorkspaceInstancesInput = {
    type = "structure",
    id = "ListWorkspaceInstancesInput",
    members = {
        ProvisionStates = {
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

M.WorkspaceInstance = {
    type = "structure",
    id = "WorkspaceInstance",
    members = {
        ProvisionState = {
            type = "string",
        },
        WorkspaceInstanceId = {
            type = "string",
        },
        EC2ManagedInstance = M.EC2ManagedInstance,
    },
}

M.ListWorkspaceInstancesOutput = {
    type = "structure",
    id = "ListWorkspaceInstancesOutput",
    members = {
        WorkspaceInstances = {
            type = "list",
            member = M.WorkspaceInstance,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        WorkspaceInstanceId = {
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
        WorkspaceInstanceId = {
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

return M
