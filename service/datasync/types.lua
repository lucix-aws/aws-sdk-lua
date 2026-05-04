local M = {}

M.Platform = {
    type = "structure",
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
        Platform = {
            type = "structure",
        },
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
}

M.InternalException = {
    type = "structure",
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
            member_type = "structure",
        },
        VpcEndpointId = {
            type = "string",
        },
        SubnetArns = {
            type = "list",
            member_type = "string",
        },
        SecurityGroupArns = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateAgentOutput = {
    type = "structure",
    members = {
        AgentArn = {
            type = "string",
        },
    },
}

M.CustomSecretConfig = {
    type = "structure",
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
        SasConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        CmkSecretConfig = {
            type = "structure",
        },
        CustomSecretConfig = {
            type = "structure",
        },
    },
}

M.CreateLocationAzureBlobOutput = {
    type = "structure",
    members = {
        LocationArn = {
            type = "string",
        },
    },
}

M.Ec2Config = {
    type = "structure",
    members = {
        SubnetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecurityGroupArns = {
            type = "list",
            member_type = "string",
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
        Ec2Config = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
    members = {
        LocationArn = {
            type = "string",
        },
    },
}

M.CreateLocationFsxLustreInput = {
    type = "structure",
    members = {
        FsxFilesystemArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecurityGroupArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Subdirectory = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateLocationFsxLustreOutput = {
    type = "structure",
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
    members = {
        Version = {
            type = "string",
        },
    },
}

M.FsxProtocolNfs = {
    type = "structure",
    members = {
        MountOptions = {
            type = "structure",
        },
    },
}

M.ManagedSecretConfig = {
    type = "structure",
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
    members = {
        Version = {
            type = "string",
        },
    },
}

M.FsxProtocolSmb = {
    type = "structure",
    members = {
        Domain = {
            type = "string",
        },
        MountOptions = {
            type = "structure",
        },
        Password = {
            type = "string",
        },
        User = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ManagedSecretConfig = {
            type = "structure",
        },
        CmkSecretConfig = {
            type = "structure",
        },
        CustomSecretConfig = {
            type = "structure",
        },
    },
}

M.FsxProtocol = {
    type = "structure",
    members = {
        NFS = {
            type = "structure",
        },
        SMB = {
            type = "structure",
        },
    },
}

M.CreateLocationFsxOntapInput = {
    type = "structure",
    members = {
        Protocol = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SecurityGroupArns = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
    },
}

M.CreateLocationFsxOntapOutput = {
    type = "structure",
    members = {
        LocationArn = {
            type = "string",
        },
    },
}

M.CreateLocationFsxOpenZfsInput = {
    type = "structure",
    members = {
        FsxFilesystemArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Protocol = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SecurityGroupArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Subdirectory = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateLocationFsxOpenZfsOutput = {
    type = "structure",
    members = {
        LocationArn = {
            type = "string",
        },
    },
}

M.CreateLocationFsxWindowsInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        CmkSecretConfig = {
            type = "structure",
        },
        CustomSecretConfig = {
            type = "structure",
        },
    },
}

M.CreateLocationFsxWindowsOutput = {
    type = "structure",
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
    members = {
        Hostname = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Port = {
            type = "number",
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
    members = {
        Subdirectory = {
            type = "string",
        },
        NameNodes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        BlockSize = {
            type = "number",
        },
        ReplicationFactor = {
            type = "number",
        },
        KmsKeyProviderUri = {
            type = "string",
        },
        QopConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        CmkSecretConfig = {
            type = "structure",
        },
        CustomSecretConfig = {
            type = "structure",
        },
    },
}

M.CreateLocationHdfsOutput = {
    type = "structure",
    members = {
        LocationArn = {
            type = "string",
        },
    },
}

M.OnPremConfig = {
    type = "structure",
    members = {
        AgentArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateLocationNfsInput = {
    type = "structure",
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
        OnPremConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        MountOptions = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateLocationNfsOutput = {
    type = "structure",
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
    members = {
        ServerHostname = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServerPort = {
            type = "number",
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
            member_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ServerCertificate = {
            type = "blob",
        },
        CmkSecretConfig = {
            type = "structure",
        },
        CustomSecretConfig = {
            type = "structure",
        },
    },
}

M.CreateLocationObjectStorageOutput = {
    type = "structure",
    members = {
        LocationArn = {
            type = "string",
        },
    },
}

M.S3Config = {
    type = "structure",
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
        S3Config = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AgentArns = {
            type = "list",
            member_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateLocationS3Output = {
    type = "structure",
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
        CmkSecretConfig = {
            type = "structure",
        },
        CustomSecretConfig = {
            type = "structure",
        },
        AgentArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        MountOptions = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        AuthenticationType = {
            type = "string",
        },
        DnsIpAddresses = {
            type = "list",
            member_type = "string",
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
    members = {
        S3 = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ManifestConfig = {
    type = "structure",
    members = {
        Action = {
            type = "string",
        },
        Format = {
            type = "string",
        },
        Source = {
            type = "structure",
        },
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
            type = "number",
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
    members = {
        S3 = {
            type = "structure",
        },
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
    members = {
        ReportLevel = {
            type = "string",
        },
    },
}

M.ReportOverrides = {
    type = "structure",
    members = {
        Transferred = {
            type = "structure",
        },
        Verified = {
            type = "structure",
        },
        Deleted = {
            type = "structure",
        },
        Skipped = {
            type = "structure",
        },
    },
}

M.TaskReportConfig = {
    type = "structure",
    members = {
        Destination = {
            type = "structure",
        },
        OutputType = {
            type = "string",
        },
        ReportLevel = {
            type = "string",
        },
        ObjectVersionIds = {
            type = "string",
        },
        Overrides = {
            type = "structure",
        },
    },
}

M.CreateTaskInput = {
    type = "structure",
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
        Options = {
            type = "structure",
        },
        Excludes = {
            type = "list",
            member_type = "structure",
        },
        Schedule = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        Includes = {
            type = "list",
            member_type = "structure",
        },
        ManifestConfig = {
            type = "structure",
        },
        TaskReportConfig = {
            type = "structure",
        },
        TaskMode = {
            type = "string",
        },
    },
}

M.CreateTaskOutput = {
    type = "structure",
    members = {
        TaskArn = {
            type = "string",
        },
    },
}

M.DeleteAgentInput = {
    type = "structure",
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
}

M.DeleteLocationInput = {
    type = "structure",
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
}

M.DeleteTaskInput = {
    type = "structure",
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
}

M.DescribeAgentInput = {
    type = "structure",
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
    members = {
        VpcEndpointId = {
            type = "string",
        },
        PrivateLinkEndpoint = {
            type = "string",
        },
        SubnetArns = {
            type = "list",
            member_type = "string",
        },
        SecurityGroupArns = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeAgentOutput = {
    type = "structure",
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
        PrivateLinkConfig = {
            type = "structure",
        },
        Platform = {
            type = "structure",
        },
    },
}

M.DescribeLocationAzureBlobInput = {
    type = "structure",
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
            member_type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        ManagedSecretConfig = {
            type = "structure",
        },
        CmkSecretConfig = {
            type = "structure",
        },
        CustomSecretConfig = {
            type = "structure",
        },
    },
}

M.DescribeLocationEfsInput = {
    type = "structure",
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
    members = {
        LocationArn = {
            type = "string",
        },
        LocationUri = {
            type = "string",
        },
        Ec2Config = {
            type = "structure",
        },
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
    members = {
        LocationArn = {
            type = "string",
        },
        LocationUri = {
            type = "string",
        },
        SecurityGroupArns = {
            type = "list",
            member_type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.DescribeLocationFsxOntapInput = {
    type = "structure",
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
        Protocol = {
            type = "structure",
        },
        SecurityGroupArns = {
            type = "list",
            member_type = "string",
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
    members = {
        LocationArn = {
            type = "string",
        },
        LocationUri = {
            type = "string",
        },
        SecurityGroupArns = {
            type = "list",
            member_type = "string",
        },
        Protocol = {
            type = "structure",
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.DescribeLocationFsxWindowsInput = {
    type = "structure",
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
    members = {
        LocationArn = {
            type = "string",
        },
        LocationUri = {
            type = "string",
        },
        SecurityGroupArns = {
            type = "list",
            member_type = "string",
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
        ManagedSecretConfig = {
            type = "structure",
        },
        CmkSecretConfig = {
            type = "structure",
        },
        CustomSecretConfig = {
            type = "structure",
        },
    },
}

M.DescribeLocationHdfsInput = {
    type = "structure",
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
    members = {
        LocationArn = {
            type = "string",
        },
        LocationUri = {
            type = "string",
        },
        NameNodes = {
            type = "list",
            member_type = "structure",
        },
        BlockSize = {
            type = "number",
        },
        ReplicationFactor = {
            type = "number",
        },
        KmsKeyProviderUri = {
            type = "string",
        },
        QopConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        ManagedSecretConfig = {
            type = "structure",
        },
        CmkSecretConfig = {
            type = "structure",
        },
        CustomSecretConfig = {
            type = "structure",
        },
    },
}

M.DescribeLocationNfsInput = {
    type = "structure",
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
    members = {
        LocationArn = {
            type = "string",
        },
        LocationUri = {
            type = "string",
        },
        OnPremConfig = {
            type = "structure",
        },
        MountOptions = {
            type = "structure",
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.DescribeLocationObjectStorageInput = {
    type = "structure",
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
            type = "number",
        },
        ServerProtocol = {
            type = "string",
        },
        AgentArns = {
            type = "list",
            member_type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        ServerCertificate = {
            type = "blob",
        },
        ManagedSecretConfig = {
            type = "structure",
        },
        CmkSecretConfig = {
            type = "structure",
        },
        CustomSecretConfig = {
            type = "structure",
        },
    },
}

M.DescribeLocationS3Input = {
    type = "structure",
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
        S3Config = {
            type = "structure",
        },
        AgentArns = {
            type = "list",
            member_type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.DescribeLocationSmbInput = {
    type = "structure",
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
    members = {
        LocationArn = {
            type = "string",
        },
        LocationUri = {
            type = "string",
        },
        AgentArns = {
            type = "list",
            member_type = "string",
        },
        User = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
        MountOptions = {
            type = "structure",
        },
        CreationTime = {
            type = "timestamp",
        },
        DnsIpAddresses = {
            type = "list",
            member_type = "string",
        },
        KerberosPrincipal = {
            type = "string",
        },
        AuthenticationType = {
            type = "string",
        },
        ManagedSecretConfig = {
            type = "structure",
        },
        CmkSecretConfig = {
            type = "structure",
        },
        CustomSecretConfig = {
            type = "structure",
        },
    },
}

M.DescribeTaskInput = {
    type = "structure",
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
            member_type = "string",
        },
        DestinationNetworkInterfaceArns = {
            type = "list",
            member_type = "string",
        },
        Options = {
            type = "structure",
        },
        Excludes = {
            type = "list",
            member_type = "structure",
        },
        Schedule = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        ManifestConfig = {
            type = "structure",
        },
        TaskReportConfig = {
            type = "structure",
        },
        ScheduleDetails = {
            type = "structure",
        },
        TaskMode = {
            type = "string",
        },
    },
}

M.DescribeTaskExecutionInput = {
    type = "structure",
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
    members = {
        Prepare = {
            type = "number",
        },
        Transfer = {
            type = "number",
        },
        Verify = {
            type = "number",
        },
        Delete = {
            type = "number",
        },
    },
}

M.TaskExecutionFilesListedDetail = {
    type = "structure",
    members = {
        AtSource = {
            type = "number",
        },
        AtDestinationForDelete = {
            type = "number",
        },
    },
}

M.TaskExecutionFoldersFailedDetail = {
    type = "structure",
    members = {
        List = {
            type = "number",
        },
        Prepare = {
            type = "number",
        },
        Transfer = {
            type = "number",
        },
        Verify = {
            type = "number",
        },
        Delete = {
            type = "number",
        },
    },
}

M.TaskExecutionFoldersListedDetail = {
    type = "structure",
    members = {
        AtSource = {
            type = "number",
        },
        AtDestinationForDelete = {
            type = "number",
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
    members = {
        PrepareDuration = {
            type = "number",
        },
        PrepareStatus = {
            type = "string",
        },
        TotalDuration = {
            type = "number",
        },
        TransferDuration = {
            type = "number",
        },
        TransferStatus = {
            type = "string",
        },
        VerifyDuration = {
            type = "number",
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
    members = {
        TaskExecutionArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Options = {
            type = "structure",
        },
        Excludes = {
            type = "list",
            member_type = "structure",
        },
        Includes = {
            type = "list",
            member_type = "structure",
        },
        ManifestConfig = {
            type = "structure",
        },
        StartTime = {
            type = "timestamp",
        },
        EstimatedFilesToTransfer = {
            type = "number",
        },
        EstimatedBytesToTransfer = {
            type = "number",
        },
        FilesTransferred = {
            type = "number",
        },
        BytesWritten = {
            type = "number",
        },
        BytesTransferred = {
            type = "number",
        },
        BytesCompressed = {
            type = "number",
        },
        Result = {
            type = "structure",
        },
        TaskReportConfig = {
            type = "structure",
        },
        FilesDeleted = {
            type = "number",
        },
        FilesSkipped = {
            type = "number",
        },
        FilesVerified = {
            type = "number",
        },
        ReportResult = {
            type = "structure",
        },
        EstimatedFilesToDelete = {
            type = "number",
        },
        TaskMode = {
            type = "string",
        },
        FilesPrepared = {
            type = "number",
        },
        FilesListed = {
            type = "structure",
        },
        FilesFailed = {
            type = "structure",
        },
        EstimatedFoldersToDelete = {
            type = "number",
        },
        EstimatedFoldersToTransfer = {
            type = "number",
        },
        FoldersSkipped = {
            type = "number",
        },
        FoldersPrepared = {
            type = "number",
        },
        FoldersTransferred = {
            type = "number",
        },
        FoldersVerified = {
            type = "number",
        },
        FoldersDeleted = {
            type = "number",
        },
        FoldersListed = {
            type = "structure",
        },
        FoldersFailed = {
            type = "structure",
        },
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
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAgentsOutput = {
    type = "structure",
    members = {
        Agents = {
            type = "list",
            member_type = "structure",
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
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
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
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.LocationListEntry = {
    type = "structure",
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
    members = {
        Locations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
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

M.ListTaskExecutionsInput = {
    type = "structure",
    members = {
        TaskArn = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TaskExecutionListEntry = {
    type = "structure",
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
    members = {
        TaskExecutions = {
            type = "list",
            member_type = "structure",
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
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
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
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TaskListEntry = {
    type = "structure",
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
    members = {
        Tasks = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StartTaskExecutionInput = {
    type = "structure",
    members = {
        TaskArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OverrideOptions = {
            type = "structure",
        },
        Includes = {
            type = "list",
            member_type = "structure",
        },
        Excludes = {
            type = "list",
            member_type = "structure",
        },
        ManifestConfig = {
            type = "structure",
        },
        TaskReportConfig = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StartTaskExecutionOutput = {
    type = "structure",
    members = {
        TaskExecutionArn = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
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
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Keys = {
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

M.UpdateAgentInput = {
    type = "structure",
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
}

M.UpdateLocationAzureBlobInput = {
    type = "structure",
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
        SasConfiguration = {
            type = "structure",
        },
        BlobType = {
            type = "string",
        },
        AccessTier = {
            type = "string",
        },
        AgentArns = {
            type = "list",
            member_type = "string",
        },
        CmkSecretConfig = {
            type = "structure",
        },
        CustomSecretConfig = {
            type = "structure",
        },
    },
}

M.UpdateLocationAzureBlobOutput = {
    type = "structure",
}

M.UpdateLocationEfsInput = {
    type = "structure",
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
}

M.UpdateLocationFsxLustreInput = {
    type = "structure",
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
}

M.FsxUpdateProtocolSmb = {
    type = "structure",
    members = {
        Domain = {
            type = "string",
        },
        MountOptions = {
            type = "structure",
        },
        Password = {
            type = "string",
        },
        User = {
            type = "string",
        },
        CmkSecretConfig = {
            type = "structure",
        },
        CustomSecretConfig = {
            type = "structure",
        },
    },
}

M.FsxUpdateProtocol = {
    type = "structure",
    members = {
        NFS = {
            type = "structure",
        },
        SMB = {
            type = "structure",
        },
    },
}

M.UpdateLocationFsxOntapInput = {
    type = "structure",
    members = {
        LocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Protocol = {
            type = "structure",
        },
        Subdirectory = {
            type = "string",
        },
    },
}

M.UpdateLocationFsxOntapOutput = {
    type = "structure",
}

M.UpdateLocationFsxOpenZfsInput = {
    type = "structure",
    members = {
        LocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Protocol = {
            type = "structure",
        },
        Subdirectory = {
            type = "string",
        },
    },
}

M.UpdateLocationFsxOpenZfsOutput = {
    type = "structure",
}

M.UpdateLocationFsxWindowsInput = {
    type = "structure",
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
        CmkSecretConfig = {
            type = "structure",
        },
        CustomSecretConfig = {
            type = "structure",
        },
    },
}

M.UpdateLocationFsxWindowsOutput = {
    type = "structure",
}

M.UpdateLocationHdfsInput = {
    type = "structure",
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
            member_type = "structure",
        },
        BlockSize = {
            type = "number",
        },
        ReplicationFactor = {
            type = "number",
        },
        KmsKeyProviderUri = {
            type = "string",
        },
        QopConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
        },
        CmkSecretConfig = {
            type = "structure",
        },
        CustomSecretConfig = {
            type = "structure",
        },
    },
}

M.UpdateLocationHdfsOutput = {
    type = "structure",
}

M.UpdateLocationNfsInput = {
    type = "structure",
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
        OnPremConfig = {
            type = "structure",
        },
        MountOptions = {
            type = "structure",
        },
    },
}

M.UpdateLocationNfsOutput = {
    type = "structure",
}

M.UpdateLocationObjectStorageInput = {
    type = "structure",
    members = {
        LocationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServerPort = {
            type = "number",
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
            member_type = "string",
        },
        ServerCertificate = {
            type = "blob",
        },
        CmkSecretConfig = {
            type = "structure",
        },
        CustomSecretConfig = {
            type = "structure",
        },
    },
}

M.UpdateLocationObjectStorageOutput = {
    type = "structure",
}

M.UpdateLocationS3Input = {
    type = "structure",
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
        S3Config = {
            type = "structure",
        },
    },
}

M.UpdateLocationS3Output = {
    type = "structure",
}

M.UpdateLocationSmbInput = {
    type = "structure",
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
        CmkSecretConfig = {
            type = "structure",
        },
        CustomSecretConfig = {
            type = "structure",
        },
        AgentArns = {
            type = "list",
            member_type = "string",
        },
        MountOptions = {
            type = "structure",
        },
        AuthenticationType = {
            type = "string",
        },
        DnsIpAddresses = {
            type = "list",
            member_type = "string",
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
}

M.UpdateTaskInput = {
    type = "structure",
    members = {
        TaskArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Options = {
            type = "structure",
        },
        Excludes = {
            type = "list",
            member_type = "structure",
        },
        Schedule = {
            type = "structure",
        },
        Name = {
            type = "string",
        },
        CloudWatchLogGroupArn = {
            type = "string",
        },
        Includes = {
            type = "list",
            member_type = "structure",
        },
        ManifestConfig = {
            type = "structure",
        },
        TaskReportConfig = {
            type = "structure",
        },
    },
}

M.UpdateTaskOutput = {
    type = "structure",
}

M.UpdateTaskExecutionInput = {
    type = "structure",
    members = {
        TaskExecutionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Options = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTaskExecutionOutput = {
    type = "structure",
}

return M
