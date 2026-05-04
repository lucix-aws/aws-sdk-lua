local M = {}

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

M.ActivateGatewayInput = {
    type = "structure",
    members = {
        ActivationKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GatewayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GatewayTimezone = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GatewayRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GatewayType = {
            type = "string",
        },
        TapeDriveType = {
            type = "string",
        },
        MediumChangerType = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ActivateGatewayOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
    },
}

M.ErrorCode = {
    ActivationKeyExpired = "ActivationKeyExpired",
    ActivationKeyInvalid = "ActivationKeyInvalid",
    ActivationKeyNotFound = "ActivationKeyNotFound",
    GatewayInternalError = "GatewayInternalError",
    GatewayNotConnected = "GatewayNotConnected",
    GatewayNotFound = "GatewayNotFound",
    GatewayProxyNetworkConnectionBusy = "GatewayProxyNetworkConnectionBusy",
    AuthenticationFailure = "AuthenticationFailure",
    BandwidthThrottleScheduleNotFound = "BandwidthThrottleScheduleNotFound",
    Blocked = "Blocked",
    CannotExportSnapshot = "CannotExportSnapshot",
    ChapCredentialNotFound = "ChapCredentialNotFound",
    DiskAlreadyAllocated = "DiskAlreadyAllocated",
    DiskDoesNotExist = "DiskDoesNotExist",
    DiskSizeGreaterThanVolumeMaxSize = "DiskSizeGreaterThanVolumeMaxSize",
    DiskSizeLessThanVolumeSize = "DiskSizeLessThanVolumeSize",
    DiskSizeNotGigAligned = "DiskSizeNotGigAligned",
    DuplicateCertificateInfo = "DuplicateCertificateInfo",
    DuplicateSchedule = "DuplicateSchedule",
    EndpointNotFound = "EndpointNotFound",
    IAMNotSupported = "IAMNotSupported",
    InitiatorInvalid = "InitiatorInvalid",
    InitiatorNotFound = "InitiatorNotFound",
    InternalError = "InternalError",
    InvalidGateway = "InvalidGateway",
    InvalidEndpoint = "InvalidEndpoint",
    InvalidParameters = "InvalidParameters",
    InvalidSchedule = "InvalidSchedule",
    LocalStorageLimitExceeded = "LocalStorageLimitExceeded",
    LunAlreadyAllocated_ = "LunAlreadyAllocated ",
    LunInvalid = "LunInvalid",
    JoinDomainInProgress = "JoinDomainInProgress",
    MaximumContentLengthExceeded = "MaximumContentLengthExceeded",
    MaximumTapeCartridgeCountExceeded = "MaximumTapeCartridgeCountExceeded",
    MaximumVolumeCountExceeded = "MaximumVolumeCountExceeded",
    NetworkConfigurationChanged = "NetworkConfigurationChanged",
    NoDisksAvailable = "NoDisksAvailable",
    NotImplemented = "NotImplemented",
    NotSupported = "NotSupported",
    OperationAborted = "OperationAborted",
    OutdatedGateway = "OutdatedGateway",
    ParametersNotImplemented = "ParametersNotImplemented",
    RegionInvalid = "RegionInvalid",
    RequestTimeout = "RequestTimeout",
    ServiceUnavailable = "ServiceUnavailable",
    SnapshotDeleted = "SnapshotDeleted",
    SnapshotIdInvalid = "SnapshotIdInvalid",
    SnapshotInProgress = "SnapshotInProgress",
    SnapshotNotFound = "SnapshotNotFound",
    SnapshotScheduleNotFound = "SnapshotScheduleNotFound",
    StagingAreaFull = "StagingAreaFull",
    StorageFailure = "StorageFailure",
    TapeCartridgeNotFound = "TapeCartridgeNotFound",
    TargetAlreadyExists = "TargetAlreadyExists",
    TargetInvalid = "TargetInvalid",
    TargetNotFound = "TargetNotFound",
    UnauthorizedOperation = "UnauthorizedOperation",
    VolumeAlreadyExists = "VolumeAlreadyExists",
    VolumeIdInvalid = "VolumeIdInvalid",
    VolumeInUse = "VolumeInUse",
    VolumeNotFound = "VolumeNotFound",
    VolumeNotReady = "VolumeNotReady",
}

M.StorageGatewayError = {
    type = "structure",
    members = {
        errorCode = {
            type = "string",
        },
        errorDetails = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.InternalServerError = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
        error = M.StorageGatewayError,
    },
}

M.InvalidGatewayRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        error = M.StorageGatewayError,
    },
}

M.ActiveDirectoryStatus = {
    ACCESS_DENIED = "ACCESS_DENIED",
    DETACHED = "DETACHED",
    JOINED = "JOINED",
    JOINING = "JOINING",
    NETWORK_ERROR = "NETWORK_ERROR",
    TIMEOUT = "TIMEOUT",
    UNKNOWN_ERROR = "UNKNOWN_ERROR",
    INSUFFICIENT_PERMISSIONS = "INSUFFICIENT_PERMISSIONS",
}

M.AddCacheInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DiskIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AddCacheOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
    },
}

M.AddTagsToResourceInput = {
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

M.AddTagsToResourceOutput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
        },
    },
}

M.AddUploadBufferInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DiskIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AddUploadBufferOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
    },
}

M.AddWorkingStorageInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DiskIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AddWorkingStorageOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
    },
}

M.AssignTapePoolInput = {
    type = "structure",
    members = {
        TapeARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BypassGovernanceRetention = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.AssignTapePoolOutput = {
    type = "structure",
    members = {
        TapeARN = {
            type = "string",
        },
    },
}

M.CacheAttributes = {
    type = "structure",
    members = {
        CacheStaleTimeoutInSeconds = {
            type = "integer",
        },
    },
}

M.EndpointNetworkConfiguration = {
    type = "structure",
    members = {
        IpAddresses = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AssociateFileSystemInput = {
    type = "structure",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Password = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LocationARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        AuditDestinationARN = {
            type = "string",
        },
        CacheAttributes = M.CacheAttributes,
        EndpointNetworkConfiguration = M.EndpointNetworkConfiguration,
    },
}

M.AssociateFileSystemOutput = {
    type = "structure",
    members = {
        FileSystemAssociationARN = {
            type = "string",
        },
    },
}

M.AttachVolumeInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetName = {
            type = "string",
        },
        VolumeARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NetworkInterfaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DiskId = {
            type = "string",
        },
    },
}

M.AttachVolumeOutput = {
    type = "structure",
    members = {
        VolumeARN = {
            type = "string",
        },
        TargetARN = {
            type = "string",
        },
    },
}

M.AutomaticTapeCreationRule = {
    type = "structure",
    members = {
        TapeBarcodePrefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TapeSizeInBytes = {
            type = "long",
            traits = {
                required = true,
            },
        },
        MinimumNumTapes = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Worm = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.AutomaticTapeCreationPolicyInfo = {
    type = "structure",
    members = {
        AutomaticTapeCreationRules = {
            type = "list",
            member = M.AutomaticTapeCreationRule,
        },
        GatewayARN = {
            type = "string",
        },
    },
}

M.AutomaticUpdatePolicy = {
    ALL_VERSIONS = "ALL_VERSIONS",
    EMERGENCY_VERSIONS_ONLY = "EMERGENCY_VERSIONS_ONLY",
}

M.AvailabilityMonitorTestStatus = {
    COMPLETE = "COMPLETE",
    FAILED = "FAILED",
    PENDING = "PENDING",
}

M.BandwidthRateLimitInterval = {
    type = "structure",
    members = {
        StartHourOfDay = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        StartMinuteOfHour = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        EndHourOfDay = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        EndMinuteOfHour = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        DaysOfWeek = {
            type = "list",
            member = { type = "integer" },
            traits = {
                required = true,
            },
        },
        AverageUploadRateLimitInBitsPerSec = {
            type = "long",
        },
        AverageDownloadRateLimitInBitsPerSec = {
            type = "long",
        },
    },
}

M.VolumeiSCSIAttributes = {
    type = "structure",
    members = {
        TargetARN = {
            type = "string",
        },
        NetworkInterfaceId = {
            type = "string",
        },
        NetworkInterfacePort = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        LunNumber = {
            type = "integer",
        },
        ChapEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CachediSCSIVolume = {
    type = "structure",
    members = {
        VolumeARN = {
            type = "string",
        },
        VolumeId = {
            type = "string",
        },
        VolumeType = {
            type = "string",
        },
        VolumeStatus = {
            type = "string",
        },
        VolumeAttachmentStatus = {
            type = "string",
        },
        VolumeSizeInBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        VolumeProgress = {
            type = "double",
        },
        SourceSnapshotId = {
            type = "string",
        },
        VolumeiSCSIAttributes = M.VolumeiSCSIAttributes,
        CreatedDate = {
            type = "timestamp",
        },
        VolumeUsedInBytes = {
            type = "long",
        },
        KMSKey = {
            type = "string",
        },
        TargetName = {
            type = "string",
        },
    },
}

M.CacheReportFilterName = {
    UploadState = "UploadState",
    UploadFailureReason = "UploadFailureReason",
}

M.CacheReportFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CacheReportStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    CANCELED = "CANCELED",
    FAILED = "FAILED",
    ERROR = "ERROR",
}

M.CacheReportInfo = {
    type = "structure",
    members = {
        CacheReportARN = {
            type = "string",
        },
        CacheReportStatus = {
            type = "string",
        },
        ReportCompletionPercent = {
            type = "integer",
        },
        EndTime = {
            type = "timestamp",
        },
        Role = {
            type = "string",
        },
        FileShareARN = {
            type = "string",
        },
        LocationARN = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        InclusionFilters = {
            type = "list",
            member = M.CacheReportFilter,
        },
        ExclusionFilters = {
            type = "list",
            member = M.CacheReportFilter,
        },
        ReportName = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CancelArchivalInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TapeARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelArchivalOutput = {
    type = "structure",
    members = {
        TapeARN = {
            type = "string",
        },
    },
}

M.CancelCacheReportInput = {
    type = "structure",
    members = {
        CacheReportARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelCacheReportOutput = {
    type = "structure",
    members = {
        CacheReportARN = {
            type = "string",
        },
    },
}

M.CancelRetrievalInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TapeARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelRetrievalOutput = {
    type = "structure",
    members = {
        TapeARN = {
            type = "string",
        },
    },
}

M.CaseSensitivity = {
    ClientSpecified = "ClientSpecified",
    CaseSensitive = "CaseSensitive",
}

M.ChapInfo = {
    type = "structure",
    members = {
        TargetARN = {
            type = "string",
        },
        SecretToAuthenticateInitiator = {
            type = "string",
        },
        InitiatorName = {
            type = "string",
        },
        SecretToAuthenticateTarget = {
            type = "string",
        },
    },
}

M.CreateCachediSCSIVolumeInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VolumeSizeInBytes = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        SnapshotId = {
            type = "string",
        },
        TargetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceVolumeARN = {
            type = "string",
        },
        NetworkInterfaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KMSEncrypted = {
            type = "boolean",
        },
        KMSKey = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateCachediSCSIVolumeOutput = {
    type = "structure",
    members = {
        VolumeARN = {
            type = "string",
        },
        TargetARN = {
            type = "string",
        },
    },
}

M.EncryptionType = {
    SseS3 = "SseS3",
    SseKms = "SseKms",
    DsseKms = "DsseKms",
}

M.NFSFileShareDefaults = {
    type = "structure",
    members = {
        FileMode = {
            type = "string",
        },
        DirectoryMode = {
            type = "string",
        },
        GroupId = {
            type = "long",
        },
        OwnerId = {
            type = "long",
        },
    },
}

M.ObjectACL = {
    private = "private",
    public_read = "public-read",
    public_read_write = "public-read-write",
    authenticated_read = "authenticated-read",
    bucket_owner_read = "bucket-owner-read",
    bucket_owner_full_control = "bucket-owner-full-control",
    aws_exec_read = "aws-exec-read",
}

M.CreateNFSFileShareInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NFSFileShareDefaults = M.NFSFileShareDefaults,
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionType = {
            type = "string",
        },
        KMSEncrypted = {
            type = "boolean",
        },
        KMSKey = {
            type = "string",
        },
        Role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LocationARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultStorageClass = {
            type = "string",
        },
        ObjectACL = {
            type = "string",
        },
        ClientList = {
            type = "list",
            member = { type = "string" },
        },
        Squash = {
            type = "string",
        },
        ReadOnly = {
            type = "boolean",
        },
        GuessMIMETypeEnabled = {
            type = "boolean",
        },
        RequesterPays = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        FileShareName = {
            type = "string",
        },
        CacheAttributes = M.CacheAttributes,
        NotificationPolicy = {
            type = "string",
        },
        VPCEndpointDNSName = {
            type = "string",
        },
        BucketRegion = {
            type = "string",
        },
        AuditDestinationARN = {
            type = "string",
        },
    },
}

M.CreateNFSFileShareOutput = {
    type = "structure",
    members = {
        FileShareARN = {
            type = "string",
        },
    },
}

M.CreateSMBFileShareInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionType = {
            type = "string",
        },
        KMSEncrypted = {
            type = "boolean",
        },
        KMSKey = {
            type = "string",
        },
        Role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LocationARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultStorageClass = {
            type = "string",
        },
        ObjectACL = {
            type = "string",
        },
        ReadOnly = {
            type = "boolean",
        },
        GuessMIMETypeEnabled = {
            type = "boolean",
        },
        RequesterPays = {
            type = "boolean",
        },
        SMBACLEnabled = {
            type = "boolean",
        },
        AccessBasedEnumeration = {
            type = "boolean",
        },
        AdminUserList = {
            type = "list",
            member = { type = "string" },
        },
        ValidUserList = {
            type = "list",
            member = { type = "string" },
        },
        InvalidUserList = {
            type = "list",
            member = { type = "string" },
        },
        AuditDestinationARN = {
            type = "string",
        },
        Authentication = {
            type = "string",
        },
        CaseSensitivity = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        FileShareName = {
            type = "string",
        },
        CacheAttributes = M.CacheAttributes,
        NotificationPolicy = {
            type = "string",
        },
        VPCEndpointDNSName = {
            type = "string",
        },
        BucketRegion = {
            type = "string",
        },
        OplocksEnabled = {
            type = "boolean",
        },
    },
}

M.CreateSMBFileShareOutput = {
    type = "structure",
    members = {
        FileShareARN = {
            type = "string",
        },
    },
}

M.CreateSnapshotInput = {
    type = "structure",
    members = {
        VolumeARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnapshotDescription = {
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

M.CreateSnapshotOutput = {
    type = "structure",
    members = {
        VolumeARN = {
            type = "string",
        },
        SnapshotId = {
            type = "string",
        },
    },
}

M.ServiceUnavailableError = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
        error = M.StorageGatewayError,
    },
}

M.CreateSnapshotFromVolumeRecoveryPointInput = {
    type = "structure",
    members = {
        VolumeARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnapshotDescription = {
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

M.CreateSnapshotFromVolumeRecoveryPointOutput = {
    type = "structure",
    members = {
        SnapshotId = {
            type = "string",
        },
        VolumeARN = {
            type = "string",
        },
        VolumeRecoveryPointTime = {
            type = "string",
        },
    },
}

M.CreateStorediSCSIVolumeInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DiskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnapshotId = {
            type = "string",
        },
        PreserveExistingData = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        TargetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NetworkInterfaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KMSEncrypted = {
            type = "boolean",
        },
        KMSKey = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateStorediSCSIVolumeOutput = {
    type = "structure",
    members = {
        VolumeARN = {
            type = "string",
        },
        VolumeSizeInBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        TargetARN = {
            type = "string",
        },
    },
}

M.RetentionLockType = {
    COMPLIANCE = "COMPLIANCE",
    GOVERNANCE = "GOVERNANCE",
    NONE = "NONE",
}

M.TapeStorageClass = {
    DEEP_ARCHIVE = "DEEP_ARCHIVE",
    GLACIER = "GLACIER",
}

M.CreateTapePoolInput = {
    type = "structure",
    members = {
        PoolName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StorageClass = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetentionLockType = {
            type = "string",
        },
        RetentionLockTimeInDays = {
            type = "integer",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateTapePoolOutput = {
    type = "structure",
    members = {
        PoolARN = {
            type = "string",
        },
    },
}

M.CreateTapesInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TapeSizeInBytes = {
            type = "long",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NumTapesToCreate = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        TapeBarcodePrefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KMSEncrypted = {
            type = "boolean",
        },
        KMSKey = {
            type = "string",
        },
        PoolId = {
            type = "string",
        },
        Worm = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateTapesOutput = {
    type = "structure",
    members = {
        TapeARNs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateTapeWithBarcodeInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TapeSizeInBytes = {
            type = "long",
            traits = {
                required = true,
            },
        },
        TapeBarcode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KMSEncrypted = {
            type = "boolean",
        },
        KMSKey = {
            type = "string",
        },
        PoolId = {
            type = "string",
        },
        Worm = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateTapeWithBarcodeOutput = {
    type = "structure",
    members = {
        TapeARN = {
            type = "string",
        },
    },
}

M.DeleteAutomaticTapeCreationPolicyInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAutomaticTapeCreationPolicyOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
    },
}

M.DeleteBandwidthRateLimitInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BandwidthType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteBandwidthRateLimitOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
    },
}

M.DeleteCacheReportInput = {
    type = "structure",
    members = {
        CacheReportARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCacheReportOutput = {
    type = "structure",
    members = {
        CacheReportARN = {
            type = "string",
        },
    },
}

M.DeleteChapCredentialsInput = {
    type = "structure",
    members = {
        TargetARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InitiatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteChapCredentialsOutput = {
    type = "structure",
    members = {
        TargetARN = {
            type = "string",
        },
        InitiatorName = {
            type = "string",
        },
    },
}

M.DeleteFileShareInput = {
    type = "structure",
    members = {
        FileShareARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ForceDelete = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DeleteFileShareOutput = {
    type = "structure",
    members = {
        FileShareARN = {
            type = "string",
        },
    },
}

M.DeleteGatewayInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteGatewayOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
    },
}

M.DeleteSnapshotScheduleInput = {
    type = "structure",
    members = {
        VolumeARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSnapshotScheduleOutput = {
    type = "structure",
    members = {
        VolumeARN = {
            type = "string",
        },
    },
}

M.DeleteTapeInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TapeARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BypassGovernanceRetention = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DeleteTapeOutput = {
    type = "structure",
    members = {
        TapeARN = {
            type = "string",
        },
    },
}

M.DeleteTapeArchiveInput = {
    type = "structure",
    members = {
        TapeARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BypassGovernanceRetention = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DeleteTapeArchiveOutput = {
    type = "structure",
    members = {
        TapeARN = {
            type = "string",
        },
    },
}

M.DeleteTapePoolInput = {
    type = "structure",
    members = {
        PoolARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTapePoolOutput = {
    type = "structure",
    members = {
        PoolARN = {
            type = "string",
        },
    },
}

M.DeleteVolumeInput = {
    type = "structure",
    members = {
        VolumeARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteVolumeOutput = {
    type = "structure",
    members = {
        VolumeARN = {
            type = "string",
        },
    },
}

M.DescribeAvailabilityMonitorTestInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAvailabilityMonitorTestOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
    },
}

M.DescribeBandwidthRateLimitInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeBandwidthRateLimitOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
        AverageUploadRateLimitInBitsPerSec = {
            type = "long",
        },
        AverageDownloadRateLimitInBitsPerSec = {
            type = "long",
        },
    },
}

M.DescribeBandwidthRateLimitScheduleInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeBandwidthRateLimitScheduleOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
        BandwidthRateLimitIntervals = {
            type = "list",
            member = M.BandwidthRateLimitInterval,
        },
    },
}

M.DescribeCacheInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeCacheOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
        DiskIds = {
            type = "list",
            member = { type = "string" },
        },
        CacheAllocatedInBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        CacheUsedPercentage = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        CacheDirtyPercentage = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        CacheHitPercentage = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        CacheMissPercentage = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.DescribeCachediSCSIVolumesInput = {
    type = "structure",
    members = {
        VolumeARNs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeCachediSCSIVolumesOutput = {
    type = "structure",
    members = {
        CachediSCSIVolumes = {
            type = "list",
            member = M.CachediSCSIVolume,
        },
    },
}

M.DescribeCacheReportInput = {
    type = "structure",
    members = {
        CacheReportARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeCacheReportOutput = {
    type = "structure",
    members = {
        CacheReportInfo = M.CacheReportInfo,
    },
}

M.DescribeChapCredentialsInput = {
    type = "structure",
    members = {
        TargetARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeChapCredentialsOutput = {
    type = "structure",
    members = {
        ChapCredentials = {
            type = "list",
            member = M.ChapInfo,
        },
    },
}

M.DescribeFileSystemAssociationsInput = {
    type = "structure",
    members = {
        FileSystemAssociationARNList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.FileSystemAssociationStatusDetail = {
    type = "structure",
    members = {
        ErrorCode = {
            type = "string",
        },
    },
}

M.FileSystemAssociationInfo = {
    type = "structure",
    members = {
        FileSystemAssociationARN = {
            type = "string",
        },
        LocationARN = {
            type = "string",
        },
        FileSystemAssociationStatus = {
            type = "string",
        },
        AuditDestinationARN = {
            type = "string",
        },
        GatewayARN = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        CacheAttributes = M.CacheAttributes,
        EndpointNetworkConfiguration = M.EndpointNetworkConfiguration,
        FileSystemAssociationStatusDetails = {
            type = "list",
            member = M.FileSystemAssociationStatusDetail,
        },
    },
}

M.DescribeFileSystemAssociationsOutput = {
    type = "structure",
    members = {
        FileSystemAssociationInfoList = {
            type = "list",
            member = M.FileSystemAssociationInfo,
        },
    },
}

M.DescribeGatewayInformationInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GatewayCapacity = {
    Small = "Small",
    Medium = "Medium",
    Large = "Large",
}

M.NetworkInterface = {
    type = "structure",
    members = {
        Ipv4Address = {
            type = "string",
        },
        MacAddress = {
            type = "string",
        },
        Ipv6Address = {
            type = "string",
        },
    },
}

M.HostEnvironment = {
    VMWARE = "VMWARE",
    HYPER_V = "HYPER-V",
    EC2 = "EC2",
    KVM = "KVM",
    OTHER = "OTHER",
    SNOWBALL = "SNOWBALL",
}

M.DescribeGatewayInformationOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
        GatewayId = {
            type = "string",
        },
        GatewayName = {
            type = "string",
        },
        GatewayTimezone = {
            type = "string",
        },
        GatewayState = {
            type = "string",
        },
        GatewayNetworkInterfaces = {
            type = "list",
            member = M.NetworkInterface,
        },
        GatewayType = {
            type = "string",
        },
        NextUpdateAvailabilityDate = {
            type = "string",
        },
        LastSoftwareUpdate = {
            type = "string",
        },
        Ec2InstanceId = {
            type = "string",
        },
        Ec2InstanceRegion = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        VPCEndpoint = {
            type = "string",
        },
        CloudWatchLogGroupARN = {
            type = "string",
        },
        HostEnvironment = {
            type = "string",
        },
        EndpointType = {
            type = "string",
        },
        SoftwareUpdatesEndDate = {
            type = "string",
        },
        DeprecationDate = {
            type = "string",
        },
        GatewayCapacity = {
            type = "string",
        },
        SupportedGatewayCapacities = {
            type = "list",
            member = { type = "string" },
        },
        HostEnvironmentId = {
            type = "string",
        },
        SoftwareVersion = {
            type = "string",
        },
    },
}

M.DescribeMaintenanceStartTimeInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SoftwareUpdatePreferences = {
    type = "structure",
    members = {
        AutomaticUpdatePolicy = {
            type = "string",
        },
    },
}

M.DescribeMaintenanceStartTimeOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
        HourOfDay = {
            type = "integer",
        },
        MinuteOfHour = {
            type = "integer",
        },
        DayOfWeek = {
            type = "integer",
        },
        DayOfMonth = {
            type = "integer",
        },
        Timezone = {
            type = "string",
        },
        SoftwareUpdatePreferences = M.SoftwareUpdatePreferences,
    },
}

M.DescribeNFSFileSharesInput = {
    type = "structure",
    members = {
        FileShareARNList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.NFSFileShareInfo = {
    type = "structure",
    members = {
        NFSFileShareDefaults = M.NFSFileShareDefaults,
        FileShareARN = {
            type = "string",
        },
        FileShareId = {
            type = "string",
        },
        FileShareStatus = {
            type = "string",
        },
        GatewayARN = {
            type = "string",
        },
        EncryptionType = {
            type = "string",
        },
        KMSEncrypted = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        KMSKey = {
            type = "string",
        },
        Path = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        LocationARN = {
            type = "string",
        },
        DefaultStorageClass = {
            type = "string",
        },
        ObjectACL = {
            type = "string",
        },
        ClientList = {
            type = "list",
            member = { type = "string" },
        },
        Squash = {
            type = "string",
        },
        ReadOnly = {
            type = "boolean",
        },
        GuessMIMETypeEnabled = {
            type = "boolean",
        },
        RequesterPays = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        FileShareName = {
            type = "string",
        },
        CacheAttributes = M.CacheAttributes,
        NotificationPolicy = {
            type = "string",
        },
        VPCEndpointDNSName = {
            type = "string",
        },
        BucketRegion = {
            type = "string",
        },
        AuditDestinationARN = {
            type = "string",
        },
    },
}

M.DescribeNFSFileSharesOutput = {
    type = "structure",
    members = {
        NFSFileShareInfoList = {
            type = "list",
            member = M.NFSFileShareInfo,
        },
    },
}

M.DescribeSMBFileSharesInput = {
    type = "structure",
    members = {
        FileShareARNList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.SMBFileShareInfo = {
    type = "structure",
    members = {
        FileShareARN = {
            type = "string",
        },
        FileShareId = {
            type = "string",
        },
        FileShareStatus = {
            type = "string",
        },
        GatewayARN = {
            type = "string",
        },
        EncryptionType = {
            type = "string",
        },
        KMSEncrypted = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        KMSKey = {
            type = "string",
        },
        Path = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        LocationARN = {
            type = "string",
        },
        DefaultStorageClass = {
            type = "string",
        },
        ObjectACL = {
            type = "string",
        },
        ReadOnly = {
            type = "boolean",
        },
        GuessMIMETypeEnabled = {
            type = "boolean",
        },
        RequesterPays = {
            type = "boolean",
        },
        SMBACLEnabled = {
            type = "boolean",
        },
        AccessBasedEnumeration = {
            type = "boolean",
        },
        AdminUserList = {
            type = "list",
            member = { type = "string" },
        },
        ValidUserList = {
            type = "list",
            member = { type = "string" },
        },
        InvalidUserList = {
            type = "list",
            member = { type = "string" },
        },
        AuditDestinationARN = {
            type = "string",
        },
        Authentication = {
            type = "string",
        },
        CaseSensitivity = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        FileShareName = {
            type = "string",
        },
        CacheAttributes = M.CacheAttributes,
        NotificationPolicy = {
            type = "string",
        },
        VPCEndpointDNSName = {
            type = "string",
        },
        BucketRegion = {
            type = "string",
        },
        OplocksEnabled = {
            type = "boolean",
        },
    },
}

M.DescribeSMBFileSharesOutput = {
    type = "structure",
    members = {
        SMBFileShareInfoList = {
            type = "list",
            member = M.SMBFileShareInfo,
        },
    },
}

M.DescribeSMBSettingsInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SMBLocalGroups = {
    type = "structure",
    members = {
        GatewayAdmins = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SMBSecurityStrategy = {
    ClientSpecified = "ClientSpecified",
    MandatorySigning = "MandatorySigning",
    MandatoryEncryption = "MandatoryEncryption",
    MandatoryEncryptionNoAes128 = "MandatoryEncryptionNoAes128",
}

M.DescribeSMBSettingsOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
        DomainName = {
            type = "string",
        },
        ActiveDirectoryStatus = {
            type = "string",
        },
        SMBGuestPasswordSet = {
            type = "boolean",
        },
        SMBSecurityStrategy = {
            type = "string",
        },
        FileSharesVisible = {
            type = "boolean",
        },
        SMBLocalGroups = M.SMBLocalGroups,
    },
}

M.DescribeSnapshotScheduleInput = {
    type = "structure",
    members = {
        VolumeARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeSnapshotScheduleOutput = {
    type = "structure",
    members = {
        VolumeARN = {
            type = "string",
        },
        StartAt = {
            type = "integer",
        },
        RecurrenceInHours = {
            type = "integer",
        },
        Description = {
            type = "string",
        },
        Timezone = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DescribeStorediSCSIVolumesInput = {
    type = "structure",
    members = {
        VolumeARNs = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.StorediSCSIVolume = {
    type = "structure",
    members = {
        VolumeARN = {
            type = "string",
        },
        VolumeId = {
            type = "string",
        },
        VolumeType = {
            type = "string",
        },
        VolumeStatus = {
            type = "string",
        },
        VolumeAttachmentStatus = {
            type = "string",
        },
        VolumeSizeInBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        VolumeProgress = {
            type = "double",
        },
        VolumeDiskId = {
            type = "string",
        },
        SourceSnapshotId = {
            type = "string",
        },
        PreservedExistingData = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        VolumeiSCSIAttributes = M.VolumeiSCSIAttributes,
        CreatedDate = {
            type = "timestamp",
        },
        VolumeUsedInBytes = {
            type = "long",
        },
        KMSKey = {
            type = "string",
        },
        TargetName = {
            type = "string",
        },
    },
}

M.DescribeStorediSCSIVolumesOutput = {
    type = "structure",
    members = {
        StorediSCSIVolumes = {
            type = "list",
            member = M.StorediSCSIVolume,
        },
    },
}

M.DescribeTapeArchivesInput = {
    type = "structure",
    members = {
        TapeARNs = {
            type = "list",
            member = { type = "string" },
        },
        Marker = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.TapeArchive = {
    type = "structure",
    members = {
        TapeARN = {
            type = "string",
        },
        TapeBarcode = {
            type = "string",
        },
        TapeCreatedDate = {
            type = "timestamp",
        },
        TapeSizeInBytes = {
            type = "long",
        },
        CompletionTime = {
            type = "timestamp",
        },
        RetrievedTo = {
            type = "string",
        },
        TapeStatus = {
            type = "string",
        },
        TapeUsedInBytes = {
            type = "long",
        },
        KMSKey = {
            type = "string",
        },
        PoolId = {
            type = "string",
        },
        Worm = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        RetentionStartDate = {
            type = "timestamp",
        },
        PoolEntryDate = {
            type = "timestamp",
        },
    },
}

M.DescribeTapeArchivesOutput = {
    type = "structure",
    members = {
        TapeArchives = {
            type = "list",
            member = M.TapeArchive,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeTapeRecoveryPointsInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.TapeRecoveryPointInfo = {
    type = "structure",
    members = {
        TapeARN = {
            type = "string",
        },
        TapeRecoveryPointTime = {
            type = "timestamp",
        },
        TapeSizeInBytes = {
            type = "long",
        },
        TapeStatus = {
            type = "string",
        },
    },
}

M.DescribeTapeRecoveryPointsOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
        TapeRecoveryPointInfos = {
            type = "list",
            member = M.TapeRecoveryPointInfo,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeTapesInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TapeARNs = {
            type = "list",
            member = { type = "string" },
        },
        Marker = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.Tape = {
    type = "structure",
    members = {
        TapeARN = {
            type = "string",
        },
        TapeBarcode = {
            type = "string",
        },
        TapeCreatedDate = {
            type = "timestamp",
        },
        TapeSizeInBytes = {
            type = "long",
        },
        TapeStatus = {
            type = "string",
        },
        VTLDevice = {
            type = "string",
        },
        Progress = {
            type = "double",
        },
        TapeUsedInBytes = {
            type = "long",
        },
        KMSKey = {
            type = "string",
        },
        PoolId = {
            type = "string",
        },
        Worm = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        RetentionStartDate = {
            type = "timestamp",
        },
        PoolEntryDate = {
            type = "timestamp",
        },
    },
}

M.DescribeTapesOutput = {
    type = "structure",
    members = {
        Tapes = {
            type = "list",
            member = M.Tape,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeUploadBufferInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeUploadBufferOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
        DiskIds = {
            type = "list",
            member = { type = "string" },
        },
        UploadBufferUsedInBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        UploadBufferAllocatedInBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.DescribeVTLDevicesInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VTLDeviceARNs = {
            type = "list",
            member = { type = "string" },
        },
        Marker = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.DeviceiSCSIAttributes = {
    type = "structure",
    members = {
        TargetARN = {
            type = "string",
        },
        NetworkInterfaceId = {
            type = "string",
        },
        NetworkInterfacePort = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ChapEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.VTLDevice = {
    type = "structure",
    members = {
        VTLDeviceARN = {
            type = "string",
        },
        VTLDeviceType = {
            type = "string",
        },
        VTLDeviceVendor = {
            type = "string",
        },
        VTLDeviceProductIdentifier = {
            type = "string",
        },
        DeviceiSCSIAttributes = M.DeviceiSCSIAttributes,
    },
}

M.DescribeVTLDevicesOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
        VTLDevices = {
            type = "list",
            member = M.VTLDevice,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeWorkingStorageInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeWorkingStorageOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
        DiskIds = {
            type = "list",
            member = { type = "string" },
        },
        WorkingStorageUsedInBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        WorkingStorageAllocatedInBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.DetachVolumeInput = {
    type = "structure",
    members = {
        VolumeARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ForceDetach = {
            type = "boolean",
        },
    },
}

M.DetachVolumeOutput = {
    type = "structure",
    members = {
        VolumeARN = {
            type = "string",
        },
    },
}

M.DisableGatewayInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisableGatewayOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
    },
}

M.DisassociateFileSystemInput = {
    type = "structure",
    members = {
        FileSystemAssociationARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ForceDelete = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DisassociateFileSystemOutput = {
    type = "structure",
    members = {
        FileSystemAssociationARN = {
            type = "string",
        },
    },
}

M.Disk = {
    type = "structure",
    members = {
        DiskId = {
            type = "string",
        },
        DiskPath = {
            type = "string",
        },
        DiskNode = {
            type = "string",
        },
        DiskStatus = {
            type = "string",
        },
        DiskSizeInBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        DiskAllocationType = {
            type = "string",
        },
        DiskAllocationResource = {
            type = "string",
        },
        DiskAttributeList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EvictFilesFailingUploadInput = {
    type = "structure",
    members = {
        FileShareARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ForceRemove = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.EvictFilesFailingUploadOutput = {
    type = "structure",
    members = {
        NotificationId = {
            type = "string",
        },
    },
}

M.FileShareType = {
    NFS = "NFS",
    SMB = "SMB",
}

M.FileShareInfo = {
    type = "structure",
    members = {
        FileShareType = {
            type = "string",
        },
        FileShareARN = {
            type = "string",
        },
        FileShareId = {
            type = "string",
        },
        FileShareStatus = {
            type = "string",
        },
        GatewayARN = {
            type = "string",
        },
    },
}

M.FileSystemAssociationSummary = {
    type = "structure",
    members = {
        FileSystemAssociationId = {
            type = "string",
        },
        FileSystemAssociationARN = {
            type = "string",
        },
        FileSystemAssociationStatus = {
            type = "string",
        },
        GatewayARN = {
            type = "string",
        },
    },
}

M.GatewayInfo = {
    type = "structure",
    members = {
        GatewayId = {
            type = "string",
        },
        GatewayARN = {
            type = "string",
        },
        GatewayType = {
            type = "string",
        },
        GatewayOperationalState = {
            type = "string",
        },
        GatewayName = {
            type = "string",
        },
        Ec2InstanceId = {
            type = "string",
        },
        Ec2InstanceRegion = {
            type = "string",
        },
        HostEnvironment = {
            type = "string",
        },
        HostEnvironmentId = {
            type = "string",
        },
        DeprecationDate = {
            type = "string",
        },
        SoftwareVersion = {
            type = "string",
        },
    },
}

M.JoinDomainInput = {
    type = "structure",
    members = {
        GatewayARN = {
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
        OrganizationalUnit = {
            type = "string",
        },
        DomainControllers = {
            type = "list",
            member = { type = "string" },
        },
        TimeoutInSeconds = {
            type = "integer",
        },
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Password = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JoinDomainOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
        ActiveDirectoryStatus = {
            type = "string",
        },
    },
}

M.ListAutomaticTapeCreationPoliciesInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
    },
}

M.ListAutomaticTapeCreationPoliciesOutput = {
    type = "structure",
    members = {
        AutomaticTapeCreationPolicyInfos = {
            type = "list",
            member = M.AutomaticTapeCreationPolicyInfo,
        },
    },
}

M.ListCacheReportsInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
    },
}

M.ListCacheReportsOutput = {
    type = "structure",
    members = {
        CacheReportList = {
            type = "list",
            member = M.CacheReportInfo,
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListFileSharesInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListFileSharesOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        NextMarker = {
            type = "string",
        },
        FileShareInfoList = {
            type = "list",
            member = M.FileShareInfo,
        },
    },
}

M.ListFileSystemAssociationsInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListFileSystemAssociationsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        NextMarker = {
            type = "string",
        },
        FileSystemAssociationSummaryList = {
            type = "list",
            member = M.FileSystemAssociationSummary,
        },
    },
}

M.ListGatewaysInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.ListGatewaysOutput = {
    type = "structure",
    members = {
        Gateways = {
            type = "list",
            member = M.GatewayInfo,
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListLocalDisksInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListLocalDisksOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
        Disks = {
            type = "list",
            member = M.Disk,
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
        Marker = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListTapePoolsInput = {
    type = "structure",
    members = {
        PoolARNs = {
            type = "list",
            member = { type = "string" },
        },
        Marker = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.PoolStatus = {
    ACTIVE = "ACTIVE",
    DELETED = "DELETED",
}

M.PoolInfo = {
    type = "structure",
    members = {
        PoolARN = {
            type = "string",
        },
        PoolName = {
            type = "string",
        },
        StorageClass = {
            type = "string",
        },
        RetentionLockType = {
            type = "string",
        },
        RetentionLockTimeInDays = {
            type = "integer",
        },
        PoolStatus = {
            type = "string",
        },
    },
}

M.ListTapePoolsOutput = {
    type = "structure",
    members = {
        PoolInfos = {
            type = "list",
            member = M.PoolInfo,
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListTapesInput = {
    type = "structure",
    members = {
        TapeARNs = {
            type = "list",
            member = { type = "string" },
        },
        Marker = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.TapeInfo = {
    type = "structure",
    members = {
        TapeARN = {
            type = "string",
        },
        TapeBarcode = {
            type = "string",
        },
        TapeSizeInBytes = {
            type = "long",
        },
        TapeStatus = {
            type = "string",
        },
        GatewayARN = {
            type = "string",
        },
        PoolId = {
            type = "string",
        },
        RetentionStartDate = {
            type = "timestamp",
        },
        PoolEntryDate = {
            type = "timestamp",
        },
    },
}

M.ListTapesOutput = {
    type = "structure",
    members = {
        TapeInfos = {
            type = "list",
            member = M.TapeInfo,
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListVolumeInitiatorsInput = {
    type = "structure",
    members = {
        VolumeARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListVolumeInitiatorsOutput = {
    type = "structure",
    members = {
        Initiators = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListVolumeRecoveryPointsInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VolumeRecoveryPointInfo = {
    type = "structure",
    members = {
        VolumeARN = {
            type = "string",
        },
        VolumeSizeInBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        VolumeUsageInBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        VolumeRecoveryPointTime = {
            type = "string",
        },
    },
}

M.ListVolumeRecoveryPointsOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
        VolumeRecoveryPointInfos = {
            type = "list",
            member = M.VolumeRecoveryPointInfo,
        },
    },
}

M.ListVolumesInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.VolumeInfo = {
    type = "structure",
    members = {
        VolumeARN = {
            type = "string",
        },
        VolumeId = {
            type = "string",
        },
        GatewayARN = {
            type = "string",
        },
        GatewayId = {
            type = "string",
        },
        VolumeType = {
            type = "string",
        },
        VolumeSizeInBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        VolumeAttachmentStatus = {
            type = "string",
        },
    },
}

M.ListVolumesOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        VolumeInfos = {
            type = "list",
            member = M.VolumeInfo,
        },
    },
}

M.NotifyWhenUploadedInput = {
    type = "structure",
    members = {
        FileShareARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NotifyWhenUploadedOutput = {
    type = "structure",
    members = {
        FileShareARN = {
            type = "string",
        },
        NotificationId = {
            type = "string",
        },
    },
}

M.RefreshCacheInput = {
    type = "structure",
    members = {
        FileShareARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FolderList = {
            type = "list",
            member = { type = "string" },
        },
        Recursive = {
            type = "boolean",
        },
    },
}

M.RefreshCacheOutput = {
    type = "structure",
    members = {
        FileShareARN = {
            type = "string",
        },
        NotificationId = {
            type = "string",
        },
    },
}

M.RemoveTagsFromResourceInput = {
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

M.RemoveTagsFromResourceOutput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
        },
    },
}

M.ResetCacheInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResetCacheOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
    },
}

M.RetrieveTapeArchiveInput = {
    type = "structure",
    members = {
        TapeARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RetrieveTapeArchiveOutput = {
    type = "structure",
    members = {
        TapeARN = {
            type = "string",
        },
    },
}

M.RetrieveTapeRecoveryPointInput = {
    type = "structure",
    members = {
        TapeARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RetrieveTapeRecoveryPointOutput = {
    type = "structure",
    members = {
        TapeARN = {
            type = "string",
        },
    },
}

M.SetLocalConsolePasswordInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LocalConsolePassword = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SetLocalConsolePasswordOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
    },
}

M.SetSMBGuestPasswordInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Password = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SetSMBGuestPasswordOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
    },
}

M.ShutdownGatewayInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ShutdownGatewayOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
    },
}

M.StartAvailabilityMonitorTestInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartAvailabilityMonitorTestOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
    },
}

M.StartCacheReportInput = {
    type = "structure",
    members = {
        FileShareARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LocationARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BucketRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VPCEndpointDNSName = {
            type = "string",
        },
        InclusionFilters = {
            type = "list",
            member = M.CacheReportFilter,
        },
        ExclusionFilters = {
            type = "list",
            member = M.CacheReportFilter,
        },
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
    },
}

M.StartCacheReportOutput = {
    type = "structure",
    members = {
        CacheReportARN = {
            type = "string",
        },
    },
}

M.StartGatewayInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartGatewayOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
    },
}

M.UpdateAutomaticTapeCreationPolicyInput = {
    type = "structure",
    members = {
        AutomaticTapeCreationRules = {
            type = "list",
            member = M.AutomaticTapeCreationRule,
            traits = {
                required = true,
            },
        },
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAutomaticTapeCreationPolicyOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
    },
}

M.UpdateBandwidthRateLimitInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AverageUploadRateLimitInBitsPerSec = {
            type = "long",
        },
        AverageDownloadRateLimitInBitsPerSec = {
            type = "long",
        },
    },
}

M.UpdateBandwidthRateLimitOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
    },
}

M.UpdateBandwidthRateLimitScheduleInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BandwidthRateLimitIntervals = {
            type = "list",
            member = M.BandwidthRateLimitInterval,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateBandwidthRateLimitScheduleOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
    },
}

M.UpdateChapCredentialsInput = {
    type = "structure",
    members = {
        TargetARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecretToAuthenticateInitiator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InitiatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecretToAuthenticateTarget = {
            type = "string",
        },
    },
}

M.UpdateChapCredentialsOutput = {
    type = "structure",
    members = {
        TargetARN = {
            type = "string",
        },
        InitiatorName = {
            type = "string",
        },
    },
}

M.UpdateFileSystemAssociationInput = {
    type = "structure",
    members = {
        FileSystemAssociationARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserName = {
            type = "string",
        },
        Password = {
            type = "string",
        },
        AuditDestinationARN = {
            type = "string",
        },
        CacheAttributes = M.CacheAttributes,
    },
}

M.UpdateFileSystemAssociationOutput = {
    type = "structure",
    members = {
        FileSystemAssociationARN = {
            type = "string",
        },
    },
}

M.UpdateGatewayInformationInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GatewayName = {
            type = "string",
        },
        GatewayTimezone = {
            type = "string",
        },
        CloudWatchLogGroupARN = {
            type = "string",
        },
        GatewayCapacity = {
            type = "string",
        },
    },
}

M.UpdateGatewayInformationOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
        GatewayName = {
            type = "string",
        },
    },
}

M.UpdateGatewaySoftwareNowInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateGatewaySoftwareNowOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
    },
}

M.UpdateMaintenanceStartTimeInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HourOfDay = {
            type = "integer",
        },
        MinuteOfHour = {
            type = "integer",
        },
        DayOfWeek = {
            type = "integer",
        },
        DayOfMonth = {
            type = "integer",
        },
        SoftwareUpdatePreferences = M.SoftwareUpdatePreferences,
    },
}

M.UpdateMaintenanceStartTimeOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
    },
}

M.UpdateNFSFileShareInput = {
    type = "structure",
    members = {
        FileShareARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionType = {
            type = "string",
        },
        KMSEncrypted = {
            type = "boolean",
        },
        KMSKey = {
            type = "string",
        },
        NFSFileShareDefaults = M.NFSFileShareDefaults,
        DefaultStorageClass = {
            type = "string",
        },
        ObjectACL = {
            type = "string",
        },
        ClientList = {
            type = "list",
            member = { type = "string" },
        },
        Squash = {
            type = "string",
        },
        ReadOnly = {
            type = "boolean",
        },
        GuessMIMETypeEnabled = {
            type = "boolean",
        },
        RequesterPays = {
            type = "boolean",
        },
        FileShareName = {
            type = "string",
        },
        CacheAttributes = M.CacheAttributes,
        NotificationPolicy = {
            type = "string",
        },
        AuditDestinationARN = {
            type = "string",
        },
    },
}

M.UpdateNFSFileShareOutput = {
    type = "structure",
    members = {
        FileShareARN = {
            type = "string",
        },
    },
}

M.UpdateSMBFileShareInput = {
    type = "structure",
    members = {
        FileShareARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionType = {
            type = "string",
        },
        KMSEncrypted = {
            type = "boolean",
        },
        KMSKey = {
            type = "string",
        },
        DefaultStorageClass = {
            type = "string",
        },
        ObjectACL = {
            type = "string",
        },
        ReadOnly = {
            type = "boolean",
        },
        GuessMIMETypeEnabled = {
            type = "boolean",
        },
        RequesterPays = {
            type = "boolean",
        },
        SMBACLEnabled = {
            type = "boolean",
        },
        AccessBasedEnumeration = {
            type = "boolean",
        },
        AdminUserList = {
            type = "list",
            member = { type = "string" },
        },
        ValidUserList = {
            type = "list",
            member = { type = "string" },
        },
        InvalidUserList = {
            type = "list",
            member = { type = "string" },
        },
        AuditDestinationARN = {
            type = "string",
        },
        CaseSensitivity = {
            type = "string",
        },
        FileShareName = {
            type = "string",
        },
        CacheAttributes = M.CacheAttributes,
        NotificationPolicy = {
            type = "string",
        },
        OplocksEnabled = {
            type = "boolean",
        },
    },
}

M.UpdateSMBFileShareOutput = {
    type = "structure",
    members = {
        FileShareARN = {
            type = "string",
        },
    },
}

M.UpdateSMBFileShareVisibilityInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileSharesVisible = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSMBFileShareVisibilityOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
    },
}

M.UpdateSMBLocalGroupsInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SMBLocalGroups = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SMBLocalGroups }),
    },
}

M.UpdateSMBLocalGroupsOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
    },
}

M.UpdateSMBSecurityStrategyInput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SMBSecurityStrategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSMBSecurityStrategyOutput = {
    type = "structure",
    members = {
        GatewayARN = {
            type = "string",
        },
    },
}

M.UpdateSnapshotScheduleInput = {
    type = "structure",
    members = {
        VolumeARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartAt = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        RecurrenceInHours = {
            type = "integer",
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

M.UpdateSnapshotScheduleOutput = {
    type = "structure",
    members = {
        VolumeARN = {
            type = "string",
        },
    },
}

M.UpdateVTLDeviceTypeInput = {
    type = "structure",
    members = {
        VTLDeviceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateVTLDeviceTypeOutput = {
    type = "structure",
    members = {
        VTLDeviceARN = {
            type = "string",
        },
    },
}

return M
