local M = {}

M.AccessPointAlreadyExists = {
    type = "structure",
    id = "AccessPointAlreadyExists",
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
    id = "PosixUser",
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
    id = "CreationInfo",
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
    id = "RootDirectory",
    members = {
        Path = {
            type = "string",
        },
        CreationInfo = M.CreationInfo,
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
            traits = {
                required = true,
            },
        },
    },
}

M.AccessPointDescription = {
    type = "structure",
    id = "AccessPointDescription",
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
    id = "AccessPointLimitExceeded",
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
    id = "AccessPointNotFound",
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
    id = "AvailabilityZonesMismatch",
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
    id = "BackupPolicy",
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
    id = "BadRequest",
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
    id = "ConflictException",
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
    id = "CreateAccessPointInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
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
    id = "CreateAccessPointOutput",
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
    id = "FileSystemNotFound",
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
    id = "IncorrectFileSystemLifeCycleState",
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
    id = "InternalServerError",
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
    id = "ThrottlingException",
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
    id = "CreateFileSystemInput",
    members = {
        CreationToken = {
            type = "string",
            traits = {
                idempotency_token = true,
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
    id = "FileSystemProtectionDescription",
    members = {
        ReplicationOverwriteProtection = {
            type = "string",
        },
    },
}

M.FileSystemSize = {
    type = "structure",
    id = "FileSystemSize",
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
    id = "CreateFileSystemOutput",
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
    id = "FileSystemAlreadyExists",
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
    id = "FileSystemLimitExceeded",
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
    id = "InsufficientThroughputCapacity",
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
    id = "ThroughputLimitExceeded",
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
    id = "UnsupportedAvailabilityZone",
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
    id = "CreateMountTargetInput",
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
    id = "CreateMountTargetOutput",
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
    id = "IpAddressInUse",
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
    id = "MountTargetConflict",
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
    id = "NetworkInterfaceLimitExceeded",
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
    id = "NoFreeAddressesInSubnet",
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
    id = "SecurityGroupLimitExceeded",
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
    id = "SecurityGroupNotFound",
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
    id = "SubnetNotFound",
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
    id = "DestinationToCreate",
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
    id = "CreateReplicationConfigurationInput",
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
    id = "Destination",
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
    id = "CreateReplicationConfigurationOutput",
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
    id = "ReplicationNotFound",
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
    id = "ValidationException",
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
    id = "CreateTagsInput",
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
    id = "CreateTagsOutput",
}

M.DeleteAccessPointInput = {
    type = "structure",
    id = "DeleteAccessPointInput",
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
    id = "DeleteAccessPointOutput",
}

M.DeleteFileSystemInput = {
    type = "structure",
    id = "DeleteFileSystemInput",
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
    id = "DeleteFileSystemOutput",
}

M.FileSystemInUse = {
    type = "structure",
    id = "FileSystemInUse",
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
    id = "DeleteFileSystemPolicyInput",
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
    id = "DeleteFileSystemPolicyOutput",
}

M.DeleteMountTargetInput = {
    type = "structure",
    id = "DeleteMountTargetInput",
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
    id = "DeleteMountTargetOutput",
}

M.DependencyTimeout = {
    type = "structure",
    id = "DependencyTimeout",
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
    id = "MountTargetNotFound",
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
    id = "DeleteReplicationConfigurationInput",
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
    id = "DeleteReplicationConfigurationOutput",
}

M.DeleteTagsInput = {
    type = "structure",
    id = "DeleteTagsInput",
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
    id = "DeleteTagsOutput",
}

M.DescribeAccessPointsInput = {
    type = "structure",
    id = "DescribeAccessPointsInput",
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
    id = "DescribeAccessPointsOutput",
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
    id = "DescribeAccountPreferencesInput",
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
    id = "ResourceIdPreference",
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
    id = "DescribeAccountPreferencesOutput",
    members = {
        ResourceIdPreference = M.ResourceIdPreference,
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeBackupPolicyInput = {
    type = "structure",
    id = "DescribeBackupPolicyInput",
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
    id = "DescribeBackupPolicyOutput",
    members = {
        BackupPolicy = M.BackupPolicy,
    },
}

M.PolicyNotFound = {
    type = "structure",
    id = "PolicyNotFound",
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
    id = "DescribeFileSystemPolicyInput",
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
    id = "DescribeFileSystemPolicyOutput",
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
    id = "DescribeFileSystemsInput",
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
    id = "FileSystemDescription",
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
    id = "DescribeFileSystemsOutput",
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
    id = "DescribeLifecycleConfigurationInput",
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
    id = "LifecyclePolicy",
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
    id = "DescribeLifecycleConfigurationOutput",
    members = {
        LifecyclePolicies = {
            type = "list",
            member = M.LifecyclePolicy,
        },
    },
}

M.DescribeMountTargetsInput = {
    type = "structure",
    id = "DescribeMountTargetsInput",
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
    id = "MountTargetDescription",
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
    id = "DescribeMountTargetsOutput",
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
    id = "DescribeMountTargetSecurityGroupsInput",
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
    id = "DescribeMountTargetSecurityGroupsOutput",
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
    id = "IncorrectMountTargetState",
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
    id = "DescribeReplicationConfigurationsInput",
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
    id = "ReplicationConfigurationDescription",
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
    id = "DescribeReplicationConfigurationsOutput",
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
    id = "DescribeTagsInput",
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
    id = "DescribeTagsOutput",
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
    id = "InvalidPolicyException",
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
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
    id = "ModifyMountTargetSecurityGroupsInput",
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
    id = "ModifyMountTargetSecurityGroupsOutput",
}

M.PutAccountPreferencesInput = {
    type = "structure",
    id = "PutAccountPreferencesInput",
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
    id = "PutAccountPreferencesOutput",
    members = {
        ResourceIdPreference = M.ResourceIdPreference,
    },
}

M.PutBackupPolicyInput = {
    type = "structure",
    id = "PutBackupPolicyInput",
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
    id = "PutBackupPolicyOutput",
    members = {
        BackupPolicy = M.BackupPolicy,
    },
}

M.PutFileSystemPolicyInput = {
    type = "structure",
    id = "PutFileSystemPolicyInput",
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
    id = "PutFileSystemPolicyOutput",
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
    id = "PutLifecycleConfigurationInput",
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
    id = "PutLifecycleConfigurationOutput",
    members = {
        LifecyclePolicies = {
            type = "list",
            member = M.LifecyclePolicy,
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

M.TooManyRequests = {
    type = "structure",
    id = "TooManyRequests",
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
    id = "UpdateFileSystemInput",
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
    id = "UpdateFileSystemOutput",
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
    id = "ReplicationAlreadyExists",
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
    id = "UpdateFileSystemProtectionInput",
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
    id = "UpdateFileSystemProtectionOutput",
    members = {
        ReplicationOverwriteProtection = {
            type = "string",
        },
    },
}

return M
