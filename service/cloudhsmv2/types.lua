local M = {}

M.BackupState = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    READY = "READY",
    DELETED = "DELETED",
    PENDING_DELETION = "PENDING_DELETION",
}

M.ClusterMode = {
    FIPS = "FIPS",
    NON_FIPS = "NON_FIPS",
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

M.Backup = {
    type = "structure",
    id = "Backup",
    members = {
        BackupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BackupArn = {
            type = "string",
        },
        BackupState = {
            type = "string",
        },
        ClusterId = {
            type = "string",
        },
        CreateTimestamp = {
            type = "timestamp",
        },
        CopyTimestamp = {
            type = "timestamp",
        },
        NeverExpires = {
            type = "boolean",
        },
        SourceRegion = {
            type = "string",
        },
        SourceBackup = {
            type = "string",
        },
        SourceCluster = {
            type = "string",
        },
        DeleteTimestamp = {
            type = "timestamp",
        },
        TagList = {
            type = "list",
            member = M.Tag,
        },
        HsmType = {
            type = "string",
        },
        Mode = {
            type = "string",
        },
    },
}

M.BackupPolicy = {
    DEFAULT = "DEFAULT",
}

M.BackupRetentionType = {
    DAYS = "DAYS",
}

M.BackupRetentionPolicy = {
    type = "structure",
    id = "BackupRetentionPolicy",
    members = {
        Type = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.CloudHsmAccessDeniedException = {
    type = "structure",
    id = "CloudHsmAccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CloudHsmInternalFailureException = {
    type = "structure",
    id = "CloudHsmInternalFailureException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CloudHsmInvalidRequestException = {
    type = "structure",
    id = "CloudHsmInvalidRequestException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CloudHsmResourceNotFoundException = {
    type = "structure",
    id = "CloudHsmResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CloudHsmServiceException = {
    type = "structure",
    id = "CloudHsmServiceException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CloudHsmTagException = {
    type = "structure",
    id = "CloudHsmTagException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CopyBackupToRegionInput = {
    type = "structure",
    id = "CopyBackupToRegionInput",
    members = {
        DestinationRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BackupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DestinationBackup = {
    type = "structure",
    id = "DestinationBackup",
    members = {
        CreateTimestamp = {
            type = "timestamp",
        },
        SourceRegion = {
            type = "string",
        },
        SourceBackup = {
            type = "string",
        },
        SourceCluster = {
            type = "string",
        },
    },
}

M.CopyBackupToRegionOutput = {
    type = "structure",
    id = "CopyBackupToRegionOutput",
    members = {
        DestinationBackup = M.DestinationBackup,
    },
}

M.NetworkType = {
    IPV4 = "IPV4",
    DUALSTACK = "DUALSTACK",
}

M.CreateClusterInput = {
    type = "structure",
    id = "CreateClusterInput",
    members = {
        BackupRetentionPolicy = M.BackupRetentionPolicy,
        HsmType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceBackupId = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        NetworkType = {
            type = "string",
        },
        TagList = {
            type = "list",
            member = M.Tag,
        },
        Mode = {
            type = "string",
        },
    },
}

M.Certificates = {
    type = "structure",
    id = "Certificates",
    members = {
        ClusterCsr = {
            type = "string",
        },
        HsmCertificate = {
            type = "string",
        },
        AwsHardwareCertificate = {
            type = "string",
        },
        ManufacturerHardwareCertificate = {
            type = "string",
        },
        ClusterCertificate = {
            type = "string",
        },
    },
}

M.HsmState = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    ACTIVE = "ACTIVE",
    DEGRADED = "DEGRADED",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETED = "DELETED",
}

M.Hsm = {
    type = "structure",
    id = "Hsm",
    members = {
        AvailabilityZone = {
            type = "string",
        },
        ClusterId = {
            type = "string",
        },
        SubnetId = {
            type = "string",
        },
        EniId = {
            type = "string",
        },
        EniIp = {
            type = "string",
        },
        EniIpV6 = {
            type = "string",
        },
        HsmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HsmType = {
            type = "string",
        },
        State = {
            type = "string",
        },
        StateMessage = {
            type = "string",
        },
    },
}

M.ClusterState = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    UNINITIALIZED = "UNINITIALIZED",
    INITIALIZE_IN_PROGRESS = "INITIALIZE_IN_PROGRESS",
    INITIALIZED = "INITIALIZED",
    ACTIVE = "ACTIVE",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    MODIFY_IN_PROGRESS = "MODIFY_IN_PROGRESS",
    ROLLBACK_IN_PROGRESS = "ROLLBACK_IN_PROGRESS",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETED = "DELETED",
    DEGRADED = "DEGRADED",
}

M.Cluster = {
    type = "structure",
    id = "Cluster",
    members = {
        BackupPolicy = {
            type = "string",
        },
        BackupRetentionPolicy = M.BackupRetentionPolicy,
        ClusterId = {
            type = "string",
        },
        CreateTimestamp = {
            type = "timestamp",
        },
        Hsms = {
            type = "list",
            member = M.Hsm,
        },
        HsmType = {
            type = "string",
        },
        HsmTypeRollbackExpiration = {
            type = "timestamp",
        },
        PreCoPassword = {
            type = "string",
        },
        SecurityGroup = {
            type = "string",
        },
        SourceBackupId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        StateMessage = {
            type = "string",
        },
        SubnetMapping = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        VpcId = {
            type = "string",
        },
        NetworkType = {
            type = "string",
        },
        Certificates = M.Certificates,
        TagList = {
            type = "list",
            member = M.Tag,
        },
        Mode = {
            type = "string",
        },
    },
}

M.CreateClusterOutput = {
    type = "structure",
    id = "CreateClusterOutput",
    members = {
        Cluster = M.Cluster,
    },
}

M.CreateHsmInput = {
    type = "structure",
    id = "CreateHsmInput",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AvailabilityZone = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IpAddress = {
            type = "string",
        },
    },
}

M.CreateHsmOutput = {
    type = "structure",
    id = "CreateHsmOutput",
    members = {
        Hsm = M.Hsm,
    },
}

M.DeleteBackupInput = {
    type = "structure",
    id = "DeleteBackupInput",
    members = {
        BackupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteBackupOutput = {
    type = "structure",
    id = "DeleteBackupOutput",
    members = {
        Backup = M.Backup,
    },
}

M.DeleteClusterInput = {
    type = "structure",
    id = "DeleteClusterInput",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteClusterOutput = {
    type = "structure",
    id = "DeleteClusterOutput",
    members = {
        Cluster = M.Cluster,
    },
}

M.DeleteHsmInput = {
    type = "structure",
    id = "DeleteHsmInput",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HsmId = {
            type = "string",
        },
        EniId = {
            type = "string",
        },
        EniIp = {
            type = "string",
        },
    },
}

M.DeleteHsmOutput = {
    type = "structure",
    id = "DeleteHsmOutput",
    members = {
        HsmId = {
            type = "string",
        },
    },
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    id = "DeleteResourcePolicyInput",
    members = {
        ResourceArn = {
            type = "string",
        },
    },
}

M.DeleteResourcePolicyOutput = {
    type = "structure",
    id = "DeleteResourcePolicyOutput",
    members = {
        ResourceArn = {
            type = "string",
        },
        Policy = {
            type = "string",
        },
    },
}

M.DescribeBackupsInput = {
    type = "structure",
    id = "DescribeBackupsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Filters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        Shared = {
            type = "boolean",
        },
        SortAscending = {
            type = "boolean",
        },
    },
}

M.DescribeBackupsOutput = {
    type = "structure",
    id = "DescribeBackupsOutput",
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

M.DescribeClustersInput = {
    type = "structure",
    id = "DescribeClustersInput",
    members = {
        Filters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.DescribeClustersOutput = {
    type = "structure",
    id = "DescribeClustersOutput",
    members = {
        Clusters = {
            type = "list",
            member = M.Cluster,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
    id = "GetResourcePolicyInput",
    members = {
        ResourceArn = {
            type = "string",
        },
    },
}

M.GetResourcePolicyOutput = {
    type = "structure",
    id = "GetResourcePolicyOutput",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.InitializeClusterInput = {
    type = "structure",
    id = "InitializeClusterInput",
    members = {
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SignedCert = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrustAnchor = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InitializeClusterOutput = {
    type = "structure",
    id = "InitializeClusterOutput",
    members = {
        State = {
            type = "string",
        },
        StateMessage = {
            type = "string",
        },
    },
}

M.ListTagsInput = {
    type = "structure",
    id = "ListTagsInput",
    members = {
        ResourceId = {
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

M.ListTagsOutput = {
    type = "structure",
    id = "ListTagsOutput",
    members = {
        TagList = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ModifyBackupAttributesInput = {
    type = "structure",
    id = "ModifyBackupAttributesInput",
    members = {
        BackupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NeverExpires = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyBackupAttributesOutput = {
    type = "structure",
    id = "ModifyBackupAttributesOutput",
    members = {
        Backup = M.Backup,
    },
}

M.ModifyClusterInput = {
    type = "structure",
    id = "ModifyClusterInput",
    members = {
        HsmType = {
            type = "string",
        },
        BackupRetentionPolicy = M.BackupRetentionPolicy,
        ClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyClusterOutput = {
    type = "structure",
    id = "ModifyClusterOutput",
    members = {
        Cluster = M.Cluster,
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    id = "PutResourcePolicyInput",
    members = {
        ResourceArn = {
            type = "string",
        },
        Policy = {
            type = "string",
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
    id = "PutResourcePolicyOutput",
    members = {
        ResourceArn = {
            type = "string",
        },
        Policy = {
            type = "string",
        },
    },
}

M.RestoreBackupInput = {
    type = "structure",
    id = "RestoreBackupInput",
    members = {
        BackupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RestoreBackupOutput = {
    type = "structure",
    id = "RestoreBackupOutput",
    members = {
        Backup = M.Backup,
    },
}

M.CloudHsmResourceLimitExceededException = {
    type = "structure",
    id = "CloudHsmResourceLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
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
                required = true,
            },
        },
        TagList = {
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
                required = true,
            },
        },
        TagKeyList = {
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
