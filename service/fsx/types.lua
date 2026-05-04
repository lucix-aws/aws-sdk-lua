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
            type = "number",
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
            type = "number",
        },
        AutoImportPolicy = {
            type = "string",
        },
        FailureDetails = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "string",
        },
    },
}

M.LustreFileSystemConfiguration = {
    type = "structure",
    members = {
        WeeklyMaintenanceStartTime = {
            type = "string",
        },
        DataRepositoryConfiguration = {
            type = "structure",
        },
        DeploymentType = {
            type = "string",
        },
        PerUnitStorageThroughput = {
            type = "number",
        },
        MountName = {
            type = "string",
        },
        DailyAutomaticBackupStartTime = {
            type = "string",
        },
        AutomaticBackupRetentionDays = {
            type = "number",
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
        LogConfiguration = {
            type = "structure",
        },
        RootSquashConfiguration = {
            type = "structure",
        },
        MetadataConfiguration = {
            type = "structure",
        },
        EfaEnabled = {
            type = "boolean",
        },
        ThroughputCapacity = {
            type = "number",
        },
        DataReadCacheConfiguration = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "string",
        },
        Ipv6Addresses = {
            type = "list",
            member_type = "string",
        },
    },
}

M.FileSystemEndpoints = {
    type = "structure",
    members = {
        Intercluster = {
            type = "structure",
        },
        Management = {
            type = "structure",
        },
    },
}

M.OntapFileSystemConfiguration = {
    type = "structure",
    members = {
        AutomaticBackupRetentionDays = {
            type = "number",
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
        Endpoints = {
            type = "structure",
        },
        DiskIopsConfiguration = {
            type = "structure",
        },
        PreferredSubnetId = {
            type = "string",
        },
        RouteTableIds = {
            type = "list",
            member_type = "string",
        },
        ThroughputCapacity = {
            type = "number",
        },
        WeeklyMaintenanceStartTime = {
            type = "string",
        },
        FsxAdminPassword = {
            type = "string",
        },
        HAPairs = {
            type = "number",
        },
        ThroughputCapacityPerHAPair = {
            type = "number",
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
            type = "number",
        },
    },
}

M.OpenZFSFileSystemConfiguration = {
    type = "structure",
    members = {
        AutomaticBackupRetentionDays = {
            type = "number",
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
            type = "number",
        },
        WeeklyMaintenanceStartTime = {
            type = "string",
        },
        DiskIopsConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
        },
        EndpointIpAddress = {
            type = "string",
        },
        EndpointIpv6Address = {
            type = "string",
        },
        ReadCacheConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
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
        SelfManagedActiveDirectoryConfiguration = {
            type = "structure",
        },
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
            type = "number",
        },
        MaintenanceOperationsInProgress = {
            type = "list",
            member_type = "string",
        },
        WeeklyMaintenanceStartTime = {
            type = "string",
        },
        DailyAutomaticBackupStartTime = {
            type = "string",
        },
        AutomaticBackupRetentionDays = {
            type = "number",
        },
        CopyTagsToBackups = {
            type = "boolean",
        },
        Aliases = {
            type = "list",
            member_type = "structure",
        },
        AuditLogConfiguration = {
            type = "structure",
        },
        DiskIopsConfiguration = {
            type = "structure",
        },
        PreferredFileServerIpv6 = {
            type = "string",
        },
        FsrmConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
        },
        TotalConstituents = {
            type = "number",
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
            type = "number",
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
            type = "number",
        },
    },
}

M.SnaplockRetentionPeriod = {
    type = "structure",
    members = {
        DefaultRetention = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        MinimumRetention = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        MaximumRetention = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        AutocommitPeriod = {
            type = "structure",
        },
        PrivilegedDelete = {
            type = "string",
        },
        RetentionPeriod = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
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
        TieringPolicy = {
            type = "structure",
        },
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
        SnaplockConfiguration = {
            type = "structure",
        },
        VolumeStyle = {
            type = "string",
        },
        AggregateConfiguration = {
            type = "structure",
        },
        SizeInBytes = {
            type = "number",
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
            member_type = "string",
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
            member_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        StorageCapacityQuotaGiB = {
            type = "number",
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
            type = "number",
        },
        StorageCapacityQuotaGiB = {
            type = "number",
        },
        RecordSizeKiB = {
            type = "number",
        },
        DataCompressionType = {
            type = "string",
        },
        CopyTagsToSnapshots = {
            type = "boolean",
        },
        OriginSnapshot = {
            type = "structure",
        },
        ReadOnly = {
            type = "boolean",
        },
        NfsExports = {
            type = "list",
            member_type = "structure",
        },
        UserAndGroupQuotas = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
        },
    },
}

M.AutoImportPolicy = {
    type = "structure",
    members = {
        Events = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
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
        UnixUser = {
            type = "structure",
        },
        WindowsUser = {
            type = "structure",
        },
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
        FileSystemIdentity = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.OpenZFSPosixFileSystemUser = {
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
        PosixUser = {
            type = "structure",
        },
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
        FileSystemIdentity = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        VpcConfiguration = {
            type = "structure",
        },
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
        OpenZFSConfiguration = {
            type = "structure",
        },
        OntapConfiguration = {
            type = "structure",
        },
        S3AccessPoint = {
            type = "structure",
        },
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
        FileSystemIdentity = {
            type = "structure",
        },
    },
}

M.S3AccessPointOpenZFSConfiguration = {
    type = "structure",
    members = {
        VolumeId = {
            type = "string",
        },
        FileSystemIdentity = {
            type = "structure",
        },
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
        VpcConfiguration = {
            type = "structure",
        },
    },
}

M.S3AccessPointAttachment = {
    type = "structure",
    members = {
        Lifecycle = {
            type = "string",
        },
        LifecycleTransitionReason = {
            type = "structure",
        },
        CreationTime = {
            type = "timestamp",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        OpenZFSConfiguration = {
            type = "structure",
        },
        OntapConfiguration = {
            type = "structure",
        },
        S3AccessPoint = {
            type = "structure",
        },
    },
}

M.CreateAndAttachS3AccessPointOutput = {
    type = "structure",
    members = {
        S3AccessPointAttachment = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        VolumeId = {
            type = "string",
        },
    },
}

M.S3DataRepositoryConfiguration = {
    type = "structure",
    members = {
        AutoImportPolicy = {
            type = "structure",
        },
        AutoExportPolicy = {
            type = "structure",
        },
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
            type = "number",
        },
        S3 = {
            type = "structure",
        },
        ClientRequestToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        AutoExportPolicy = {
            type = "structure",
        },
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
        FailureDetails = {
            type = "structure",
        },
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
            type = "number",
        },
        S3 = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        NFS = {
            type = "structure",
        },
    },
}

M.CreateDataRepositoryAssociationOutput = {
    type = "structure",
    members = {
        Association = {
            type = "structure",
        },
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
            type = "number",
        },
    },
}

M.ReleaseConfiguration = {
    type = "structure",
    members = {
        DurationSinceLastAccess = {
            type = "structure",
        },
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
            member_type = "string",
        },
        FileSystemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Report = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        CapacityToRelease = {
            type = "number",
        },
        ReleaseConfiguration = {
            type = "structure",
        },
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
            type = "number",
        },
        SucceededCount = {
            type = "number",
        },
        FailedCount = {
            type = "number",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        ReleasedCapacity = {
            type = "number",
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
            member_type = "structure",
        },
        FileSystemId = {
            type = "string",
        },
        Paths = {
            type = "list",
            member_type = "string",
        },
        FailureDetails = {
            type = "structure",
        },
        Status = {
            type = "structure",
        },
        Report = {
            type = "structure",
        },
        CapacityToRelease = {
            type = "number",
        },
        FileCacheId = {
            type = "string",
        },
        ReleaseConfiguration = {
            type = "structure",
        },
    },
}

M.CreateDataRepositoryTaskOutput = {
    type = "structure",
    members = {
        DataRepositoryTask = {
            type = "structure",
        },
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
            member_type = "string",
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
            member_type = "string",
        },
        NFS = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
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
        MetadataConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        CopyTagsToDataRepositoryAssociations = {
            type = "boolean",
        },
        KmsKeyId = {
            type = "string",
        },
        LustreConfiguration = {
            type = "structure",
        },
        DataRepositoryAssociations = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        MetadataConfiguration = {
            type = "structure",
        },
        LogConfiguration = {
            type = "structure",
        },
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
        FailureDetails = {
            type = "structure",
        },
        StorageCapacity = {
            type = "number",
        },
        VpcId = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
        },
        NetworkInterfaceIds = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        CopyTagsToDataRepositoryAssociations = {
            type = "boolean",
        },
        LustreConfiguration = {
            type = "structure",
        },
        DataRepositoryAssociationIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateFileCacheOutput = {
    type = "structure",
    members = {
        FileCache = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        DeploymentType = {
            type = "string",
        },
        AutoImportPolicy = {
            type = "string",
        },
        PerUnitStorageThroughput = {
            type = "number",
        },
        DailyAutomaticBackupStartTime = {
            type = "string",
        },
        AutomaticBackupRetentionDays = {
            type = "number",
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
        LogConfiguration = {
            type = "structure",
        },
        RootSquashConfiguration = {
            type = "structure",
        },
        MetadataConfiguration = {
            type = "structure",
        },
        ThroughputCapacity = {
            type = "number",
        },
        DataReadCacheConfiguration = {
            type = "structure",
        },
    },
}

M.CreateFileSystemOntapConfiguration = {
    type = "structure",
    members = {
        AutomaticBackupRetentionDays = {
            type = "number",
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
        DiskIopsConfiguration = {
            type = "structure",
        },
        PreferredSubnetId = {
            type = "string",
        },
        RouteTableIds = {
            type = "list",
            member_type = "string",
        },
        ThroughputCapacity = {
            type = "number",
        },
        WeeklyMaintenanceStartTime = {
            type = "string",
        },
        HAPairs = {
            type = "number",
        },
        ThroughputCapacityPerHAPair = {
            type = "number",
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
            type = "number",
        },
        DataCompressionType = {
            type = "string",
        },
        NfsExports = {
            type = "list",
            member_type = "structure",
        },
        UserAndGroupQuotas = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        WeeklyMaintenanceStartTime = {
            type = "string",
        },
        DiskIopsConfiguration = {
            type = "structure",
        },
        RootVolumeConfiguration = {
            type = "structure",
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
            member_type = "string",
        },
        ReadCacheConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
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
        SelfManagedActiveDirectoryConfiguration = {
            type = "structure",
        },
        DeploymentType = {
            type = "string",
        },
        PreferredSubnetId = {
            type = "string",
        },
        ThroughputCapacity = {
            type = "number",
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
            type = "number",
        },
        CopyTagsToBackups = {
            type = "boolean",
        },
        Aliases = {
            type = "list",
            member_type = "string",
        },
        AuditLogConfiguration = {
            type = "structure",
        },
        DiskIopsConfiguration = {
            type = "structure",
        },
        FsrmConfiguration = {
            type = "structure",
        },
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
            type = "number",
        },
        StorageType = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        KmsKeyId = {
            type = "string",
        },
        WindowsConfiguration = {
            type = "structure",
        },
        LustreConfiguration = {
            type = "structure",
        },
        OntapConfiguration = {
            type = "structure",
        },
        FileSystemTypeVersion = {
            type = "string",
        },
        OpenZFSConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        WindowsConfiguration = {
            type = "structure",
        },
        LustreConfiguration = {
            type = "structure",
        },
        StorageType = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        FileSystemTypeVersion = {
            type = "string",
        },
        OpenZFSConfiguration = {
            type = "structure",
        },
        StorageCapacity = {
            type = "number",
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
            member_type = "structure",
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
        SelfManagedActiveDirectoryConfiguration = {
            type = "structure",
        },
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
        ActiveDirectoryConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
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
        SelfManagedActiveDirectoryConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
        },
        Ipv6Addresses = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SvmEndpoints = {
    type = "structure",
    members = {
        Iscsi = {
            type = "structure",
        },
        Management = {
            type = "structure",
        },
        Nfs = {
            type = "structure",
        },
        Smb = {
            type = "structure",
        },
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
        ActiveDirectoryConfiguration = {
            type = "structure",
        },
        CreationTime = {
            type = "timestamp",
        },
        Endpoints = {
            type = "structure",
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
            member_type = "structure",
        },
        LifecycleTransitionReason = {
            type = "structure",
        },
        RootVolumeSecurityStyle = {
            type = "string",
        },
    },
}

M.CreateStorageVirtualMachineOutput = {
    type = "structure",
    members = {
        StorageVirtualMachine = {
            type = "structure",
        },
    },
}

M.CreateAggregateConfiguration = {
    type = "structure",
    members = {
        Aggregates = {
            type = "list",
            member_type = "string",
        },
        ConstituentsPerAggregate = {
            type = "number",
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
        AutocommitPeriod = {
            type = "structure",
        },
        PrivilegedDelete = {
            type = "string",
        },
        RetentionPeriod = {
            type = "structure",
        },
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
            type = "number",
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
        TieringPolicy = {
            type = "structure",
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
        SnaplockConfiguration = {
            type = "structure",
        },
        VolumeStyle = {
            type = "string",
        },
        AggregateConfiguration = {
            type = "structure",
        },
        SizeInBytes = {
            type = "number",
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
            type = "number",
        },
        StorageCapacityQuotaGiB = {
            type = "number",
        },
        RecordSizeKiB = {
            type = "number",
        },
        DataCompressionType = {
            type = "string",
        },
        CopyTagsToSnapshots = {
            type = "boolean",
        },
        OriginSnapshot = {
            type = "structure",
        },
        ReadOnly = {
            type = "boolean",
        },
        NfsExports = {
            type = "list",
            member_type = "structure",
        },
        UserAndGroupQuotas = {
            type = "list",
            member_type = "structure",
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
        OntapConfiguration = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        OpenZFSConfiguration = {
            type = "structure",
        },
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
        OntapConfiguration = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        Options = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
        WindowsConfiguration = {
            type = "structure",
        },
        LustreConfiguration = {
            type = "structure",
        },
        OpenZFSConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
        WindowsResponse = {
            type = "structure",
        },
        LustreResponse = {
            type = "structure",
        },
        OpenZFSResponse = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
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
        OntapConfiguration = {
            type = "structure",
        },
        OpenZFSConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
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
        OntapResponse = {
            type = "structure",
        },
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
            member_type = "string",
        },
    },
}

M.DescribeBackupsInput = {
    type = "structure",
    members = {
        BackupIds = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxResults = {
            type = "number",
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
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxResults = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
        },
    },
}

M.DescribeDataRepositoryTasksInput = {
    type = "structure",
    members = {
        TaskIds = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxResults = {
            type = "number",
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
            member_type = "structure",
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
        FailureDetails = {
            type = "structure",
        },
        StorageCapacity = {
            type = "number",
        },
        VpcId = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
        },
        NetworkInterfaceIds = {
            type = "list",
            member_type = "string",
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
        LustreConfiguration = {
            type = "structure",
        },
        DataRepositoryAssociationIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeFileCachesOutput = {
    type = "structure",
    members = {
        FileCaches = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
        },
    },
}

M.DescribeS3AccessPointAttachmentsInput = {
    type = "structure",
    members = {
        Names = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxResults = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
        },
    },
}

M.DescribeSnapshotsInput = {
    type = "structure",
    members = {
        SnapshotIds = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxResults = {
            type = "number",
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
            member_type = "string",
        },
    },
}

M.DescribeStorageVirtualMachinesInput = {
    type = "structure",
    members = {
        StorageVirtualMachineIds = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxResults = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
        },
    },
}

M.DescribeVolumesInput = {
    type = "structure",
    members = {
        VolumeIds = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxResults = {
            type = "number",
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
            member_type = "string",
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
            member_type = "structure",
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
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
        ResourceARN = {
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
            type = "number",
        },
        S3 = {
            type = "structure",
        },
    },
}

M.UpdateDataRepositoryAssociationOutput = {
    type = "structure",
    members = {
        Association = {
            type = "structure",
        },
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
        LustreConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateFileCacheOutput = {
    type = "structure",
    members = {
        FileCache = {
            type = "structure",
        },
    },
}

M.UpdateFileSystemLustreMetadataConfiguration = {
    type = "structure",
    members = {
        Iops = {
            type = "number",
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
            type = "number",
        },
        AutoImportPolicy = {
            type = "string",
        },
        DataCompressionType = {
            type = "string",
        },
        LogConfiguration = {
            type = "structure",
        },
        RootSquashConfiguration = {
            type = "structure",
        },
        PerUnitStorageThroughput = {
            type = "number",
        },
        MetadataConfiguration = {
            type = "structure",
        },
        ThroughputCapacity = {
            type = "number",
        },
        DataReadCacheConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateFileSystemOntapConfiguration = {
    type = "structure",
    members = {
        AutomaticBackupRetentionDays = {
            type = "number",
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
        DiskIopsConfiguration = {
            type = "structure",
        },
        ThroughputCapacity = {
            type = "number",
        },
        AddRouteTableIds = {
            type = "list",
            member_type = "string",
        },
        RemoveRouteTableIds = {
            type = "list",
            member_type = "string",
        },
        ThroughputCapacityPerHAPair = {
            type = "number",
        },
        HAPairs = {
            type = "number",
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
            type = "number",
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
            type = "number",
        },
        WeeklyMaintenanceStartTime = {
            type = "string",
        },
        DiskIopsConfiguration = {
            type = "structure",
        },
        AddRouteTableIds = {
            type = "list",
            member_type = "string",
        },
        RemoveRouteTableIds = {
            type = "list",
            member_type = "string",
        },
        ReadCacheConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
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
            type = "number",
        },
        ThroughputCapacity = {
            type = "number",
        },
        SelfManagedActiveDirectoryConfiguration = {
            type = "structure",
        },
        AuditLogConfiguration = {
            type = "structure",
        },
        DiskIopsConfiguration = {
            type = "structure",
        },
        FsrmConfiguration = {
            type = "structure",
        },
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
            type = "number",
        },
        WindowsConfiguration = {
            type = "structure",
        },
        LustreConfiguration = {
            type = "structure",
        },
        OntapConfiguration = {
            type = "structure",
        },
        OpenZFSConfiguration = {
            type = "structure",
        },
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
        SelfManagedActiveDirectoryConfiguration = {
            type = "structure",
        },
        NetBiosName = {
            type = "string",
        },
    },
}

M.UpdateStorageVirtualMachineInput = {
    type = "structure",
    members = {
        ActiveDirectoryConfiguration = {
            type = "structure",
        },
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
        StorageVirtualMachine = {
            type = "structure",
        },
    },
}

M.UpdateSnaplockConfiguration = {
    type = "structure",
    members = {
        AuditLogVolume = {
            type = "boolean",
        },
        AutocommitPeriod = {
            type = "structure",
        },
        PrivilegedDelete = {
            type = "string",
        },
        RetentionPeriod = {
            type = "structure",
        },
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
            type = "number",
        },
        StorageEfficiencyEnabled = {
            type = "boolean",
        },
        TieringPolicy = {
            type = "structure",
        },
        SnapshotPolicy = {
            type = "string",
        },
        CopyTagsToBackups = {
            type = "boolean",
        },
        SnaplockConfiguration = {
            type = "structure",
        },
        SizeInBytes = {
            type = "number",
        },
    },
}

M.UpdateOpenZFSVolumeConfiguration = {
    type = "structure",
    members = {
        StorageCapacityReservationGiB = {
            type = "number",
        },
        StorageCapacityQuotaGiB = {
            type = "number",
        },
        RecordSizeKiB = {
            type = "number",
        },
        DataCompressionType = {
            type = "string",
        },
        NfsExports = {
            type = "list",
            member_type = "structure",
        },
        UserAndGroupQuotas = {
            type = "list",
            member_type = "structure",
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
        OntapConfiguration = {
            type = "structure",
        },
        Name = {
            type = "string",
        },
        OpenZFSConfiguration = {
            type = "structure",
        },
    },
}

M.AdministrativeAction = {
    type = "structure",
    members = {
        AdministrativeActionType = {
            type = "string",
        },
        ProgressPercent = {
            type = "number",
        },
        RequestTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        TargetFileSystemValues = {
            type = "structure",
        },
        FailureDetails = {
            type = "structure",
        },
        TargetVolumeValues = {
            type = "structure",
        },
        TargetSnapshotValues = {
            type = "structure",
        },
        TotalTransferBytes = {
            type = "number",
        },
        RemainingTransferBytes = {
            type = "number",
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
        FailureDetails = {
            type = "structure",
        },
        StorageCapacity = {
            type = "number",
        },
        StorageType = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
        },
        NetworkInterfaceIds = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        WindowsConfiguration = {
            type = "structure",
        },
        LustreConfiguration = {
            type = "structure",
        },
        AdministrativeActions = {
            type = "list",
            member_type = "structure",
        },
        OntapConfiguration = {
            type = "structure",
        },
        FileSystemTypeVersion = {
            type = "string",
        },
        OpenZFSConfiguration = {
            type = "structure",
        },
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
        LifecycleTransitionReason = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        AdministrativeActions = {
            type = "list",
            member_type = "structure",
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
        OntapConfiguration = {
            type = "structure",
        },
        ResourceARN = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        VolumeId = {
            type = "string",
        },
        VolumeType = {
            type = "string",
        },
        LifecycleTransitionReason = {
            type = "structure",
        },
        AdministrativeActions = {
            type = "list",
            member_type = "structure",
        },
        OpenZFSConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
        },
    },
}

M.CreateFileSystemFromBackupOutput = {
    type = "structure",
    members = {
        FileSystem = {
            type = "structure",
        },
    },
}

M.CreateFileSystemOutput = {
    type = "structure",
    members = {
        FileSystem = {
            type = "structure",
        },
    },
}

M.CreateSnapshotOutput = {
    type = "structure",
    members = {
        Snapshot = {
            type = "structure",
        },
    },
}

M.CreateVolumeFromBackupOutput = {
    type = "structure",
    members = {
        Volume = {
            type = "structure",
        },
    },
}

M.CreateVolumeOutput = {
    type = "structure",
    members = {
        Volume = {
            type = "structure",
        },
    },
}

M.ReleaseFileSystemNfsV3LocksOutput = {
    type = "structure",
    members = {
        FileSystem = {
            type = "structure",
        },
    },
}

M.StartMisconfiguredStateRecoveryOutput = {
    type = "structure",
    members = {
        FileSystem = {
            type = "structure",
        },
    },
}

M.UpdateFileSystemOutput = {
    type = "structure",
    members = {
        FileSystem = {
            type = "structure",
        },
    },
}

M.UpdateSnapshotOutput = {
    type = "structure",
    members = {
        Snapshot = {
            type = "structure",
        },
    },
}

M.UpdateVolumeOutput = {
    type = "structure",
    members = {
        Volume = {
            type = "structure",
        },
    },
}

M.DescribeFileSystemsOutput = {
    type = "structure",
    members = {
        FileSystems = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
        FailureDetails = {
            type = "structure",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProgressPercent = {
            type = "number",
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
            member_type = "structure",
        },
        FileSystem = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DirectoryInformation = {
            type = "structure",
        },
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
        Volume = {
            type = "structure",
        },
        SizeInBytes = {
            type = "number",
        },
    },
}

M.CopyBackupOutput = {
    type = "structure",
    members = {
        Backup = {
            type = "structure",
        },
    },
}

M.CreateBackupOutput = {
    type = "structure",
    members = {
        Backup = {
            type = "structure",
        },
    },
}

M.DescribeBackupsOutput = {
    type = "structure",
    members = {
        Backups = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

return M
