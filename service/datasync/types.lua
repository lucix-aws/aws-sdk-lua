local M = {}

M.Platform = {
    type = "structure",
    id = "Platform",
    members = {
        Version = {
            type = "string",
        },
    },
}

M.AgentStatus = {
    ONLINE = "ONLINE",
    OFFLINE = "OFFLINE",
}

M.AgentListEntry = {
    type = "structure",
    id = "AgentListEntry",
    members = {
        AgentArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Platform = M.Platform,
    },
}

M.Atime = {
    NONE = "NONE",
    BEST_EFFORT = "BEST_EFFORT",
}

M.AzureAccessTier = {
    HOT = "HOT",
    COOL = "COOL",
    ARCHIVE = "ARCHIVE",
}

M.AzureBlobAuthenticationType = {
    SAS = "SAS",
    NONE = "NONE",
}

M.AzureBlobSasConfiguration = {
    type = "structure",
    id = "AzureBlobSasConfiguration",
    members = {
        Token = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AzureBlobType = {
    BLOCK = "BLOCK",
}

M.CancelTaskExecutionInput = {
    type = "structure",
    id = "CancelTaskExecutionInput",
    members = {
        TaskExecutionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelTaskExecutionOutput = {
    type = "structure",
    id = "CancelTaskExecutionOutput",
}

M.InternalException = {
    type = "structure",
    id = "InternalException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    id = "InvalidRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
        datasyncErrorCode = {
            type = "string",
        },
    },
}

M.CmkSecretConfig = {
    type = "structure",
    id = "CmkSecretConfig",
    members = {
        SecretArn = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
    },
}

M.TagListEntry = {
    type = "structure",
    id = "TagListEntry",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
        },
    },
}

M.CreateAgentInput = {
    type = "structure",
    id = "CreateAgentInput",
    members = {
        ActivationKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AgentName = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.TagListEntry,
        },
        VpcEndpointId = {
            type = "string",
        },
        SubnetArns = {
            type = "list",
            member = { type = "string" },
        },
        SecurityGroupArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateAgentOutput = {
    type = "structure",
    id = "CreateAgentOutput",
    members = {
        AgentArn = {
            type = "string",
        },
    },
}

M.CustomSecretConfig = {
    type = "structure",
    id = "CustomSecretConfig",
    members = {
        SecretArn = {
            type = "string",
        },
        SecretAccessRoleArn = {
            type = "string",
        },
    },
}

M.CreateLocationAzureBlobInput = {
    type = "structure",
    id = "CreateLocationAzureBlobInput",
    members = {
        ContainerUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SasConfiguration = M.AzureBlobSasConfiguration,
        BlobType = {
            type = "string",
        },
        AccessTier = {
            type = "string",
        },
        Subdirectory = {
            type = "string",
        },
        AgentArns = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.TagListEntry,
        },
        CmkSecretConfig = M.CmkSecretConfig,
        CustomSecretConfig = M.CustomSecretConfig,
    },
}

M.CreateLocationAzureBlobOutput = {
    type = "structure",
    id = "CreateLocationAzureBlobOutput",
    members = {
        LocationArn = {
            type = "string",
        },
    },
}

M.Ec2Config = {
    type = "structure",
    id = "Ec2Config",
    members = {
        SubnetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecurityGroupArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.EfsInTransitEncryption = {
    NONE = "NONE",
    TLS1_2 = "TLS1_2",
}

M.CreateLocationEfsInput = {
    type = "structure",
    id = "CreateLocationEfsInput",
    members = {
        Subdirectory = {
            type = "string",
        },
        EfsFilesystemArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Ec2Config = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Ec2Config }),
        Tags = {
            type = "list",
            member = M.TagListEntry,
        },
        AccessPointArn = {
            type = "string",
        },
        FileSystemAccessRoleArn = {
            type = "string",
        },
        InTransitEncryption = {
            type = "string",
        },
    },
}

M.CreateLocationEfsOutput = {
    type = "structure",
    id = "CreateLocationEfsOutput",
    members = {
        LocationArn = {
            type = "string",
        },
    },
}

M.CreateLocationFsxLustreInput = {
    type = "structure",
    id = "CreateLocationFsxLustreInput",
    members = {
        FsxFilesystemArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecurityGroupArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Subdirectory = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.TagListEntry,
        },
    },
}

M.CreateLocationFsxLustreOutput = {
    type = "structure",
    id = "CreateLocationFsxLustreOutput",
    members = {
        LocationArn = {
            type = "string",
        },
    },
}

M.NfsVersion = {
    AUTOMATIC = "AUTOMATIC",
    NFS3 = "NFS3",
    NFS4_0 = "NFS4_0",
    NFS4_1 = "NFS4_1",
}

M.NfsMountOptions = {
    type = "structure",
    id = "NfsMountOptions",
    members = {
        Version = {
            type = "string",
        },
    },
}

M.FsxProtocolNfs = {
    type = "structure",
    id = "FsxProtocolNfs",
    members = {
        MountOptions = M.NfsMountOptions,
    },
}

M.ManagedSecretConfig = {
    type = "structure",
    id = "ManagedSecretConfig",
    members = {
        SecretArn = {
            type = "string",
        },
    },
}

M.SmbVersion = {
    AUTOMATIC = "AUTOMATIC",
    SMB2 = "SMB2",
    SMB3 = "SMB3",
    SMB1 = "SMB1",
    SMB2_0 = "SMB2_0",
}

M.SmbMountOptions = {
    type = "structure",
    id = "SmbMountOptions",
    members = {
        Version = {
            type = "string",
        },
    },
}

M.FsxProtocolSmb = {
    type = "structure",
    id = "FsxProtocolSmb",
    members = {
        Domain = {
            type = "string",
        },
        MountOptions = M.SmbMountOptions,
        Password = {
            type = "string",
            traits = {
                default = "",
            },
        },
        User = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ManagedSecretConfig = M.ManagedSecretConfig,
        CmkSecretConfig = M.CmkSecretConfig,
        CustomSecretConfig = M.CustomSecretConfig,
    },
}

M.FsxProtocol = {
    type = "structure",
    id = "FsxProtocol",
    members = {
        NFS = M.FsxProtocolNfs,
        SMB = M.FsxProtocolSmb,
    },
}

M.CreateLocationFsxOntapInput = {
    type = "structure",
    id = "CreateLocationFsxOntapInput",
    members = {
        Protocol = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FsxProtocol }),
        SecurityGroupArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        StorageVirtualMachineArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subdirectory = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.TagListEntry,
        },
    },
}

M.CreateLocationFsxOntapOutput = {
    type = "structure",
    id = "CreateLocationFsxOntapOutput",
    members = {
        LocationArn = {
            type = "string",
        },
    },
}

M.CreateLocationFsxOpenZfsInput = {
    type = "structure",
    id = "CreateLocationFsxOpenZfsInput",
    members = {
        FsxFilesystemArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Protocol = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FsxProtocol }),
        SecurityGroupArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Subdirectory = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.TagListEntry,
        },
    },
}

M.CreateLocationFsxOpenZfsOutput = {
    type = "structure",
    id = "CreateLocationFsxOpenZfsOutput",
    members = {
        LocationArn = {
            type = "string",
        },
    },
}

M.CreateLocationFsxWindowsInput = {
    type = "structure",
    id = "CreateLocationFsxWindowsInput",
    members = {
        Subdirectory = {
            type = "string",
        },
        FsxFilesystemArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecurityGroupArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.TagListEntry,
        },
        User = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Domain = {
            type = "string",
        },
        Password = {
            type = "string",
        },
        CmkSecretConfig = M.CmkSecretConfig,
        CustomSecretConfig = M.CustomSecretConfig,
    },
}

M.CreateLocationFsxWindowsOutput = {
    type = "structure",
    id = "CreateLocationFsxWindowsOutput",
    members = {
        LocationArn = {
            type = "string",
        },
    },
}

M.HdfsAuthenticationType = {
    SIMPLE = "SIMPLE",
    KERBEROS = "KERBEROS",
}

M.HdfsNameNode = {
    type = "structure",
    id = "HdfsNameNode",
    members = {
        Hostname = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Port = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.HdfsDataTransferProtection = {
    DISABLED = "DISABLED",
    AUTHENTICATION = "AUTHENTICATION",
    INTEGRITY = "INTEGRITY",
    PRIVACY = "PRIVACY",
}

M.HdfsRpcProtection = {
    DISABLED = "DISABLED",
    AUTHENTICATION = "AUTHENTICATION",
    INTEGRITY = "INTEGRITY",
    PRIVACY = "PRIVACY",
}

M.QopConfiguration = {
    type = "structure",
    id = "QopConfiguration",
    members = {
        RpcProtection = {
            type = "string",
        },
        DataTransferProtection = {
            type = "string",
        },
    },
}

M.CreateLocationHdfsInput = {
    type = "structure",
    id = "CreateLocationHdfsInput",
    members = {
        Subdirectory = {
            type = "string",
        },
        NameNodes = {
            type = "list",
            member = M.HdfsNameNode,
            traits = {
                required = true,
            },
        },
        BlockSize = {
            type = "integer",
        },
        ReplicationFactor = {
            type = "integer",
        },
        KmsKeyProviderUri = {
            type = "string",
        },
        QopConfiguration = M.QopConfiguration,
        AuthenticationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SimpleUser = {
            type = "string",
        },
        KerberosPrincipal = {
            type = "string",
        },
        KerberosKeytab = {
            type = "blob",
        },
        KerberosKrb5Conf = {
            type = "blob",
        },
        AgentArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.TagListEntry,
        },
        CmkSecretConfig = M.CmkSecretConfig,
        CustomSecretConfig = M.CustomSecretConfig,
    },
}

M.CreateLocationHdfsOutput = {
    type = "structure",
    id = "CreateLocationHdfsOutput",
    members = {
        LocationArn = {
            type = "string",
        },
    },
}

M.OnPremConfig = {
    type = "structure",
    id = "OnPremConfig",
    members = {
        AgentArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CreateLocationNfsInput = {
    type = "structure",
    id = "CreateLocationNfsInput",
    members = {
        Subdirectory = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServerHostname = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OnPremConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OnPremConfig }),
        MountOptions = M.NfsMountOptions,
        Tags = {
            type = "list",
            member = M.TagListEntry,
        },
    },
}

M.CreateLocationNfsOutput = {
    type = "structure",
    id = "CreateLocationNfsOutput",
    members = {
        LocationArn = {
            type = "string",
        },
    },
}

M.ObjectStorageServerProtocol = {
    HTTPS = "HTTPS",
    HTTP = "HTTP",
}

M.CreateLocationObjectStorageInput = {
    type = "structure",
    id = "CreateLocationObjectStorageInput",
    members = {
        ServerHostname = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServerPort = {
            type = "integer",
        },
        ServerProtocol = {
            type = "string",
        },
        Subdirectory = {
            type = "string",
        },
        BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccessKey = {
            type = "string",
        },
        SecretKey = {
            type = "string",
        },
        AgentArns = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.TagListEntry,
        },
        ServerCertificate = {
            type = "blob",
        },
        CmkSecretConfig = M.CmkSecretConfig,
        CustomSecretConfig = M.CustomSecretConfig,
    },
}

M.CreateLocationObjectStorageOutput = {
    type = "structure",
    id = "CreateLocationObjectStorageOutput",
    members = {
        LocationArn = {
            type = "string",
        },
    },
}

M.S3Config = {
    type = "structure",
    id = "S3Config",
    members = {
        BucketAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3StorageClass = {
    STANDARD = "STANDARD",
    STANDARD_IA = "STANDARD_IA",
    ONEZONE_IA = "ONEZONE_IA",
    INTELLIGENT_TIERING = "INTELLIGENT_TIERING",
    GLACIER = "GLACIER",
    DEEP_ARCHIVE = "DEEP_ARCHIVE",
    OUTPOSTS = "OUTPOSTS",
    GLACIER_INSTANT_RETRIEVAL = "GLACIER_INSTANT_RETRIEVAL",
}

M.CreateLocationS3Input = {
    type = "structure",
    id = "CreateLocationS3Input",
    members = {
        Subdirectory = {
            type = "string",
        },
        S3BucketArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3StorageClass = {
            type = "string",
        },
        S3Config = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Config }),
        AgentArns = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.TagListEntry,
        },
    },
}

M.CreateLocationS3Output = {
    type = "structure",
    id = "CreateLocationS3Output",
    members = {
        LocationArn = {
            type = "string",
        },
    },
}

M.SmbAuthenticationType = {
    NTLM = "NTLM",
    KERBEROS = "KERBEROS",
}

M.CreateLocationSmbInput = {
    type = "structure",
    id = "CreateLocationSmbInput",
    members = {
        Subdirectory = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServerHostname = {
            type = "string",
            traits = {
                required = true,
            },
        },
        User = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
        Password = {
            type = "string",
        },
        CmkSecretConfig = M.CmkSecretConfig,
        CustomSecretConfig = M.CustomSecretConfig,
        AgentArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        MountOptions = M.SmbMountOptions,
        Tags = {
            type = "list",
            member = M.TagListEntry,
        },
        AuthenticationType = {
            type = "string",
        },
        DnsIpAddresses = {
            type = "list",
            member = { type = "string" },
        },
        KerberosPrincipal = {
            type = "string",
        },
        KerberosKeytab = {
            type = "blob",
        },
        KerberosKrb5Conf = {
            type = "blob",
        },
    },
}

M.CreateLocationSmbOutput = {
    type = "structure",
    id = "CreateLocationSmbOutput",
    members = {
        LocationArn = {
            type = "string",
        },
    },
}

M.FilterType = {
    SIMPLE_PATTERN = "SIMPLE_PATTERN",
}

M.FilterRule = {
    type = "structure",
    id = "FilterRule",
    members = {
        FilterType = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.ManifestAction = {
    TRANSFER = "TRANSFER",
}

M.ManifestFormat = {
    CSV = "CSV",
}

M.S3ManifestConfig = {
    type = "structure",
    id = "S3ManifestConfig",
    members = {
        ManifestObjectPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BucketAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3BucketArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ManifestObjectVersionId = {
            type = "string",
        },
    },
}

M.SourceManifestConfig = {
    type = "structure",
    id = "SourceManifestConfig",
    members = {
        S3 = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3ManifestConfig }),
    },
}

M.ManifestConfig = {
    type = "structure",
    id = "ManifestConfig",
    members = {
        Action = {
            type = "string",
        },
        Format = {
            type = "string",
        },
        Source = M.SourceManifestConfig,
    },
}

M.Gid = {
    NONE = "NONE",
    INT_VALUE = "INT_VALUE",
    NAME = "NAME",
    BOTH = "BOTH",
}

M.LogLevel = {
    OFF = "OFF",
    BASIC = "BASIC",
    TRANSFER = "TRANSFER",
}

M.Mtime = {
    NONE = "NONE",
    PRESERVE = "PRESERVE",
}

M.ObjectTags = {
    PRESERVE = "PRESERVE",
    NONE = "NONE",
}

M.OverwriteMode = {
    ALWAYS = "ALWAYS",
    NEVER = "NEVER",
}

M.PosixPermissions = {
    NONE = "NONE",
    PRESERVE = "PRESERVE",
}

M.PreserveDeletedFiles = {
    PRESERVE = "PRESERVE",
    REMOVE = "REMOVE",
}

M.PreserveDevices = {
    NONE = "NONE",
    PRESERVE = "PRESERVE",
}

M.SmbSecurityDescriptorCopyFlags = {
    NONE = "NONE",
    OWNER_DACL = "OWNER_DACL",
    OWNER_DACL_SACL = "OWNER_DACL_SACL",
}

M.TaskQueueing = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.TransferMode = {
    CHANGED = "CHANGED",
    ALL = "ALL",
}

M.Uid = {
    NONE = "NONE",
    INT_VALUE = "INT_VALUE",
    NAME = "NAME",
    BOTH = "BOTH",
}

M.VerifyMode = {
    POINT_IN_TIME_CONSISTENT = "POINT_IN_TIME_CONSISTENT",
    ONLY_FILES_TRANSFERRED = "ONLY_FILES_TRANSFERRED",
    NONE = "NONE",
}

M.Options = {
    type = "structure",
    id = "Options",
    members = {
        VerifyMode = {
            type = "string",
        },
        OverwriteMode = {
            type = "string",
        },
        Atime = {
            type = "string",
        },
        Mtime = {
            type = "string",
        },
        Uid = {
            type = "string",
        },
        Gid = {
            type = "string",
        },
        PreserveDeletedFiles = {
            type = "string",
        },
        PreserveDevices = {
            type = "string",
        },
        PosixPermissions = {
            type = "string",
        },
        BytesPerSecond = {
            type = "long",
        },
        TaskQueueing = {
            type = "string",
        },
        LogLevel = {
            type = "string",
        },
        TransferMode = {
            type = "string",
        },
        SecurityDescriptorCopyFlags = {
            type = "string",
        },
        ObjectTags = {
            type = "string",
        },
    },
}

M.ScheduleStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.TaskSchedule = {
    type = "structure",
    id = "TaskSchedule",
    members = {
        ScheduleExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
        },
    },
}

M.TaskMode = {
    BASIC = "BASIC",
    ENHANCED = "ENHANCED",
}

M.ReportDestinationS3 = {
    type = "structure",
    id = "ReportDestinationS3",
    members = {
        Subdirectory = {
            type = "string",
        },
        S3BucketArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BucketAccessRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReportDestination = {
    type = "structure",
    id = "ReportDestination",
    members = {
        S3 = M.ReportDestinationS3,
    },
}

M.ObjectVersionIds = {
    INCLUDE = "INCLUDE",
    NONE = "NONE",
}

M.ReportOutputType = {
    SUMMARY_ONLY = "SUMMARY_ONLY",
    STANDARD = "STANDARD",
}

M.ReportLevel = {
    ERRORS_ONLY = "ERRORS_ONLY",
    SUCCESSES_AND_ERRORS = "SUCCESSES_AND_ERRORS",
}

M.ReportOverride = {
    type = "structure",
    id = "ReportOverride",
    members = {
        ReportLevel = {
            type = "string",
        },
    },
}

M.ReportOverrides = {
    type = "structure",
    id = "ReportOverrides",
    members = {
        Transferred = M.ReportOverride,
        Verified = M.ReportOverride,
        Deleted = M.ReportOverride,
        Skipped = M.ReportOverride,
    },
}

M.TaskReportConfig = {
    type = "structure",
    id = "TaskReportConfig",
    members = {
        Destination = M.ReportDestination,
        OutputType = {
            type = "string",
        },
        ReportLevel = {
            type = "string",
        },
        ObjectVersionIds = {
            type = "string",
        },
        Overrides = M.ReportOverrides,
    },
}

M.CreateTaskInput = {
    type = "structure",
    id = "CreateTaskInput",
    members = {
        SourceLocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationLocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CloudWatchLogGroupArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Options = M.Options,
        Excludes = {
            type = "list",
            member = M.FilterRule,
        },
        Schedule = M.TaskSchedule,
        Tags = {
            type = "list",
            member = M.TagListEntry,
        },
        Includes = {
            type = "list",
            member = M.FilterRule,
        },
        ManifestConfig = M.ManifestConfig,
        TaskReportConfig = M.TaskReportConfig,
        TaskMode = {
            type = "string",
        },
    },
}

M.CreateTaskOutput = {
    type = "structure",
    id = "CreateTaskOutput",
    members = {
        TaskArn = {
            type = "string",
        },
    },
}

M.DeleteAgentInput = {
    type = "structure",
    id = "DeleteAgentInput",
    members = {
        AgentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAgentOutput = {
    type = "structure",
    id = "DeleteAgentOutput",
}

M.DeleteLocationInput = {
    type = "structure",
    id = "DeleteLocationInput",
    members = {
        LocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLocationOutput = {
    type = "structure",
    id = "DeleteLocationOutput",
}

M.DeleteTaskInput = {
    type = "structure",
    id = "DeleteTaskInput",
    members = {
        TaskArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTaskOutput = {
    type = "structure",
    id = "DeleteTaskOutput",
}

M.DescribeAgentInput = {
    type = "structure",
    id = "DescribeAgentInput",
    members = {
        AgentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EndpointType = {
    PUBLIC = "PUBLIC",
    PRIVATE_LINK = "PRIVATE_LINK",
    FIPS = "FIPS",
    FIPS_PRIVATE_LINK = "FIPS_PRIVATE_LINK",
}

M.PrivateLinkConfig = {
    type = "structure",
    id = "PrivateLinkConfig",
    members = {
        VpcEndpointId = {
            type = "string",
        },
        PrivateLinkEndpoint = {
            type = "string",
        },
        SubnetArns = {
            type = "list",
            member = { type = "string" },
        },
        SecurityGroupArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeAgentOutput = {
    type = "structure",
    id = "DescribeAgentOutput",
    members = {
        AgentArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        LastConnectionTime = {
            type = "timestamp",
        },
        CreationTime = {
            type = "timestamp",
        },
        EndpointType = {
            type = "string",
        },
        PrivateLinkConfig = M.PrivateLinkConfig,
        Platform = M.Platform,
    },
}

M.DescribeLocationAzureBlobInput = {
    type = "structure",
    id = "DescribeLocationAzureBlobInput",
    members = {
        LocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeLocationAzureBlobOutput = {
    type = "structure",
    id = "DescribeLocationAzureBlobOutput",
    members = {
        LocationArn = {
            type = "string",
        },
        LocationUri = {
            type = "string",
        },
        AuthenticationType = {
            type = "string",
        },
        BlobType = {
            type = "string",
        },
        AccessTier = {
            type = "string",
        },
        AgentArns = {
            type = "list",
            member = { type = "string" },
        },
        CreationTime = {
            type = "timestamp",
        },
        ManagedSecretConfig = M.ManagedSecretConfig,
        CmkSecretConfig = M.CmkSecretConfig,
        CustomSecretConfig = M.CustomSecretConfig,
    },
}

M.DescribeLocationEfsInput = {
    type = "structure",
    id = "DescribeLocationEfsInput",
    members = {
        LocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeLocationEfsOutput = {
    type = "structure",
    id = "DescribeLocationEfsOutput",
    members = {
        LocationArn = {
            type = "string",
        },
        LocationUri = {
            type = "string",
        },
        Ec2Config = M.Ec2Config,
        CreationTime = {
            type = "timestamp",
        },
        AccessPointArn = {
            type = "string",
        },
        FileSystemAccessRoleArn = {
            type = "string",
        },
        InTransitEncryption = {
            type = "string",
        },
    },
}

M.DescribeLocationFsxLustreInput = {
    type = "structure",
    id = "DescribeLocationFsxLustreInput",
    members = {
        LocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeLocationFsxLustreOutput = {
    type = "structure",
    id = "DescribeLocationFsxLustreOutput",
    members = {
        LocationArn = {
            type = "string",
        },
        LocationUri = {
            type = "string",
        },
        SecurityGroupArns = {
            type = "list",
            member = { type = "string" },
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.DescribeLocationFsxOntapInput = {
    type = "structure",
    id = "DescribeLocationFsxOntapInput",
    members = {
        LocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeLocationFsxOntapOutput = {
    type = "structure",
    id = "DescribeLocationFsxOntapOutput",
    members = {
        CreationTime = {
            type = "timestamp",
        },
        LocationArn = {
            type = "string",
        },
        LocationUri = {
            type = "string",
        },
        Protocol = M.FsxProtocol,
        SecurityGroupArns = {
            type = "list",
            member = { type = "string" },
        },
        StorageVirtualMachineArn = {
            type = "string",
        },
        FsxFilesystemArn = {
            type = "string",
        },
    },
}

M.DescribeLocationFsxOpenZfsInput = {
    type = "structure",
    id = "DescribeLocationFsxOpenZfsInput",
    members = {
        LocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeLocationFsxOpenZfsOutput = {
    type = "structure",
    id = "DescribeLocationFsxOpenZfsOutput",
    members = {
        LocationArn = {
            type = "string",
        },
        LocationUri = {
            type = "string",
        },
        SecurityGroupArns = {
            type = "list",
            member = { type = "string" },
        },
        Protocol = M.FsxProtocol,
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.DescribeLocationFsxWindowsInput = {
    type = "structure",
    id = "DescribeLocationFsxWindowsInput",
    members = {
        LocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeLocationFsxWindowsOutput = {
    type = "structure",
    id = "DescribeLocationFsxWindowsOutput",
    members = {
        LocationArn = {
            type = "string",
        },
        LocationUri = {
            type = "string",
        },
        SecurityGroupArns = {
            type = "list",
            member = { type = "string" },
        },
        CreationTime = {
            type = "timestamp",
        },
        User = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
        ManagedSecretConfig = M.ManagedSecretConfig,
        CmkSecretConfig = M.CmkSecretConfig,
        CustomSecretConfig = M.CustomSecretConfig,
    },
}

M.DescribeLocationHdfsInput = {
    type = "structure",
    id = "DescribeLocationHdfsInput",
    members = {
        LocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeLocationHdfsOutput = {
    type = "structure",
    id = "DescribeLocationHdfsOutput",
    members = {
        LocationArn = {
            type = "string",
        },
        LocationUri = {
            type = "string",
        },
        NameNodes = {
            type = "list",
            member = M.HdfsNameNode,
        },
        BlockSize = {
            type = "integer",
        },
        ReplicationFactor = {
            type = "integer",
        },
        KmsKeyProviderUri = {
            type = "string",
        },
        QopConfiguration = M.QopConfiguration,
        AuthenticationType = {
            type = "string",
        },
        SimpleUser = {
            type = "string",
        },
        KerberosPrincipal = {
            type = "string",
        },
        AgentArns = {
            type = "list",
            member = { type = "string" },
        },
        CreationTime = {
            type = "timestamp",
        },
        ManagedSecretConfig = M.ManagedSecretConfig,
        CmkSecretConfig = M.CmkSecretConfig,
        CustomSecretConfig = M.CustomSecretConfig,
    },
}

M.DescribeLocationNfsInput = {
    type = "structure",
    id = "DescribeLocationNfsInput",
    members = {
        LocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeLocationNfsOutput = {
    type = "structure",
    id = "DescribeLocationNfsOutput",
    members = {
        LocationArn = {
            type = "string",
        },
        LocationUri = {
            type = "string",
        },
        OnPremConfig = M.OnPremConfig,
        MountOptions = M.NfsMountOptions,
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.DescribeLocationObjectStorageInput = {
    type = "structure",
    id = "DescribeLocationObjectStorageInput",
    members = {
        LocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeLocationObjectStorageOutput = {
    type = "structure",
    id = "DescribeLocationObjectStorageOutput",
    members = {
        LocationArn = {
            type = "string",
        },
        LocationUri = {
            type = "string",
        },
        AccessKey = {
            type = "string",
        },
        ServerPort = {
            type = "integer",
        },
        ServerProtocol = {
            type = "string",
        },
        AgentArns = {
            type = "list",
            member = { type = "string" },
        },
        CreationTime = {
            type = "timestamp",
        },
        ServerCertificate = {
            type = "blob",
        },
        ManagedSecretConfig = M.ManagedSecretConfig,
        CmkSecretConfig = M.CmkSecretConfig,
        CustomSecretConfig = M.CustomSecretConfig,
    },
}

M.DescribeLocationS3Input = {
    type = "structure",
    id = "DescribeLocationS3Input",
    members = {
        LocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeLocationS3Output = {
    type = "structure",
    id = "DescribeLocationS3Output",
    members = {
        LocationArn = {
            type = "string",
        },
        LocationUri = {
            type = "string",
        },
        S3StorageClass = {
            type = "string",
        },
        S3Config = M.S3Config,
        AgentArns = {
            type = "list",
            member = { type = "string" },
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.DescribeLocationSmbInput = {
    type = "structure",
    id = "DescribeLocationSmbInput",
    members = {
        LocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeLocationSmbOutput = {
    type = "structure",
    id = "DescribeLocationSmbOutput",
    members = {
        LocationArn = {
            type = "string",
        },
        LocationUri = {
            type = "string",
        },
        AgentArns = {
            type = "list",
            member = { type = "string" },
        },
        User = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
        MountOptions = M.SmbMountOptions,
        CreationTime = {
            type = "timestamp",
        },
        DnsIpAddresses = {
            type = "list",
            member = { type = "string" },
        },
        KerberosPrincipal = {
            type = "string",
        },
        AuthenticationType = {
            type = "string",
        },
        ManagedSecretConfig = M.ManagedSecretConfig,
        CmkSecretConfig = M.CmkSecretConfig,
        CustomSecretConfig = M.CustomSecretConfig,
    },
}

M.DescribeTaskInput = {
    type = "structure",
    id = "DescribeTaskInput",
    members = {
        TaskArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ScheduleDisabledBy = {
    USER = "USER",
    SERVICE = "SERVICE",
}

M.TaskScheduleDetails = {
    type = "structure",
    id = "TaskScheduleDetails",
    members = {
        StatusUpdateTime = {
            type = "timestamp",
        },
        DisabledReason = {
            type = "string",
        },
        DisabledBy = {
            type = "string",
        },
    },
}

M.TaskStatus = {
    AVAILABLE = "AVAILABLE",
    CREATING = "CREATING",
    QUEUED = "QUEUED",
    RUNNING = "RUNNING",
    UNAVAILABLE = "UNAVAILABLE",
}

M.DescribeTaskOutput = {
    type = "structure",
    id = "DescribeTaskOutput",
    members = {
        TaskArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        CurrentTaskExecutionArn = {
            type = "string",
        },
        SourceLocationArn = {
            type = "string",
        },
        DestinationLocationArn = {
            type = "string",
        },
        CloudWatchLogGroupArn = {
            type = "string",
        },
        SourceNetworkInterfaceArns = {
            type = "list",
            member = { type = "string" },
        },
        DestinationNetworkInterfaceArns = {
            type = "list",
            member = { type = "string" },
        },
        Options = M.Options,
        Excludes = {
            type = "list",
            member = M.FilterRule,
        },
        Schedule = M.TaskSchedule,
        ErrorCode = {
            type = "string",
        },
        ErrorDetail = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        Includes = {
            type = "list",
            member = M.FilterRule,
        },
        ManifestConfig = M.ManifestConfig,
        TaskReportConfig = M.TaskReportConfig,
        ScheduleDetails = M.TaskScheduleDetails,
        TaskMode = {
            type = "string",
        },
    },
}

M.DescribeTaskExecutionInput = {
    type = "structure",
    id = "DescribeTaskExecutionInput",
    members = {
        TaskExecutionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TaskExecutionFilesFailedDetail = {
    type = "structure",
    id = "TaskExecutionFilesFailedDetail",
    members = {
        Prepare = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Transfer = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Verify = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Delete = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.TaskExecutionFilesListedDetail = {
    type = "structure",
    id = "TaskExecutionFilesListedDetail",
    members = {
        AtSource = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        AtDestinationForDelete = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.TaskExecutionFoldersFailedDetail = {
    type = "structure",
    id = "TaskExecutionFoldersFailedDetail",
    members = {
        List = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Prepare = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Transfer = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Verify = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Delete = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.TaskExecutionFoldersListedDetail = {
    type = "structure",
    id = "TaskExecutionFoldersListedDetail",
    members = {
        AtSource = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        AtDestinationForDelete = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.PhaseStatus = {
    PENDING = "PENDING",
    SUCCESS = "SUCCESS",
    ERROR = "ERROR",
}

M.ReportResult = {
    type = "structure",
    id = "ReportResult",
    members = {
        Status = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        ErrorDetail = {
            type = "string",
        },
    },
}

M.TaskExecutionResultDetail = {
    type = "structure",
    id = "TaskExecutionResultDetail",
    members = {
        PrepareDuration = {
            type = "long",
        },
        PrepareStatus = {
            type = "string",
        },
        TotalDuration = {
            type = "long",
        },
        TransferDuration = {
            type = "long",
        },
        TransferStatus = {
            type = "string",
        },
        VerifyDuration = {
            type = "long",
        },
        VerifyStatus = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        ErrorDetail = {
            type = "string",
        },
    },
}

M.TaskExecutionStatus = {
    QUEUED = "QUEUED",
    CANCELLING = "CANCELLING",
    LAUNCHING = "LAUNCHING",
    PREPARING = "PREPARING",
    TRANSFERRING = "TRANSFERRING",
    VERIFYING = "VERIFYING",
    SUCCESS = "SUCCESS",
    ERROR = "ERROR",
}

M.DescribeTaskExecutionOutput = {
    type = "structure",
    id = "DescribeTaskExecutionOutput",
    members = {
        TaskExecutionArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Options = M.Options,
        Excludes = {
            type = "list",
            member = M.FilterRule,
        },
        Includes = {
            type = "list",
            member = M.FilterRule,
        },
        ManifestConfig = M.ManifestConfig,
        StartTime = {
            type = "timestamp",
        },
        EstimatedFilesToTransfer = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        EstimatedBytesToTransfer = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        FilesTransferred = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        BytesWritten = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        BytesTransferred = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        BytesCompressed = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Result = M.TaskExecutionResultDetail,
        TaskReportConfig = M.TaskReportConfig,
        FilesDeleted = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        FilesSkipped = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        FilesVerified = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        ReportResult = M.ReportResult,
        EstimatedFilesToDelete = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        TaskMode = {
            type = "string",
        },
        FilesPrepared = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        FilesListed = M.TaskExecutionFilesListedDetail,
        FilesFailed = M.TaskExecutionFilesFailedDetail,
        EstimatedFoldersToDelete = {
            type = "long",
        },
        EstimatedFoldersToTransfer = {
            type = "long",
        },
        FoldersSkipped = {
            type = "long",
        },
        FoldersPrepared = {
            type = "long",
        },
        FoldersTransferred = {
            type = "long",
        },
        FoldersVerified = {
            type = "long",
        },
        FoldersDeleted = {
            type = "long",
        },
        FoldersListed = M.TaskExecutionFoldersListedDetail,
        FoldersFailed = M.TaskExecutionFoldersFailedDetail,
        LaunchTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.ListAgentsInput = {
    type = "structure",
    id = "ListAgentsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAgentsOutput = {
    type = "structure",
    id = "ListAgentsOutput",
    members = {
        Agents = {
            type = "list",
            member = M.AgentListEntry,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.LocationFilterName = {
    LocationUri = "LocationUri",
    LocationType = "LocationType",
    CreationTime = "CreationTime",
}

M.Operator = {
    EQ = "Equals",
    NE = "NotEquals",
    IN = "In",
    LE = "LessThanOrEqual",
    LT = "LessThan",
    GE = "GreaterThanOrEqual",
    GT = "GreaterThan",
    CONTAINS = "Contains",
    NOT_CONTAINS = "NotContains",
    BEGINS_WITH = "BeginsWith",
}

M.LocationFilter = {
    type = "structure",
    id = "LocationFilter",
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
        Operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListLocationsInput = {
    type = "structure",
    id = "ListLocationsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.LocationFilter,
        },
    },
}

M.LocationListEntry = {
    type = "structure",
    id = "LocationListEntry",
    members = {
        LocationArn = {
            type = "string",
        },
        LocationUri = {
            type = "string",
        },
    },
}

M.ListLocationsOutput = {
    type = "structure",
    id = "ListLocationsOutput",
    members = {
        Locations = {
            type = "list",
            member = M.LocationListEntry,
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
        Tags = {
            type = "list",
            member = M.TagListEntry,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTaskExecutionsInput = {
    type = "structure",
    id = "ListTaskExecutionsInput",
    members = {
        TaskArn = {
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

M.TaskExecutionListEntry = {
    type = "structure",
    id = "TaskExecutionListEntry",
    members = {
        TaskExecutionArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        TaskMode = {
            type = "string",
        },
    },
}

M.ListTaskExecutionsOutput = {
    type = "structure",
    id = "ListTaskExecutionsOutput",
    members = {
        TaskExecutions = {
            type = "list",
            member = M.TaskExecutionListEntry,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TaskFilterName = {
    LocationId = "LocationId",
    CreationTime = "CreationTime",
}

M.TaskFilter = {
    type = "structure",
    id = "TaskFilter",
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
        Operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTasksInput = {
    type = "structure",
    id = "ListTasksInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.TaskFilter,
        },
    },
}

M.TaskListEntry = {
    type = "structure",
    id = "TaskListEntry",
    members = {
        TaskArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        TaskMode = {
            type = "string",
        },
    },
}

M.ListTasksOutput = {
    type = "structure",
    id = "ListTasksOutput",
    members = {
        Tasks = {
            type = "list",
            member = M.TaskListEntry,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StartTaskExecutionInput = {
    type = "structure",
    id = "StartTaskExecutionInput",
    members = {
        TaskArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OverrideOptions = M.Options,
        Includes = {
            type = "list",
            member = M.FilterRule,
        },
        Excludes = {
            type = "list",
            member = M.FilterRule,
        },
        ManifestConfig = M.ManifestConfig,
        TaskReportConfig = M.TaskReportConfig,
        Tags = {
            type = "list",
            member = M.TagListEntry,
        },
    },
}

M.StartTaskExecutionOutput = {
    type = "structure",
    id = "StartTaskExecutionOutput",
    members = {
        TaskExecutionArn = {
            type = "string",
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
            member = M.TagListEntry,
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
        Keys = {
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

M.UpdateAgentInput = {
    type = "structure",
    id = "UpdateAgentInput",
    members = {
        AgentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
    },
}

M.UpdateAgentOutput = {
    type = "structure",
    id = "UpdateAgentOutput",
}

M.UpdateLocationAzureBlobInput = {
    type = "structure",
    id = "UpdateLocationAzureBlobInput",
    members = {
        LocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subdirectory = {
            type = "string",
        },
        AuthenticationType = {
            type = "string",
        },
        SasConfiguration = M.AzureBlobSasConfiguration,
        BlobType = {
            type = "string",
        },
        AccessTier = {
            type = "string",
        },
        AgentArns = {
            type = "list",
            member = { type = "string" },
        },
        CmkSecretConfig = M.CmkSecretConfig,
        CustomSecretConfig = M.CustomSecretConfig,
    },
}

M.UpdateLocationAzureBlobOutput = {
    type = "structure",
    id = "UpdateLocationAzureBlobOutput",
}

M.UpdateLocationEfsInput = {
    type = "structure",
    id = "UpdateLocationEfsInput",
    members = {
        LocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subdirectory = {
            type = "string",
        },
        AccessPointArn = {
            type = "string",
        },
        FileSystemAccessRoleArn = {
            type = "string",
        },
        InTransitEncryption = {
            type = "string",
        },
    },
}

M.UpdateLocationEfsOutput = {
    type = "structure",
    id = "UpdateLocationEfsOutput",
}

M.UpdateLocationFsxLustreInput = {
    type = "structure",
    id = "UpdateLocationFsxLustreInput",
    members = {
        LocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subdirectory = {
            type = "string",
        },
    },
}

M.UpdateLocationFsxLustreOutput = {
    type = "structure",
    id = "UpdateLocationFsxLustreOutput",
}

M.FsxUpdateProtocolSmb = {
    type = "structure",
    id = "FsxUpdateProtocolSmb",
    members = {
        Domain = {
            type = "string",
        },
        MountOptions = M.SmbMountOptions,
        Password = {
            type = "string",
        },
        User = {
            type = "string",
        },
        CmkSecretConfig = M.CmkSecretConfig,
        CustomSecretConfig = M.CustomSecretConfig,
    },
}

M.FsxUpdateProtocol = {
    type = "structure",
    id = "FsxUpdateProtocol",
    members = {
        NFS = M.FsxProtocolNfs,
        SMB = M.FsxUpdateProtocolSmb,
    },
}

M.UpdateLocationFsxOntapInput = {
    type = "structure",
    id = "UpdateLocationFsxOntapInput",
    members = {
        LocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Protocol = M.FsxUpdateProtocol,
        Subdirectory = {
            type = "string",
        },
    },
}

M.UpdateLocationFsxOntapOutput = {
    type = "structure",
    id = "UpdateLocationFsxOntapOutput",
}

M.UpdateLocationFsxOpenZfsInput = {
    type = "structure",
    id = "UpdateLocationFsxOpenZfsInput",
    members = {
        LocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Protocol = M.FsxProtocol,
        Subdirectory = {
            type = "string",
        },
    },
}

M.UpdateLocationFsxOpenZfsOutput = {
    type = "structure",
    id = "UpdateLocationFsxOpenZfsOutput",
}

M.UpdateLocationFsxWindowsInput = {
    type = "structure",
    id = "UpdateLocationFsxWindowsInput",
    members = {
        LocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subdirectory = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
        User = {
            type = "string",
        },
        Password = {
            type = "string",
        },
        CmkSecretConfig = M.CmkSecretConfig,
        CustomSecretConfig = M.CustomSecretConfig,
    },
}

M.UpdateLocationFsxWindowsOutput = {
    type = "structure",
    id = "UpdateLocationFsxWindowsOutput",
}

M.UpdateLocationHdfsInput = {
    type = "structure",
    id = "UpdateLocationHdfsInput",
    members = {
        LocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subdirectory = {
            type = "string",
        },
        NameNodes = {
            type = "list",
            member = M.HdfsNameNode,
        },
        BlockSize = {
            type = "integer",
        },
        ReplicationFactor = {
            type = "integer",
        },
        KmsKeyProviderUri = {
            type = "string",
        },
        QopConfiguration = M.QopConfiguration,
        AuthenticationType = {
            type = "string",
        },
        SimpleUser = {
            type = "string",
        },
        KerberosPrincipal = {
            type = "string",
        },
        KerberosKeytab = {
            type = "blob",
        },
        KerberosKrb5Conf = {
            type = "blob",
        },
        AgentArns = {
            type = "list",
            member = { type = "string" },
        },
        CmkSecretConfig = M.CmkSecretConfig,
        CustomSecretConfig = M.CustomSecretConfig,
    },
}

M.UpdateLocationHdfsOutput = {
    type = "structure",
    id = "UpdateLocationHdfsOutput",
}

M.UpdateLocationNfsInput = {
    type = "structure",
    id = "UpdateLocationNfsInput",
    members = {
        LocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subdirectory = {
            type = "string",
        },
        ServerHostname = {
            type = "string",
        },
        OnPremConfig = M.OnPremConfig,
        MountOptions = M.NfsMountOptions,
    },
}

M.UpdateLocationNfsOutput = {
    type = "structure",
    id = "UpdateLocationNfsOutput",
}

M.UpdateLocationObjectStorageInput = {
    type = "structure",
    id = "UpdateLocationObjectStorageInput",
    members = {
        LocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServerPort = {
            type = "integer",
        },
        ServerProtocol = {
            type = "string",
        },
        Subdirectory = {
            type = "string",
        },
        ServerHostname = {
            type = "string",
        },
        AccessKey = {
            type = "string",
        },
        SecretKey = {
            type = "string",
        },
        AgentArns = {
            type = "list",
            member = { type = "string" },
        },
        ServerCertificate = {
            type = "blob",
        },
        CmkSecretConfig = M.CmkSecretConfig,
        CustomSecretConfig = M.CustomSecretConfig,
    },
}

M.UpdateLocationObjectStorageOutput = {
    type = "structure",
    id = "UpdateLocationObjectStorageOutput",
}

M.UpdateLocationS3Input = {
    type = "structure",
    id = "UpdateLocationS3Input",
    members = {
        LocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subdirectory = {
            type = "string",
        },
        S3StorageClass = {
            type = "string",
        },
        S3Config = M.S3Config,
    },
}

M.UpdateLocationS3Output = {
    type = "structure",
    id = "UpdateLocationS3Output",
}

M.UpdateLocationSmbInput = {
    type = "structure",
    id = "UpdateLocationSmbInput",
    members = {
        LocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subdirectory = {
            type = "string",
        },
        ServerHostname = {
            type = "string",
        },
        User = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
        Password = {
            type = "string",
        },
        CmkSecretConfig = M.CmkSecretConfig,
        CustomSecretConfig = M.CustomSecretConfig,
        AgentArns = {
            type = "list",
            member = { type = "string" },
        },
        MountOptions = M.SmbMountOptions,
        AuthenticationType = {
            type = "string",
        },
        DnsIpAddresses = {
            type = "list",
            member = { type = "string" },
        },
        KerberosPrincipal = {
            type = "string",
        },
        KerberosKeytab = {
            type = "blob",
        },
        KerberosKrb5Conf = {
            type = "blob",
        },
    },
}

M.UpdateLocationSmbOutput = {
    type = "structure",
    id = "UpdateLocationSmbOutput",
}

M.UpdateTaskInput = {
    type = "structure",
    id = "UpdateTaskInput",
    members = {
        TaskArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Options = M.Options,
        Excludes = {
            type = "list",
            member = M.FilterRule,
        },
        Schedule = M.TaskSchedule,
        Name = {
            type = "string",
        },
        CloudWatchLogGroupArn = {
            type = "string",
        },
        Includes = {
            type = "list",
            member = M.FilterRule,
        },
        ManifestConfig = M.ManifestConfig,
        TaskReportConfig = M.TaskReportConfig,
    },
}

M.UpdateTaskOutput = {
    type = "structure",
    id = "UpdateTaskOutput",
}

M.UpdateTaskExecutionInput = {
    type = "structure",
    id = "UpdateTaskExecutionInput",
    members = {
        TaskExecutionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Options = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Options }),
    },
}

M.UpdateTaskExecutionOutput = {
    type = "structure",
    id = "UpdateTaskExecutionOutput",
}

return M
