local M = {}

M.AccessPointAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
        AccessPointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LifeCycleState = {
    CREATING = "creating",
    AVAILABLE = "available",
    UPDATING = "updating",
    DELETING = "deleting",
    DELETED = "deleted",
    ERROR = "error",
}

M.PosixUser = {
    type = "structure",
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

M.CreationInfo = {
    type = "structure",
    members = {
        OwnerUid = {
            type = "long",
            traits = {
                required = true,
            },
        },
        OwnerGid = {
            type = "long",
            traits = {
                required = true,
            },
        },
        Permissions = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RootDirectory = {
    type = "structure",
    members = {
        Path = {
            type = "string",
        },
        CreationInfo = M.CreationInfo,
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

M.AccessPointDescription = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        AccessPointId = {
            type = "string",
        },
        AccessPointArn = {
            type = "string",
        },
        FileSystemId = {
            type = "string",
        },
        PosixUser = M.PosixUser,
        RootDirectory = M.RootDirectory,
        OwnerId = {
            type = "string",
        },
        LifeCycleState = {
            type = "string",
        },
    },
}

M.AccessPointLimitExceeded = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.AccessPointNotFound = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.AvailabilityZonesMismatch = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.Status = {
    ENABLED = "ENABLED",
    ENABLING = "ENABLING",
    DISABLED = "DISABLED",
    DISABLING = "DISABLING",
}

M.BackupPolicy = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BadRequest = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.CreateAccessPointInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        FileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PosixUser = M.PosixUser,
        RootDirectory = M.RootDirectory,
    },
}

M.CreateAccessPointOutput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        AccessPointId = {
            type = "string",
        },
        AccessPointArn = {
            type = "string",
        },
        FileSystemId = {
            type = "string",
        },
        PosixUser = M.PosixUser,
        RootDirectory = M.RootDirectory,
        OwnerId = {
            type = "string",
        },
        LifeCycleState = {
            type = "string",
        },
    },
}

M.FileSystemNotFound = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.IncorrectFileSystemLifeCycleState = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.InternalServerError = {
    type = "structure",
    error = "server",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.PerformanceMode = {
    GENERAL_PURPOSE = "generalPurpose",
    MAX_IO = "maxIO",
}

M.ThroughputMode = {
    BURSTING = "bursting",
    PROVISIONED = "provisioned",
    ELASTIC = "elastic",
}

M.CreateFileSystemInput = {
    type = "structure",
    members = {
        CreationToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PerformanceMode = {
            type = "string",
        },
        Encrypted = {
            type = "boolean",
        },
        KmsKeyId = {
            type = "string",
        },
        ThroughputMode = {
            type = "string",
        },
        ProvisionedThroughputInMibps = {
            type = "double",
        },
        AvailabilityZoneName = {
            type = "string",
        },
        Backup = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ReplicationOverwriteProtection = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    REPLICATING = "REPLICATING",
}

M.FileSystemProtectionDescription = {
    type = "structure",
    members = {
        ReplicationOverwriteProtection = {
            type = "string",
        },
    },
}

M.FileSystemSize = {
    type = "structure",
    members = {
        Value = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        Timestamp = {
            type = "timestamp",
        },
        ValueInIA = {
            type = "long",
        },
        ValueInStandard = {
            type = "long",
        },
        ValueInArchive = {
            type = "long",
        },
    },
}

M.CreateFileSystemOutput = {
    type = "structure",
    members = {
        OwnerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileSystemArn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LifeCycleState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        NumberOfMountTargets = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        SizeInBytes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FileSystemSize }),
        PerformanceMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Encrypted = {
            type = "boolean",
        },
        KmsKeyId = {
            type = "string",
        },
        ThroughputMode = {
            type = "string",
        },
        ProvisionedThroughputInMibps = {
            type = "double",
        },
        AvailabilityZoneName = {
            type = "string",
        },
        AvailabilityZoneId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
        FileSystemProtection = M.FileSystemProtectionDescription,
    },
}

M.FileSystemAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
        FileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FileSystemLimitExceeded = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.InsufficientThroughputCapacity = {
    type = "structure",
    error = "server",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.ThroughputLimitExceeded = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedAvailabilityZone = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.IpAddressType = {
    IPV4_ONLY = "IPV4_ONLY",
    IPV6_ONLY = "IPV6_ONLY",
    DUAL_STACK = "DUAL_STACK",
}

M.CreateMountTargetInput = {
    type = "structure",
    members = {
        FileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubnetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IpAddress = {
            type = "string",
        },
        Ipv6Address = {
            type = "string",
        },
        IpAddressType = {
            type = "string",
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateMountTargetOutput = {
    type = "structure",
    members = {
        OwnerId = {
            type = "string",
        },
        MountTargetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubnetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LifeCycleState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IpAddress = {
            type = "string",
        },
        Ipv6Address = {
            type = "string",
        },
        NetworkInterfaceId = {
            type = "string",
        },
        AvailabilityZoneId = {
            type = "string",
        },
        AvailabilityZoneName = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
    },
}

M.IpAddressInUse = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.MountTargetConflict = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.NetworkInterfaceLimitExceeded = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.NoFreeAddressesInSubnet = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.SecurityGroupLimitExceeded = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.SecurityGroupNotFound = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.SubnetNotFound = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.DestinationToCreate = {
    type = "structure",
    members = {
        Region = {
            type = "string",
        },
        AvailabilityZoneName = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        FileSystemId = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
    },
}

M.CreateReplicationConfigurationInput = {
    type = "structure",
    members = {
        SourceFileSystemId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Destinations = {
            type = "list",
            member = M.DestinationToCreate,
            traits = {
                required = true,
            },
        },
    },
}

M.ReplicationStatus = {
    ENABLED = "ENABLED",
    ENABLING = "ENABLING",
    DELETING = "DELETING",
    ERROR = "ERROR",
    PAUSED = "PAUSED",
    PAUSING = "PAUSING",
}

M.Destination = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastReplicatedTimestamp = {
            type = "timestamp",
        },
        OwnerId = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
    },
}

M.CreateReplicationConfigurationOutput = {
    type = "structure",
    members = {
        SourceFileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceFileSystemRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceFileSystemArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginalSourceFileSystemArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Destinations = {
            type = "list",
            member = M.Destination,
            traits = {
                required = true,
            },
        },
        SourceFileSystemOwnerId = {
            type = "string",
        },
    },
}

M.ReplicationNotFound = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.CreateTagsInput = {
    type = "structure",
    members = {
        FileSystemId = {
            type = "string",
            traits = {
                http_label = true,
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

M.CreateTagsOutput = {
    type = "structure",
}

M.DeleteAccessPointInput = {
    type = "structure",
    members = {
        AccessPointId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAccessPointOutput = {
    type = "structure",
}

M.DeleteFileSystemInput = {
    type = "structure",
    members = {
        FileSystemId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteFileSystemOutput = {
    type = "structure",
}

M.FileSystemInUse = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.DeleteFileSystemPolicyInput = {
    type = "structure",
    members = {
        FileSystemId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteFileSystemPolicyOutput = {
    type = "structure",
}

M.DeleteMountTargetInput = {
    type = "structure",
    members = {
        MountTargetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMountTargetOutput = {
    type = "structure",
}

M.DependencyTimeout = {
    type = "structure",
    error = "server",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.MountTargetNotFound = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.DeletionMode = {
    ALL_CONFIGURATIONS = "ALL_CONFIGURATIONS",
    LOCAL_CONFIGURATION_ONLY = "LOCAL_CONFIGURATION_ONLY",
}

M.DeleteReplicationConfigurationInput = {
    type = "structure",
    members = {
        SourceFileSystemId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeletionMode = {
            type = "string",
            traits = {
                http_query = "deletionMode",
            },
        },
    },
}

M.DeleteReplicationConfigurationOutput = {
    type = "structure",
}

M.DeleteTagsInput = {
    type = "structure",
    members = {
        FileSystemId = {
            type = "string",
            traits = {
                http_label = true,
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

M.DeleteTagsOutput = {
    type = "structure",
}

M.DescribeAccessPointsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
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
        AccessPointId = {
            type = "string",
            traits = {
                http_query = "AccessPointId",
            },
        },
        FileSystemId = {
            type = "string",
            traits = {
                http_query = "FileSystemId",
            },
        },
    },
}

M.DescribeAccessPointsOutput = {
    type = "structure",
    members = {
        AccessPoints = {
            type = "list",
            member = M.AccessPointDescription,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeAccountPreferencesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ResourceIdType = {
    LongId = "LONG_ID",
    ShortId = "SHORT_ID",
}

M.Resource = {
    FileSystem = "FILE_SYSTEM",
    MountTarget = "MOUNT_TARGET",
}

M.ResourceIdPreference = {
    type = "structure",
    members = {
        ResourceIdType = {
            type = "string",
        },
        Resources = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeAccountPreferencesOutput = {
    type = "structure",
    members = {
        ResourceIdPreference = M.ResourceIdPreference,
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeBackupPolicyInput = {
    type = "structure",
    members = {
        FileSystemId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeBackupPolicyOutput = {
    type = "structure",
    members = {
        BackupPolicy = M.BackupPolicy,
    },
}

M.PolicyNotFound = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.DescribeFileSystemPolicyInput = {
    type = "structure",
    members = {
        FileSystemId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeFileSystemPolicyOutput = {
    type = "structure",
    members = {
        FileSystemId = {
            type = "string",
        },
        Policy = {
            type = "string",
        },
    },
}

M.DescribeFileSystemsInput = {
    type = "structure",
    members = {
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        CreationToken = {
            type = "string",
            traits = {
                http_query = "CreationToken",
            },
        },
        FileSystemId = {
            type = "string",
            traits = {
                http_query = "FileSystemId",
            },
        },
    },
}

M.FileSystemDescription = {
    type = "structure",
    members = {
        OwnerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileSystemArn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LifeCycleState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        NumberOfMountTargets = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        SizeInBytes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FileSystemSize }),
        PerformanceMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Encrypted = {
            type = "boolean",
        },
        KmsKeyId = {
            type = "string",
        },
        ThroughputMode = {
            type = "string",
        },
        ProvisionedThroughputInMibps = {
            type = "double",
        },
        AvailabilityZoneName = {
            type = "string",
        },
        AvailabilityZoneId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
        FileSystemProtection = M.FileSystemProtectionDescription,
    },
}

M.DescribeFileSystemsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        FileSystems = {
            type = "list",
            member = M.FileSystemDescription,
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.DescribeLifecycleConfigurationInput = {
    type = "structure",
    members = {
        FileSystemId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TransitionToArchiveRules = {
    AFTER_1_DAY = "AFTER_1_DAY",
    AFTER_7_DAYS = "AFTER_7_DAYS",
    AFTER_14_DAYS = "AFTER_14_DAYS",
    AFTER_30_DAYS = "AFTER_30_DAYS",
    AFTER_60_DAYS = "AFTER_60_DAYS",
    AFTER_90_DAYS = "AFTER_90_DAYS",
    AFTER_180_DAYS = "AFTER_180_DAYS",
    AFTER_270_DAYS = "AFTER_270_DAYS",
    AFTER_365_DAYS = "AFTER_365_DAYS",
}

M.TransitionToIARules = {
    AFTER_7_DAYS = "AFTER_7_DAYS",
    AFTER_14_DAYS = "AFTER_14_DAYS",
    AFTER_30_DAYS = "AFTER_30_DAYS",
    AFTER_60_DAYS = "AFTER_60_DAYS",
    AFTER_90_DAYS = "AFTER_90_DAYS",
    AFTER_1_DAY = "AFTER_1_DAY",
    AFTER_180_DAYS = "AFTER_180_DAYS",
    AFTER_270_DAYS = "AFTER_270_DAYS",
    AFTER_365_DAYS = "AFTER_365_DAYS",
}

M.TransitionToPrimaryStorageClassRules = {
    AFTER_1_ACCESS = "AFTER_1_ACCESS",
}

M.LifecyclePolicy = {
    type = "structure",
    members = {
        TransitionToIA = {
            type = "string",
        },
        TransitionToPrimaryStorageClass = {
            type = "string",
        },
        TransitionToArchive = {
            type = "string",
        },
    },
}

M.DescribeLifecycleConfigurationOutput = {
    type = "structure",
    members = {
        LifecyclePolicies = {
            type = "list",
            member = M.LifecyclePolicy,
        },
    },
}

M.DescribeMountTargetsInput = {
    type = "structure",
    members = {
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        FileSystemId = {
            type = "string",
            traits = {
                http_query = "FileSystemId",
            },
        },
        MountTargetId = {
            type = "string",
            traits = {
                http_query = "MountTargetId",
            },
        },
        AccessPointId = {
            type = "string",
            traits = {
                http_query = "AccessPointId",
            },
        },
    },
}

M.MountTargetDescription = {
    type = "structure",
    members = {
        OwnerId = {
            type = "string",
        },
        MountTargetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubnetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LifeCycleState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IpAddress = {
            type = "string",
        },
        Ipv6Address = {
            type = "string",
        },
        NetworkInterfaceId = {
            type = "string",
        },
        AvailabilityZoneId = {
            type = "string",
        },
        AvailabilityZoneName = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
    },
}

M.DescribeMountTargetsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        MountTargets = {
            type = "list",
            member = M.MountTargetDescription,
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.DescribeMountTargetSecurityGroupsInput = {
    type = "structure",
    members = {
        MountTargetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeMountTargetSecurityGroupsOutput = {
    type = "structure",
    members = {
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.IncorrectMountTargetState = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.DescribeReplicationConfigurationsInput = {
    type = "structure",
    members = {
        FileSystemId = {
            type = "string",
            traits = {
                http_query = "FileSystemId",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ReplicationConfigurationDescription = {
    type = "structure",
    members = {
        SourceFileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceFileSystemRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceFileSystemArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginalSourceFileSystemArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Destinations = {
            type = "list",
            member = M.Destination,
            traits = {
                required = true,
            },
        },
        SourceFileSystemOwnerId = {
            type = "string",
        },
    },
}

M.DescribeReplicationConfigurationsOutput = {
    type = "structure",
    members = {
        Replications = {
            type = "list",
            member = M.ReplicationConfigurationDescription,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeTagsInput = {
    type = "structure",
    members = {
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        FileSystemId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeTagsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.InvalidPolicyException = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
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

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ModifyMountTargetSecurityGroupsInput = {
    type = "structure",
    members = {
        MountTargetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ModifyMountTargetSecurityGroupsOutput = {
    type = "structure",
}

M.PutAccountPreferencesInput = {
    type = "structure",
    members = {
        ResourceIdType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutAccountPreferencesOutput = {
    type = "structure",
    members = {
        ResourceIdPreference = M.ResourceIdPreference,
    },
}

M.PutBackupPolicyInput = {
    type = "structure",
    members = {
        FileSystemId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BackupPolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BackupPolicy }),
    },
}

M.PutBackupPolicyOutput = {
    type = "structure",
    members = {
        BackupPolicy = M.BackupPolicy,
    },
}

M.PutFileSystemPolicyInput = {
    type = "structure",
    members = {
        FileSystemId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BypassPolicyLockoutSafetyCheck = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.PutFileSystemPolicyOutput = {
    type = "structure",
    members = {
        FileSystemId = {
            type = "string",
        },
        Policy = {
            type = "string",
        },
    },
}

M.PutLifecycleConfigurationInput = {
    type = "structure",
    members = {
        FileSystemId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LifecyclePolicies = {
            type = "list",
            member = M.LifecyclePolicy,
            traits = {
                required = true,
            },
        },
    },
}

M.PutLifecycleConfigurationOutput = {
    type = "structure",
    members = {
        LifecyclePolicies = {
            type = "list",
            member = M.LifecyclePolicy,
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                http_label = true,
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
        ResourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
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

M.TooManyRequests = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.UpdateFileSystemInput = {
    type = "structure",
    members = {
        FileSystemId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ThroughputMode = {
            type = "string",
        },
        ProvisionedThroughputInMibps = {
            type = "double",
        },
    },
}

M.UpdateFileSystemOutput = {
    type = "structure",
    members = {
        OwnerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileSystemArn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LifeCycleState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        NumberOfMountTargets = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        SizeInBytes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FileSystemSize }),
        PerformanceMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Encrypted = {
            type = "boolean",
        },
        KmsKeyId = {
            type = "string",
        },
        ThroughputMode = {
            type = "string",
        },
        ProvisionedThroughputInMibps = {
            type = "double",
        },
        AvailabilityZoneName = {
            type = "string",
        },
        AvailabilityZoneId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
        FileSystemProtection = M.FileSystemProtectionDescription,
    },
}

M.ReplicationAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        ErrorCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.UpdateFileSystemProtectionInput = {
    type = "structure",
    members = {
        FileSystemId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ReplicationOverwriteProtection = {
            type = "string",
        },
    },
}

M.UpdateFileSystemProtectionOutput = {
    type = "structure",
    members = {
        ReplicationOverwriteProtection = {
            type = "string",
        },
    },
}

return M
