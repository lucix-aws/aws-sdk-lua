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

M.AmdSevSnpEnum = {
    ENABLED = "enabled",
    DISABLED = "disabled",
}

M.AssociateVolumeInput = {
    type = "structure",
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
        RetryAfterSeconds = {
            type = "number",
            traits = {
                http_header = "Retry-After",
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
        RetryAfterSeconds = {
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
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
            member_type = "structure",
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
            type = "number",
        },
        Throughput = {
            type = "number",
        },
        VolumeSize = {
            type = "number",
        },
    },
}

M.BlockDeviceMappingRequest = {
    type = "structure",
    members = {
        DeviceName = {
            type = "string",
        },
        Ebs = {
            type = "structure",
        },
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
    members = {
        CapacityReservationPreference = {
            type = "string",
        },
        CapacityReservationTarget = {
            type = "structure",
        },
    },
}

M.ConnectionTrackingSpecificationRequest = {
    type = "structure",
    members = {
        TcpEstablishedTimeout = {
            type = "number",
        },
        UdpStreamTimeout = {
            type = "number",
        },
        UdpTimeout = {
            type = "number",
        },
    },
}

M.CpuCreditsEnum = {
    STANDARD = "standard",
    UNLIMITED = "unlimited",
}

M.CpuOptionsRequest = {
    type = "structure",
    members = {
        AmdSevSnp = {
            type = "string",
        },
        CoreCount = {
            type = "number",
        },
        ThreadsPerCore = {
            type = "number",
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
    members = {
        ResourceType = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateVolumeInput = {
    type = "structure",
    members = {
        AvailabilityZone = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
        Encrypted = {
            type = "boolean",
        },
        Iops = {
            type = "number",
        },
        KmsKeyId = {
            type = "string",
        },
        SizeInGB = {
            type = "number",
        },
        SnapshotId = {
            type = "string",
        },
        TagSpecifications = {
            type = "list",
            member_type = "structure",
        },
        Throughput = {
            type = "number",
        },
        VolumeType = {
            type = "string",
        },
    },
}

M.CreateVolumeOutput = {
    type = "structure",
    members = {
        VolumeId = {
            type = "string",
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

M.CreditSpecificationRequest = {
    type = "structure",
    members = {
        CpuCredits = {
            type = "string",
        },
    },
}

M.EnclaveOptionsRequest = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.HibernationOptionsRequest = {
    type = "structure",
    members = {
        Configured = {
            type = "boolean",
        },
    },
}

M.IamInstanceProfileSpecification = {
    type = "structure",
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
    members = {
        BlockDurationMinutes = {
            type = "number",
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
    members = {
        MarketType = {
            type = "string",
        },
        SpotOptions = {
            type = "structure",
        },
    },
}

M.InstanceIpv6Address = {
    type = "structure",
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
    members = {
        LicenseConfigurationArn = {
            type = "string",
        },
    },
}

M.InstanceMaintenanceOptionsRequest = {
    type = "structure",
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
    members = {
        HttpEndpoint = {
            type = "string",
        },
        HttpProtocolIpv6 = {
            type = "string",
        },
        HttpPutResponseHopLimit = {
            type = "number",
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
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.EnaSrdUdpSpecificationRequest = {
    type = "structure",
    members = {
        EnaSrdUdpEnabled = {
            type = "boolean",
        },
    },
}

M.EnaSrdSpecificationRequest = {
    type = "structure",
    members = {
        EnaSrdEnabled = {
            type = "boolean",
        },
        EnaSrdUdpSpecification = {
            type = "structure",
        },
    },
}

M.InterfaceTypeEnum = {
    INTERFACE = "interface",
    EFA = "efa",
    EFA_ONLY = "efa-only",
}

M.Ipv4PrefixSpecificationRequest = {
    type = "structure",
    members = {
        Ipv4Prefix = {
            type = "string",
        },
    },
}

M.Ipv6PrefixSpecificationRequest = {
    type = "structure",
    members = {
        Ipv6Prefix = {
            type = "string",
        },
    },
}

M.PrivateIpAddressSpecification = {
    type = "structure",
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
    members = {
        AssociateCarrierIpAddress = {
            type = "boolean",
        },
        AssociatePublicIpAddress = {
            type = "boolean",
        },
        ConnectionTrackingSpecification = {
            type = "structure",
        },
        Description = {
            type = "string",
        },
        DeviceIndex = {
            type = "number",
        },
        EnaSrdSpecification = {
            type = "structure",
        },
        InterfaceType = {
            type = "string",
        },
        Ipv4Prefixes = {
            type = "list",
            member_type = "structure",
        },
        Ipv4PrefixCount = {
            type = "number",
        },
        Ipv6AddressCount = {
            type = "number",
        },
        Ipv6Addresses = {
            type = "list",
            member_type = "structure",
        },
        Ipv6Prefixes = {
            type = "list",
            member_type = "structure",
        },
        Ipv6PrefixCount = {
            type = "number",
        },
        NetworkCardIndex = {
            type = "number",
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
            member_type = "structure",
        },
        SecondaryPrivateIpAddressCount = {
            type = "number",
        },
        Groups = {
            type = "list",
            member_type = "string",
        },
        SubnetId = {
            type = "string",
        },
    },
}

M.InstanceNetworkPerformanceOptionsRequest = {
    type = "structure",
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
            type = "number",
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
    members = {
        BlockDeviceMappings = {
            type = "list",
            member_type = "structure",
        },
        CapacityReservationSpecification = {
            type = "structure",
        },
        CpuOptions = {
            type = "structure",
        },
        CreditSpecification = {
            type = "structure",
        },
        DisableApiStop = {
            type = "boolean",
        },
        EbsOptimized = {
            type = "boolean",
        },
        EnablePrimaryIpv6 = {
            type = "boolean",
        },
        EnclaveOptions = {
            type = "structure",
        },
        HibernationOptions = {
            type = "structure",
        },
        IamInstanceProfile = {
            type = "structure",
        },
        ImageId = {
            type = "string",
        },
        InstanceMarketOptions = {
            type = "structure",
        },
        InstanceType = {
            type = "string",
        },
        Ipv6Addresses = {
            type = "list",
            member_type = "structure",
        },
        Ipv6AddressCount = {
            type = "number",
        },
        KernelId = {
            type = "string",
        },
        KeyName = {
            type = "string",
        },
        LicenseSpecifications = {
            type = "list",
            member_type = "structure",
        },
        MaintenanceOptions = {
            type = "structure",
        },
        MetadataOptions = {
            type = "structure",
        },
        Monitoring = {
            type = "structure",
        },
        NetworkInterfaces = {
            type = "list",
            member_type = "structure",
        },
        NetworkPerformanceOptions = {
            type = "structure",
        },
        Placement = {
            type = "structure",
        },
        PrivateDnsNameOptions = {
            type = "structure",
        },
        PrivateIpAddress = {
            type = "string",
        },
        RamdiskId = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        SecurityGroups = {
            type = "list",
            member_type = "string",
        },
        SubnetId = {
            type = "string",
        },
        TagSpecifications = {
            type = "list",
            member_type = "structure",
        },
        UserData = {
            type = "string",
        },
    },
}

M.CreateWorkspaceInstanceInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ManagedInstance = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        BillingConfiguration = {
            type = "structure",
        },
    },
}

M.CreateWorkspaceInstanceOutput = {
    type = "structure",
    members = {
        WorkspaceInstanceId = {
            type = "string",
        },
    },
}

M.DeleteVolumeInput = {
    type = "structure",
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
}

M.DeleteWorkspaceInstanceInput = {
    type = "structure",
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
}

M.DisassociateModeEnum = {
    FORCE = "FORCE",
    NO_FORCE = "NO_FORCE",
}

M.DisassociateVolumeInput = {
    type = "structure",
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
}

M.EC2InstanceError = {
    type = "structure",
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
    members = {
        InstanceId = {
            type = "string",
        },
    },
}

M.GetWorkspaceInstanceInput = {
    type = "structure",
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
    members = {
        WorkspaceInstanceErrors = {
            type = "list",
            member_type = "structure",
        },
        EC2InstanceErrors = {
            type = "list",
            member_type = "structure",
        },
        ProvisionState = {
            type = "string",
        },
        WorkspaceInstanceId = {
            type = "string",
        },
        EC2ManagedInstance = {
            type = "structure",
        },
        BillingConfiguration = {
            type = "structure",
        },
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
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        InstanceConfigurationFilter = {
            type = "structure",
        },
    },
}

M.SupportedInstanceConfiguration = {
    type = "structure",
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
    members = {
        InstanceType = {
            type = "string",
        },
        SupportedInstanceConfigurations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListInstanceTypesOutput = {
    type = "structure",
    members = {
        InstanceTypes = {
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

M.ListRegionsInput = {
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

M.Region = {
    type = "structure",
    members = {
        RegionName = {
            type = "string",
        },
    },
}

M.ListRegionsOutput = {
    type = "structure",
    members = {
        Regions = {
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

M.ListTagsForResourceInput = {
    type = "structure",
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
    members = {
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListWorkspaceInstancesInput = {
    type = "structure",
    members = {
        ProvisionStates = {
            type = "list",
            member_type = "string",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.WorkspaceInstance = {
    type = "structure",
    members = {
        ProvisionState = {
            type = "string",
        },
        WorkspaceInstanceId = {
            type = "string",
        },
        EC2ManagedInstance = {
            type = "structure",
        },
    },
}

M.ListWorkspaceInstancesOutput = {
    type = "structure",
    members = {
        WorkspaceInstances = {
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

M.TagResourceInput = {
    type = "structure",
    members = {
        WorkspaceInstanceId = {
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

M.UntagResourceInput = {
    type = "structure",
    members = {
        WorkspaceInstanceId = {
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

return M
