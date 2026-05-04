local M = {}

M.AccessPointAlreadyOwnedByYou = {
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

M.ActiveDirectoryBackupAttributes = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
        },
        ActiveDirectoryId = {
            type = "string",
        },
        ResourceARN = {
            type = "string",
        },
    },
}

M.ActiveDirectoryErrorType = {
    DOMAIN_NOT_FOUND = "DOMAIN_NOT_FOUND",
    INCOMPATIBLE_DOMAIN_MODE = "INCOMPATIBLE_DOMAIN_MODE",
    WRONG_VPC = "WRONG_VPC",
    INVALID_NETWORK_TYPE = "INVALID_NETWORK_TYPE",
    INVALID_DOMAIN_STAGE = "INVALID_DOMAIN_STAGE",
}

M.ActiveDirectoryError = {
    type = "structure",
    error = "client",
    members = {
        ActiveDirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.AdministrativeActionType = {
    FILE_SYSTEM_UPDATE = "FILE_SYSTEM_UPDATE",
    STORAGE_OPTIMIZATION = "STORAGE_OPTIMIZATION",
    FILE_SYSTEM_ALIAS_ASSOCIATION = "FILE_SYSTEM_ALIAS_ASSOCIATION",
    FILE_SYSTEM_ALIAS_DISASSOCIATION = "FILE_SYSTEM_ALIAS_DISASSOCIATION",
    VOLUME_UPDATE = "VOLUME_UPDATE",
    SNAPSHOT_UPDATE = "SNAPSHOT_UPDATE",
    RELEASE_NFS_V3_LOCKS = "RELEASE_NFS_V3_LOCKS",
    VOLUME_RESTORE = "VOLUME_RESTORE",
    THROUGHPUT_OPTIMIZATION = "THROUGHPUT_OPTIMIZATION",
    IOPS_OPTIMIZATION = "IOPS_OPTIMIZATION",
    STORAGE_TYPE_OPTIMIZATION = "STORAGE_TYPE_OPTIMIZATION",
    MISCONFIGURED_STATE_RECOVERY = "MISCONFIGURED_STATE_RECOVERY",
    VOLUME_UPDATE_WITH_SNAPSHOT = "VOLUME_UPDATE_WITH_SNAPSHOT",
    VOLUME_INITIALIZE_WITH_SNAPSHOT = "VOLUME_INITIALIZE_WITH_SNAPSHOT",
    DOWNLOAD_DATA_FROM_BACKUP = "DOWNLOAD_DATA_FROM_BACKUP",
}

M.AdministrativeActionFailureDetails = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Status = {
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
    PENDING = "PENDING",
    COMPLETED = "COMPLETED",
    UPDATED_OPTIMIZING = "UPDATED_OPTIMIZING",
    OPTIMIZING = "OPTIMIZING",
    PAUSED = "PAUSED",
    CANCELLED = "CANCELLED",
}

M.FileSystemFailureDetails = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.FileSystemType = {
    WINDOWS = "WINDOWS",
    LUSTRE = "LUSTRE",
    ONTAP = "ONTAP",
    OPENZFS = "OPENZFS",
}

M.FileSystemLifecycle = {
    AVAILABLE = "AVAILABLE",
    CREATING = "CREATING",
    FAILED = "FAILED",
    DELETING = "DELETING",
    MISCONFIGURED = "MISCONFIGURED",
    UPDATING = "UPDATING",
    MISCONFIGURED_UNAVAILABLE = "MISCONFIGURED_UNAVAILABLE",
}

M.DataCompressionType = {
    NONE = "NONE",
    LZ4 = "LZ4",
}

M.LustreReadCacheSizingMode = {
    NO_CACHE = "NO_CACHE",
    USER_PROVISIONED = "USER_PROVISIONED",
    PROPORTIONAL_TO_THROUGHPUT_CAPACITY = "PROPORTIONAL_TO_THROUGHPUT_CAPACITY",
}

M.LustreReadCacheConfiguration = {
    type = "structure",
    members = {
        SizingMode = {
            type = "string",
        },
        SizeGiB = {
            type = "integer",
        },
    },
}

M.AutoImportPolicyType = {
    NONE = "NONE",
    NEW = "NEW",
    NEW_CHANGED = "NEW_CHANGED",
    NEW_CHANGED_DELETED = "NEW_CHANGED_DELETED",
}

M.DataRepositoryFailureDetails = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DataRepositoryLifecycle = {
    CREATING = "CREATING",
    AVAILABLE = "AVAILABLE",
    MISCONFIGURED = "MISCONFIGURED",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.DataRepositoryConfiguration = {
    type = "structure",
    members = {
        Lifecycle = {
            type = "string",
        },
        ImportPath = {
            type = "string",
        },
        ExportPath = {
            type = "string",
        },
        ImportedFileChunkSize = {
            type = "integer",
        },
        AutoImportPolicy = {
            type = "string",
        },
        FailureDetails = M.DataRepositoryFailureDetails,
    },
}

M.LustreDeploymentType = {
    SCRATCH_1 = "SCRATCH_1",
    SCRATCH_2 = "SCRATCH_2",
    PERSISTENT_1 = "PERSISTENT_1",
    PERSISTENT_2 = "PERSISTENT_2",
}

M.DriveCacheType = {
    NONE = "NONE",
    READ = "READ",
}

M.LustreAccessAuditLogLevel = {
    DISABLED = "DISABLED",
    WARN_ONLY = "WARN_ONLY",
    ERROR_ONLY = "ERROR_ONLY",
    WARN_ERROR = "WARN_ERROR",
}

M.LustreLogConfiguration = {
    type = "structure",
    members = {
        Level = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Destination = {
            type = "string",
        },
    },
}

M.MetadataConfigurationMode = {
    AUTOMATIC = "AUTOMATIC",
    USER_PROVISIONED = "USER_PROVISIONED",
}

M.FileSystemLustreMetadataConfiguration = {
    type = "structure",
    members = {
        Iops = {
            type = "integer",
        },
        Mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LustreRootSquashConfiguration = {
    type = "structure",
    members = {
        RootSquash = {
            type = "string",
        },
        NoSquashNids = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.LustreFileSystemConfiguration = {
    type = "structure",
    members = {
        WeeklyMaintenanceStartTime = {
            type = "string",
        },
        DataRepositoryConfiguration = M.DataRepositoryConfiguration,
        DeploymentType = {
            type = "string",
        },
        PerUnitStorageThroughput = {
            type = "integer",
        },
        MountName = {
            type = "string",
        },
        DailyAutomaticBackupStartTime = {
            type = "string",
        },
        AutomaticBackupRetentionDays = {
            type = "integer",
        },
        CopyTagsToBackups = {
            type = "boolean",
        },
        DriveCacheType = {
            type = "string",
        },
        DataCompressionType = {
            type = "string",
        },
        LogConfiguration = M.LustreLogConfiguration,
        RootSquashConfiguration = M.LustreRootSquashConfiguration,
        MetadataConfiguration = M.FileSystemLustreMetadataConfiguration,
        EfaEnabled = {
            type = "boolean",
        },
        ThroughputCapacity = {
            type = "integer",
        },
        DataReadCacheConfiguration = M.LustreReadCacheConfiguration,
    },
}

M.NetworkType = {
    IPV4 = "IPV4",
    DUAL = "DUAL",
}

M.OntapDeploymentType = {
    MULTI_AZ_1 = "MULTI_AZ_1",
    SINGLE_AZ_1 = "SINGLE_AZ_1",
    SINGLE_AZ_2 = "SINGLE_AZ_2",
    MULTI_AZ_2 = "MULTI_AZ_2",
}

M.DiskIopsConfigurationMode = {
    AUTOMATIC = "AUTOMATIC",
    USER_PROVISIONED = "USER_PROVISIONED",
}

M.DiskIopsConfiguration = {
    type = "structure",
    members = {
        Mode = {
            type = "string",
        },
        Iops = {
            type = "long",
        },
    },
}

M.FileSystemEndpoint = {
    type = "structure",
    members = {
        DNSName = {
            type = "string",
        },
        IpAddresses = {
            type = "list",
            member = { type = "string" },
        },
        Ipv6Addresses = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.FileSystemEndpoints = {
    type = "structure",
    members = {
        Intercluster = M.FileSystemEndpoint,
        Management = M.FileSystemEndpoint,
    },
}

M.OntapFileSystemConfiguration = {
    type = "structure",
    members = {
        AutomaticBackupRetentionDays = {
            type = "integer",
        },
        DailyAutomaticBackupStartTime = {
            type = "string",
        },
        DeploymentType = {
            type = "string",
        },
        EndpointIpAddressRange = {
            type = "string",
        },
        Endpoints = M.FileSystemEndpoints,
        DiskIopsConfiguration = M.DiskIopsConfiguration,
        PreferredSubnetId = {
            type = "string",
        },
        RouteTableIds = {
            type = "list",
            member = { type = "string" },
        },
        ThroughputCapacity = {
            type = "integer",
        },
        WeeklyMaintenanceStartTime = {
            type = "string",
        },
        FsxAdminPassword = {
            type = "string",
        },
        HAPairs = {
            type = "integer",
        },
        ThroughputCapacityPerHAPair = {
            type = "integer",
        },
        EndpointIpv6AddressRange = {
            type = "string",
        },
    },
}

M.OpenZFSDeploymentType = {
    SINGLE_AZ_1 = "SINGLE_AZ_1",
    SINGLE_AZ_2 = "SINGLE_AZ_2",
    SINGLE_AZ_HA_1 = "SINGLE_AZ_HA_1",
    SINGLE_AZ_HA_2 = "SINGLE_AZ_HA_2",
    MULTI_AZ_1 = "MULTI_AZ_1",
}

M.OpenZFSReadCacheSizingMode = {
    NO_CACHE = "NO_CACHE",
    USER_PROVISIONED = "USER_PROVISIONED",
    PROPORTIONAL_TO_THROUGHPUT_CAPACITY = "PROPORTIONAL_TO_THROUGHPUT_CAPACITY",
}

M.OpenZFSReadCacheConfiguration = {
    type = "structure",
    members = {
        SizingMode = {
            type = "string",
        },
        SizeGiB = {
            type = "integer",
        },
    },
}

M.OpenZFSFileSystemConfiguration = {
    type = "structure",
    members = {
        AutomaticBackupRetentionDays = {
            type = "integer",
        },
        CopyTagsToBackups = {
            type = "boolean",
        },
        CopyTagsToVolumes = {
            type = "boolean",
        },
        DailyAutomaticBackupStartTime = {
            type = "string",
        },
        DeploymentType = {
            type = "string",
        },
        ThroughputCapacity = {
            type = "integer",
        },
        WeeklyMaintenanceStartTime = {
            type = "string",
        },
        DiskIopsConfiguration = M.DiskIopsConfiguration,
        RootVolumeId = {
            type = "string",
        },
        PreferredSubnetId = {
            type = "string",
        },
        EndpointIpAddressRange = {
            type = "string",
        },
        EndpointIpv6AddressRange = {
            type = "string",
        },
        RouteTableIds = {
            type = "list",
            member = { type = "string" },
        },
        EndpointIpAddress = {
            type = "string",
        },
        EndpointIpv6Address = {
            type = "string",
        },
        ReadCacheConfiguration = M.OpenZFSReadCacheConfiguration,
    },
}

M.StorageType = {
    SSD = "SSD",
    HDD = "HDD",
    INTELLIGENT_TIERING = "INTELLIGENT_TIERING",
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

M.AliasLifecycle = {
    AVAILABLE = "AVAILABLE",
    CREATING = "CREATING",
    DELETING = "DELETING",
    CREATE_FAILED = "CREATE_FAILED",
    DELETE_FAILED = "DELETE_FAILED",
}

M.Alias = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Lifecycle = {
            type = "string",
        },
    },
}

M.WindowsAccessAuditLogLevel = {
    DISABLED = "DISABLED",
    SUCCESS_ONLY = "SUCCESS_ONLY",
    FAILURE_ONLY = "FAILURE_ONLY",
    SUCCESS_AND_FAILURE = "SUCCESS_AND_FAILURE",
}

M.WindowsAuditLogConfiguration = {
    type = "structure",
    members = {
        FileAccessAuditLogLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileShareAccessAuditLogLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuditLogDestination = {
            type = "string",
        },
    },
}

M.WindowsDeploymentType = {
    MULTI_AZ_1 = "MULTI_AZ_1",
    SINGLE_AZ_1 = "SINGLE_AZ_1",
    SINGLE_AZ_2 = "SINGLE_AZ_2",
}

M.WindowsFsrmConfiguration = {
    type = "structure",
    members = {
        FsrmServiceEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        EventLogDestination = {
            type = "string",
        },
    },
}

M.FileSystemMaintenanceOperation = {
    PATCHING = "PATCHING",
    BACKING_UP = "BACKING_UP",
}

M.SelfManagedActiveDirectoryAttributes = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
        },
        OrganizationalUnitDistinguishedName = {
            type = "string",
        },
        FileSystemAdministratorsGroup = {
            type = "string",
        },
        UserName = {
            type = "string",
        },
        DnsIps = {
            type = "list",
            member = { type = "string" },
        },
        DomainJoinServiceAccountSecret = {
            type = "string",
        },
    },
}

M.WindowsFileSystemConfiguration = {
    type = "structure",
    members = {
        ActiveDirectoryId = {
            type = "string",
        },
        SelfManagedActiveDirectoryConfiguration = M.SelfManagedActiveDirectoryAttributes,
        DeploymentType = {
            type = "string",
        },
        RemoteAdministrationEndpoint = {
            type = "string",
        },
        PreferredSubnetId = {
            type = "string",
        },
        PreferredFileServerIp = {
            type = "string",
        },
        ThroughputCapacity = {
            type = "integer",
        },
        MaintenanceOperationsInProgress = {
            type = "list",
            member = { type = "string" },
        },
        WeeklyMaintenanceStartTime = {
            type = "string",
        },
        DailyAutomaticBackupStartTime = {
            type = "string",
        },
        AutomaticBackupRetentionDays = {
            type = "integer",
        },
        CopyTagsToBackups = {
            type = "boolean",
        },
        Aliases = {
            type = "list",
            member = M.Alias,
        },
        AuditLogConfiguration = M.WindowsAuditLogConfiguration,
        DiskIopsConfiguration = M.DiskIopsConfiguration,
        PreferredFileServerIpv6 = {
            type = "string",
        },
        FsrmConfiguration = M.WindowsFsrmConfiguration,
    },
}

M.SnapshotLifecycle = {
    PENDING = "PENDING",
    CREATING = "CREATING",
    DELETING = "DELETING",
    AVAILABLE = "AVAILABLE",
}

M.LifecycleTransitionReason = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.VolumeLifecycle = {
    CREATING = "CREATING",
    CREATED = "CREATED",
    DELETING = "DELETING",
    FAILED = "FAILED",
    MISCONFIGURED = "MISCONFIGURED",
    PENDING = "PENDING",
    AVAILABLE = "AVAILABLE",
}

M.AggregateConfiguration = {
    type = "structure",
    members = {
        Aggregates = {
            type = "list",
            member = { type = "string" },
        },
        TotalConstituents = {
            type = "integer",
        },
    },
}

M.FlexCacheEndpointType = {
    NONE = "NONE",
    ORIGIN = "ORIGIN",
    CACHE = "CACHE",
}

M.OntapVolumeType = {
    RW = "RW",
    DP = "DP",
    LS = "LS",
}

M.SecurityStyle = {
    UNIX = "UNIX",
    NTFS = "NTFS",
    MIXED = "MIXED",
}

M.AutocommitPeriodType = {
    MINUTES = "MINUTES",
    HOURS = "HOURS",
    DAYS = "DAYS",
    MONTHS = "MONTHS",
    YEARS = "YEARS",
    NONE = "NONE",
}

M.AutocommitPeriod = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "integer",
        },
    },
}

M.PrivilegedDelete = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
    PERMANENTLY_DISABLED = "PERMANENTLY_DISABLED",
}

M.RetentionPeriodType = {
    SECONDS = "SECONDS",
    MINUTES = "MINUTES",
    HOURS = "HOURS",
    DAYS = "DAYS",
    MONTHS = "MONTHS",
    YEARS = "YEARS",
    INFINITE = "INFINITE",
    UNSPECIFIED = "UNSPECIFIED",
}

M.RetentionPeriod = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "integer",
        },
    },
}

M.SnaplockRetentionPeriod = {
    type = "structure",
    members = {
        DefaultRetention = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RetentionPeriod }),
        MinimumRetention = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RetentionPeriod }),
        MaximumRetention = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RetentionPeriod }),
    },
}

M.SnaplockType = {
    COMPLIANCE = "COMPLIANCE",
    ENTERPRISE = "ENTERPRISE",
}

M.SnaplockConfiguration = {
    type = "structure",
    members = {
        AuditLogVolume = {
            type = "boolean",
        },
        AutocommitPeriod = M.AutocommitPeriod,
        PrivilegedDelete = {
            type = "string",
        },
        RetentionPeriod = M.SnaplockRetentionPeriod,
        SnaplockType = {
            type = "string",
        },
        VolumeAppendModeEnabled = {
            type = "boolean",
        },
    },
}

M.TieringPolicyName = {
    SNAPSHOT_ONLY = "SNAPSHOT_ONLY",
    AUTO = "AUTO",
    ALL = "ALL",
    NONE = "NONE",
}

M.TieringPolicy = {
    type = "structure",
    members = {
        CoolingPeriod = {
            type = "integer",
        },
        Name = {
            type = "string",
        },
    },
}

M.VolumeStyle = {
    FLEXVOL = "FLEXVOL",
    FLEXGROUP = "FLEXGROUP",
}

M.OntapVolumeConfiguration = {
    type = "structure",
    members = {
        FlexCacheEndpointType = {
            type = "string",
        },
        JunctionPath = {
            type = "string",
        },
        SecurityStyle = {
            type = "string",
        },
        SizeInMegabytes = {
            type = "integer",
        },
        StorageEfficiencyEnabled = {
            type = "boolean",
        },
        StorageVirtualMachineId = {
            type = "string",
        },
        StorageVirtualMachineRoot = {
            type = "boolean",
        },
        TieringPolicy = M.TieringPolicy,
        UUID = {
            type = "string",
        },
        OntapVolumeType = {
            type = "string",
        },
        SnapshotPolicy = {
            type = "string",
        },
        CopyTagsToBackups = {
            type = "boolean",
        },
        SnaplockConfiguration = M.SnaplockConfiguration,
        VolumeStyle = {
            type = "string",
        },
        AggregateConfiguration = M.AggregateConfiguration,
        SizeInBytes = {
            type = "long",
        },
    },
}

M.OpenZFSCopyStrategy = {
    CLONE = "CLONE",
    FULL_COPY = "FULL_COPY",
    INCREMENTAL_COPY = "INCREMENTAL_COPY",
}

M.OpenZFSDataCompressionType = {
    NONE = "NONE",
    ZSTD = "ZSTD",
    LZ4 = "LZ4",
}

M.OpenZFSClientConfiguration = {
    type = "structure",
    members = {
        Clients = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Options = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.OpenZFSNfsExport = {
    type = "structure",
    members = {
        ClientConfigurations = {
            type = "list",
            member = M.OpenZFSClientConfiguration,
            traits = {
                required = true,
            },
        },
    },
}

M.OpenZFSOriginSnapshotConfiguration = {
    type = "structure",
    members = {
        SnapshotARN = {
            type = "string",
        },
        CopyStrategy = {
            type = "string",
        },
    },
}

M.OpenZFSQuotaType = {
    USER = "USER",
    GROUP = "GROUP",
}

M.OpenZFSUserOrGroupQuota = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        StorageCapacityQuotaGiB = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.OpenZFSVolumeConfiguration = {
    type = "structure",
    members = {
        ParentVolumeId = {
            type = "string",
        },
        VolumePath = {
            type = "string",
        },
        StorageCapacityReservationGiB = {
            type = "integer",
        },
        StorageCapacityQuotaGiB = {
            type = "integer",
        },
        RecordSizeKiB = {
            type = "integer",
        },
        DataCompressionType = {
            type = "string",
        },
        CopyTagsToSnapshots = {
            type = "boolean",
        },
        OriginSnapshot = M.OpenZFSOriginSnapshotConfiguration,
        ReadOnly = {
            type = "boolean",
        },
        NfsExports = {
            type = "list",
            member = M.OpenZFSNfsExport,
        },
        UserAndGroupQuotas = {
            type = "list",
            member = M.OpenZFSUserOrGroupQuota,
        },
        RestoreToSnapshot = {
            type = "string",
        },
        DeleteIntermediateSnaphots = {
            type = "boolean",
        },
        DeleteClonedVolumes = {
            type = "boolean",
        },
        DeleteIntermediateData = {
            type = "boolean",
        },
        SourceSnapshotARN = {
            type = "string",
        },
        DestinationSnapshot = {
            type = "string",
        },
        CopyStrategy = {
            type = "string",
        },
    },
}

M.VolumeType = {
    ONTAP = "ONTAP",
    OPENZFS = "OPENZFS",
}

M.AssociateFileSystemAliasesInput = {
    type = "structure",
    members = {
        ClientRequestToken = {
            type = "string",
        },
        FileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Aliases = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateFileSystemAliasesOutput = {
    type = "structure",
    members = {
        Aliases = {
            type = "list",
            member = M.Alias,
        },
    },
}

M.BadRequest = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.FileSystemNotFound = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InternalServerError = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EventType = {
    NEW = "NEW",
    CHANGED = "CHANGED",
    DELETED = "DELETED",
}

M.AutoExportPolicy = {
    type = "structure",
    members = {
        Events = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AutoImportPolicy = {
    type = "structure",
    members = {
        Events = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CancelDataRepositoryTaskInput = {
    type = "structure",
    members = {
        TaskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataRepositoryTaskLifecycle = {
    PENDING = "PENDING",
    EXECUTING = "EXECUTING",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
    CANCELED = "CANCELED",
    CANCELING = "CANCELING",
}

M.CancelDataRepositoryTaskOutput = {
    type = "structure",
    members = {
        Lifecycle = {
            type = "string",
        },
        TaskId = {
            type = "string",
        },
    },
}

M.DataRepositoryTaskEnded = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DataRepositoryTaskNotFound = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedOperation = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.BackupNotFound = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CopyBackupInput = {
    type = "structure",
    members = {
        ClientRequestToken = {
            type = "string",
        },
        SourceBackupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceRegion = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        CopyTags = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.BackupFailureDetails = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.BackupLifecycle = {
    AVAILABLE = "AVAILABLE",
    CREATING = "CREATING",
    TRANSFERRING = "TRANSFERRING",
    DELETED = "DELETED",
    FAILED = "FAILED",
    PENDING = "PENDING",
    COPYING = "COPYING",
}

M.ResourceType = {
    FILE_SYSTEM = "FILE_SYSTEM",
    VOLUME = "VOLUME",
}

M.BackupType = {
    AUTOMATIC = "AUTOMATIC",
    USER_INITIATED = "USER_INITIATED",
    AWS_BACKUP = "AWS_BACKUP",
}

M.IncompatibleParameterError = {
    type = "structure",
    error = "client",
    members = {
        Parameter = {
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

M.IncompatibleRegionForMultiAZ = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidDestinationKmsKey = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidRegion = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidSourceKmsKey = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceLimit = {
    FILE_SYSTEM_COUNT = "FILE_SYSTEM_COUNT",
    TOTAL_THROUGHPUT_CAPACITY = "TOTAL_THROUGHPUT_CAPACITY",
    TOTAL_STORAGE = "TOTAL_STORAGE",
    TOTAL_USER_INITIATED_BACKUPS = "TOTAL_USER_INITIATED_BACKUPS",
    TOTAL_USER_TAGS = "TOTAL_USER_TAGS",
    TOTAL_IN_PROGRESS_COPY_BACKUPS = "TOTAL_IN_PROGRESS_COPY_BACKUPS",
    STORAGE_VIRTUAL_MACHINES_PER_FILE_SYSTEM = "STORAGE_VIRTUAL_MACHINES_PER_FILE_SYSTEM",
    VOLUMES_PER_FILE_SYSTEM = "VOLUMES_PER_FILE_SYSTEM",
    TOTAL_SSD_IOPS = "TOTAL_SSD_IOPS",
    FILE_CACHE_COUNT = "FILE_CACHE_COUNT",
}

M.ServiceLimitExceeded = {
    type = "structure",
    error = "client",
    members = {
        Limit = {
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

M.SourceBackupUnavailable = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        BackupId = {
            type = "string",
        },
    },
}

M.UpdateOpenZFSVolumeOption = {
    DELETE_INTERMEDIATE_SNAPSHOTS = "DELETE_INTERMEDIATE_SNAPSHOTS",
    DELETE_CLONED_VOLUMES = "DELETE_CLONED_VOLUMES",
    DELETE_INTERMEDIATE_DATA = "DELETE_INTERMEDIATE_DATA",
}

M.CopySnapshotAndUpdateVolumeInput = {
    type = "structure",
    members = {
        ClientRequestToken = {
            type = "string",
        },
        VolumeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceSnapshotARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CopyStrategy = {
            type = "string",
        },
        Options = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.OntapFileSystemUserType = {
    UNIX = "UNIX",
    WINDOWS = "WINDOWS",
}

M.OntapUnixFileSystemUser = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OntapWindowsFileSystemUser = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OntapFileSystemIdentity = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UnixUser = M.OntapUnixFileSystemUser,
        WindowsUser = M.OntapWindowsFileSystemUser,
    },
}

M.CreateAndAttachS3AccessPointOntapConfiguration = {
    type = "structure",
    members = {
        VolumeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileSystemIdentity = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OntapFileSystemIdentity }),
    },
}

M.OpenZFSPosixFileSystemUser = {
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

M.OpenZFSFileSystemUserType = {
    POSIX = "POSIX",
}

M.OpenZFSFileSystemIdentity = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PosixUser = M.OpenZFSPosixFileSystemUser,
    },
}

M.CreateAndAttachS3AccessPointOpenZFSConfiguration = {
    type = "structure",
    members = {
        VolumeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileSystemIdentity = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OpenZFSFileSystemIdentity }),
    },
}

M.S3AccessPointVpcConfiguration = {
    type = "structure",
    members = {
        VpcId = {
            type = "string",
        },
    },
}

M.CreateAndAttachS3AccessPointS3Configuration = {
    type = "structure",
    members = {
        VpcConfiguration = M.S3AccessPointVpcConfiguration,
        Policy = {
            type = "string",
        },
    },
}

M.S3AccessPointAttachmentType = {
    OPENZFS = "OPENZFS",
    ONTAP = "ONTAP",
}

M.CreateAndAttachS3AccessPointInput = {
    type = "structure",
    members = {
        ClientRequestToken = {
            type = "string",
        },
        Name = {
            type = "string",
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
        OpenZFSConfiguration = M.CreateAndAttachS3AccessPointOpenZFSConfiguration,
        OntapConfiguration = M.CreateAndAttachS3AccessPointOntapConfiguration,
        S3AccessPoint = M.CreateAndAttachS3AccessPointS3Configuration,
    },
}

M.S3AccessPointAttachmentLifecycle = {
    AVAILABLE = "AVAILABLE",
    CREATING = "CREATING",
    DELETING = "DELETING",
    UPDATING = "UPDATING",
    FAILED = "FAILED",
    MISCONFIGURED = "MISCONFIGURED",
}

M.S3AccessPointOntapConfiguration = {
    type = "structure",
    members = {
        VolumeId = {
            type = "string",
        },
        FileSystemIdentity = M.OntapFileSystemIdentity,
    },
}

M.S3AccessPointOpenZFSConfiguration = {
    type = "structure",
    members = {
        VolumeId = {
            type = "string",
        },
        FileSystemIdentity = M.OpenZFSFileSystemIdentity,
    },
}

M.S3AccessPoint = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
        },
        Alias = {
            type = "string",
        },
        VpcConfiguration = M.S3AccessPointVpcConfiguration,
    },
}

M.S3AccessPointAttachment = {
    type = "structure",
    members = {
        Lifecycle = {
            type = "string",
        },
        LifecycleTransitionReason = M.LifecycleTransitionReason,
        CreationTime = {
            type = "timestamp",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        OpenZFSConfiguration = M.S3AccessPointOpenZFSConfiguration,
        OntapConfiguration = M.S3AccessPointOntapConfiguration,
        S3AccessPoint = M.S3AccessPoint,
    },
}

M.CreateAndAttachS3AccessPointOutput = {
    type = "structure",
    members = {
        S3AccessPointAttachment = M.S3AccessPointAttachment,
    },
}

M.InvalidAccessPoint = {
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

M.InvalidRequest = {
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

M.TooManyAccessPoints = {
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

M.VolumeNotFound = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.BackupInProgress = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateBackupInput = {
    type = "structure",
    members = {
        FileSystemId = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        VolumeId = {
            type = "string",
        },
    },
}

M.S3DataRepositoryConfiguration = {
    type = "structure",
    members = {
        AutoImportPolicy = M.AutoImportPolicy,
        AutoExportPolicy = M.AutoExportPolicy,
    },
}

M.CreateDataRepositoryAssociationInput = {
    type = "structure",
    members = {
        FileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileSystemPath = {
            type = "string",
        },
        DataRepositoryPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BatchImportMetaDataOnCreate = {
            type = "boolean",
        },
        ImportedFileChunkSize = {
            type = "integer",
        },
        S3 = M.S3DataRepositoryConfiguration,
        ClientRequestToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.NfsVersion = {
    NFS3 = "NFS3",
}

M.NFSDataRepositoryConfiguration = {
    type = "structure",
    members = {
        Version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DnsIps = {
            type = "list",
            member = { type = "string" },
        },
        AutoExportPolicy = M.AutoExportPolicy,
    },
}

M.DataRepositoryAssociation = {
    type = "structure",
    members = {
        AssociationId = {
            type = "string",
        },
        ResourceARN = {
            type = "string",
        },
        FileSystemId = {
            type = "string",
        },
        Lifecycle = {
            type = "string",
        },
        FailureDetails = M.DataRepositoryFailureDetails,
        FileSystemPath = {
            type = "string",
        },
        DataRepositoryPath = {
            type = "string",
        },
        BatchImportMetaDataOnCreate = {
            type = "boolean",
        },
        ImportedFileChunkSize = {
            type = "integer",
        },
        S3 = M.S3DataRepositoryConfiguration,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        CreationTime = {
            type = "timestamp",
        },
        FileCacheId = {
            type = "string",
        },
        FileCachePath = {
            type = "string",
        },
        DataRepositorySubdirectories = {
            type = "list",
            member = { type = "string" },
        },
        NFS = M.NFSDataRepositoryConfiguration,
    },
}

M.CreateDataRepositoryAssociationOutput = {
    type = "structure",
    members = {
        Association = M.DataRepositoryAssociation,
    },
}

M.Unit = {
    DAYS = "DAYS",
}

M.DurationSinceLastAccess = {
    type = "structure",
    members = {
        Unit = {
            type = "string",
        },
        Value = {
            type = "long",
        },
    },
}

M.ReleaseConfiguration = {
    type = "structure",
    members = {
        DurationSinceLastAccess = M.DurationSinceLastAccess,
    },
}

M.ReportFormat = {
    REPORT_CSV_20191124 = "REPORT_CSV_20191124",
}

M.ReportScope = {
    FAILED_FILES_ONLY = "FAILED_FILES_ONLY",
}

M.CompletionReport = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Path = {
            type = "string",
        },
        Format = {
            type = "string",
        },
        Scope = {
            type = "string",
        },
    },
}

M.DataRepositoryTaskType = {
    EXPORT = "EXPORT_TO_REPOSITORY",
    IMPORT = "IMPORT_METADATA_FROM_REPOSITORY",
    EVICTION = "RELEASE_DATA_FROM_FILESYSTEM",
    AUTO_TRIGGERED_EVICTION = "AUTO_RELEASE_DATA",
}

M.CreateDataRepositoryTaskInput = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Paths = {
            type = "list",
            member = { type = "string" },
        },
        FileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Report = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CompletionReport }),
        ClientRequestToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        CapacityToRelease = {
            type = "long",
        },
        ReleaseConfiguration = M.ReleaseConfiguration,
    },
}

M.DataRepositoryTaskFailureDetails = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DataRepositoryTaskStatus = {
    type = "structure",
    members = {
        TotalCount = {
            type = "long",
        },
        SucceededCount = {
            type = "long",
        },
        FailedCount = {
            type = "long",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        ReleasedCapacity = {
            type = "long",
        },
    },
}

M.DataRepositoryTask = {
    type = "structure",
    members = {
        TaskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Lifecycle = {
            type = "string",
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
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        ResourceARN = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        FileSystemId = {
            type = "string",
        },
        Paths = {
            type = "list",
            member = { type = "string" },
        },
        FailureDetails = M.DataRepositoryTaskFailureDetails,
        Status = M.DataRepositoryTaskStatus,
        Report = M.CompletionReport,
        CapacityToRelease = {
            type = "long",
        },
        FileCacheId = {
            type = "string",
        },
        ReleaseConfiguration = M.ReleaseConfiguration,
    },
}

M.CreateDataRepositoryTaskOutput = {
    type = "structure",
    members = {
        DataRepositoryTask = M.DataRepositoryTask,
    },
}

M.DataRepositoryTaskExecuting = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.FileCacheNFSConfiguration = {
    type = "structure",
    members = {
        Version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DnsIps = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.FileCacheDataRepositoryAssociation = {
    type = "structure",
    members = {
        FileCachePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataRepositoryPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataRepositorySubdirectories = {
            type = "list",
            member = { type = "string" },
        },
        NFS = M.FileCacheNFSConfiguration,
    },
}

M.FileCacheType = {
    LUSTRE = "LUSTRE",
}

M.FileCacheLustreDeploymentType = {
    CACHE_1 = "CACHE_1",
}

M.FileCacheLustreMetadataConfiguration = {
    type = "structure",
    members = {
        StorageCapacity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateFileCacheLustreConfiguration = {
    type = "structure",
    members = {
        PerUnitStorageThroughput = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        DeploymentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WeeklyMaintenanceStartTime = {
            type = "string",
        },
        MetadataConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FileCacheLustreMetadataConfiguration }),
    },
}

M.CreateFileCacheInput = {
    type = "structure",
    members = {
        ClientRequestToken = {
            type = "string",
        },
        FileCacheType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileCacheTypeVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StorageCapacity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        CopyTagsToDataRepositoryAssociations = {
            type = "boolean",
        },
        KmsKeyId = {
            type = "string",
        },
        LustreConfiguration = M.CreateFileCacheLustreConfiguration,
        DataRepositoryAssociations = {
            type = "list",
            member = M.FileCacheDataRepositoryAssociation,
        },
    },
}

M.FileCacheFailureDetails = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.FileCacheLifecycle = {
    AVAILABLE = "AVAILABLE",
    CREATING = "CREATING",
    DELETING = "DELETING",
    UPDATING = "UPDATING",
    FAILED = "FAILED",
}

M.FileCacheLustreConfiguration = {
    type = "structure",
    members = {
        PerUnitStorageThroughput = {
            type = "integer",
        },
        DeploymentType = {
            type = "string",
        },
        MountName = {
            type = "string",
        },
        WeeklyMaintenanceStartTime = {
            type = "string",
        },
        MetadataConfiguration = M.FileCacheLustreMetadataConfiguration,
        LogConfiguration = M.LustreLogConfiguration,
    },
}

M.FileCacheCreating = {
    type = "structure",
    members = {
        OwnerId = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        FileCacheId = {
            type = "string",
        },
        FileCacheType = {
            type = "string",
        },
        FileCacheTypeVersion = {
            type = "string",
        },
        Lifecycle = {
            type = "string",
        },
        FailureDetails = M.FileCacheFailureDetails,
        StorageCapacity = {
            type = "integer",
        },
        VpcId = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        NetworkInterfaceIds = {
            type = "list",
            member = { type = "string" },
        },
        DNSName = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        ResourceARN = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        CopyTagsToDataRepositoryAssociations = {
            type = "boolean",
        },
        LustreConfiguration = M.FileCacheLustreConfiguration,
        DataRepositoryAssociationIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateFileCacheOutput = {
    type = "structure",
    members = {
        FileCache = M.FileCacheCreating,
    },
}

M.InvalidNetworkSettings = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        InvalidSubnetId = {
            type = "string",
        },
        InvalidSecurityGroupId = {
            type = "string",
        },
        InvalidRouteTableId = {
            type = "string",
        },
    },
}

M.InvalidPerUnitStorageThroughput = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MissingFileCacheConfiguration = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LustreLogCreateConfiguration = {
    type = "structure",
    members = {
        Level = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Destination = {
            type = "string",
        },
    },
}

M.CreateFileSystemLustreMetadataConfiguration = {
    type = "structure",
    members = {
        Iops = {
            type = "integer",
        },
        Mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateFileSystemLustreConfiguration = {
    type = "structure",
    members = {
        WeeklyMaintenanceStartTime = {
            type = "string",
        },
        ImportPath = {
            type = "string",
        },
        ExportPath = {
            type = "string",
        },
        ImportedFileChunkSize = {
            type = "integer",
        },
        DeploymentType = {
            type = "string",
        },
        AutoImportPolicy = {
            type = "string",
        },
        PerUnitStorageThroughput = {
            type = "integer",
        },
        DailyAutomaticBackupStartTime = {
            type = "string",
        },
        AutomaticBackupRetentionDays = {
            type = "integer",
        },
        CopyTagsToBackups = {
            type = "boolean",
        },
        DriveCacheType = {
            type = "string",
        },
        DataCompressionType = {
            type = "string",
        },
        EfaEnabled = {
            type = "boolean",
        },
        LogConfiguration = M.LustreLogCreateConfiguration,
        RootSquashConfiguration = M.LustreRootSquashConfiguration,
        MetadataConfiguration = M.CreateFileSystemLustreMetadataConfiguration,
        ThroughputCapacity = {
            type = "integer",
        },
        DataReadCacheConfiguration = M.LustreReadCacheConfiguration,
    },
}

M.CreateFileSystemOntapConfiguration = {
    type = "structure",
    members = {
        AutomaticBackupRetentionDays = {
            type = "integer",
        },
        DailyAutomaticBackupStartTime = {
            type = "string",
        },
        DeploymentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointIpAddressRange = {
            type = "string",
        },
        FsxAdminPassword = {
            type = "string",
        },
        DiskIopsConfiguration = M.DiskIopsConfiguration,
        PreferredSubnetId = {
            type = "string",
        },
        RouteTableIds = {
            type = "list",
            member = { type = "string" },
        },
        ThroughputCapacity = {
            type = "integer",
        },
        WeeklyMaintenanceStartTime = {
            type = "string",
        },
        HAPairs = {
            type = "integer",
        },
        ThroughputCapacityPerHAPair = {
            type = "integer",
        },
        EndpointIpv6AddressRange = {
            type = "string",
        },
    },
}

M.OpenZFSCreateRootVolumeConfiguration = {
    type = "structure",
    members = {
        RecordSizeKiB = {
            type = "integer",
        },
        DataCompressionType = {
            type = "string",
        },
        NfsExports = {
            type = "list",
            member = M.OpenZFSNfsExport,
        },
        UserAndGroupQuotas = {
            type = "list",
            member = M.OpenZFSUserOrGroupQuota,
        },
        CopyTagsToSnapshots = {
            type = "boolean",
        },
        ReadOnly = {
            type = "boolean",
        },
    },
}

M.CreateFileSystemOpenZFSConfiguration = {
    type = "structure",
    members = {
        AutomaticBackupRetentionDays = {
            type = "integer",
        },
        CopyTagsToBackups = {
            type = "boolean",
        },
        CopyTagsToVolumes = {
            type = "boolean",
        },
        DailyAutomaticBackupStartTime = {
            type = "string",
        },
        DeploymentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ThroughputCapacity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        WeeklyMaintenanceStartTime = {
            type = "string",
        },
        DiskIopsConfiguration = M.DiskIopsConfiguration,
        RootVolumeConfiguration = M.OpenZFSCreateRootVolumeConfiguration,
        PreferredSubnetId = {
            type = "string",
        },
        EndpointIpAddressRange = {
            type = "string",
        },
        EndpointIpv6AddressRange = {
            type = "string",
        },
        RouteTableIds = {
            type = "list",
            member = { type = "string" },
        },
        ReadCacheConfiguration = M.OpenZFSReadCacheConfiguration,
    },
}

M.WindowsAuditLogCreateConfiguration = {
    type = "structure",
    members = {
        FileAccessAuditLogLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileShareAccessAuditLogLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuditLogDestination = {
            type = "string",
        },
    },
}

M.SelfManagedActiveDirectoryConfiguration = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OrganizationalUnitDistinguishedName = {
            type = "string",
        },
        FileSystemAdministratorsGroup = {
            type = "string",
        },
        UserName = {
            type = "string",
        },
        Password = {
            type = "string",
        },
        DnsIps = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        DomainJoinServiceAccountSecret = {
            type = "string",
        },
    },
}

M.CreateFileSystemWindowsConfiguration = {
    type = "structure",
    members = {
        ActiveDirectoryId = {
            type = "string",
        },
        SelfManagedActiveDirectoryConfiguration = M.SelfManagedActiveDirectoryConfiguration,
        DeploymentType = {
            type = "string",
        },
        PreferredSubnetId = {
            type = "string",
        },
        ThroughputCapacity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        WeeklyMaintenanceStartTime = {
            type = "string",
        },
        DailyAutomaticBackupStartTime = {
            type = "string",
        },
        AutomaticBackupRetentionDays = {
            type = "integer",
        },
        CopyTagsToBackups = {
            type = "boolean",
        },
        Aliases = {
            type = "list",
            member = { type = "string" },
        },
        AuditLogConfiguration = M.WindowsAuditLogCreateConfiguration,
        DiskIopsConfiguration = M.DiskIopsConfiguration,
        FsrmConfiguration = M.WindowsFsrmConfiguration,
    },
}

M.CreateFileSystemInput = {
    type = "structure",
    members = {
        ClientRequestToken = {
            type = "string",
        },
        FileSystemType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StorageCapacity = {
            type = "integer",
        },
        StorageType = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        KmsKeyId = {
            type = "string",
        },
        WindowsConfiguration = M.CreateFileSystemWindowsConfiguration,
        LustreConfiguration = M.CreateFileSystemLustreConfiguration,
        OntapConfiguration = M.CreateFileSystemOntapConfiguration,
        FileSystemTypeVersion = {
            type = "string",
        },
        OpenZFSConfiguration = M.CreateFileSystemOpenZFSConfiguration,
        NetworkType = {
            type = "string",
        },
    },
}

M.InvalidExportPath = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidImportPath = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MissingFileSystemConfiguration = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateFileSystemFromBackupInput = {
    type = "structure",
    members = {
        BackupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        WindowsConfiguration = M.CreateFileSystemWindowsConfiguration,
        LustreConfiguration = M.CreateFileSystemLustreConfiguration,
        StorageType = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        FileSystemTypeVersion = {
            type = "string",
        },
        OpenZFSConfiguration = M.CreateFileSystemOpenZFSConfiguration,
        StorageCapacity = {
            type = "integer",
        },
        NetworkType = {
            type = "string",
        },
    },
}

M.CreateSnapshotInput = {
    type = "structure",
    members = {
        ClientRequestToken = {
            type = "string",
        },
        Name = {
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
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateSvmActiveDirectoryConfiguration = {
    type = "structure",
    members = {
        NetBiosName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SelfManagedActiveDirectoryConfiguration = M.SelfManagedActiveDirectoryConfiguration,
    },
}

M.StorageVirtualMachineRootVolumeSecurityStyle = {
    UNIX = "UNIX",
    NTFS = "NTFS",
    MIXED = "MIXED",
}

M.CreateStorageVirtualMachineInput = {
    type = "structure",
    members = {
        ActiveDirectoryConfiguration = M.CreateSvmActiveDirectoryConfiguration,
        ClientRequestToken = {
            type = "string",
        },
        FileSystemId = {
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
        SvmAdminPassword = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        RootVolumeSecurityStyle = {
            type = "string",
        },
    },
}

M.SvmActiveDirectoryConfiguration = {
    type = "structure",
    members = {
        NetBiosName = {
            type = "string",
        },
        SelfManagedActiveDirectoryConfiguration = M.SelfManagedActiveDirectoryAttributes,
    },
}

M.SvmEndpoint = {
    type = "structure",
    members = {
        DNSName = {
            type = "string",
        },
        IpAddresses = {
            type = "list",
            member = { type = "string" },
        },
        Ipv6Addresses = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SvmEndpoints = {
    type = "structure",
    members = {
        Iscsi = M.SvmEndpoint,
        Management = M.SvmEndpoint,
        Nfs = M.SvmEndpoint,
        Smb = M.SvmEndpoint,
    },
}

M.StorageVirtualMachineLifecycle = {
    CREATED = "CREATED",
    CREATING = "CREATING",
    DELETING = "DELETING",
    FAILED = "FAILED",
    MISCONFIGURED = "MISCONFIGURED",
    PENDING = "PENDING",
}

M.StorageVirtualMachineSubtype = {
    DEFAULT = "DEFAULT",
    DP_DESTINATION = "DP_DESTINATION",
    SYNC_DESTINATION = "SYNC_DESTINATION",
    SYNC_SOURCE = "SYNC_SOURCE",
}

M.StorageVirtualMachine = {
    type = "structure",
    members = {
        ActiveDirectoryConfiguration = M.SvmActiveDirectoryConfiguration,
        CreationTime = {
            type = "timestamp",
        },
        Endpoints = M.SvmEndpoints,
        FileSystemId = {
            type = "string",
        },
        Lifecycle = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        ResourceARN = {
            type = "string",
        },
        StorageVirtualMachineId = {
            type = "string",
        },
        Subtype = {
            type = "string",
        },
        UUID = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        LifecycleTransitionReason = M.LifecycleTransitionReason,
        RootVolumeSecurityStyle = {
            type = "string",
        },
    },
}

M.CreateStorageVirtualMachineOutput = {
    type = "structure",
    members = {
        StorageVirtualMachine = M.StorageVirtualMachine,
    },
}

M.CreateAggregateConfiguration = {
    type = "structure",
    members = {
        Aggregates = {
            type = "list",
            member = { type = "string" },
        },
        ConstituentsPerAggregate = {
            type = "integer",
        },
    },
}

M.InputOntapVolumeType = {
    RW = "RW",
    DP = "DP",
}

M.CreateSnaplockConfiguration = {
    type = "structure",
    members = {
        AuditLogVolume = {
            type = "boolean",
        },
        AutocommitPeriod = M.AutocommitPeriod,
        PrivilegedDelete = {
            type = "string",
        },
        RetentionPeriod = M.SnaplockRetentionPeriod,
        SnaplockType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VolumeAppendModeEnabled = {
            type = "boolean",
        },
    },
}

M.CreateOntapVolumeConfiguration = {
    type = "structure",
    members = {
        JunctionPath = {
            type = "string",
        },
        SecurityStyle = {
            type = "string",
        },
        SizeInMegabytes = {
            type = "integer",
        },
        StorageEfficiencyEnabled = {
            type = "boolean",
        },
        StorageVirtualMachineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TieringPolicy = M.TieringPolicy,
        OntapVolumeType = {
            type = "string",
        },
        SnapshotPolicy = {
            type = "string",
        },
        CopyTagsToBackups = {
            type = "boolean",
        },
        SnaplockConfiguration = M.CreateSnaplockConfiguration,
        VolumeStyle = {
            type = "string",
        },
        AggregateConfiguration = M.CreateAggregateConfiguration,
        SizeInBytes = {
            type = "long",
        },
    },
}

M.CreateOpenZFSOriginSnapshotConfiguration = {
    type = "structure",
    members = {
        SnapshotARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CopyStrategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateOpenZFSVolumeConfiguration = {
    type = "structure",
    members = {
        ParentVolumeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StorageCapacityReservationGiB = {
            type = "integer",
        },
        StorageCapacityQuotaGiB = {
            type = "integer",
        },
        RecordSizeKiB = {
            type = "integer",
        },
        DataCompressionType = {
            type = "string",
        },
        CopyTagsToSnapshots = {
            type = "boolean",
        },
        OriginSnapshot = M.CreateOpenZFSOriginSnapshotConfiguration,
        ReadOnly = {
            type = "boolean",
        },
        NfsExports = {
            type = "list",
            member = M.OpenZFSNfsExport,
        },
        UserAndGroupQuotas = {
            type = "list",
            member = M.OpenZFSUserOrGroupQuota,
        },
    },
}

M.CreateVolumeInput = {
    type = "structure",
    members = {
        ClientRequestToken = {
            type = "string",
        },
        VolumeType = {
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
        OntapConfiguration = M.CreateOntapVolumeConfiguration,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        OpenZFSConfiguration = M.CreateOpenZFSVolumeConfiguration,
    },
}

M.MissingVolumeConfiguration = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StorageVirtualMachineNotFound = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateVolumeFromBackupInput = {
    type = "structure",
    members = {
        BackupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OntapConfiguration = M.CreateOntapVolumeConfiguration,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.BackupBeingCopied = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        BackupId = {
            type = "string",
        },
    },
}

M.BackupRestoring = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        FileSystemId = {
            type = "string",
        },
    },
}

M.DeleteBackupInput = {
    type = "structure",
    members = {
        BackupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
    },
}

M.DeleteBackupOutput = {
    type = "structure",
    members = {
        BackupId = {
            type = "string",
        },
        Lifecycle = {
            type = "string",
        },
    },
}

M.DataRepositoryAssociationNotFound = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteDataRepositoryAssociationInput = {
    type = "structure",
    members = {
        AssociationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        DeleteDataInFileSystem = {
            type = "boolean",
        },
    },
}

M.DeleteDataRepositoryAssociationOutput = {
    type = "structure",
    members = {
        AssociationId = {
            type = "string",
        },
        Lifecycle = {
            type = "string",
        },
        DeleteDataInFileSystem = {
            type = "boolean",
        },
    },
}

M.DeleteFileCacheInput = {
    type = "structure",
    members = {
        FileCacheId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
    },
}

M.DeleteFileCacheOutput = {
    type = "structure",
    members = {
        FileCacheId = {
            type = "string",
        },
        Lifecycle = {
            type = "string",
        },
    },
}

M.FileCacheNotFound = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteFileSystemLustreConfiguration = {
    type = "structure",
    members = {
        SkipFinalBackup = {
            type = "boolean",
        },
        FinalBackupTags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DeleteFileSystemOpenZFSOption = {
    DELETE_CHILD_VOLUMES_AND_SNAPSHOTS = "DELETE_CHILD_VOLUMES_AND_SNAPSHOTS",
}

M.DeleteFileSystemOpenZFSConfiguration = {
    type = "structure",
    members = {
        SkipFinalBackup = {
            type = "boolean",
        },
        FinalBackupTags = {
            type = "list",
            member = M.Tag,
        },
        Options = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DeleteFileSystemWindowsConfiguration = {
    type = "structure",
    members = {
        SkipFinalBackup = {
            type = "boolean",
        },
        FinalBackupTags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DeleteFileSystemInput = {
    type = "structure",
    members = {
        FileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        WindowsConfiguration = M.DeleteFileSystemWindowsConfiguration,
        LustreConfiguration = M.DeleteFileSystemLustreConfiguration,
        OpenZFSConfiguration = M.DeleteFileSystemOpenZFSConfiguration,
    },
}

M.DeleteFileSystemLustreResponse = {
    type = "structure",
    members = {
        FinalBackupId = {
            type = "string",
        },
        FinalBackupTags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DeleteFileSystemOpenZFSResponse = {
    type = "structure",
    members = {
        FinalBackupId = {
            type = "string",
        },
        FinalBackupTags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DeleteFileSystemWindowsResponse = {
    type = "structure",
    members = {
        FinalBackupId = {
            type = "string",
        },
        FinalBackupTags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DeleteFileSystemOutput = {
    type = "structure",
    members = {
        FileSystemId = {
            type = "string",
        },
        Lifecycle = {
            type = "string",
        },
        WindowsResponse = M.DeleteFileSystemWindowsResponse,
        LustreResponse = M.DeleteFileSystemLustreResponse,
        OpenZFSResponse = M.DeleteFileSystemOpenZFSResponse,
    },
}

M.DeleteSnapshotInput = {
    type = "structure",
    members = {
        ClientRequestToken = {
            type = "string",
        },
        SnapshotId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSnapshotOutput = {
    type = "structure",
    members = {
        SnapshotId = {
            type = "string",
        },
        Lifecycle = {
            type = "string",
        },
    },
}

M.SnapshotNotFound = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteStorageVirtualMachineInput = {
    type = "structure",
    members = {
        ClientRequestToken = {
            type = "string",
        },
        StorageVirtualMachineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteStorageVirtualMachineOutput = {
    type = "structure",
    members = {
        StorageVirtualMachineId = {
            type = "string",
        },
        Lifecycle = {
            type = "string",
        },
    },
}

M.DeleteVolumeOntapConfiguration = {
    type = "structure",
    members = {
        SkipFinalBackup = {
            type = "boolean",
        },
        FinalBackupTags = {
            type = "list",
            member = M.Tag,
        },
        BypassSnaplockEnterpriseRetention = {
            type = "boolean",
        },
    },
}

M.DeleteOpenZFSVolumeOption = {
    DELETE_CHILD_VOLUMES_AND_SNAPSHOTS = "DELETE_CHILD_VOLUMES_AND_SNAPSHOTS",
}

M.DeleteVolumeOpenZFSConfiguration = {
    type = "structure",
    members = {
        Options = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DeleteVolumeInput = {
    type = "structure",
    members = {
        ClientRequestToken = {
            type = "string",
        },
        VolumeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OntapConfiguration = M.DeleteVolumeOntapConfiguration,
        OpenZFSConfiguration = M.DeleteVolumeOpenZFSConfiguration,
    },
}

M.DeleteVolumeOntapResponse = {
    type = "structure",
    members = {
        FinalBackupId = {
            type = "string",
        },
        FinalBackupTags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DeleteVolumeOutput = {
    type = "structure",
    members = {
        VolumeId = {
            type = "string",
        },
        Lifecycle = {
            type = "string",
        },
        OntapResponse = M.DeleteVolumeOntapResponse,
    },
}

M.FilterName = {
    FILE_SYSTEM_ID = "file-system-id",
    BACKUP_TYPE = "backup-type",
    FILE_SYSTEM_TYPE = "file-system-type",
    VOLUME_ID = "volume-id",
    DATA_REPOSITORY_TYPE = "data-repository-type",
    FILE_CACHE_ID = "file-cache-id",
    FILE_CACHE_TYPE = "file-cache-type",
}

M.Filter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeBackupsInput = {
    type = "structure",
    members = {
        BackupIds = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeDataRepositoryAssociationsInput = {
    type = "structure",
    members = {
        AssociationIds = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeDataRepositoryAssociationsOutput = {
    type = "structure",
    members = {
        Associations = {
            type = "list",
            member = M.DataRepositoryAssociation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidDataRepositoryType = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DataRepositoryTaskFilterName = {
    FILE_SYSTEM_ID = "file-system-id",
    TASK_LIFECYCLE = "task-lifecycle",
    DATA_REPO_ASSOCIATION_ID = "data-repository-association-id",
    FILE_CACHE_ID = "file-cache-id",
}

M.DataRepositoryTaskFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeDataRepositoryTasksInput = {
    type = "structure",
    members = {
        TaskIds = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.DataRepositoryTaskFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeDataRepositoryTasksOutput = {
    type = "structure",
    members = {
        DataRepositoryTasks = {
            type = "list",
            member = M.DataRepositoryTask,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeFileCachesInput = {
    type = "structure",
    members = {
        FileCacheIds = {
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

M.FileCache = {
    type = "structure",
    members = {
        OwnerId = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        FileCacheId = {
            type = "string",
        },
        FileCacheType = {
            type = "string",
        },
        FileCacheTypeVersion = {
            type = "string",
        },
        Lifecycle = {
            type = "string",
        },
        FailureDetails = M.FileCacheFailureDetails,
        StorageCapacity = {
            type = "integer",
        },
        VpcId = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        NetworkInterfaceIds = {
            type = "list",
            member = { type = "string" },
        },
        DNSName = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        ResourceARN = {
            type = "string",
        },
        LustreConfiguration = M.FileCacheLustreConfiguration,
        DataRepositoryAssociationIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeFileCachesOutput = {
    type = "structure",
    members = {
        FileCaches = {
            type = "list",
            member = M.FileCache,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeFileSystemAliasesInput = {
    type = "structure",
    members = {
        ClientRequestToken = {
            type = "string",
        },
        FileSystemId = {
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

M.DescribeFileSystemAliasesOutput = {
    type = "structure",
    members = {
        Aliases = {
            type = "list",
            member = M.Alias,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeFileSystemsInput = {
    type = "structure",
    members = {
        FileSystemIds = {
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

M.S3AccessPointAttachmentsFilterName = {
    FILE_SYSTEM_ID = "file-system-id",
    VOLUME_ID = "volume-id",
    TYPE = "type",
}

M.S3AccessPointAttachmentsFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeS3AccessPointAttachmentsInput = {
    type = "structure",
    members = {
        Names = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.S3AccessPointAttachmentsFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeS3AccessPointAttachmentsOutput = {
    type = "structure",
    members = {
        S3AccessPointAttachments = {
            type = "list",
            member = M.S3AccessPointAttachment,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.S3AccessPointAttachmentNotFound = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeSharedVpcConfigurationInput = {
    type = "structure",
}

M.DescribeSharedVpcConfigurationOutput = {
    type = "structure",
    members = {
        EnableFsxRouteTableUpdatesFromParticipantAccounts = {
            type = "string",
        },
    },
}

M.SnapshotFilterName = {
    FILE_SYSTEM_ID = "file-system-id",
    VOLUME_ID = "volume-id",
}

M.SnapshotFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeSnapshotsInput = {
    type = "structure",
    members = {
        SnapshotIds = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.SnapshotFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        IncludeShared = {
            type = "boolean",
        },
    },
}

M.StorageVirtualMachineFilterName = {
    FILE_SYSTEM_ID = "file-system-id",
}

M.StorageVirtualMachineFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeStorageVirtualMachinesInput = {
    type = "structure",
    members = {
        StorageVirtualMachineIds = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.StorageVirtualMachineFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeStorageVirtualMachinesOutput = {
    type = "structure",
    members = {
        StorageVirtualMachines = {
            type = "list",
            member = M.StorageVirtualMachine,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.VolumeFilterName = {
    FILE_SYSTEM_ID = "file-system-id",
    STORAGE_VIRTUAL_MACHINE_ID = "storage-virtual-machine-id",
}

M.VolumeFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeVolumesInput = {
    type = "structure",
    members = {
        VolumeIds = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.VolumeFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DetachAndDeleteS3AccessPointInput = {
    type = "structure",
    members = {
        ClientRequestToken = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DetachAndDeleteS3AccessPointOutput = {
    type = "structure",
    members = {
        Lifecycle = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.DisassociateFileSystemAliasesInput = {
    type = "structure",
    members = {
        ClientRequestToken = {
            type = "string",
        },
        FileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Aliases = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateFileSystemAliasesOutput = {
    type = "structure",
    members = {
        Aliases = {
            type = "list",
            member = M.Alias,
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
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

M.NotServiceResourceError = {
    type = "structure",
    error = "client",
    members = {
        ResourceARN = {
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

M.ResourceDoesNotSupportTagging = {
    type = "structure",
    error = "client",
    members = {
        ResourceARN = {
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

M.ResourceNotFound = {
    type = "structure",
    error = "client",
    members = {
        ResourceARN = {
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

M.ReleaseFileSystemNfsV3LocksInput = {
    type = "structure",
    members = {
        FileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
    },
}

M.RestoreOpenZFSVolumeOption = {
    DELETE_INTERMEDIATE_SNAPSHOTS = "DELETE_INTERMEDIATE_SNAPSHOTS",
    DELETE_CLONED_VOLUMES = "DELETE_CLONED_VOLUMES",
}

M.RestoreVolumeFromSnapshotInput = {
    type = "structure",
    members = {
        ClientRequestToken = {
            type = "string",
        },
        VolumeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnapshotId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Options = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.StartMisconfiguredStateRecoveryInput = {
    type = "structure",
    members = {
        ClientRequestToken = {
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

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
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
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
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
}

M.UpdateDataRepositoryAssociationInput = {
    type = "structure",
    members = {
        AssociationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        ImportedFileChunkSize = {
            type = "integer",
        },
        S3 = M.S3DataRepositoryConfiguration,
    },
}

M.UpdateDataRepositoryAssociationOutput = {
    type = "structure",
    members = {
        Association = M.DataRepositoryAssociation,
    },
}

M.UpdateFileCacheLustreConfiguration = {
    type = "structure",
    members = {
        WeeklyMaintenanceStartTime = {
            type = "string",
        },
    },
}

M.UpdateFileCacheInput = {
    type = "structure",
    members = {
        FileCacheId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        LustreConfiguration = M.UpdateFileCacheLustreConfiguration,
    },
}

M.UpdateFileCacheOutput = {
    type = "structure",
    members = {
        FileCache = M.FileCache,
    },
}

M.UpdateFileSystemLustreMetadataConfiguration = {
    type = "structure",
    members = {
        Iops = {
            type = "integer",
        },
        Mode = {
            type = "string",
        },
    },
}

M.UpdateFileSystemLustreConfiguration = {
    type = "structure",
    members = {
        WeeklyMaintenanceStartTime = {
            type = "string",
        },
        DailyAutomaticBackupStartTime = {
            type = "string",
        },
        AutomaticBackupRetentionDays = {
            type = "integer",
        },
        AutoImportPolicy = {
            type = "string",
        },
        DataCompressionType = {
            type = "string",
        },
        LogConfiguration = M.LustreLogCreateConfiguration,
        RootSquashConfiguration = M.LustreRootSquashConfiguration,
        PerUnitStorageThroughput = {
            type = "integer",
        },
        MetadataConfiguration = M.UpdateFileSystemLustreMetadataConfiguration,
        ThroughputCapacity = {
            type = "integer",
        },
        DataReadCacheConfiguration = M.LustreReadCacheConfiguration,
    },
}

M.UpdateFileSystemOntapConfiguration = {
    type = "structure",
    members = {
        AutomaticBackupRetentionDays = {
            type = "integer",
        },
        DailyAutomaticBackupStartTime = {
            type = "string",
        },
        FsxAdminPassword = {
            type = "string",
        },
        WeeklyMaintenanceStartTime = {
            type = "string",
        },
        DiskIopsConfiguration = M.DiskIopsConfiguration,
        ThroughputCapacity = {
            type = "integer",
        },
        AddRouteTableIds = {
            type = "list",
            member = { type = "string" },
        },
        RemoveRouteTableIds = {
            type = "list",
            member = { type = "string" },
        },
        ThroughputCapacityPerHAPair = {
            type = "integer",
        },
        HAPairs = {
            type = "integer",
        },
        EndpointIpv6AddressRange = {
            type = "string",
        },
    },
}

M.UpdateFileSystemOpenZFSConfiguration = {
    type = "structure",
    members = {
        AutomaticBackupRetentionDays = {
            type = "integer",
        },
        CopyTagsToBackups = {
            type = "boolean",
        },
        CopyTagsToVolumes = {
            type = "boolean",
        },
        DailyAutomaticBackupStartTime = {
            type = "string",
        },
        ThroughputCapacity = {
            type = "integer",
        },
        WeeklyMaintenanceStartTime = {
            type = "string",
        },
        DiskIopsConfiguration = M.DiskIopsConfiguration,
        AddRouteTableIds = {
            type = "list",
            member = { type = "string" },
        },
        RemoveRouteTableIds = {
            type = "list",
            member = { type = "string" },
        },
        ReadCacheConfiguration = M.OpenZFSReadCacheConfiguration,
        EndpointIpv6AddressRange = {
            type = "string",
        },
    },
}

M.SelfManagedActiveDirectoryConfigurationUpdates = {
    type = "structure",
    members = {
        UserName = {
            type = "string",
        },
        Password = {
            type = "string",
        },
        DnsIps = {
            type = "list",
            member = { type = "string" },
        },
        DomainName = {
            type = "string",
        },
        OrganizationalUnitDistinguishedName = {
            type = "string",
        },
        FileSystemAdministratorsGroup = {
            type = "string",
        },
        DomainJoinServiceAccountSecret = {
            type = "string",
        },
    },
}

M.UpdateFileSystemWindowsConfiguration = {
    type = "structure",
    members = {
        WeeklyMaintenanceStartTime = {
            type = "string",
        },
        DailyAutomaticBackupStartTime = {
            type = "string",
        },
        AutomaticBackupRetentionDays = {
            type = "integer",
        },
        ThroughputCapacity = {
            type = "integer",
        },
        SelfManagedActiveDirectoryConfiguration = M.SelfManagedActiveDirectoryConfigurationUpdates,
        AuditLogConfiguration = M.WindowsAuditLogCreateConfiguration,
        DiskIopsConfiguration = M.DiskIopsConfiguration,
        FsrmConfiguration = M.WindowsFsrmConfiguration,
    },
}

M.UpdateFileSystemInput = {
    type = "structure",
    members = {
        FileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        StorageCapacity = {
            type = "integer",
        },
        WindowsConfiguration = M.UpdateFileSystemWindowsConfiguration,
        LustreConfiguration = M.UpdateFileSystemLustreConfiguration,
        OntapConfiguration = M.UpdateFileSystemOntapConfiguration,
        OpenZFSConfiguration = M.UpdateFileSystemOpenZFSConfiguration,
        StorageType = {
            type = "string",
        },
        FileSystemTypeVersion = {
            type = "string",
        },
        NetworkType = {
            type = "string",
        },
    },
}

M.UpdateSharedVpcConfigurationInput = {
    type = "structure",
    members = {
        EnableFsxRouteTableUpdatesFromParticipantAccounts = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
        },
    },
}

M.UpdateSharedVpcConfigurationOutput = {
    type = "structure",
    members = {
        EnableFsxRouteTableUpdatesFromParticipantAccounts = {
            type = "string",
        },
    },
}

M.UpdateSnapshotInput = {
    type = "structure",
    members = {
        ClientRequestToken = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnapshotId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSvmActiveDirectoryConfiguration = {
    type = "structure",
    members = {
        SelfManagedActiveDirectoryConfiguration = M.SelfManagedActiveDirectoryConfigurationUpdates,
        NetBiosName = {
            type = "string",
        },
    },
}

M.UpdateStorageVirtualMachineInput = {
    type = "structure",
    members = {
        ActiveDirectoryConfiguration = M.UpdateSvmActiveDirectoryConfiguration,
        ClientRequestToken = {
            type = "string",
        },
        StorageVirtualMachineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SvmAdminPassword = {
            type = "string",
        },
    },
}

M.UpdateStorageVirtualMachineOutput = {
    type = "structure",
    members = {
        StorageVirtualMachine = M.StorageVirtualMachine,
    },
}

M.UpdateSnaplockConfiguration = {
    type = "structure",
    members = {
        AuditLogVolume = {
            type = "boolean",
        },
        AutocommitPeriod = M.AutocommitPeriod,
        PrivilegedDelete = {
            type = "string",
        },
        RetentionPeriod = M.SnaplockRetentionPeriod,
        VolumeAppendModeEnabled = {
            type = "boolean",
        },
    },
}

M.UpdateOntapVolumeConfiguration = {
    type = "structure",
    members = {
        JunctionPath = {
            type = "string",
        },
        SecurityStyle = {
            type = "string",
        },
        SizeInMegabytes = {
            type = "integer",
        },
        StorageEfficiencyEnabled = {
            type = "boolean",
        },
        TieringPolicy = M.TieringPolicy,
        SnapshotPolicy = {
            type = "string",
        },
        CopyTagsToBackups = {
            type = "boolean",
        },
        SnaplockConfiguration = M.UpdateSnaplockConfiguration,
        SizeInBytes = {
            type = "long",
        },
    },
}

M.UpdateOpenZFSVolumeConfiguration = {
    type = "structure",
    members = {
        StorageCapacityReservationGiB = {
            type = "integer",
        },
        StorageCapacityQuotaGiB = {
            type = "integer",
        },
        RecordSizeKiB = {
            type = "integer",
        },
        DataCompressionType = {
            type = "string",
        },
        NfsExports = {
            type = "list",
            member = M.OpenZFSNfsExport,
        },
        UserAndGroupQuotas = {
            type = "list",
            member = M.OpenZFSUserOrGroupQuota,
        },
        ReadOnly = {
            type = "boolean",
        },
    },
}

M.UpdateVolumeInput = {
    type = "structure",
    members = {
        ClientRequestToken = {
            type = "string",
        },
        VolumeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OntapConfiguration = M.UpdateOntapVolumeConfiguration,
        Name = {
            type = "string",
        },
        OpenZFSConfiguration = M.UpdateOpenZFSVolumeConfiguration,
    },
}

M.AdministrativeAction = {
    type = "structure",
    members = {
        AdministrativeActionType = {
            type = "string",
        },
        ProgressPercent = {
            type = "integer",
        },
        RequestTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        TargetFileSystemValues = M.FileSystem,
        FailureDetails = M.AdministrativeActionFailureDetails,
        TargetVolumeValues = M.Volume,
        TargetSnapshotValues = M.Snapshot,
        TotalTransferBytes = {
            type = "long",
        },
        RemainingTransferBytes = {
            type = "long",
        },
        Message = {
            type = "string",
        },
    },
}

M.FileSystem = {
    type = "structure",
    members = {
        OwnerId = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        FileSystemId = {
            type = "string",
        },
        FileSystemType = {
            type = "string",
        },
        Lifecycle = {
            type = "string",
        },
        FailureDetails = M.FileSystemFailureDetails,
        StorageCapacity = {
            type = "integer",
        },
        StorageType = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        NetworkInterfaceIds = {
            type = "list",
            member = { type = "string" },
        },
        DNSName = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        ResourceARN = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        WindowsConfiguration = M.WindowsFileSystemConfiguration,
        LustreConfiguration = M.LustreFileSystemConfiguration,
        AdministrativeActions = {
            type = "list",
            member = M.AdministrativeAction,
        },
        OntapConfiguration = M.OntapFileSystemConfiguration,
        FileSystemTypeVersion = {
            type = "string",
        },
        OpenZFSConfiguration = M.OpenZFSFileSystemConfiguration,
        NetworkType = {
            type = "string",
        },
    },
}

M.Snapshot = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
        },
        SnapshotId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        VolumeId = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        Lifecycle = {
            type = "string",
        },
        LifecycleTransitionReason = M.LifecycleTransitionReason,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        AdministrativeActions = {
            type = "list",
            member = M.AdministrativeAction,
        },
    },
}

M.Volume = {
    type = "structure",
    members = {
        CreationTime = {
            type = "timestamp",
        },
        FileSystemId = {
            type = "string",
        },
        Lifecycle = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        OntapConfiguration = M.OntapVolumeConfiguration,
        ResourceARN = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        VolumeId = {
            type = "string",
        },
        VolumeType = {
            type = "string",
        },
        LifecycleTransitionReason = M.LifecycleTransitionReason,
        AdministrativeActions = {
            type = "list",
            member = M.AdministrativeAction,
        },
        OpenZFSConfiguration = M.OpenZFSVolumeConfiguration,
    },
}

M.CopySnapshotAndUpdateVolumeOutput = {
    type = "structure",
    members = {
        VolumeId = {
            type = "string",
        },
        Lifecycle = {
            type = "string",
        },
        AdministrativeActions = {
            type = "list",
            member = M.AdministrativeAction,
        },
    },
}

M.RestoreVolumeFromSnapshotOutput = {
    type = "structure",
    members = {
        VolumeId = {
            type = "string",
        },
        Lifecycle = {
            type = "string",
        },
        AdministrativeActions = {
            type = "list",
            member = M.AdministrativeAction,
        },
    },
}

M.CreateFileSystemFromBackupOutput = {
    type = "structure",
    members = {
        FileSystem = M.FileSystem,
    },
}

M.CreateFileSystemOutput = {
    type = "structure",
    members = {
        FileSystem = M.FileSystem,
    },
}

M.CreateSnapshotOutput = {
    type = "structure",
    members = {
        Snapshot = M.Snapshot,
    },
}

M.CreateVolumeFromBackupOutput = {
    type = "structure",
    members = {
        Volume = M.Volume,
    },
}

M.CreateVolumeOutput = {
    type = "structure",
    members = {
        Volume = M.Volume,
    },
}

M.ReleaseFileSystemNfsV3LocksOutput = {
    type = "structure",
    members = {
        FileSystem = M.FileSystem,
    },
}

M.StartMisconfiguredStateRecoveryOutput = {
    type = "structure",
    members = {
        FileSystem = M.FileSystem,
    },
}

M.UpdateFileSystemOutput = {
    type = "structure",
    members = {
        FileSystem = M.FileSystem,
    },
}

M.UpdateSnapshotOutput = {
    type = "structure",
    members = {
        Snapshot = M.Snapshot,
    },
}

M.UpdateVolumeOutput = {
    type = "structure",
    members = {
        Volume = M.Volume,
    },
}

M.DescribeFileSystemsOutput = {
    type = "structure",
    members = {
        FileSystems = {
            type = "list",
            member = M.FileSystem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeSnapshotsOutput = {
    type = "structure",
    members = {
        Snapshots = {
            type = "list",
            member = M.Snapshot,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeVolumesOutput = {
    type = "structure",
    members = {
        Volumes = {
            type = "list",
            member = M.Volume,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Backup = {
    type = "structure",
    members = {
        BackupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Lifecycle = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureDetails = M.BackupFailureDetails,
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProgressPercent = {
            type = "integer",
        },
        CreationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
        ResourceARN = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        FileSystem = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FileSystem }),
        DirectoryInformation = M.ActiveDirectoryBackupAttributes,
        OwnerId = {
            type = "string",
        },
        SourceBackupId = {
            type = "string",
        },
        SourceBackupRegion = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        Volume = M.Volume,
        SizeInBytes = {
            type = "long",
        },
    },
}

M.CopyBackupOutput = {
    type = "structure",
    members = {
        Backup = M.Backup,
    },
}

M.CreateBackupOutput = {
    type = "structure",
    members = {
        Backup = M.Backup,
    },
}

M.DescribeBackupsOutput = {
    type = "structure",
    members = {
        Backups = {
            type = "list",
            member = M.Backup,
        },
        NextToken = {
            type = "string",
        },
    },
}

return M
