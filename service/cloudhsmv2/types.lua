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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CloudHsmInternalFailureException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CloudHsmInvalidRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CloudHsmResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CloudHsmServiceException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CloudHsmTagException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CopyBackupToRegionInput = {
    type = "structure",
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
    members = {
        Cluster = M.Cluster,
    },
}

M.CreateHsmInput = {
    type = "structure",
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
    members = {
        Hsm = M.Hsm,
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
    },
}

M.DeleteBackupOutput = {
    type = "structure",
    members = {
        Backup = M.Backup,
    },
}

M.DeleteClusterInput = {
    type = "structure",
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
    members = {
        Cluster = M.Cluster,
    },
}

M.DeleteHsmInput = {
    type = "structure",
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
    members = {
        HsmId = {
            type = "string",
        },
    },
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
    },
}

M.DeleteResourcePolicyOutput = {
    type = "structure",
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
    members = {
        ResourceArn = {
            type = "string",
        },
    },
}

M.GetResourcePolicyOutput = {
    type = "structure",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.InitializeClusterInput = {
    type = "structure",
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
    members = {
        Backup = M.Backup,
    },
}

M.ModifyClusterInput = {
    type = "structure",
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
    members = {
        Cluster = M.Cluster,
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
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
    members = {
        Backup = M.Backup,
    },
}

M.CloudHsmResourceLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

return M
