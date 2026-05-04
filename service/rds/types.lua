local M = {}

M.AccountQuota = {
    type = "structure",
    id = "AccountQuota",
    members = {
        AccountQuotaName = {
            type = "string",
        },
        Used = {
            type = "long",
        },
        Max = {
            type = "long",
        },
    },
}

M.ActivityStreamMode = {
    sync = "sync",
    async = "async",
}

M.ActivityStreamPolicyStatus = {
    locked = "locked",
    unlocked = "unlocked",
    locking_policy = "locking-policy",
    unlocking_policy = "unlocking-policy",
}

M.ActivityStreamStatus = {
    stopped = "stopped",
    starting = "starting",
    started = "started",
    stopping = "stopping",
}

M.AdditionalStorageVolume = {
    type = "structure",
    id = "AdditionalStorageVolume",
    members = {
        VolumeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllocatedStorage = {
            type = "integer",
        },
        IOPS = {
            type = "integer",
        },
        MaxAllocatedStorage = {
            type = "integer",
        },
        StorageThroughput = {
            type = "integer",
        },
        StorageType = {
            type = "string",
        },
    },
}

M.AdditionalStorageVolumeOutput = {
    type = "structure",
    id = "AdditionalStorageVolumeOutput",
    members = {
        VolumeName = {
            type = "string",
        },
        StorageVolumeStatus = {
            type = "string",
        },
        AllocatedStorage = {
            type = "integer",
        },
        IOPS = {
            type = "integer",
        },
        MaxAllocatedStorage = {
            type = "integer",
        },
        StorageThroughput = {
            type = "integer",
        },
        StorageType = {
            type = "string",
        },
    },
}

M.AddRoleToDBClusterInput = {
    type = "structure",
    id = "AddRoleToDBClusterInput",
    members = {
        DBClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeatureName = {
            type = "string",
        },
    },
}

M.AddRoleToDBClusterOutput = {
    type = "structure",
    id = "AddRoleToDBClusterOutput",
}

M.DBClusterNotFoundFault = {
    type = "structure",
    id = "DBClusterNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBClusterRoleAlreadyExistsFault = {
    type = "structure",
    id = "DBClusterRoleAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBClusterRoleQuotaExceededFault = {
    type = "structure",
    id = "DBClusterRoleQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDBClusterStateFault = {
    type = "structure",
    id = "InvalidDBClusterStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AddRoleToDBInstanceInput = {
    type = "structure",
    id = "AddRoleToDBInstanceInput",
    members = {
        DBInstanceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeatureName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AddRoleToDBInstanceOutput = {
    type = "structure",
    id = "AddRoleToDBInstanceOutput",
}

M.DBInstanceNotFoundFault = {
    type = "structure",
    id = "DBInstanceNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBInstanceRoleAlreadyExistsFault = {
    type = "structure",
    id = "DBInstanceRoleAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBInstanceRoleQuotaExceededFault = {
    type = "structure",
    id = "DBInstanceRoleQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDBInstanceStateFault = {
    type = "structure",
    id = "InvalidDBInstanceStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AddSourceIdentifierToSubscriptionInput = {
    type = "structure",
    id = "AddSourceIdentifierToSubscriptionInput",
    members = {
        SubscriptionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EventSubscription = {
    type = "structure",
    id = "EventSubscription",
    members = {
        CustomerAwsId = {
            type = "string",
        },
        CustSubscriptionId = {
            type = "string",
        },
        SnsTopicArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        SubscriptionCreationTime = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
        SourceIdsList = {
            type = "list",
            member = { type = "string" },
        },
        EventCategoriesList = {
            type = "list",
            member = { type = "string" },
        },
        Enabled = {
            type = "boolean",
        },
        EventSubscriptionArn = {
            type = "string",
        },
    },
}

M.AddSourceIdentifierToSubscriptionOutput = {
    type = "structure",
    id = "AddSourceIdentifierToSubscriptionOutput",
    members = {
        EventSubscription = M.EventSubscription,
    },
}

M.SourceNotFoundFault = {
    type = "structure",
    id = "SourceNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SubscriptionNotFoundFault = {
    type = "structure",
    id = "SubscriptionNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.AddTagsToResourceInput = {
    type = "structure",
    id = "AddTagsToResourceInput",
    members = {
        ResourceName = {
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
    id = "AddTagsToResourceOutput",
}

M.BlueGreenDeploymentNotFoundFault = {
    type = "structure",
    id = "BlueGreenDeploymentNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBProxyEndpointNotFoundFault = {
    type = "structure",
    id = "DBProxyEndpointNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBProxyNotFoundFault = {
    type = "structure",
    id = "DBProxyNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBProxyTargetGroupNotFoundFault = {
    type = "structure",
    id = "DBProxyTargetGroupNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBShardGroupNotFoundFault = {
    type = "structure",
    id = "DBShardGroupNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBSnapshotNotFoundFault = {
    type = "structure",
    id = "DBSnapshotNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBSnapshotTenantDatabaseNotFoundFault = {
    type = "structure",
    id = "DBSnapshotTenantDatabaseNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IntegrationNotFoundFault = {
    type = "structure",
    id = "IntegrationNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDBClusterEndpointStateFault = {
    type = "structure",
    id = "InvalidDBClusterEndpointStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TenantDatabaseNotFoundFault = {
    type = "structure",
    id = "TenantDatabaseNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApplyPendingMaintenanceActionInput = {
    type = "structure",
    id = "ApplyPendingMaintenanceActionInput",
    members = {
        ResourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplyAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OptInType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PendingMaintenanceAction = {
    type = "structure",
    id = "PendingMaintenanceAction",
    members = {
        Action = {
            type = "string",
        },
        AutoAppliedAfterDate = {
            type = "timestamp",
        },
        ForcedApplyDate = {
            type = "timestamp",
        },
        OptInStatus = {
            type = "string",
        },
        CurrentApplyDate = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
    },
}

M.ResourcePendingMaintenanceActions = {
    type = "structure",
    id = "ResourcePendingMaintenanceActions",
    members = {
        ResourceIdentifier = {
            type = "string",
        },
        PendingMaintenanceActionDetails = {
            type = "list",
            member = M.PendingMaintenanceAction,
        },
    },
}

M.ApplyPendingMaintenanceActionOutput = {
    type = "structure",
    id = "ApplyPendingMaintenanceActionOutput",
    members = {
        ResourcePendingMaintenanceActions = M.ResourcePendingMaintenanceActions,
    },
}

M.ResourceNotFoundFault = {
    type = "structure",
    id = "ResourceNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AuthorizationAlreadyExistsFault = {
    type = "structure",
    id = "AuthorizationAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AuthorizationQuotaExceededFault = {
    type = "structure",
    id = "AuthorizationQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AuthorizeDBSecurityGroupIngressInput = {
    type = "structure",
    id = "AuthorizeDBSecurityGroupIngressInput",
    members = {
        DBSecurityGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CIDRIP = {
            type = "string",
        },
        EC2SecurityGroupName = {
            type = "string",
        },
        EC2SecurityGroupId = {
            type = "string",
        },
        EC2SecurityGroupOwnerId = {
            type = "string",
        },
    },
}

M.EC2SecurityGroup = {
    type = "structure",
    id = "EC2SecurityGroup",
    members = {
        Status = {
            type = "string",
        },
        EC2SecurityGroupName = {
            type = "string",
        },
        EC2SecurityGroupId = {
            type = "string",
        },
        EC2SecurityGroupOwnerId = {
            type = "string",
        },
    },
}

M.IPRange = {
    type = "structure",
    id = "IPRange",
    members = {
        Status = {
            type = "string",
        },
        CIDRIP = {
            type = "string",
        },
    },
}

M.DBSecurityGroup = {
    type = "structure",
    id = "DBSecurityGroup",
    members = {
        OwnerId = {
            type = "string",
        },
        DBSecurityGroupName = {
            type = "string",
        },
        DBSecurityGroupDescription = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        EC2SecurityGroups = {
            type = "list",
            member = M.EC2SecurityGroup,
        },
        IPRanges = {
            type = "list",
            member = M.IPRange,
        },
        DBSecurityGroupArn = {
            type = "string",
        },
    },
}

M.AuthorizeDBSecurityGroupIngressOutput = {
    type = "structure",
    id = "AuthorizeDBSecurityGroupIngressOutput",
    members = {
        DBSecurityGroup = M.DBSecurityGroup,
    },
}

M.DBSecurityGroupNotFoundFault = {
    type = "structure",
    id = "DBSecurityGroupNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDBSecurityGroupStateFault = {
    type = "structure",
    id = "InvalidDBSecurityGroupStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BacktrackDBClusterInput = {
    type = "structure",
    id = "BacktrackDBClusterInput",
    members = {
        DBClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BacktrackTo = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Force = {
            type = "boolean",
        },
        UseEarliestTimeOnPointInTimeUnavailable = {
            type = "boolean",
        },
    },
}

M.BacktrackDBClusterOutput = {
    type = "structure",
    id = "BacktrackDBClusterOutput",
    members = {
        DBClusterIdentifier = {
            type = "string",
        },
        BacktrackIdentifier = {
            type = "string",
        },
        BacktrackTo = {
            type = "timestamp",
        },
        BacktrackedFrom = {
            type = "timestamp",
        },
        BacktrackRequestCreationTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
    },
}

M.CancelExportTaskInput = {
    type = "structure",
    id = "CancelExportTaskInput",
    members = {
        ExportTaskIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExportSourceType = {
    SNAPSHOT = "SNAPSHOT",
    CLUSTER = "CLUSTER",
}

M.CancelExportTaskOutput = {
    type = "structure",
    id = "CancelExportTaskOutput",
    members = {
        ExportTaskIdentifier = {
            type = "string",
        },
        SourceArn = {
            type = "string",
        },
        ExportOnly = {
            type = "list",
            member = { type = "string" },
        },
        SnapshotTime = {
            type = "timestamp",
        },
        TaskStartTime = {
            type = "timestamp",
        },
        TaskEndTime = {
            type = "timestamp",
        },
        S3Bucket = {
            type = "string",
        },
        S3Prefix = {
            type = "string",
        },
        IamRoleArn = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        PercentProgress = {
            type = "integer",
        },
        TotalExtractedDataInGB = {
            type = "integer",
        },
        FailureCause = {
            type = "string",
        },
        WarningMessage = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
    },
}

M.ExportTaskNotFoundFault = {
    type = "structure",
    id = "ExportTaskNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidExportTaskStateFault = {
    type = "structure",
    id = "InvalidExportTaskStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CopyDBClusterParameterGroupInput = {
    type = "structure",
    id = "CopyDBClusterParameterGroupInput",
    members = {
        SourceDBClusterParameterGroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetDBClusterParameterGroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetDBClusterParameterGroupDescription = {
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

M.DBClusterParameterGroup = {
    type = "structure",
    id = "DBClusterParameterGroup",
    members = {
        DBClusterParameterGroupName = {
            type = "string",
        },
        DBParameterGroupFamily = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DBClusterParameterGroupArn = {
            type = "string",
        },
    },
}

M.CopyDBClusterParameterGroupOutput = {
    type = "structure",
    id = "CopyDBClusterParameterGroupOutput",
    members = {
        DBClusterParameterGroup = M.DBClusterParameterGroup,
    },
}

M.DBParameterGroupAlreadyExistsFault = {
    type = "structure",
    id = "DBParameterGroupAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBParameterGroupNotFoundFault = {
    type = "structure",
    id = "DBParameterGroupNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBParameterGroupQuotaExceededFault = {
    type = "structure",
    id = "DBParameterGroupQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CopyDBClusterSnapshotInput = {
    type = "structure",
    id = "CopyDBClusterSnapshotInput",
    members = {
        SourceDBClusterSnapshotIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetDBClusterSnapshotIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
        PreSignedUrl = {
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

M.StorageEncryptionType = {
    UNENCRYPTED = "none",
    CMK = "sse-kms",
    SSE = "sse-rds",
}

M.DBClusterSnapshot = {
    type = "structure",
    id = "DBClusterSnapshot",
    members = {
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        DBClusterSnapshotIdentifier = {
            type = "string",
        },
        DBClusterIdentifier = {
            type = "string",
        },
        SnapshotCreateTime = {
            type = "timestamp",
        },
        Engine = {
            type = "string",
        },
        EngineMode = {
            type = "string",
        },
        AllocatedStorage = {
            type = "integer",
        },
        Status = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        VpcId = {
            type = "string",
        },
        ClusterCreateTime = {
            type = "timestamp",
        },
        MasterUsername = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        LicenseModel = {
            type = "string",
        },
        SnapshotType = {
            type = "string",
        },
        PercentProgress = {
            type = "integer",
        },
        StorageEncrypted = {
            type = "boolean",
        },
        StorageEncryptionType = {
            type = "string",
        },
        BackupRetentionPeriod = {
            type = "integer",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        DBClusterSnapshotArn = {
            type = "string",
        },
        SourceDBClusterSnapshotArn = {
            type = "string",
        },
        IAMDatabaseAuthenticationEnabled = {
            type = "boolean",
        },
        TagList = {
            type = "list",
            member = M.Tag,
        },
        StorageType = {
            type = "string",
        },
        StorageThroughput = {
            type = "integer",
        },
        DbClusterResourceId = {
            type = "string",
        },
        DBSystemId = {
            type = "string",
        },
    },
}

M.CopyDBClusterSnapshotOutput = {
    type = "structure",
    id = "CopyDBClusterSnapshotOutput",
    members = {
        DBClusterSnapshot = M.DBClusterSnapshot,
    },
}

M.DBClusterSnapshotAlreadyExistsFault = {
    type = "structure",
    id = "DBClusterSnapshotAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBClusterSnapshotNotFoundFault = {
    type = "structure",
    id = "DBClusterSnapshotNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDBClusterSnapshotStateFault = {
    type = "structure",
    id = "InvalidDBClusterSnapshotStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSKeyNotAccessibleFault = {
    type = "structure",
    id = "KMSKeyNotAccessibleFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SnapshotQuotaExceededFault = {
    type = "structure",
    id = "SnapshotQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CopyDBParameterGroupInput = {
    type = "structure",
    id = "CopyDBParameterGroupInput",
    members = {
        SourceDBParameterGroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetDBParameterGroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetDBParameterGroupDescription = {
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

M.DBParameterGroup = {
    type = "structure",
    id = "DBParameterGroup",
    members = {
        DBParameterGroupName = {
            type = "string",
        },
        DBParameterGroupFamily = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DBParameterGroupArn = {
            type = "string",
        },
    },
}

M.CopyDBParameterGroupOutput = {
    type = "structure",
    id = "CopyDBParameterGroupOutput",
    members = {
        DBParameterGroup = M.DBParameterGroup,
    },
}

M.CopyDBSnapshotInput = {
    type = "structure",
    id = "CopyDBSnapshotInput",
    members = {
        SourceDBSnapshotIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetDBSnapshotIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        CopyTags = {
            type = "boolean",
        },
        PreSignedUrl = {
            type = "string",
        },
        OptionGroupName = {
            type = "string",
        },
        TargetCustomAvailabilityZone = {
            type = "string",
        },
        SnapshotTarget = {
            type = "string",
        },
        CopyOptionGroup = {
            type = "boolean",
        },
        SnapshotAvailabilityZone = {
            type = "string",
        },
    },
}

M.ProcessorFeature = {
    type = "structure",
    id = "ProcessorFeature",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.DBSnapshot = {
    type = "structure",
    id = "DBSnapshot",
    members = {
        DBSnapshotIdentifier = {
            type = "string",
        },
        DBInstanceIdentifier = {
            type = "string",
        },
        SnapshotCreateTime = {
            type = "timestamp",
        },
        Engine = {
            type = "string",
        },
        AllocatedStorage = {
            type = "integer",
        },
        Status = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        AvailabilityZone = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        InstanceCreateTime = {
            type = "timestamp",
        },
        MasterUsername = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        LicenseModel = {
            type = "string",
        },
        SnapshotType = {
            type = "string",
        },
        Iops = {
            type = "integer",
        },
        StorageThroughput = {
            type = "integer",
        },
        OptionGroupName = {
            type = "string",
        },
        PercentProgress = {
            type = "integer",
        },
        SourceRegion = {
            type = "string",
        },
        SourceDBSnapshotIdentifier = {
            type = "string",
        },
        StorageType = {
            type = "string",
        },
        TdeCredentialArn = {
            type = "string",
        },
        Encrypted = {
            type = "boolean",
        },
        StorageEncryptionType = {
            type = "string",
        },
        BackupRetentionPeriod = {
            type = "integer",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        DBSnapshotArn = {
            type = "string",
        },
        Timezone = {
            type = "string",
        },
        IAMDatabaseAuthenticationEnabled = {
            type = "boolean",
        },
        ProcessorFeatures = {
            type = "list",
            member = M.ProcessorFeature,
        },
        DbiResourceId = {
            type = "string",
        },
        TagList = {
            type = "list",
            member = M.Tag,
        },
        SnapshotTarget = {
            type = "string",
        },
        OriginalSnapshotCreateTime = {
            type = "timestamp",
        },
        SnapshotDatabaseTime = {
            type = "timestamp",
        },
        DBSystemId = {
            type = "string",
        },
        MultiTenant = {
            type = "boolean",
        },
        DedicatedLogVolume = {
            type = "boolean",
        },
        AdditionalStorageVolumes = {
            type = "list",
            member = M.AdditionalStorageVolume,
        },
        SnapshotAvailabilityZone = {
            type = "string",
        },
    },
}

M.CopyDBSnapshotOutput = {
    type = "structure",
    id = "CopyDBSnapshotOutput",
    members = {
        DBSnapshot = M.DBSnapshot,
    },
}

M.CustomAvailabilityZoneNotFoundFault = {
    type = "structure",
    id = "CustomAvailabilityZoneNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBSnapshotAlreadyExistsFault = {
    type = "structure",
    id = "DBSnapshotAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDBSnapshotStateFault = {
    type = "structure",
    id = "InvalidDBSnapshotStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CopyOptionGroupInput = {
    type = "structure",
    id = "CopyOptionGroupInput",
    members = {
        SourceOptionGroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetOptionGroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetOptionGroupDescription = {
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

M.DBSecurityGroupMembership = {
    type = "structure",
    id = "DBSecurityGroupMembership",
    members = {
        DBSecurityGroupName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.OptionSetting = {
    type = "structure",
    id = "OptionSetting",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        DefaultValue = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ApplyType = {
            type = "string",
        },
        DataType = {
            type = "string",
        },
        AllowedValues = {
            type = "string",
        },
        IsModifiable = {
            type = "boolean",
        },
        IsCollection = {
            type = "boolean",
        },
    },
}

M.VpcSecurityGroupMembership = {
    type = "structure",
    id = "VpcSecurityGroupMembership",
    members = {
        VpcSecurityGroupId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.Option = {
    type = "structure",
    id = "Option",
    members = {
        OptionName = {
            type = "string",
        },
        OptionDescription = {
            type = "string",
        },
        Persistent = {
            type = "boolean",
        },
        Permanent = {
            type = "boolean",
        },
        Port = {
            type = "integer",
        },
        OptionVersion = {
            type = "string",
        },
        OptionSettings = {
            type = "list",
            member = M.OptionSetting,
        },
        DBSecurityGroupMemberships = {
            type = "list",
            member = M.DBSecurityGroupMembership,
        },
        VpcSecurityGroupMemberships = {
            type = "list",
            member = M.VpcSecurityGroupMembership,
        },
    },
}

M.OptionGroup = {
    type = "structure",
    id = "OptionGroup",
    members = {
        OptionGroupName = {
            type = "string",
        },
        OptionGroupDescription = {
            type = "string",
        },
        EngineName = {
            type = "string",
        },
        MajorEngineVersion = {
            type = "string",
        },
        Options = {
            type = "list",
            member = M.Option,
        },
        AllowsVpcAndNonVpcInstanceMemberships = {
            type = "boolean",
        },
        VpcId = {
            type = "string",
        },
        OptionGroupArn = {
            type = "string",
        },
        SourceOptionGroup = {
            type = "string",
        },
        SourceAccountId = {
            type = "string",
        },
        CopyTimestamp = {
            type = "timestamp",
        },
    },
}

M.CopyOptionGroupOutput = {
    type = "structure",
    id = "CopyOptionGroupOutput",
    members = {
        OptionGroup = M.OptionGroup,
    },
}

M.OptionGroupAlreadyExistsFault = {
    type = "structure",
    id = "OptionGroupAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OptionGroupNotFoundFault = {
    type = "structure",
    id = "OptionGroupNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OptionGroupQuotaExceededFault = {
    type = "structure",
    id = "OptionGroupQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BlueGreenDeploymentAlreadyExistsFault = {
    type = "structure",
    id = "BlueGreenDeploymentAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateBlueGreenDeploymentInput = {
    type = "structure",
    id = "CreateBlueGreenDeploymentInput",
    members = {
        BlueGreenDeploymentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetEngineVersion = {
            type = "string",
        },
        TargetDBParameterGroupName = {
            type = "string",
        },
        TargetDBClusterParameterGroupName = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        TargetDBInstanceClass = {
            type = "string",
        },
        UpgradeTargetStorageConfig = {
            type = "boolean",
        },
        TargetIops = {
            type = "integer",
        },
        TargetStorageType = {
            type = "string",
        },
        TargetAllocatedStorage = {
            type = "integer",
        },
        TargetStorageThroughput = {
            type = "integer",
        },
    },
}

M.SwitchoverDetail = {
    type = "structure",
    id = "SwitchoverDetail",
    members = {
        SourceMember = {
            type = "string",
        },
        TargetMember = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.BlueGreenDeploymentTask = {
    type = "structure",
    id = "BlueGreenDeploymentTask",
    members = {
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.BlueGreenDeployment = {
    type = "structure",
    id = "BlueGreenDeployment",
    members = {
        BlueGreenDeploymentIdentifier = {
            type = "string",
        },
        BlueGreenDeploymentName = {
            type = "string",
        },
        Source = {
            type = "string",
        },
        Target = {
            type = "string",
        },
        SwitchoverDetails = {
            type = "list",
            member = M.SwitchoverDetail,
        },
        Tasks = {
            type = "list",
            member = M.BlueGreenDeploymentTask,
        },
        Status = {
            type = "string",
        },
        StatusDetails = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
        },
        DeleteTime = {
            type = "timestamp",
        },
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateBlueGreenDeploymentOutput = {
    type = "structure",
    id = "CreateBlueGreenDeploymentOutput",
    members = {
        BlueGreenDeployment = M.BlueGreenDeployment,
    },
}

M.DBClusterParameterGroupNotFoundFault = {
    type = "structure",
    id = "DBClusterParameterGroupNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBClusterQuotaExceededFault = {
    type = "structure",
    id = "DBClusterQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InstanceQuotaExceededFault = {
    type = "structure",
    id = "InstanceQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SourceClusterNotSupportedFault = {
    type = "structure",
    id = "SourceClusterNotSupportedFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SourceDatabaseNotSupportedFault = {
    type = "structure",
    id = "SourceDatabaseNotSupportedFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StorageQuotaExceededFault = {
    type = "structure",
    id = "StorageQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateCustomDBEngineVersionFault = {
    type = "structure",
    id = "CreateCustomDBEngineVersionFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateCustomDBEngineVersionInput = {
    type = "structure",
    id = "CreateCustomDBEngineVersionInput",
    members = {
        Engine = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EngineVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatabaseInstallationFilesS3BucketName = {
            type = "string",
        },
        DatabaseInstallationFilesS3Prefix = {
            type = "string",
        },
        DatabaseInstallationFiles = {
            type = "list",
            member = { type = "string" },
        },
        ImageId = {
            type = "string",
        },
        KMSKeyId = {
            type = "string",
        },
        SourceCustomDbEngineVersionIdentifier = {
            type = "string",
        },
        UseAwsProvidedLatestImage = {
            type = "boolean",
        },
        Description = {
            type = "string",
        },
        Manifest = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CharacterSet = {
    type = "structure",
    id = "CharacterSet",
    members = {
        CharacterSetName = {
            type = "string",
        },
        CharacterSetDescription = {
            type = "string",
        },
    },
}

M.CustomDBEngineVersionAMI = {
    type = "structure",
    id = "CustomDBEngineVersionAMI",
    members = {
        ImageId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.ServerlessV2FeaturesSupport = {
    type = "structure",
    id = "ServerlessV2FeaturesSupport",
    members = {
        MinCapacity = {
            type = "double",
        },
        MaxCapacity = {
            type = "double",
        },
    },
}

M.Timezone = {
    type = "structure",
    id = "Timezone",
    members = {
        TimezoneName = {
            type = "string",
        },
    },
}

M.UpgradeTarget = {
    type = "structure",
    id = "UpgradeTarget",
    members = {
        Engine = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        AutoUpgrade = {
            type = "boolean",
        },
        IsMajorVersionUpgrade = {
            type = "boolean",
        },
        SupportedEngineModes = {
            type = "list",
            member = { type = "string" },
        },
        SupportsParallelQuery = {
            type = "boolean",
        },
        SupportsGlobalDatabases = {
            type = "boolean",
        },
        SupportsBabelfish = {
            type = "boolean",
        },
        SupportsLimitlessDatabase = {
            type = "boolean",
        },
        SupportsLocalWriteForwarding = {
            type = "boolean",
        },
        SupportsIntegrations = {
            type = "boolean",
        },
    },
}

M.CreateCustomDBEngineVersionOutput = {
    type = "structure",
    id = "CreateCustomDBEngineVersionOutput",
    members = {
        Engine = {
            type = "string",
        },
        MajorEngineVersion = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        DatabaseInstallationFilesS3BucketName = {
            type = "string",
        },
        DatabaseInstallationFilesS3Prefix = {
            type = "string",
        },
        DatabaseInstallationFiles = {
            type = "list",
            member = { type = "string" },
        },
        CustomDBEngineVersionManifest = {
            type = "string",
        },
        DBParameterGroupFamily = {
            type = "string",
        },
        DBEngineDescription = {
            type = "string",
        },
        DBEngineVersionArn = {
            type = "string",
        },
        DBEngineVersionDescription = {
            type = "string",
        },
        DefaultCharacterSet = M.CharacterSet,
        FailureReason = {
            type = "string",
        },
        Image = M.CustomDBEngineVersionAMI,
        DBEngineMediaType = {
            type = "string",
        },
        KMSKeyId = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
        },
        SupportedCharacterSets = {
            type = "list",
            member = M.CharacterSet,
        },
        SupportedNcharCharacterSets = {
            type = "list",
            member = M.CharacterSet,
        },
        ValidUpgradeTarget = {
            type = "list",
            member = M.UpgradeTarget,
        },
        SupportedTimezones = {
            type = "list",
            member = M.Timezone,
        },
        ExportableLogTypes = {
            type = "list",
            member = { type = "string" },
        },
        SupportsLogExportsToCloudwatchLogs = {
            type = "boolean",
        },
        SupportsReadReplica = {
            type = "boolean",
        },
        SupportedEngineModes = {
            type = "list",
            member = { type = "string" },
        },
        SupportedFeatureNames = {
            type = "list",
            member = { type = "string" },
        },
        Status = {
            type = "string",
        },
        SupportsParallelQuery = {
            type = "boolean",
        },
        SupportsGlobalDatabases = {
            type = "boolean",
        },
        TagList = {
            type = "list",
            member = M.Tag,
        },
        SupportsBabelfish = {
            type = "boolean",
        },
        SupportsLimitlessDatabase = {
            type = "boolean",
        },
        SupportsCertificateRotationWithoutRestart = {
            type = "boolean",
        },
        SupportedCACertificateIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        SupportsLocalWriteForwarding = {
            type = "boolean",
        },
        SupportsIntegrations = {
            type = "boolean",
        },
        ServerlessV2FeaturesSupport = M.ServerlessV2FeaturesSupport,
    },
}

M.CustomDBEngineVersionAlreadyExistsFault = {
    type = "structure",
    id = "CustomDBEngineVersionAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CustomDBEngineVersionNotFoundFault = {
    type = "structure",
    id = "CustomDBEngineVersionNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CustomDBEngineVersionQuotaExceededFault = {
    type = "structure",
    id = "CustomDBEngineVersionQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Ec2ImagePropertiesNotSupportedFault = {
    type = "structure",
    id = "Ec2ImagePropertiesNotSupportedFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidCustomDBEngineVersionStateFault = {
    type = "structure",
    id = "InvalidCustomDBEngineVersionStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterScalabilityType = {
    STANDARD = "standard",
    LIMITLESS = "limitless",
}

M.DatabaseInsightsMode = {
    STANDARD = "standard",
    ADVANCED = "advanced",
}

M.MasterUserAuthenticationType = {
    PASSWORD = "password",
    IAM_DB_AUTH = "iam-db-auth",
}

M.ReplicaMode = {
    OPEN_READ_ONLY = "open-read-only",
    MOUNTED = "mounted",
}

M.RdsCustomClusterConfiguration = {
    type = "structure",
    id = "RdsCustomClusterConfiguration",
    members = {
        InterconnectSubnetId = {
            type = "string",
        },
        TransitGatewayMulticastDomainId = {
            type = "string",
        },
        ReplicaMode = {
            type = "string",
        },
    },
}

M.ScalingConfiguration = {
    type = "structure",
    id = "ScalingConfiguration",
    members = {
        MinCapacity = {
            type = "integer",
        },
        MaxCapacity = {
            type = "integer",
        },
        AutoPause = {
            type = "boolean",
        },
        SecondsUntilAutoPause = {
            type = "integer",
        },
        TimeoutAction = {
            type = "string",
        },
        SecondsBeforeTimeout = {
            type = "integer",
        },
    },
}

M.ServerlessV2ScalingConfiguration = {
    type = "structure",
    id = "ServerlessV2ScalingConfiguration",
    members = {
        MinCapacity = {
            type = "double",
        },
        MaxCapacity = {
            type = "double",
        },
        SecondsUntilAutoPause = {
            type = "integer",
        },
    },
}

M.TagSpecification = {
    type = "structure",
    id = "TagSpecification",
    members = {
        ResourceType = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateDBClusterInput = {
    type = "structure",
    id = "CreateDBClusterInput",
    members = {
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        BackupRetentionPeriod = {
            type = "integer",
        },
        CharacterSetName = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
        },
        DBClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DBClusterParameterGroupName = {
            type = "string",
        },
        VpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        DBSubnetGroupName = {
            type = "string",
        },
        Engine = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EngineVersion = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        MasterUsername = {
            type = "string",
        },
        MasterUserPassword = {
            type = "string",
        },
        OptionGroupName = {
            type = "string",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        ReplicationSourceIdentifier = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        StorageEncrypted = {
            type = "boolean",
        },
        KmsKeyId = {
            type = "string",
        },
        PreSignedUrl = {
            type = "string",
        },
        EnableIAMDatabaseAuthentication = {
            type = "boolean",
        },
        BacktrackWindow = {
            type = "long",
        },
        EnableCloudwatchLogsExports = {
            type = "list",
            member = { type = "string" },
        },
        EngineMode = {
            type = "string",
        },
        ScalingConfiguration = M.ScalingConfiguration,
        RdsCustomClusterConfiguration = M.RdsCustomClusterConfiguration,
        DBClusterInstanceClass = {
            type = "string",
        },
        AllocatedStorage = {
            type = "integer",
        },
        StorageType = {
            type = "string",
        },
        Iops = {
            type = "integer",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        DeletionProtection = {
            type = "boolean",
        },
        GlobalClusterIdentifier = {
            type = "string",
        },
        EnableHttpEndpoint = {
            type = "boolean",
        },
        CopyTagsToSnapshot = {
            type = "boolean",
        },
        Domain = {
            type = "string",
        },
        DomainIAMRoleName = {
            type = "string",
        },
        EnableGlobalWriteForwarding = {
            type = "boolean",
        },
        NetworkType = {
            type = "string",
        },
        ServerlessV2ScalingConfiguration = M.ServerlessV2ScalingConfiguration,
        MonitoringInterval = {
            type = "integer",
        },
        MonitoringRoleArn = {
            type = "string",
        },
        DatabaseInsightsMode = {
            type = "string",
        },
        EnablePerformanceInsights = {
            type = "boolean",
        },
        PerformanceInsightsKMSKeyId = {
            type = "string",
        },
        PerformanceInsightsRetentionPeriod = {
            type = "integer",
        },
        EnableLimitlessDatabase = {
            type = "boolean",
        },
        ClusterScalabilityType = {
            type = "string",
        },
        DBSystemId = {
            type = "string",
        },
        ManageMasterUserPassword = {
            type = "boolean",
        },
        EnableLocalWriteForwarding = {
            type = "boolean",
        },
        MasterUserSecretKmsKeyId = {
            type = "string",
        },
        CACertificateIdentifier = {
            type = "string",
        },
        EngineLifecycleSupport = {
            type = "string",
        },
        TagSpecifications = {
            type = "list",
            member = M.TagSpecification,
        },
        MasterUserAuthenticationType = {
            type = "string",
        },
        WithExpressConfiguration = {
            type = "boolean",
        },
    },
}

M.DBClusterRole = {
    type = "structure",
    id = "DBClusterRole",
    members = {
        RoleArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        FeatureName = {
            type = "string",
        },
    },
}

M.CertificateDetails = {
    type = "structure",
    id = "CertificateDetails",
    members = {
        CAIdentifier = {
            type = "string",
        },
        ValidTill = {
            type = "timestamp",
        },
    },
}

M.DBClusterMember = {
    type = "structure",
    id = "DBClusterMember",
    members = {
        DBInstanceIdentifier = {
            type = "string",
        },
        IsClusterWriter = {
            type = "boolean",
        },
        DBClusterParameterGroupStatus = {
            type = "string",
        },
        PromotionTier = {
            type = "integer",
        },
    },
}

M.DBClusterOptionGroupStatus = {
    type = "structure",
    id = "DBClusterOptionGroupStatus",
    members = {
        DBClusterOptionGroupName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.DomainMembership = {
    type = "structure",
    id = "DomainMembership",
    members = {
        Domain = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        FQDN = {
            type = "string",
        },
        IAMRoleName = {
            type = "string",
        },
        OU = {
            type = "string",
        },
        AuthSecretArn = {
            type = "string",
        },
        DnsIps = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.WriteForwardingStatus = {
    ENABLED = "enabled",
    DISABLED = "disabled",
    ENABLING = "enabling",
    DISABLING = "disabling",
    UNKNOWN = "unknown",
}

M.LimitlessDatabaseStatus = {
    ACTIVE = "active",
    NOT_IN_USE = "not-in-use",
    ENABLED = "enabled",
    DISABLED = "disabled",
    ENABLING = "enabling",
    DISABLING = "disabling",
    MODIFYING_MAX_CAPACITY = "modifying-max-capacity",
    ERROR = "error",
}

M.LimitlessDatabase = {
    type = "structure",
    id = "LimitlessDatabase",
    members = {
        Status = {
            type = "string",
        },
        MinRequiredACU = {
            type = "double",
        },
    },
}

M.LocalWriteForwardingStatus = {
    ENABLED = "enabled",
    DISABLED = "disabled",
    ENABLING = "enabling",
    DISABLING = "disabling",
    REQUESTED = "requested",
}

M.MasterUserSecret = {
    type = "structure",
    id = "MasterUserSecret",
    members = {
        SecretArn = {
            type = "string",
        },
        SecretStatus = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
    },
}

M.PendingCloudwatchLogsExports = {
    type = "structure",
    id = "PendingCloudwatchLogsExports",
    members = {
        LogTypesToEnable = {
            type = "list",
            member = { type = "string" },
        },
        LogTypesToDisable = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ClusterPendingModifiedValues = {
    type = "structure",
    id = "ClusterPendingModifiedValues",
    members = {
        PendingCloudwatchLogsExports = M.PendingCloudwatchLogsExports,
        DBClusterIdentifier = {
            type = "string",
        },
        MasterUserPassword = {
            type = "string",
        },
        IAMDatabaseAuthenticationEnabled = {
            type = "boolean",
        },
        EngineVersion = {
            type = "string",
        },
        BackupRetentionPeriod = {
            type = "integer",
        },
        StorageType = {
            type = "string",
        },
        AllocatedStorage = {
            type = "integer",
        },
        RdsCustomClusterConfiguration = M.RdsCustomClusterConfiguration,
        Iops = {
            type = "integer",
        },
        CertificateDetails = M.CertificateDetails,
    },
}

M.ScalingConfigurationInfo = {
    type = "structure",
    id = "ScalingConfigurationInfo",
    members = {
        MinCapacity = {
            type = "integer",
        },
        MaxCapacity = {
            type = "integer",
        },
        AutoPause = {
            type = "boolean",
        },
        SecondsUntilAutoPause = {
            type = "integer",
        },
        TimeoutAction = {
            type = "string",
        },
        SecondsBeforeTimeout = {
            type = "integer",
        },
    },
}

M.ServerlessV2ScalingConfigurationInfo = {
    type = "structure",
    id = "ServerlessV2ScalingConfigurationInfo",
    members = {
        MinCapacity = {
            type = "double",
        },
        MaxCapacity = {
            type = "double",
        },
        SecondsUntilAutoPause = {
            type = "integer",
        },
    },
}

M.DBClusterStatusInfo = {
    type = "structure",
    id = "DBClusterStatusInfo",
    members = {
        StatusType = {
            type = "string",
        },
        Normal = {
            type = "boolean",
        },
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.UpgradeRolloutOrder = {
    FIRST = "first",
    SECOND = "second",
    LAST = "last",
}

M.DBCluster = {
    type = "structure",
    id = "DBCluster",
    members = {
        AllocatedStorage = {
            type = "integer",
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        BackupRetentionPeriod = {
            type = "integer",
        },
        CharacterSetName = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
        },
        DBClusterIdentifier = {
            type = "string",
        },
        DBClusterParameterGroup = {
            type = "string",
        },
        DBSubnetGroup = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        PercentProgress = {
            type = "string",
        },
        EarliestRestorableTime = {
            type = "timestamp",
        },
        Endpoint = {
            type = "string",
        },
        ReaderEndpoint = {
            type = "string",
        },
        CustomEndpoints = {
            type = "list",
            member = { type = "string" },
        },
        MultiAZ = {
            type = "boolean",
        },
        Engine = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        LatestRestorableTime = {
            type = "timestamp",
        },
        Port = {
            type = "integer",
        },
        MasterUsername = {
            type = "string",
        },
        DBClusterOptionGroupMemberships = {
            type = "list",
            member = M.DBClusterOptionGroupStatus,
        },
        PreferredBackupWindow = {
            type = "string",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        UpgradeRolloutOrder = {
            type = "string",
        },
        ReplicationSourceIdentifier = {
            type = "string",
        },
        ReadReplicaIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        StatusInfos = {
            type = "list",
            member = M.DBClusterStatusInfo,
        },
        DBClusterMembers = {
            type = "list",
            member = M.DBClusterMember,
        },
        VpcSecurityGroups = {
            type = "list",
            member = M.VpcSecurityGroupMembership,
        },
        HostedZoneId = {
            type = "string",
        },
        StorageEncrypted = {
            type = "boolean",
        },
        StorageEncryptionType = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        DbClusterResourceId = {
            type = "string",
        },
        DBClusterArn = {
            type = "string",
        },
        AssociatedRoles = {
            type = "list",
            member = M.DBClusterRole,
        },
        IAMDatabaseAuthenticationEnabled = {
            type = "boolean",
        },
        CloneGroupId = {
            type = "string",
        },
        ClusterCreateTime = {
            type = "timestamp",
        },
        EarliestBacktrackTime = {
            type = "timestamp",
        },
        BacktrackWindow = {
            type = "long",
        },
        BacktrackConsumedChangeRecords = {
            type = "long",
        },
        EnabledCloudwatchLogsExports = {
            type = "list",
            member = { type = "string" },
        },
        Capacity = {
            type = "integer",
        },
        PendingModifiedValues = M.ClusterPendingModifiedValues,
        EngineMode = {
            type = "string",
        },
        ScalingConfigurationInfo = M.ScalingConfigurationInfo,
        RdsCustomClusterConfiguration = M.RdsCustomClusterConfiguration,
        DBClusterInstanceClass = {
            type = "string",
        },
        StorageType = {
            type = "string",
        },
        Iops = {
            type = "integer",
        },
        StorageThroughput = {
            type = "integer",
        },
        IOOptimizedNextAllowedModificationTime = {
            type = "timestamp",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        DeletionProtection = {
            type = "boolean",
        },
        HttpEndpointEnabled = {
            type = "boolean",
        },
        ActivityStreamMode = {
            type = "string",
        },
        ActivityStreamStatus = {
            type = "string",
        },
        ActivityStreamKmsKeyId = {
            type = "string",
        },
        ActivityStreamKinesisStreamName = {
            type = "string",
        },
        CopyTagsToSnapshot = {
            type = "boolean",
        },
        CrossAccountClone = {
            type = "boolean",
        },
        DomainMemberships = {
            type = "list",
            member = M.DomainMembership,
        },
        TagList = {
            type = "list",
            member = M.Tag,
        },
        GlobalClusterIdentifier = {
            type = "string",
        },
        GlobalWriteForwardingStatus = {
            type = "string",
        },
        GlobalWriteForwardingRequested = {
            type = "boolean",
        },
        NetworkType = {
            type = "string",
        },
        AutomaticRestartTime = {
            type = "timestamp",
        },
        ServerlessV2ScalingConfiguration = M.ServerlessV2ScalingConfigurationInfo,
        ServerlessV2PlatformVersion = {
            type = "string",
        },
        MonitoringInterval = {
            type = "integer",
        },
        MonitoringRoleArn = {
            type = "string",
        },
        DatabaseInsightsMode = {
            type = "string",
        },
        PerformanceInsightsEnabled = {
            type = "boolean",
        },
        PerformanceInsightsKMSKeyId = {
            type = "string",
        },
        PerformanceInsightsRetentionPeriod = {
            type = "integer",
        },
        DBSystemId = {
            type = "string",
        },
        MasterUserSecret = M.MasterUserSecret,
        LocalWriteForwardingStatus = {
            type = "string",
        },
        AwsBackupRecoveryPointArn = {
            type = "string",
        },
        LimitlessDatabase = M.LimitlessDatabase,
        ClusterScalabilityType = {
            type = "string",
        },
        CertificateDetails = M.CertificateDetails,
        EngineLifecycleSupport = {
            type = "string",
        },
        VPCNetworkingEnabled = {
            type = "boolean",
        },
        InternetAccessGatewayEnabled = {
            type = "boolean",
        },
    },
}

M.CreateDBClusterOutput = {
    type = "structure",
    id = "CreateDBClusterOutput",
    members = {
        DBCluster = M.DBCluster,
    },
}

M.DBClusterAlreadyExistsFault = {
    type = "structure",
    id = "DBClusterAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBSubnetGroupDoesNotCoverEnoughAZs = {
    type = "structure",
    id = "DBSubnetGroupDoesNotCoverEnoughAZs",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBSubnetGroupNotFoundFault = {
    type = "structure",
    id = "DBSubnetGroupNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DomainNotFoundFault = {
    type = "structure",
    id = "DomainNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GlobalClusterNotFoundFault = {
    type = "structure",
    id = "GlobalClusterNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InsufficientDBInstanceCapacityFault = {
    type = "structure",
    id = "InsufficientDBInstanceCapacityFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InsufficientStorageClusterCapacityFault = {
    type = "structure",
    id = "InsufficientStorageClusterCapacityFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDBSubnetGroupFault = {
    type = "structure",
    id = "InvalidDBSubnetGroupFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDBSubnetGroupStateFault = {
    type = "structure",
    id = "InvalidDBSubnetGroupStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidGlobalClusterStateFault = {
    type = "structure",
    id = "InvalidGlobalClusterStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSubnet = {
    type = "structure",
    id = "InvalidSubnet",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidVPCNetworkStateFault = {
    type = "structure",
    id = "InvalidVPCNetworkStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NetworkTypeNotSupported = {
    type = "structure",
    id = "NetworkTypeNotSupported",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StorageTypeNotSupportedFault = {
    type = "structure",
    id = "StorageTypeNotSupportedFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.VpcEncryptionControlViolationException = {
    type = "structure",
    id = "VpcEncryptionControlViolationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateDBClusterEndpointInput = {
    type = "structure",
    id = "CreateDBClusterEndpointInput",
    members = {
        DBClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DBClusterEndpointIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StaticMembers = {
            type = "list",
            member = { type = "string" },
        },
        ExcludedMembers = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateDBClusterEndpointOutput = {
    type = "structure",
    id = "CreateDBClusterEndpointOutput",
    members = {
        DBClusterEndpointIdentifier = {
            type = "string",
        },
        DBClusterIdentifier = {
            type = "string",
        },
        DBClusterEndpointResourceIdentifier = {
            type = "string",
        },
        Endpoint = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        EndpointType = {
            type = "string",
        },
        CustomEndpointType = {
            type = "string",
        },
        StaticMembers = {
            type = "list",
            member = { type = "string" },
        },
        ExcludedMembers = {
            type = "list",
            member = { type = "string" },
        },
        DBClusterEndpointArn = {
            type = "string",
        },
    },
}

M.DBClusterEndpointAlreadyExistsFault = {
    type = "structure",
    id = "DBClusterEndpointAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBClusterEndpointQuotaExceededFault = {
    type = "structure",
    id = "DBClusterEndpointQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateDBClusterParameterGroupInput = {
    type = "structure",
    id = "CreateDBClusterParameterGroupInput",
    members = {
        DBClusterParameterGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DBParameterGroupFamily = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
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

M.CreateDBClusterParameterGroupOutput = {
    type = "structure",
    id = "CreateDBClusterParameterGroupOutput",
    members = {
        DBClusterParameterGroup = M.DBClusterParameterGroup,
    },
}

M.CreateDBClusterSnapshotInput = {
    type = "structure",
    id = "CreateDBClusterSnapshotInput",
    members = {
        DBClusterSnapshotIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DBClusterIdentifier = {
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

M.CreateDBClusterSnapshotOutput = {
    type = "structure",
    id = "CreateDBClusterSnapshotOutput",
    members = {
        DBClusterSnapshot = M.DBClusterSnapshot,
    },
}

M.AuthorizationNotFoundFault = {
    type = "structure",
    id = "AuthorizationNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BackupPolicyNotFoundFault = {
    type = "structure",
    id = "BackupPolicyNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CertificateNotFoundFault = {
    type = "structure",
    id = "CertificateNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateDBInstanceInput = {
    type = "structure",
    id = "CreateDBInstanceInput",
    members = {
        DBName = {
            type = "string",
        },
        DBInstanceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllocatedStorage = {
            type = "integer",
        },
        DBInstanceClass = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Engine = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MasterUsername = {
            type = "string",
        },
        MasterUserPassword = {
            type = "string",
        },
        DBSecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        VpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        AvailabilityZone = {
            type = "string",
        },
        DBSubnetGroupName = {
            type = "string",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        DBParameterGroupName = {
            type = "string",
        },
        BackupRetentionPeriod = {
            type = "integer",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        MultiAZ = {
            type = "boolean",
        },
        EngineVersion = {
            type = "string",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        LicenseModel = {
            type = "string",
        },
        Iops = {
            type = "integer",
        },
        StorageThroughput = {
            type = "integer",
        },
        OptionGroupName = {
            type = "string",
        },
        CharacterSetName = {
            type = "string",
        },
        NcharCharacterSetName = {
            type = "string",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        DBClusterIdentifier = {
            type = "string",
        },
        StorageType = {
            type = "string",
        },
        TdeCredentialArn = {
            type = "string",
        },
        TdeCredentialPassword = {
            type = "string",
        },
        StorageEncrypted = {
            type = "boolean",
        },
        KmsKeyId = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
        DomainFqdn = {
            type = "string",
        },
        DomainOu = {
            type = "string",
        },
        DomainAuthSecretArn = {
            type = "string",
        },
        DomainDnsIps = {
            type = "list",
            member = { type = "string" },
        },
        CopyTagsToSnapshot = {
            type = "boolean",
        },
        MonitoringInterval = {
            type = "integer",
        },
        MonitoringRoleArn = {
            type = "string",
        },
        DomainIAMRoleName = {
            type = "string",
        },
        PromotionTier = {
            type = "integer",
        },
        Timezone = {
            type = "string",
        },
        EnableIAMDatabaseAuthentication = {
            type = "boolean",
        },
        DatabaseInsightsMode = {
            type = "string",
        },
        EnablePerformanceInsights = {
            type = "boolean",
        },
        PerformanceInsightsKMSKeyId = {
            type = "string",
        },
        PerformanceInsightsRetentionPeriod = {
            type = "integer",
        },
        EnableCloudwatchLogsExports = {
            type = "list",
            member = { type = "string" },
        },
        ProcessorFeatures = {
            type = "list",
            member = M.ProcessorFeature,
        },
        DeletionProtection = {
            type = "boolean",
        },
        MaxAllocatedStorage = {
            type = "integer",
        },
        EnableCustomerOwnedIp = {
            type = "boolean",
        },
        NetworkType = {
            type = "string",
        },
        BackupTarget = {
            type = "string",
        },
        CustomIamInstanceProfile = {
            type = "string",
        },
        DBSystemId = {
            type = "string",
        },
        CACertificateIdentifier = {
            type = "string",
        },
        ManageMasterUserPassword = {
            type = "boolean",
        },
        MasterUserSecretKmsKeyId = {
            type = "string",
        },
        MultiTenant = {
            type = "boolean",
        },
        DedicatedLogVolume = {
            type = "boolean",
        },
        EngineLifecycleSupport = {
            type = "string",
        },
        AdditionalStorageVolumes = {
            type = "list",
            member = M.AdditionalStorageVolume,
        },
        TagSpecifications = {
            type = "list",
            member = M.TagSpecification,
        },
        MasterUserAuthenticationType = {
            type = "string",
        },
    },
}

M.DBInstanceRole = {
    type = "structure",
    id = "DBInstanceRole",
    members = {
        RoleArn = {
            type = "string",
        },
        FeatureName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.AutomationMode = {
    FULL = "full",
    ALL_PAUSED = "all-paused",
}

M.DBInstanceAutomatedBackupsReplication = {
    type = "structure",
    id = "DBInstanceAutomatedBackupsReplication",
    members = {
        DBInstanceAutomatedBackupsArn = {
            type = "string",
        },
    },
}

M.DBParameterGroupStatus = {
    type = "structure",
    id = "DBParameterGroupStatus",
    members = {
        DBParameterGroupName = {
            type = "string",
        },
        ParameterApplyStatus = {
            type = "string",
        },
    },
}

M.AvailabilityZone = {
    type = "structure",
    id = "AvailabilityZone",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.Outpost = {
    type = "structure",
    id = "Outpost",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.Subnet = {
    type = "structure",
    id = "Subnet",
    members = {
        SubnetIdentifier = {
            type = "string",
        },
        SubnetAvailabilityZone = M.AvailabilityZone,
        SubnetOutpost = M.Outpost,
        SubnetStatus = {
            type = "string",
        },
    },
}

M.DBSubnetGroup = {
    type = "structure",
    id = "DBSubnetGroup",
    members = {
        DBSubnetGroupName = {
            type = "string",
        },
        DBSubnetGroupDescription = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        SubnetGroupStatus = {
            type = "string",
        },
        Subnets = {
            type = "list",
            member = M.Subnet,
        },
        DBSubnetGroupArn = {
            type = "string",
        },
        SupportedNetworkTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Endpoint = {
    type = "structure",
    id = "Endpoint",
    members = {
        Address = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        HostedZoneId = {
            type = "string",
        },
    },
}

M.OptionGroupMembership = {
    type = "structure",
    id = "OptionGroupMembership",
    members = {
        OptionGroupName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.PendingModifiedValues = {
    type = "structure",
    id = "PendingModifiedValues",
    members = {
        DBInstanceClass = {
            type = "string",
        },
        AllocatedStorage = {
            type = "integer",
        },
        MasterUserPassword = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        BackupRetentionPeriod = {
            type = "integer",
        },
        MultiAZ = {
            type = "boolean",
        },
        EngineVersion = {
            type = "string",
        },
        LicenseModel = {
            type = "string",
        },
        Iops = {
            type = "integer",
        },
        StorageThroughput = {
            type = "integer",
        },
        DBInstanceIdentifier = {
            type = "string",
        },
        StorageType = {
            type = "string",
        },
        CACertificateIdentifier = {
            type = "string",
        },
        DBSubnetGroupName = {
            type = "string",
        },
        PendingCloudwatchLogsExports = M.PendingCloudwatchLogsExports,
        ProcessorFeatures = {
            type = "list",
            member = M.ProcessorFeature,
        },
        AutomationMode = {
            type = "string",
        },
        ResumeFullAutomationModeTime = {
            type = "timestamp",
        },
        MultiTenant = {
            type = "boolean",
        },
        IAMDatabaseAuthenticationEnabled = {
            type = "boolean",
        },
        DedicatedLogVolume = {
            type = "boolean",
        },
        Engine = {
            type = "string",
        },
        AdditionalStorageVolumes = {
            type = "list",
            member = M.AdditionalStorageVolume,
        },
    },
}

M.DBInstanceStatusInfo = {
    type = "structure",
    id = "DBInstanceStatusInfo",
    members = {
        StatusType = {
            type = "string",
        },
        Normal = {
            type = "boolean",
        },
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.DBInstance = {
    type = "structure",
    id = "DBInstance",
    members = {
        DBInstanceIdentifier = {
            type = "string",
        },
        DBInstanceClass = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        DBInstanceStatus = {
            type = "string",
        },
        MasterUsername = {
            type = "string",
        },
        DBName = {
            type = "string",
        },
        Endpoint = M.Endpoint,
        AllocatedStorage = {
            type = "integer",
        },
        InstanceCreateTime = {
            type = "timestamp",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        BackupRetentionPeriod = {
            type = "integer",
        },
        DBSecurityGroups = {
            type = "list",
            member = M.DBSecurityGroupMembership,
        },
        VpcSecurityGroups = {
            type = "list",
            member = M.VpcSecurityGroupMembership,
        },
        DBParameterGroups = {
            type = "list",
            member = M.DBParameterGroupStatus,
        },
        AvailabilityZone = {
            type = "string",
        },
        DBSubnetGroup = M.DBSubnetGroup,
        PreferredMaintenanceWindow = {
            type = "string",
        },
        UpgradeRolloutOrder = {
            type = "string",
        },
        PendingModifiedValues = M.PendingModifiedValues,
        LatestRestorableTime = {
            type = "timestamp",
        },
        MultiAZ = {
            type = "boolean",
        },
        EngineVersion = {
            type = "string",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        ReadReplicaSourceDBInstanceIdentifier = {
            type = "string",
        },
        ReadReplicaDBInstanceIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        ReadReplicaDBClusterIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        ReplicaMode = {
            type = "string",
        },
        LicenseModel = {
            type = "string",
        },
        Iops = {
            type = "integer",
        },
        StorageThroughput = {
            type = "integer",
        },
        OptionGroupMemberships = {
            type = "list",
            member = M.OptionGroupMembership,
        },
        CharacterSetName = {
            type = "string",
        },
        NcharCharacterSetName = {
            type = "string",
        },
        SecondaryAvailabilityZone = {
            type = "string",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        StatusInfos = {
            type = "list",
            member = M.DBInstanceStatusInfo,
        },
        StorageType = {
            type = "string",
        },
        StorageEncryptionType = {
            type = "string",
        },
        TdeCredentialArn = {
            type = "string",
        },
        DbInstancePort = {
            type = "integer",
        },
        DBClusterIdentifier = {
            type = "string",
        },
        StorageEncrypted = {
            type = "boolean",
        },
        KmsKeyId = {
            type = "string",
        },
        DbiResourceId = {
            type = "string",
        },
        CACertificateIdentifier = {
            type = "string",
        },
        DomainMemberships = {
            type = "list",
            member = M.DomainMembership,
        },
        CopyTagsToSnapshot = {
            type = "boolean",
        },
        MonitoringInterval = {
            type = "integer",
        },
        EnhancedMonitoringResourceArn = {
            type = "string",
        },
        MonitoringRoleArn = {
            type = "string",
        },
        PromotionTier = {
            type = "integer",
        },
        DBInstanceArn = {
            type = "string",
        },
        Timezone = {
            type = "string",
        },
        IAMDatabaseAuthenticationEnabled = {
            type = "boolean",
        },
        DatabaseInsightsMode = {
            type = "string",
        },
        PerformanceInsightsEnabled = {
            type = "boolean",
        },
        PerformanceInsightsKMSKeyId = {
            type = "string",
        },
        PerformanceInsightsRetentionPeriod = {
            type = "integer",
        },
        EnabledCloudwatchLogsExports = {
            type = "list",
            member = { type = "string" },
        },
        ProcessorFeatures = {
            type = "list",
            member = M.ProcessorFeature,
        },
        DeletionProtection = {
            type = "boolean",
        },
        AssociatedRoles = {
            type = "list",
            member = M.DBInstanceRole,
        },
        ListenerEndpoint = M.Endpoint,
        MaxAllocatedStorage = {
            type = "integer",
        },
        TagList = {
            type = "list",
            member = M.Tag,
        },
        AutomationMode = {
            type = "string",
        },
        ResumeFullAutomationModeTime = {
            type = "timestamp",
        },
        CustomerOwnedIpEnabled = {
            type = "boolean",
        },
        NetworkType = {
            type = "string",
        },
        ActivityStreamStatus = {
            type = "string",
        },
        ActivityStreamKmsKeyId = {
            type = "string",
        },
        ActivityStreamKinesisStreamName = {
            type = "string",
        },
        ActivityStreamMode = {
            type = "string",
        },
        ActivityStreamEngineNativeAuditFieldsIncluded = {
            type = "boolean",
        },
        AwsBackupRecoveryPointArn = {
            type = "string",
        },
        DBInstanceAutomatedBackupsReplications = {
            type = "list",
            member = M.DBInstanceAutomatedBackupsReplication,
        },
        BackupTarget = {
            type = "string",
        },
        AutomaticRestartTime = {
            type = "timestamp",
        },
        CustomIamInstanceProfile = {
            type = "string",
        },
        ActivityStreamPolicyStatus = {
            type = "string",
        },
        CertificateDetails = M.CertificateDetails,
        DBSystemId = {
            type = "string",
        },
        MasterUserSecret = M.MasterUserSecret,
        ReadReplicaSourceDBClusterIdentifier = {
            type = "string",
        },
        PercentProgress = {
            type = "string",
        },
        MultiTenant = {
            type = "boolean",
        },
        DedicatedLogVolume = {
            type = "boolean",
        },
        IsStorageConfigUpgradeAvailable = {
            type = "boolean",
        },
        EngineLifecycleSupport = {
            type = "string",
        },
        AdditionalStorageVolumes = {
            type = "list",
            member = M.AdditionalStorageVolumeOutput,
        },
        StorageVolumeStatus = {
            type = "string",
        },
    },
}

M.CreateDBInstanceOutput = {
    type = "structure",
    id = "CreateDBInstanceOutput",
    members = {
        DBInstance = M.DBInstance,
    },
}

M.DBInstanceAlreadyExistsFault = {
    type = "structure",
    id = "DBInstanceAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ProvisionedIopsNotAvailableInAZFault = {
    type = "structure",
    id = "ProvisionedIopsNotAvailableInAZFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TenantDatabaseQuotaExceededFault = {
    type = "structure",
    id = "TenantDatabaseQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateDBInstanceReadReplicaInput = {
    type = "structure",
    id = "CreateDBInstanceReadReplicaInput",
    members = {
        DBInstanceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceDBInstanceIdentifier = {
            type = "string",
        },
        DBInstanceClass = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        MultiAZ = {
            type = "boolean",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        Iops = {
            type = "integer",
        },
        StorageThroughput = {
            type = "integer",
        },
        OptionGroupName = {
            type = "string",
        },
        DBParameterGroupName = {
            type = "string",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        DBSubnetGroupName = {
            type = "string",
        },
        VpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        StorageType = {
            type = "string",
        },
        CopyTagsToSnapshot = {
            type = "boolean",
        },
        MonitoringInterval = {
            type = "integer",
        },
        MonitoringRoleArn = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        PreSignedUrl = {
            type = "string",
        },
        EnableIAMDatabaseAuthentication = {
            type = "boolean",
        },
        DatabaseInsightsMode = {
            type = "string",
        },
        EnablePerformanceInsights = {
            type = "boolean",
        },
        PerformanceInsightsKMSKeyId = {
            type = "string",
        },
        PerformanceInsightsRetentionPeriod = {
            type = "integer",
        },
        EnableCloudwatchLogsExports = {
            type = "list",
            member = { type = "string" },
        },
        ProcessorFeatures = {
            type = "list",
            member = M.ProcessorFeature,
        },
        UseDefaultProcessorFeatures = {
            type = "boolean",
        },
        DeletionProtection = {
            type = "boolean",
        },
        Domain = {
            type = "string",
        },
        DomainIAMRoleName = {
            type = "string",
        },
        DomainFqdn = {
            type = "string",
        },
        DomainOu = {
            type = "string",
        },
        DomainAuthSecretArn = {
            type = "string",
        },
        DomainDnsIps = {
            type = "list",
            member = { type = "string" },
        },
        ReplicaMode = {
            type = "string",
        },
        EnableCustomerOwnedIp = {
            type = "boolean",
        },
        NetworkType = {
            type = "string",
        },
        MaxAllocatedStorage = {
            type = "integer",
        },
        BackupTarget = {
            type = "string",
        },
        CustomIamInstanceProfile = {
            type = "string",
        },
        AllocatedStorage = {
            type = "integer",
        },
        SourceDBClusterIdentifier = {
            type = "string",
        },
        DedicatedLogVolume = {
            type = "boolean",
        },
        UpgradeStorageConfig = {
            type = "boolean",
        },
        CACertificateIdentifier = {
            type = "string",
        },
        AdditionalStorageVolumes = {
            type = "list",
            member = M.AdditionalStorageVolume,
        },
        TagSpecifications = {
            type = "list",
            member = M.TagSpecification,
        },
    },
}

M.CreateDBInstanceReadReplicaOutput = {
    type = "structure",
    id = "CreateDBInstanceReadReplicaOutput",
    members = {
        DBInstance = M.DBInstance,
    },
}

M.DBSubnetGroupNotAllowedFault = {
    type = "structure",
    id = "DBSubnetGroupNotAllowedFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateDBParameterGroupInput = {
    type = "structure",
    id = "CreateDBParameterGroupInput",
    members = {
        DBParameterGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DBParameterGroupFamily = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
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

M.CreateDBParameterGroupOutput = {
    type = "structure",
    id = "CreateDBParameterGroupOutput",
    members = {
        DBParameterGroup = M.DBParameterGroup,
    },
}

M.AuthScheme = {
    SECRETS = "SECRETS",
}

M.ClientPasswordAuthType = {
    MYSQL_NATIVE_PASSWORD = "MYSQL_NATIVE_PASSWORD",
    MYSQL_CACHING_SHA2_PASSWORD = "MYSQL_CACHING_SHA2_PASSWORD",
    POSTGRES_SCRAM_SHA_256 = "POSTGRES_SCRAM_SHA_256",
    POSTGRES_MD5 = "POSTGRES_MD5",
    SQL_SERVER_AUTHENTICATION = "SQL_SERVER_AUTHENTICATION",
}

M.IAMAuthMode = {
    DISABLED = "DISABLED",
    REQUIRED = "REQUIRED",
    ENABLED = "ENABLED",
}

M.UserAuthConfig = {
    type = "structure",
    id = "UserAuthConfig",
    members = {
        Description = {
            type = "string",
        },
        UserName = {
            type = "string",
        },
        AuthScheme = {
            type = "string",
        },
        SecretArn = {
            type = "string",
        },
        IAMAuth = {
            type = "string",
        },
        ClientPasswordAuthType = {
            type = "string",
        },
    },
}

M.DefaultAuthScheme = {
    IAM_AUTH = "IAM_AUTH",
    NONE = "NONE",
}

M.EndpointNetworkType = {
    IPV4 = "IPV4",
    IPV6 = "IPV6",
    DUAL = "DUAL",
}

M.EngineFamily = {
    MYSQL = "MYSQL",
    POSTGRESQL = "POSTGRESQL",
    SQLSERVER = "SQLSERVER",
}

M.TargetConnectionNetworkType = {
    IPV4 = "IPV4",
    IPV6 = "IPV6",
}

M.CreateDBProxyInput = {
    type = "structure",
    id = "CreateDBProxyInput",
    members = {
        DBProxyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EngineFamily = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultAuthScheme = {
            type = "string",
        },
        Auth = {
            type = "list",
            member = M.UserAuthConfig,
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcSubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        VpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        RequireTLS = {
            type = "boolean",
        },
        IdleClientTimeout = {
            type = "integer",
        },
        DebugLogging = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        EndpointNetworkType = {
            type = "string",
        },
        TargetConnectionNetworkType = {
            type = "string",
        },
    },
}

M.UserAuthConfigInfo = {
    type = "structure",
    id = "UserAuthConfigInfo",
    members = {
        Description = {
            type = "string",
        },
        UserName = {
            type = "string",
        },
        AuthScheme = {
            type = "string",
        },
        SecretArn = {
            type = "string",
        },
        IAMAuth = {
            type = "string",
        },
        ClientPasswordAuthType = {
            type = "string",
        },
    },
}

M.DBProxyStatus = {
    AVAILABLE = "available",
    MODIFYING = "modifying",
    INCOMPATIBLE_NETWORK = "incompatible-network",
    INSUFFICIENT_RESOURCE_LIMITS = "insufficient-resource-limits",
    CREATING = "creating",
    DELETING = "deleting",
    SUSPENDED = "suspended",
    SUSPENDING = "suspending",
    REACTIVATING = "reactivating",
}

M.DBProxy = {
    type = "structure",
    id = "DBProxy",
    members = {
        DBProxyName = {
            type = "string",
        },
        DBProxyArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        EngineFamily = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        VpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        VpcSubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        DefaultAuthScheme = {
            type = "string",
        },
        Auth = {
            type = "list",
            member = M.UserAuthConfigInfo,
        },
        RoleArn = {
            type = "string",
        },
        Endpoint = {
            type = "string",
        },
        RequireTLS = {
            type = "boolean",
        },
        IdleClientTimeout = {
            type = "integer",
        },
        DebugLogging = {
            type = "boolean",
        },
        CreatedDate = {
            type = "timestamp",
        },
        UpdatedDate = {
            type = "timestamp",
        },
        EndpointNetworkType = {
            type = "string",
        },
        TargetConnectionNetworkType = {
            type = "string",
        },
    },
}

M.CreateDBProxyOutput = {
    type = "structure",
    id = "CreateDBProxyOutput",
    members = {
        DBProxy = M.DBProxy,
    },
}

M.DBProxyAlreadyExistsFault = {
    type = "structure",
    id = "DBProxyAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBProxyQuotaExceededFault = {
    type = "structure",
    id = "DBProxyQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBProxyEndpointTargetRole = {
    READ_WRITE = "READ_WRITE",
    READ_ONLY = "READ_ONLY",
}

M.CreateDBProxyEndpointInput = {
    type = "structure",
    id = "CreateDBProxyEndpointInput",
    members = {
        DBProxyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DBProxyEndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcSubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        VpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        TargetRole = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        EndpointNetworkType = {
            type = "string",
        },
    },
}

M.DBProxyEndpointStatus = {
    AVAILABLE = "available",
    MODIFYING = "modifying",
    INCOMPATIBLE_NETWORK = "incompatible-network",
    INSUFFICIENT_RESOURCE_LIMITS = "insufficient-resource-limits",
    CREATING = "creating",
    DELETING = "deleting",
}

M.DBProxyEndpoint = {
    type = "structure",
    id = "DBProxyEndpoint",
    members = {
        DBProxyEndpointName = {
            type = "string",
        },
        DBProxyEndpointArn = {
            type = "string",
        },
        DBProxyName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        VpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        VpcSubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        Endpoint = {
            type = "string",
        },
        CreatedDate = {
            type = "timestamp",
        },
        TargetRole = {
            type = "string",
        },
        IsDefault = {
            type = "boolean",
        },
        EndpointNetworkType = {
            type = "string",
        },
    },
}

M.CreateDBProxyEndpointOutput = {
    type = "structure",
    id = "CreateDBProxyEndpointOutput",
    members = {
        DBProxyEndpoint = M.DBProxyEndpoint,
    },
}

M.DBProxyEndpointAlreadyExistsFault = {
    type = "structure",
    id = "DBProxyEndpointAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBProxyEndpointQuotaExceededFault = {
    type = "structure",
    id = "DBProxyEndpointQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDBProxyStateFault = {
    type = "structure",
    id = "InvalidDBProxyStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateDBSecurityGroupInput = {
    type = "structure",
    id = "CreateDBSecurityGroupInput",
    members = {
        DBSecurityGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DBSecurityGroupDescription = {
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

M.CreateDBSecurityGroupOutput = {
    type = "structure",
    id = "CreateDBSecurityGroupOutput",
    members = {
        DBSecurityGroup = M.DBSecurityGroup,
    },
}

M.DBSecurityGroupAlreadyExistsFault = {
    type = "structure",
    id = "DBSecurityGroupAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBSecurityGroupNotSupportedFault = {
    type = "structure",
    id = "DBSecurityGroupNotSupportedFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBSecurityGroupQuotaExceededFault = {
    type = "structure",
    id = "DBSecurityGroupQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateDBShardGroupInput = {
    type = "structure",
    id = "CreateDBShardGroupInput",
    members = {
        DBShardGroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DBClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComputeRedundancy = {
            type = "integer",
        },
        MaxACU = {
            type = "double",
            traits = {
                required = true,
            },
        },
        MinACU = {
            type = "double",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateDBShardGroupOutput = {
    type = "structure",
    id = "CreateDBShardGroupOutput",
    members = {
        DBShardGroupResourceId = {
            type = "string",
        },
        DBShardGroupIdentifier = {
            type = "string",
        },
        DBClusterIdentifier = {
            type = "string",
        },
        MaxACU = {
            type = "double",
        },
        MinACU = {
            type = "double",
        },
        ComputeRedundancy = {
            type = "integer",
        },
        Status = {
            type = "string",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        Endpoint = {
            type = "string",
        },
        DBShardGroupArn = {
            type = "string",
        },
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DBShardGroupAlreadyExistsFault = {
    type = "structure",
    id = "DBShardGroupAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaxDBShardGroupLimitReached = {
    type = "structure",
    id = "MaxDBShardGroupLimitReached",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedDBEngineVersionFault = {
    type = "structure",
    id = "UnsupportedDBEngineVersionFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateDBSnapshotInput = {
    type = "structure",
    id = "CreateDBSnapshotInput",
    members = {
        DBSnapshotIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DBInstanceIdentifier = {
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

M.CreateDBSnapshotOutput = {
    type = "structure",
    id = "CreateDBSnapshotOutput",
    members = {
        DBSnapshot = M.DBSnapshot,
    },
}

M.CreateDBSubnetGroupInput = {
    type = "structure",
    id = "CreateDBSubnetGroupInput",
    members = {
        DBSubnetGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DBSubnetGroupDescription = {
            type = "string",
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
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateDBSubnetGroupOutput = {
    type = "structure",
    id = "CreateDBSubnetGroupOutput",
    members = {
        DBSubnetGroup = M.DBSubnetGroup,
    },
}

M.DBSubnetGroupAlreadyExistsFault = {
    type = "structure",
    id = "DBSubnetGroupAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBSubnetGroupQuotaExceededFault = {
    type = "structure",
    id = "DBSubnetGroupQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBSubnetQuotaExceededFault = {
    type = "structure",
    id = "DBSubnetQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateEventSubscriptionInput = {
    type = "structure",
    id = "CreateEventSubscriptionInput",
    members = {
        SubscriptionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnsTopicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceType = {
            type = "string",
        },
        EventCategories = {
            type = "list",
            member = { type = "string" },
        },
        SourceIds = {
            type = "list",
            member = { type = "string" },
        },
        Enabled = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateEventSubscriptionOutput = {
    type = "structure",
    id = "CreateEventSubscriptionOutput",
    members = {
        EventSubscription = M.EventSubscription,
    },
}

M.EventSubscriptionQuotaExceededFault = {
    type = "structure",
    id = "EventSubscriptionQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SNSInvalidTopicFault = {
    type = "structure",
    id = "SNSInvalidTopicFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SNSNoAuthorizationFault = {
    type = "structure",
    id = "SNSNoAuthorizationFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SNSTopicArnNotFoundFault = {
    type = "structure",
    id = "SNSTopicArnNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SubscriptionAlreadyExistFault = {
    type = "structure",
    id = "SubscriptionAlreadyExistFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SubscriptionCategoryNotFoundFault = {
    type = "structure",
    id = "SubscriptionCategoryNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateGlobalClusterInput = {
    type = "structure",
    id = "CreateGlobalClusterInput",
    members = {
        GlobalClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceDBClusterIdentifier = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        EngineLifecycleSupport = {
            type = "string",
        },
        DeletionProtection = {
            type = "boolean",
        },
        DatabaseName = {
            type = "string",
        },
        StorageEncrypted = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.FailoverStatus = {
    PENDING = "pending",
    FAILING_OVER = "failing-over",
    CANCELLING = "cancelling",
}

M.FailoverState = {
    type = "structure",
    id = "FailoverState",
    members = {
        Status = {
            type = "string",
        },
        FromDbClusterArn = {
            type = "string",
        },
        ToDbClusterArn = {
            type = "string",
        },
        IsDataLossAllowed = {
            type = "boolean",
        },
    },
}

M.GlobalClusterMemberSynchronizationStatus = {
    CONNECTED = "connected",
    PENDING_RESYNC = "pending-resync",
}

M.GlobalClusterMember = {
    type = "structure",
    id = "GlobalClusterMember",
    members = {
        DBClusterArn = {
            type = "string",
        },
        Readers = {
            type = "list",
            member = { type = "string" },
        },
        IsWriter = {
            type = "boolean",
        },
        GlobalWriteForwardingStatus = {
            type = "string",
        },
        SynchronizationStatus = {
            type = "string",
        },
    },
}

M.GlobalCluster = {
    type = "structure",
    id = "GlobalCluster",
    members = {
        GlobalClusterIdentifier = {
            type = "string",
        },
        GlobalClusterResourceId = {
            type = "string",
        },
        GlobalClusterArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        EngineLifecycleSupport = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
        },
        StorageEncrypted = {
            type = "boolean",
        },
        StorageEncryptionType = {
            type = "string",
        },
        DeletionProtection = {
            type = "boolean",
        },
        GlobalClusterMembers = {
            type = "list",
            member = M.GlobalClusterMember,
        },
        Endpoint = {
            type = "string",
        },
        FailoverState = M.FailoverState,
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateGlobalClusterOutput = {
    type = "structure",
    id = "CreateGlobalClusterOutput",
    members = {
        GlobalCluster = M.GlobalCluster,
    },
}

M.GlobalClusterAlreadyExistsFault = {
    type = "structure",
    id = "GlobalClusterAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GlobalClusterQuotaExceededFault = {
    type = "structure",
    id = "GlobalClusterQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDBShardGroupStateFault = {
    type = "structure",
    id = "InvalidDBShardGroupStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateIntegrationInput = {
    type = "structure",
    id = "CreateIntegrationInput",
    members = {
        SourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IntegrationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KMSKeyId = {
            type = "string",
        },
        AdditionalEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        DataFilter = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.IntegrationError = {
    type = "structure",
    id = "IntegrationError",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.IntegrationStatus = {
    CREATING = "creating",
    ACTIVE = "active",
    MODIFYING = "modifying",
    FAILED = "failed",
    DELETING = "deleting",
    SYNCING = "syncing",
    NEEDS_ATTENTION = "needs_attention",
}

M.CreateIntegrationOutput = {
    type = "structure",
    id = "CreateIntegrationOutput",
    members = {
        SourceArn = {
            type = "string",
        },
        TargetArn = {
            type = "string",
        },
        IntegrationName = {
            type = "string",
        },
        IntegrationArn = {
            type = "string",
        },
        KMSKeyId = {
            type = "string",
        },
        AdditionalEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Status = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        DataFilter = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
        },
        Errors = {
            type = "list",
            member = M.IntegrationError,
        },
    },
}

M.IntegrationAlreadyExistsFault = {
    type = "structure",
    id = "IntegrationAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IntegrationConflictOperationFault = {
    type = "structure",
    id = "IntegrationConflictOperationFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IntegrationQuotaExceededFault = {
    type = "structure",
    id = "IntegrationQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateOptionGroupInput = {
    type = "structure",
    id = "CreateOptionGroupInput",
    members = {
        OptionGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EngineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MajorEngineVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OptionGroupDescription = {
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

M.CreateOptionGroupOutput = {
    type = "structure",
    id = "CreateOptionGroupOutput",
    members = {
        OptionGroup = M.OptionGroup,
    },
}

M.CreateTenantDatabaseInput = {
    type = "structure",
    id = "CreateTenantDatabaseInput",
    members = {
        DBInstanceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TenantDBName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MasterUsername = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MasterUserPassword = {
            type = "string",
        },
        CharacterSetName = {
            type = "string",
        },
        NcharCharacterSetName = {
            type = "string",
        },
        ManageMasterUserPassword = {
            type = "boolean",
        },
        MasterUserSecretKmsKeyId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.TenantDatabasePendingModifiedValues = {
    type = "structure",
    id = "TenantDatabasePendingModifiedValues",
    members = {
        MasterUserPassword = {
            type = "string",
        },
        TenantDBName = {
            type = "string",
        },
    },
}

M.TenantDatabase = {
    type = "structure",
    id = "TenantDatabase",
    members = {
        TenantDatabaseCreateTime = {
            type = "timestamp",
        },
        DBInstanceIdentifier = {
            type = "string",
        },
        TenantDBName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        MasterUsername = {
            type = "string",
        },
        DbiResourceId = {
            type = "string",
        },
        TenantDatabaseResourceId = {
            type = "string",
        },
        TenantDatabaseARN = {
            type = "string",
        },
        CharacterSetName = {
            type = "string",
        },
        NcharCharacterSetName = {
            type = "string",
        },
        DeletionProtection = {
            type = "boolean",
        },
        PendingModifiedValues = M.TenantDatabasePendingModifiedValues,
        MasterUserSecret = M.MasterUserSecret,
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateTenantDatabaseOutput = {
    type = "structure",
    id = "CreateTenantDatabaseOutput",
    members = {
        TenantDatabase = M.TenantDatabase,
    },
}

M.TenantDatabaseAlreadyExistsFault = {
    type = "structure",
    id = "TenantDatabaseAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteBlueGreenDeploymentInput = {
    type = "structure",
    id = "DeleteBlueGreenDeploymentInput",
    members = {
        BlueGreenDeploymentIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeleteTarget = {
            type = "boolean",
        },
    },
}

M.DeleteBlueGreenDeploymentOutput = {
    type = "structure",
    id = "DeleteBlueGreenDeploymentOutput",
    members = {
        BlueGreenDeployment = M.BlueGreenDeployment,
    },
}

M.InvalidBlueGreenDeploymentStateFault = {
    type = "structure",
    id = "InvalidBlueGreenDeploymentStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteCustomDBEngineVersionInput = {
    type = "structure",
    id = "DeleteCustomDBEngineVersionInput",
    members = {
        Engine = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EngineVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCustomDBEngineVersionOutput = {
    type = "structure",
    id = "DeleteCustomDBEngineVersionOutput",
    members = {
        Engine = {
            type = "string",
        },
        MajorEngineVersion = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        DatabaseInstallationFilesS3BucketName = {
            type = "string",
        },
        DatabaseInstallationFilesS3Prefix = {
            type = "string",
        },
        DatabaseInstallationFiles = {
            type = "list",
            member = { type = "string" },
        },
        CustomDBEngineVersionManifest = {
            type = "string",
        },
        DBParameterGroupFamily = {
            type = "string",
        },
        DBEngineDescription = {
            type = "string",
        },
        DBEngineVersionArn = {
            type = "string",
        },
        DBEngineVersionDescription = {
            type = "string",
        },
        DefaultCharacterSet = M.CharacterSet,
        FailureReason = {
            type = "string",
        },
        Image = M.CustomDBEngineVersionAMI,
        DBEngineMediaType = {
            type = "string",
        },
        KMSKeyId = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
        },
        SupportedCharacterSets = {
            type = "list",
            member = M.CharacterSet,
        },
        SupportedNcharCharacterSets = {
            type = "list",
            member = M.CharacterSet,
        },
        ValidUpgradeTarget = {
            type = "list",
            member = M.UpgradeTarget,
        },
        SupportedTimezones = {
            type = "list",
            member = M.Timezone,
        },
        ExportableLogTypes = {
            type = "list",
            member = { type = "string" },
        },
        SupportsLogExportsToCloudwatchLogs = {
            type = "boolean",
        },
        SupportsReadReplica = {
            type = "boolean",
        },
        SupportedEngineModes = {
            type = "list",
            member = { type = "string" },
        },
        SupportedFeatureNames = {
            type = "list",
            member = { type = "string" },
        },
        Status = {
            type = "string",
        },
        SupportsParallelQuery = {
            type = "boolean",
        },
        SupportsGlobalDatabases = {
            type = "boolean",
        },
        TagList = {
            type = "list",
            member = M.Tag,
        },
        SupportsBabelfish = {
            type = "boolean",
        },
        SupportsLimitlessDatabase = {
            type = "boolean",
        },
        SupportsCertificateRotationWithoutRestart = {
            type = "boolean",
        },
        SupportedCACertificateIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        SupportsLocalWriteForwarding = {
            type = "boolean",
        },
        SupportsIntegrations = {
            type = "boolean",
        },
        ServerlessV2FeaturesSupport = M.ServerlessV2FeaturesSupport,
    },
}

M.DBClusterAutomatedBackupQuotaExceededFault = {
    type = "structure",
    id = "DBClusterAutomatedBackupQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteDBClusterInput = {
    type = "structure",
    id = "DeleteDBClusterInput",
    members = {
        DBClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SkipFinalSnapshot = {
            type = "boolean",
        },
        FinalDBSnapshotIdentifier = {
            type = "string",
        },
        DeleteAutomatedBackups = {
            type = "boolean",
        },
    },
}

M.DeleteDBClusterOutput = {
    type = "structure",
    id = "DeleteDBClusterOutput",
    members = {
        DBCluster = M.DBCluster,
    },
}

M.DBClusterAutomatedBackupNotFoundFault = {
    type = "structure",
    id = "DBClusterAutomatedBackupNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteDBClusterAutomatedBackupInput = {
    type = "structure",
    id = "DeleteDBClusterAutomatedBackupInput",
    members = {
        DbClusterResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RestoreWindow = {
    type = "structure",
    id = "RestoreWindow",
    members = {
        EarliestTime = {
            type = "timestamp",
        },
        LatestTime = {
            type = "timestamp",
        },
    },
}

M.DBClusterAutomatedBackup = {
    type = "structure",
    id = "DBClusterAutomatedBackup",
    members = {
        Engine = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        DBClusterAutomatedBackupsArn = {
            type = "string",
        },
        DBClusterIdentifier = {
            type = "string",
        },
        RestoreWindow = M.RestoreWindow,
        MasterUsername = {
            type = "string",
        },
        DbClusterResourceId = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        LicenseModel = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        IAMDatabaseAuthenticationEnabled = {
            type = "boolean",
        },
        ClusterCreateTime = {
            type = "timestamp",
        },
        StorageEncrypted = {
            type = "boolean",
        },
        StorageEncryptionType = {
            type = "string",
        },
        AllocatedStorage = {
            type = "integer",
        },
        EngineVersion = {
            type = "string",
        },
        DBClusterArn = {
            type = "string",
        },
        BackupRetentionPeriod = {
            type = "integer",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        EngineMode = {
            type = "string",
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        Port = {
            type = "integer",
        },
        KmsKeyId = {
            type = "string",
        },
        StorageType = {
            type = "string",
        },
        Iops = {
            type = "integer",
        },
        StorageThroughput = {
            type = "integer",
        },
        AwsBackupRecoveryPointArn = {
            type = "string",
        },
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DeleteDBClusterAutomatedBackupOutput = {
    type = "structure",
    id = "DeleteDBClusterAutomatedBackupOutput",
    members = {
        DBClusterAutomatedBackup = M.DBClusterAutomatedBackup,
    },
}

M.InvalidDBClusterAutomatedBackupStateFault = {
    type = "structure",
    id = "InvalidDBClusterAutomatedBackupStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBClusterEndpointNotFoundFault = {
    type = "structure",
    id = "DBClusterEndpointNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteDBClusterEndpointInput = {
    type = "structure",
    id = "DeleteDBClusterEndpointInput",
    members = {
        DBClusterEndpointIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDBClusterEndpointOutput = {
    type = "structure",
    id = "DeleteDBClusterEndpointOutput",
    members = {
        DBClusterEndpointIdentifier = {
            type = "string",
        },
        DBClusterIdentifier = {
            type = "string",
        },
        DBClusterEndpointResourceIdentifier = {
            type = "string",
        },
        Endpoint = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        EndpointType = {
            type = "string",
        },
        CustomEndpointType = {
            type = "string",
        },
        StaticMembers = {
            type = "list",
            member = { type = "string" },
        },
        ExcludedMembers = {
            type = "list",
            member = { type = "string" },
        },
        DBClusterEndpointArn = {
            type = "string",
        },
    },
}

M.DeleteDBClusterParameterGroupInput = {
    type = "structure",
    id = "DeleteDBClusterParameterGroupInput",
    members = {
        DBClusterParameterGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDBClusterParameterGroupOutput = {
    type = "structure",
    id = "DeleteDBClusterParameterGroupOutput",
}

M.InvalidDBParameterGroupStateFault = {
    type = "structure",
    id = "InvalidDBParameterGroupStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteDBClusterSnapshotInput = {
    type = "structure",
    id = "DeleteDBClusterSnapshotInput",
    members = {
        DBClusterSnapshotIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDBClusterSnapshotOutput = {
    type = "structure",
    id = "DeleteDBClusterSnapshotOutput",
    members = {
        DBClusterSnapshot = M.DBClusterSnapshot,
    },
}

M.DBInstanceAutomatedBackupQuotaExceededFault = {
    type = "structure",
    id = "DBInstanceAutomatedBackupQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteDBInstanceInput = {
    type = "structure",
    id = "DeleteDBInstanceInput",
    members = {
        DBInstanceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SkipFinalSnapshot = {
            type = "boolean",
        },
        FinalDBSnapshotIdentifier = {
            type = "string",
        },
        DeleteAutomatedBackups = {
            type = "boolean",
        },
    },
}

M.DeleteDBInstanceOutput = {
    type = "structure",
    id = "DeleteDBInstanceOutput",
    members = {
        DBInstance = M.DBInstance,
    },
}

M.DBInstanceAutomatedBackupNotFoundFault = {
    type = "structure",
    id = "DBInstanceAutomatedBackupNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteDBInstanceAutomatedBackupInput = {
    type = "structure",
    id = "DeleteDBInstanceAutomatedBackupInput",
    members = {
        DbiResourceId = {
            type = "string",
        },
        DBInstanceAutomatedBackupsArn = {
            type = "string",
        },
    },
}

M.DBInstanceAutomatedBackup = {
    type = "structure",
    id = "DBInstanceAutomatedBackup",
    members = {
        DBInstanceArn = {
            type = "string",
        },
        DbiResourceId = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        DBInstanceIdentifier = {
            type = "string",
        },
        RestoreWindow = M.RestoreWindow,
        AllocatedStorage = {
            type = "integer",
        },
        Status = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        AvailabilityZone = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        InstanceCreateTime = {
            type = "timestamp",
        },
        MasterUsername = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        LicenseModel = {
            type = "string",
        },
        Iops = {
            type = "integer",
        },
        StorageThroughput = {
            type = "integer",
        },
        OptionGroupName = {
            type = "string",
        },
        TdeCredentialArn = {
            type = "string",
        },
        Encrypted = {
            type = "boolean",
        },
        StorageEncryptionType = {
            type = "string",
        },
        StorageType = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        Timezone = {
            type = "string",
        },
        IAMDatabaseAuthenticationEnabled = {
            type = "boolean",
        },
        BackupRetentionPeriod = {
            type = "integer",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        DBInstanceAutomatedBackupsArn = {
            type = "string",
        },
        DBInstanceAutomatedBackupsReplications = {
            type = "list",
            member = M.DBInstanceAutomatedBackupsReplication,
        },
        BackupTarget = {
            type = "string",
        },
        MultiTenant = {
            type = "boolean",
        },
        AwsBackupRecoveryPointArn = {
            type = "string",
        },
        TagList = {
            type = "list",
            member = M.Tag,
        },
        DedicatedLogVolume = {
            type = "boolean",
        },
        AdditionalStorageVolumes = {
            type = "list",
            member = M.AdditionalStorageVolume,
        },
    },
}

M.DeleteDBInstanceAutomatedBackupOutput = {
    type = "structure",
    id = "DeleteDBInstanceAutomatedBackupOutput",
    members = {
        DBInstanceAutomatedBackup = M.DBInstanceAutomatedBackup,
    },
}

M.InvalidDBInstanceAutomatedBackupStateFault = {
    type = "structure",
    id = "InvalidDBInstanceAutomatedBackupStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteDBParameterGroupInput = {
    type = "structure",
    id = "DeleteDBParameterGroupInput",
    members = {
        DBParameterGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDBParameterGroupOutput = {
    type = "structure",
    id = "DeleteDBParameterGroupOutput",
}

M.DeleteDBProxyInput = {
    type = "structure",
    id = "DeleteDBProxyInput",
    members = {
        DBProxyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDBProxyOutput = {
    type = "structure",
    id = "DeleteDBProxyOutput",
    members = {
        DBProxy = M.DBProxy,
    },
}

M.DeleteDBProxyEndpointInput = {
    type = "structure",
    id = "DeleteDBProxyEndpointInput",
    members = {
        DBProxyEndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDBProxyEndpointOutput = {
    type = "structure",
    id = "DeleteDBProxyEndpointOutput",
    members = {
        DBProxyEndpoint = M.DBProxyEndpoint,
    },
}

M.InvalidDBProxyEndpointStateFault = {
    type = "structure",
    id = "InvalidDBProxyEndpointStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteDBSecurityGroupInput = {
    type = "structure",
    id = "DeleteDBSecurityGroupInput",
    members = {
        DBSecurityGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDBSecurityGroupOutput = {
    type = "structure",
    id = "DeleteDBSecurityGroupOutput",
}

M.DeleteDBShardGroupInput = {
    type = "structure",
    id = "DeleteDBShardGroupInput",
    members = {
        DBShardGroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDBShardGroupOutput = {
    type = "structure",
    id = "DeleteDBShardGroupOutput",
    members = {
        DBShardGroupResourceId = {
            type = "string",
        },
        DBShardGroupIdentifier = {
            type = "string",
        },
        DBClusterIdentifier = {
            type = "string",
        },
        MaxACU = {
            type = "double",
        },
        MinACU = {
            type = "double",
        },
        ComputeRedundancy = {
            type = "integer",
        },
        Status = {
            type = "string",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        Endpoint = {
            type = "string",
        },
        DBShardGroupArn = {
            type = "string",
        },
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DeleteDBSnapshotInput = {
    type = "structure",
    id = "DeleteDBSnapshotInput",
    members = {
        DBSnapshotIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDBSnapshotOutput = {
    type = "structure",
    id = "DeleteDBSnapshotOutput",
    members = {
        DBSnapshot = M.DBSnapshot,
    },
}

M.DeleteDBSubnetGroupInput = {
    type = "structure",
    id = "DeleteDBSubnetGroupInput",
    members = {
        DBSubnetGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDBSubnetGroupOutput = {
    type = "structure",
    id = "DeleteDBSubnetGroupOutput",
}

M.InvalidDBSubnetStateFault = {
    type = "structure",
    id = "InvalidDBSubnetStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteEventSubscriptionInput = {
    type = "structure",
    id = "DeleteEventSubscriptionInput",
    members = {
        SubscriptionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEventSubscriptionOutput = {
    type = "structure",
    id = "DeleteEventSubscriptionOutput",
    members = {
        EventSubscription = M.EventSubscription,
    },
}

M.InvalidEventSubscriptionStateFault = {
    type = "structure",
    id = "InvalidEventSubscriptionStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteGlobalClusterInput = {
    type = "structure",
    id = "DeleteGlobalClusterInput",
    members = {
        GlobalClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteGlobalClusterOutput = {
    type = "structure",
    id = "DeleteGlobalClusterOutput",
    members = {
        GlobalCluster = M.GlobalCluster,
    },
}

M.DeleteIntegrationInput = {
    type = "structure",
    id = "DeleteIntegrationInput",
    members = {
        IntegrationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIntegrationOutput = {
    type = "structure",
    id = "DeleteIntegrationOutput",
    members = {
        SourceArn = {
            type = "string",
        },
        TargetArn = {
            type = "string",
        },
        IntegrationName = {
            type = "string",
        },
        IntegrationArn = {
            type = "string",
        },
        KMSKeyId = {
            type = "string",
        },
        AdditionalEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Status = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        DataFilter = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
        },
        Errors = {
            type = "list",
            member = M.IntegrationError,
        },
    },
}

M.InvalidIntegrationStateFault = {
    type = "structure",
    id = "InvalidIntegrationStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteOptionGroupInput = {
    type = "structure",
    id = "DeleteOptionGroupInput",
    members = {
        OptionGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteOptionGroupOutput = {
    type = "structure",
    id = "DeleteOptionGroupOutput",
}

M.InvalidOptionGroupStateFault = {
    type = "structure",
    id = "InvalidOptionGroupStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteTenantDatabaseInput = {
    type = "structure",
    id = "DeleteTenantDatabaseInput",
    members = {
        DBInstanceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TenantDBName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SkipFinalSnapshot = {
            type = "boolean",
        },
        FinalDBSnapshotIdentifier = {
            type = "string",
        },
    },
}

M.DeleteTenantDatabaseOutput = {
    type = "structure",
    id = "DeleteTenantDatabaseOutput",
    members = {
        TenantDatabase = M.TenantDatabase,
    },
}

M.DBProxyTargetNotFoundFault = {
    type = "structure",
    id = "DBProxyTargetNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeregisterDBProxyTargetsInput = {
    type = "structure",
    id = "DeregisterDBProxyTargetsInput",
    members = {
        DBProxyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetGroupName = {
            type = "string",
        },
        DBInstanceIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        DBClusterIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DeregisterDBProxyTargetsOutput = {
    type = "structure",
    id = "DeregisterDBProxyTargetsOutput",
}

M.DescribeAccountAttributesInput = {
    type = "structure",
    id = "DescribeAccountAttributesInput",
}

M.DescribeAccountAttributesOutput = {
    type = "structure",
    id = "DescribeAccountAttributesOutput",
    members = {
        AccountQuotas = {
            type = "list",
            member = M.AccountQuota,
        },
    },
}

M.Filter = {
    type = "structure",
    id = "Filter",
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

M.DescribeBlueGreenDeploymentsInput = {
    type = "structure",
    id = "DescribeBlueGreenDeploymentsInput",
    members = {
        BlueGreenDeploymentIdentifier = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
    },
}

M.DescribeBlueGreenDeploymentsOutput = {
    type = "structure",
    id = "DescribeBlueGreenDeploymentsOutput",
    members = {
        BlueGreenDeployments = {
            type = "list",
            member = M.BlueGreenDeployment,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeCertificatesInput = {
    type = "structure",
    id = "DescribeCertificatesInput",
    members = {
        CertificateIdentifier = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.Certificate = {
    type = "structure",
    id = "Certificate",
    members = {
        CertificateIdentifier = {
            type = "string",
        },
        CertificateType = {
            type = "string",
        },
        Thumbprint = {
            type = "string",
        },
        ValidFrom = {
            type = "timestamp",
        },
        ValidTill = {
            type = "timestamp",
        },
        CertificateArn = {
            type = "string",
        },
        CustomerOverride = {
            type = "boolean",
        },
        CustomerOverrideValidTill = {
            type = "timestamp",
        },
    },
}

M.DescribeCertificatesOutput = {
    type = "structure",
    id = "DescribeCertificatesOutput",
    members = {
        DefaultCertificateForNewLaunches = {
            type = "string",
        },
        Certificates = {
            type = "list",
            member = M.Certificate,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDBClusterAutomatedBackupsInput = {
    type = "structure",
    id = "DescribeDBClusterAutomatedBackupsInput",
    members = {
        DbClusterResourceId = {
            type = "string",
        },
        DBClusterIdentifier = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDBClusterAutomatedBackupsOutput = {
    type = "structure",
    id = "DescribeDBClusterAutomatedBackupsOutput",
    members = {
        Marker = {
            type = "string",
        },
        DBClusterAutomatedBackups = {
            type = "list",
            member = M.DBClusterAutomatedBackup,
        },
    },
}

M.DBClusterBacktrackNotFoundFault = {
    type = "structure",
    id = "DBClusterBacktrackNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeDBClusterBacktracksInput = {
    type = "structure",
    id = "DescribeDBClusterBacktracksInput",
    members = {
        DBClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BacktrackIdentifier = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DBClusterBacktrack = {
    type = "structure",
    id = "DBClusterBacktrack",
    members = {
        DBClusterIdentifier = {
            type = "string",
        },
        BacktrackIdentifier = {
            type = "string",
        },
        BacktrackTo = {
            type = "timestamp",
        },
        BacktrackedFrom = {
            type = "timestamp",
        },
        BacktrackRequestCreationTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
    },
}

M.DescribeDBClusterBacktracksOutput = {
    type = "structure",
    id = "DescribeDBClusterBacktracksOutput",
    members = {
        Marker = {
            type = "string",
        },
        DBClusterBacktracks = {
            type = "list",
            member = M.DBClusterBacktrack,
        },
    },
}

M.DescribeDBClusterEndpointsInput = {
    type = "structure",
    id = "DescribeDBClusterEndpointsInput",
    members = {
        DBClusterIdentifier = {
            type = "string",
        },
        DBClusterEndpointIdentifier = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DBClusterEndpoint = {
    type = "structure",
    id = "DBClusterEndpoint",
    members = {
        DBClusterEndpointIdentifier = {
            type = "string",
        },
        DBClusterIdentifier = {
            type = "string",
        },
        DBClusterEndpointResourceIdentifier = {
            type = "string",
        },
        Endpoint = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        EndpointType = {
            type = "string",
        },
        CustomEndpointType = {
            type = "string",
        },
        StaticMembers = {
            type = "list",
            member = { type = "string" },
        },
        ExcludedMembers = {
            type = "list",
            member = { type = "string" },
        },
        DBClusterEndpointArn = {
            type = "string",
        },
    },
}

M.DescribeDBClusterEndpointsOutput = {
    type = "structure",
    id = "DescribeDBClusterEndpointsOutput",
    members = {
        Marker = {
            type = "string",
        },
        DBClusterEndpoints = {
            type = "list",
            member = M.DBClusterEndpoint,
        },
    },
}

M.DescribeDBClusterParameterGroupsInput = {
    type = "structure",
    id = "DescribeDBClusterParameterGroupsInput",
    members = {
        DBClusterParameterGroupName = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDBClusterParameterGroupsOutput = {
    type = "structure",
    id = "DescribeDBClusterParameterGroupsOutput",
    members = {
        Marker = {
            type = "string",
        },
        DBClusterParameterGroups = {
            type = "list",
            member = M.DBClusterParameterGroup,
        },
    },
}

M.DescribeDBClusterParametersInput = {
    type = "structure",
    id = "DescribeDBClusterParametersInput",
    members = {
        DBClusterParameterGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Source = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.ApplyMethod = {
    immediate = "immediate",
    pending_reboot = "pending-reboot",
}

M.Parameter = {
    type = "structure",
    id = "Parameter",
    members = {
        ParameterName = {
            type = "string",
        },
        ParameterValue = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Source = {
            type = "string",
        },
        ApplyType = {
            type = "string",
        },
        DataType = {
            type = "string",
        },
        AllowedValues = {
            type = "string",
        },
        IsModifiable = {
            type = "boolean",
        },
        MinimumEngineVersion = {
            type = "string",
        },
        ApplyMethod = {
            type = "string",
        },
        SupportedEngineModes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeDBClusterParametersOutput = {
    type = "structure",
    id = "DescribeDBClusterParametersOutput",
    members = {
        Parameters = {
            type = "list",
            member = M.Parameter,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDBClustersInput = {
    type = "structure",
    id = "DescribeDBClustersInput",
    members = {
        DBClusterIdentifier = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
        IncludeShared = {
            type = "boolean",
        },
    },
}

M.DescribeDBClustersOutput = {
    type = "structure",
    id = "DescribeDBClustersOutput",
    members = {
        Marker = {
            type = "string",
        },
        DBClusters = {
            type = "list",
            member = M.DBCluster,
        },
    },
}

M.DescribeDBClusterSnapshotAttributesInput = {
    type = "structure",
    id = "DescribeDBClusterSnapshotAttributesInput",
    members = {
        DBClusterSnapshotIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DBClusterSnapshotAttribute = {
    type = "structure",
    id = "DBClusterSnapshotAttribute",
    members = {
        AttributeName = {
            type = "string",
        },
        AttributeValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DBClusterSnapshotAttributesResult = {
    type = "structure",
    id = "DBClusterSnapshotAttributesResult",
    members = {
        DBClusterSnapshotIdentifier = {
            type = "string",
        },
        DBClusterSnapshotAttributes = {
            type = "list",
            member = M.DBClusterSnapshotAttribute,
        },
    },
}

M.DescribeDBClusterSnapshotAttributesOutput = {
    type = "structure",
    id = "DescribeDBClusterSnapshotAttributesOutput",
    members = {
        DBClusterSnapshotAttributesResult = M.DBClusterSnapshotAttributesResult,
    },
}

M.DescribeDBClusterSnapshotsInput = {
    type = "structure",
    id = "DescribeDBClusterSnapshotsInput",
    members = {
        DBClusterIdentifier = {
            type = "string",
        },
        DBClusterSnapshotIdentifier = {
            type = "string",
        },
        SnapshotType = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
        IncludeShared = {
            type = "boolean",
        },
        IncludePublic = {
            type = "boolean",
        },
        DbClusterResourceId = {
            type = "string",
        },
    },
}

M.DescribeDBClusterSnapshotsOutput = {
    type = "structure",
    id = "DescribeDBClusterSnapshotsOutput",
    members = {
        Marker = {
            type = "string",
        },
        DBClusterSnapshots = {
            type = "list",
            member = M.DBClusterSnapshot,
        },
    },
}

M.DescribeDBEngineVersionsInput = {
    type = "structure",
    id = "DescribeDBEngineVersionsInput",
    members = {
        Engine = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        DBParameterGroupFamily = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
        DefaultOnly = {
            type = "boolean",
        },
        ListSupportedCharacterSets = {
            type = "boolean",
        },
        ListSupportedTimezones = {
            type = "boolean",
        },
        IncludeAll = {
            type = "boolean",
        },
    },
}

M.DBEngineVersion = {
    type = "structure",
    id = "DBEngineVersion",
    members = {
        Engine = {
            type = "string",
        },
        MajorEngineVersion = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        DatabaseInstallationFilesS3BucketName = {
            type = "string",
        },
        DatabaseInstallationFilesS3Prefix = {
            type = "string",
        },
        DatabaseInstallationFiles = {
            type = "list",
            member = { type = "string" },
        },
        CustomDBEngineVersionManifest = {
            type = "string",
        },
        DBParameterGroupFamily = {
            type = "string",
        },
        DBEngineDescription = {
            type = "string",
        },
        DBEngineVersionArn = {
            type = "string",
        },
        DBEngineVersionDescription = {
            type = "string",
        },
        DefaultCharacterSet = M.CharacterSet,
        FailureReason = {
            type = "string",
        },
        Image = M.CustomDBEngineVersionAMI,
        DBEngineMediaType = {
            type = "string",
        },
        KMSKeyId = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
        },
        SupportedCharacterSets = {
            type = "list",
            member = M.CharacterSet,
        },
        SupportedNcharCharacterSets = {
            type = "list",
            member = M.CharacterSet,
        },
        ValidUpgradeTarget = {
            type = "list",
            member = M.UpgradeTarget,
        },
        SupportedTimezones = {
            type = "list",
            member = M.Timezone,
        },
        ExportableLogTypes = {
            type = "list",
            member = { type = "string" },
        },
        SupportsLogExportsToCloudwatchLogs = {
            type = "boolean",
        },
        SupportsReadReplica = {
            type = "boolean",
        },
        SupportedEngineModes = {
            type = "list",
            member = { type = "string" },
        },
        SupportedFeatureNames = {
            type = "list",
            member = { type = "string" },
        },
        Status = {
            type = "string",
        },
        SupportsParallelQuery = {
            type = "boolean",
        },
        SupportsGlobalDatabases = {
            type = "boolean",
        },
        TagList = {
            type = "list",
            member = M.Tag,
        },
        SupportsBabelfish = {
            type = "boolean",
        },
        SupportsLimitlessDatabase = {
            type = "boolean",
        },
        SupportsCertificateRotationWithoutRestart = {
            type = "boolean",
        },
        SupportedCACertificateIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        SupportsLocalWriteForwarding = {
            type = "boolean",
        },
        SupportsIntegrations = {
            type = "boolean",
        },
        ServerlessV2FeaturesSupport = M.ServerlessV2FeaturesSupport,
    },
}

M.DescribeDBEngineVersionsOutput = {
    type = "structure",
    id = "DescribeDBEngineVersionsOutput",
    members = {
        Marker = {
            type = "string",
        },
        DBEngineVersions = {
            type = "list",
            member = M.DBEngineVersion,
        },
    },
}

M.DescribeDBInstanceAutomatedBackupsInput = {
    type = "structure",
    id = "DescribeDBInstanceAutomatedBackupsInput",
    members = {
        DbiResourceId = {
            type = "string",
        },
        DBInstanceIdentifier = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
        DBInstanceAutomatedBackupsArn = {
            type = "string",
        },
    },
}

M.DescribeDBInstanceAutomatedBackupsOutput = {
    type = "structure",
    id = "DescribeDBInstanceAutomatedBackupsOutput",
    members = {
        Marker = {
            type = "string",
        },
        DBInstanceAutomatedBackups = {
            type = "list",
            member = M.DBInstanceAutomatedBackup,
        },
    },
}

M.DescribeDBInstancesInput = {
    type = "structure",
    id = "DescribeDBInstancesInput",
    members = {
        DBInstanceIdentifier = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDBInstancesOutput = {
    type = "structure",
    id = "DescribeDBInstancesOutput",
    members = {
        Marker = {
            type = "string",
        },
        DBInstances = {
            type = "list",
            member = M.DBInstance,
        },
    },
}

M.DBInstanceNotReadyFault = {
    type = "structure",
    id = "DBInstanceNotReadyFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeDBLogFilesInput = {
    type = "structure",
    id = "DescribeDBLogFilesInput",
    members = {
        DBInstanceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FilenameContains = {
            type = "string",
        },
        FileLastWritten = {
            type = "long",
        },
        FileSize = {
            type = "long",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDBLogFilesDetails = {
    type = "structure",
    id = "DescribeDBLogFilesDetails",
    members = {
        LogFileName = {
            type = "string",
        },
        LastWritten = {
            type = "long",
        },
        Size = {
            type = "long",
        },
    },
}

M.DescribeDBLogFilesOutput = {
    type = "structure",
    id = "DescribeDBLogFilesOutput",
    members = {
        DescribeDBLogFiles = {
            type = "list",
            member = M.DescribeDBLogFilesDetails,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDBMajorEngineVersionsInput = {
    type = "structure",
    id = "DescribeDBMajorEngineVersionsInput",
    members = {
        Engine = {
            type = "string",
        },
        MajorEngineVersion = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
    },
}

M.LifecycleSupportName = {
    OPEN_SOURCE_RDS_STANDARD_SUPPORT = "open-source-rds-standard-support",
    OPEN_SOURCE_RDS_EXTENDED_SUPPORT = "open-source-rds-extended-support",
}

M.SupportedEngineLifecycle = {
    type = "structure",
    id = "SupportedEngineLifecycle",
    members = {
        LifecycleSupportName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LifecycleSupportStartDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LifecycleSupportEndDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DBMajorEngineVersion = {
    type = "structure",
    id = "DBMajorEngineVersion",
    members = {
        Engine = {
            type = "string",
        },
        MajorEngineVersion = {
            type = "string",
        },
        SupportedEngineLifecycles = {
            type = "list",
            member = M.SupportedEngineLifecycle,
        },
    },
}

M.DescribeDBMajorEngineVersionsOutput = {
    type = "structure",
    id = "DescribeDBMajorEngineVersionsOutput",
    members = {
        DBMajorEngineVersions = {
            type = "list",
            member = M.DBMajorEngineVersion,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDBParameterGroupsInput = {
    type = "structure",
    id = "DescribeDBParameterGroupsInput",
    members = {
        DBParameterGroupName = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDBParameterGroupsOutput = {
    type = "structure",
    id = "DescribeDBParameterGroupsOutput",
    members = {
        Marker = {
            type = "string",
        },
        DBParameterGroups = {
            type = "list",
            member = M.DBParameterGroup,
        },
    },
}

M.DescribeDBParametersInput = {
    type = "structure",
    id = "DescribeDBParametersInput",
    members = {
        DBParameterGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Source = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDBParametersOutput = {
    type = "structure",
    id = "DescribeDBParametersOutput",
    members = {
        Parameters = {
            type = "list",
            member = M.Parameter,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDBProxiesInput = {
    type = "structure",
    id = "DescribeDBProxiesInput",
    members = {
        DBProxyName = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
    },
}

M.DescribeDBProxiesOutput = {
    type = "structure",
    id = "DescribeDBProxiesOutput",
    members = {
        DBProxies = {
            type = "list",
            member = M.DBProxy,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDBProxyEndpointsInput = {
    type = "structure",
    id = "DescribeDBProxyEndpointsInput",
    members = {
        DBProxyName = {
            type = "string",
        },
        DBProxyEndpointName = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
    },
}

M.DescribeDBProxyEndpointsOutput = {
    type = "structure",
    id = "DescribeDBProxyEndpointsOutput",
    members = {
        DBProxyEndpoints = {
            type = "list",
            member = M.DBProxyEndpoint,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDBProxyTargetGroupsInput = {
    type = "structure",
    id = "DescribeDBProxyTargetGroupsInput",
    members = {
        DBProxyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetGroupName = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
    },
}

M.ConnectionPoolConfigurationInfo = {
    type = "structure",
    id = "ConnectionPoolConfigurationInfo",
    members = {
        MaxConnectionsPercent = {
            type = "integer",
        },
        MaxIdleConnectionsPercent = {
            type = "integer",
        },
        ConnectionBorrowTimeout = {
            type = "integer",
        },
        SessionPinningFilters = {
            type = "list",
            member = { type = "string" },
        },
        InitQuery = {
            type = "string",
        },
    },
}

M.DBProxyTargetGroup = {
    type = "structure",
    id = "DBProxyTargetGroup",
    members = {
        DBProxyName = {
            type = "string",
        },
        TargetGroupName = {
            type = "string",
        },
        TargetGroupArn = {
            type = "string",
        },
        IsDefault = {
            type = "boolean",
        },
        Status = {
            type = "string",
        },
        ConnectionPoolConfig = M.ConnectionPoolConfigurationInfo,
        CreatedDate = {
            type = "timestamp",
        },
        UpdatedDate = {
            type = "timestamp",
        },
    },
}

M.DescribeDBProxyTargetGroupsOutput = {
    type = "structure",
    id = "DescribeDBProxyTargetGroupsOutput",
    members = {
        TargetGroups = {
            type = "list",
            member = M.DBProxyTargetGroup,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDBProxyTargetsInput = {
    type = "structure",
    id = "DescribeDBProxyTargetsInput",
    members = {
        DBProxyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetGroupName = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
    },
}

M.TargetRole = {
    READ_WRITE = "READ_WRITE",
    READ_ONLY = "READ_ONLY",
    UNKNOWN = "UNKNOWN",
}

M.TargetHealthReason = {
    UNREACHABLE = "UNREACHABLE",
    CONNECTION_FAILED = "CONNECTION_FAILED",
    AUTH_FAILURE = "AUTH_FAILURE",
    PENDING_PROXY_CAPACITY = "PENDING_PROXY_CAPACITY",
    INVALID_REPLICATION_STATE = "INVALID_REPLICATION_STATE",
    PROMOTED = "PROMOTED",
}

M.TargetState = {
    registering = "REGISTERING",
    available = "AVAILABLE",
    unavailable = "UNAVAILABLE",
    unused = "UNUSED",
}

M.TargetHealth = {
    type = "structure",
    id = "TargetHealth",
    members = {
        State = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.TargetType = {
    RDS_INSTANCE = "RDS_INSTANCE",
    RDS_SERVERLESS_ENDPOINT = "RDS_SERVERLESS_ENDPOINT",
    TRACKED_CLUSTER = "TRACKED_CLUSTER",
}

M.DBProxyTarget = {
    type = "structure",
    id = "DBProxyTarget",
    members = {
        TargetArn = {
            type = "string",
        },
        Endpoint = {
            type = "string",
        },
        TrackedClusterId = {
            type = "string",
        },
        RdsResourceId = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        Type = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        TargetHealth = M.TargetHealth,
    },
}

M.DescribeDBProxyTargetsOutput = {
    type = "structure",
    id = "DescribeDBProxyTargetsOutput",
    members = {
        Targets = {
            type = "list",
            member = M.DBProxyTarget,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDBRecommendationsInput = {
    type = "structure",
    id = "DescribeDBRecommendationsInput",
    members = {
        LastUpdatedAfter = {
            type = "timestamp",
        },
        LastUpdatedBefore = {
            type = "timestamp",
        },
        Locale = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.PerformanceInsightsMetricDimensionGroup = {
    type = "structure",
    id = "PerformanceInsightsMetricDimensionGroup",
    members = {
        Dimensions = {
            type = "list",
            member = { type = "string" },
        },
        Group = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.PerformanceInsightsMetricQuery = {
    type = "structure",
    id = "PerformanceInsightsMetricQuery",
    members = {
        GroupBy = M.PerformanceInsightsMetricDimensionGroup,
        Metric = {
            type = "string",
        },
    },
}

M.MetricQuery = {
    type = "structure",
    id = "MetricQuery",
    members = {
        PerformanceInsightsMetricQuery = M.PerformanceInsightsMetricQuery,
    },
}

M.ScalarReferenceDetails = {
    type = "structure",
    id = "ScalarReferenceDetails",
    members = {
        Value = {
            type = "double",
        },
    },
}

M.ReferenceDetails = {
    type = "structure",
    id = "ReferenceDetails",
    members = {
        ScalarReferenceDetails = M.ScalarReferenceDetails,
    },
}

M.MetricReference = {
    type = "structure",
    id = "MetricReference",
    members = {
        Name = {
            type = "string",
        },
        ReferenceDetails = M.ReferenceDetails,
    },
}

M.Metric = {
    type = "structure",
    id = "Metric",
    members = {
        Name = {
            type = "string",
        },
        References = {
            type = "list",
            member = M.MetricReference,
        },
        StatisticsDetails = {
            type = "string",
        },
        MetricQuery = M.MetricQuery,
    },
}

M.PerformanceIssueDetails = {
    type = "structure",
    id = "PerformanceIssueDetails",
    members = {
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Metrics = {
            type = "list",
            member = M.Metric,
        },
        Analysis = {
            type = "string",
        },
    },
}

M.IssueDetails = {
    type = "structure",
    id = "IssueDetails",
    members = {
        PerformanceIssueDetails = M.PerformanceIssueDetails,
    },
}

M.DocLink = {
    type = "structure",
    id = "DocLink",
    members = {
        Text = {
            type = "string",
        },
        Url = {
            type = "string",
        },
    },
}

M.ContextAttribute = {
    type = "structure",
    id = "ContextAttribute",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.RecommendedActionParameter = {
    type = "structure",
    id = "RecommendedActionParameter",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.RecommendedAction = {
    type = "structure",
    id = "RecommendedAction",
    members = {
        ActionId = {
            type = "string",
        },
        Title = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Operation = {
            type = "string",
        },
        Parameters = {
            type = "list",
            member = M.RecommendedActionParameter,
        },
        ApplyModes = {
            type = "list",
            member = { type = "string" },
        },
        Status = {
            type = "string",
        },
        IssueDetails = M.IssueDetails,
        ContextAttributes = {
            type = "list",
            member = M.ContextAttribute,
        },
    },
}

M.DBRecommendation = {
    type = "structure",
    id = "DBRecommendation",
    members = {
        RecommendationId = {
            type = "string",
        },
        TypeId = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        UpdatedTime = {
            type = "timestamp",
        },
        Detection = {
            type = "string",
        },
        Recommendation = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
        RecommendedActions = {
            type = "list",
            member = M.RecommendedAction,
        },
        Category = {
            type = "string",
        },
        Source = {
            type = "string",
        },
        TypeDetection = {
            type = "string",
        },
        TypeRecommendation = {
            type = "string",
        },
        Impact = {
            type = "string",
        },
        AdditionalInfo = {
            type = "string",
        },
        Links = {
            type = "list",
            member = M.DocLink,
        },
        IssueDetails = M.IssueDetails,
    },
}

M.DescribeDBRecommendationsOutput = {
    type = "structure",
    id = "DescribeDBRecommendationsOutput",
    members = {
        DBRecommendations = {
            type = "list",
            member = M.DBRecommendation,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDBSecurityGroupsInput = {
    type = "structure",
    id = "DescribeDBSecurityGroupsInput",
    members = {
        DBSecurityGroupName = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDBSecurityGroupsOutput = {
    type = "structure",
    id = "DescribeDBSecurityGroupsOutput",
    members = {
        Marker = {
            type = "string",
        },
        DBSecurityGroups = {
            type = "list",
            member = M.DBSecurityGroup,
        },
    },
}

M.DescribeDBShardGroupsInput = {
    type = "structure",
    id = "DescribeDBShardGroupsInput",
    members = {
        DBShardGroupIdentifier = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
    },
}

M.DBShardGroup = {
    type = "structure",
    id = "DBShardGroup",
    members = {
        DBShardGroupResourceId = {
            type = "string",
        },
        DBShardGroupIdentifier = {
            type = "string",
        },
        DBClusterIdentifier = {
            type = "string",
        },
        MaxACU = {
            type = "double",
        },
        MinACU = {
            type = "double",
        },
        ComputeRedundancy = {
            type = "integer",
        },
        Status = {
            type = "string",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        Endpoint = {
            type = "string",
        },
        DBShardGroupArn = {
            type = "string",
        },
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DescribeDBShardGroupsOutput = {
    type = "structure",
    id = "DescribeDBShardGroupsOutput",
    members = {
        DBShardGroups = {
            type = "list",
            member = M.DBShardGroup,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDBSnapshotAttributesInput = {
    type = "structure",
    id = "DescribeDBSnapshotAttributesInput",
    members = {
        DBSnapshotIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DBSnapshotAttribute = {
    type = "structure",
    id = "DBSnapshotAttribute",
    members = {
        AttributeName = {
            type = "string",
        },
        AttributeValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DBSnapshotAttributesResult = {
    type = "structure",
    id = "DBSnapshotAttributesResult",
    members = {
        DBSnapshotIdentifier = {
            type = "string",
        },
        DBSnapshotAttributes = {
            type = "list",
            member = M.DBSnapshotAttribute,
        },
    },
}

M.DescribeDBSnapshotAttributesOutput = {
    type = "structure",
    id = "DescribeDBSnapshotAttributesOutput",
    members = {
        DBSnapshotAttributesResult = M.DBSnapshotAttributesResult,
    },
}

M.DescribeDBSnapshotsInput = {
    type = "structure",
    id = "DescribeDBSnapshotsInput",
    members = {
        DBInstanceIdentifier = {
            type = "string",
        },
        DBSnapshotIdentifier = {
            type = "string",
        },
        SnapshotType = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
        IncludeShared = {
            type = "boolean",
        },
        IncludePublic = {
            type = "boolean",
        },
        DbiResourceId = {
            type = "string",
        },
    },
}

M.DescribeDBSnapshotsOutput = {
    type = "structure",
    id = "DescribeDBSnapshotsOutput",
    members = {
        Marker = {
            type = "string",
        },
        DBSnapshots = {
            type = "list",
            member = M.DBSnapshot,
        },
    },
}

M.DescribeDBSnapshotTenantDatabasesInput = {
    type = "structure",
    id = "DescribeDBSnapshotTenantDatabasesInput",
    members = {
        DBInstanceIdentifier = {
            type = "string",
        },
        DBSnapshotIdentifier = {
            type = "string",
        },
        SnapshotType = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
        DbiResourceId = {
            type = "string",
        },
    },
}

M.DBSnapshotTenantDatabase = {
    type = "structure",
    id = "DBSnapshotTenantDatabase",
    members = {
        DBSnapshotIdentifier = {
            type = "string",
        },
        DBInstanceIdentifier = {
            type = "string",
        },
        DbiResourceId = {
            type = "string",
        },
        EngineName = {
            type = "string",
        },
        SnapshotType = {
            type = "string",
        },
        TenantDatabaseCreateTime = {
            type = "timestamp",
        },
        TenantDBName = {
            type = "string",
        },
        MasterUsername = {
            type = "string",
        },
        TenantDatabaseResourceId = {
            type = "string",
        },
        CharacterSetName = {
            type = "string",
        },
        DBSnapshotTenantDatabaseARN = {
            type = "string",
        },
        NcharCharacterSetName = {
            type = "string",
        },
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DescribeDBSnapshotTenantDatabasesOutput = {
    type = "structure",
    id = "DescribeDBSnapshotTenantDatabasesOutput",
    members = {
        Marker = {
            type = "string",
        },
        DBSnapshotTenantDatabases = {
            type = "list",
            member = M.DBSnapshotTenantDatabase,
        },
    },
}

M.DescribeDBSubnetGroupsInput = {
    type = "structure",
    id = "DescribeDBSubnetGroupsInput",
    members = {
        DBSubnetGroupName = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDBSubnetGroupsOutput = {
    type = "structure",
    id = "DescribeDBSubnetGroupsOutput",
    members = {
        Marker = {
            type = "string",
        },
        DBSubnetGroups = {
            type = "list",
            member = M.DBSubnetGroup,
        },
    },
}

M.DescribeEngineDefaultClusterParametersInput = {
    type = "structure",
    id = "DescribeEngineDefaultClusterParametersInput",
    members = {
        DBParameterGroupFamily = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.EngineDefaults = {
    type = "structure",
    id = "EngineDefaults",
    members = {
        DBParameterGroupFamily = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        Parameters = {
            type = "list",
            member = M.Parameter,
        },
    },
}

M.DescribeEngineDefaultClusterParametersOutput = {
    type = "structure",
    id = "DescribeEngineDefaultClusterParametersOutput",
    members = {
        EngineDefaults = M.EngineDefaults,
    },
}

M.DescribeEngineDefaultParametersInput = {
    type = "structure",
    id = "DescribeEngineDefaultParametersInput",
    members = {
        DBParameterGroupFamily = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeEngineDefaultParametersOutput = {
    type = "structure",
    id = "DescribeEngineDefaultParametersOutput",
    members = {
        EngineDefaults = M.EngineDefaults,
    },
}

M.DescribeEventCategoriesInput = {
    type = "structure",
    id = "DescribeEventCategoriesInput",
    members = {
        SourceType = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.EventCategoriesMap = {
    type = "structure",
    id = "EventCategoriesMap",
    members = {
        SourceType = {
            type = "string",
        },
        EventCategories = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeEventCategoriesOutput = {
    type = "structure",
    id = "DescribeEventCategoriesOutput",
    members = {
        EventCategoriesMapList = {
            type = "list",
            member = M.EventCategoriesMap,
        },
    },
}

M.SourceType = {
    db_instance = "db-instance",
    db_parameter_group = "db-parameter-group",
    db_security_group = "db-security-group",
    db_snapshot = "db-snapshot",
    db_cluster = "db-cluster",
    db_cluster_snapshot = "db-cluster-snapshot",
    custom_engine_version = "custom-engine-version",
    db_proxy = "db-proxy",
    blue_green_deployment = "blue-green-deployment",
    db_shard_group = "db-shard-group",
    zero_etl = "zero-etl",
}

M.DescribeEventsInput = {
    type = "structure",
    id = "DescribeEventsInput",
    members = {
        SourceIdentifier = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Duration = {
            type = "integer",
        },
        EventCategories = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.Event = {
    type = "structure",
    id = "Event",
    members = {
        SourceIdentifier = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        EventCategories = {
            type = "list",
            member = { type = "string" },
        },
        Date = {
            type = "timestamp",
        },
        SourceArn = {
            type = "string",
        },
    },
}

M.DescribeEventsOutput = {
    type = "structure",
    id = "DescribeEventsOutput",
    members = {
        Marker = {
            type = "string",
        },
        Events = {
            type = "list",
            member = M.Event,
        },
    },
}

M.DescribeEventSubscriptionsInput = {
    type = "structure",
    id = "DescribeEventSubscriptionsInput",
    members = {
        SubscriptionName = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeEventSubscriptionsOutput = {
    type = "structure",
    id = "DescribeEventSubscriptionsOutput",
    members = {
        Marker = {
            type = "string",
        },
        EventSubscriptionsList = {
            type = "list",
            member = M.EventSubscription,
        },
    },
}

M.DescribeExportTasksInput = {
    type = "structure",
    id = "DescribeExportTasksInput",
    members = {
        ExportTaskIdentifier = {
            type = "string",
        },
        SourceArn = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        SourceType = {
            type = "string",
        },
    },
}

M.ExportTask = {
    type = "structure",
    id = "ExportTask",
    members = {
        ExportTaskIdentifier = {
            type = "string",
        },
        SourceArn = {
            type = "string",
        },
        ExportOnly = {
            type = "list",
            member = { type = "string" },
        },
        SnapshotTime = {
            type = "timestamp",
        },
        TaskStartTime = {
            type = "timestamp",
        },
        TaskEndTime = {
            type = "timestamp",
        },
        S3Bucket = {
            type = "string",
        },
        S3Prefix = {
            type = "string",
        },
        IamRoleArn = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        PercentProgress = {
            type = "integer",
        },
        TotalExtractedDataInGB = {
            type = "integer",
        },
        FailureCause = {
            type = "string",
        },
        WarningMessage = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
    },
}

M.DescribeExportTasksOutput = {
    type = "structure",
    id = "DescribeExportTasksOutput",
    members = {
        Marker = {
            type = "string",
        },
        ExportTasks = {
            type = "list",
            member = M.ExportTask,
        },
    },
}

M.DescribeGlobalClustersInput = {
    type = "structure",
    id = "DescribeGlobalClustersInput",
    members = {
        GlobalClusterIdentifier = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeGlobalClustersOutput = {
    type = "structure",
    id = "DescribeGlobalClustersOutput",
    members = {
        Marker = {
            type = "string",
        },
        GlobalClusters = {
            type = "list",
            member = M.GlobalCluster,
        },
    },
}

M.DescribeIntegrationsInput = {
    type = "structure",
    id = "DescribeIntegrationsInput",
    members = {
        IntegrationIdentifier = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.Integration = {
    type = "structure",
    id = "Integration",
    members = {
        SourceArn = {
            type = "string",
        },
        TargetArn = {
            type = "string",
        },
        IntegrationName = {
            type = "string",
        },
        IntegrationArn = {
            type = "string",
        },
        KMSKeyId = {
            type = "string",
        },
        AdditionalEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Status = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        DataFilter = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
        },
        Errors = {
            type = "list",
            member = M.IntegrationError,
        },
    },
}

M.DescribeIntegrationsOutput = {
    type = "structure",
    id = "DescribeIntegrationsOutput",
    members = {
        Marker = {
            type = "string",
        },
        Integrations = {
            type = "list",
            member = M.Integration,
        },
    },
}

M.DescribeOptionGroupOptionsInput = {
    type = "structure",
    id = "DescribeOptionGroupOptionsInput",
    members = {
        EngineName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MajorEngineVersion = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.MinimumEngineVersionPerAllowedValue = {
    type = "structure",
    id = "MinimumEngineVersionPerAllowedValue",
    members = {
        AllowedValue = {
            type = "string",
        },
        MinimumEngineVersion = {
            type = "string",
        },
    },
}

M.OptionGroupOptionSetting = {
    type = "structure",
    id = "OptionGroupOptionSetting",
    members = {
        SettingName = {
            type = "string",
        },
        SettingDescription = {
            type = "string",
        },
        DefaultValue = {
            type = "string",
        },
        ApplyType = {
            type = "string",
        },
        AllowedValues = {
            type = "string",
        },
        IsModifiable = {
            type = "boolean",
        },
        IsRequired = {
            type = "boolean",
        },
        MinimumEngineVersionPerAllowedValue = {
            type = "list",
            member = M.MinimumEngineVersionPerAllowedValue,
        },
    },
}

M.OptionVersion = {
    type = "structure",
    id = "OptionVersion",
    members = {
        Version = {
            type = "string",
        },
        IsDefault = {
            type = "boolean",
        },
    },
}

M.OptionGroupOption = {
    type = "structure",
    id = "OptionGroupOption",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EngineName = {
            type = "string",
        },
        MajorEngineVersion = {
            type = "string",
        },
        MinimumRequiredMinorEngineVersion = {
            type = "string",
        },
        PortRequired = {
            type = "boolean",
        },
        DefaultPort = {
            type = "integer",
        },
        OptionsDependedOn = {
            type = "list",
            member = { type = "string" },
        },
        OptionsConflictsWith = {
            type = "list",
            member = { type = "string" },
        },
        Persistent = {
            type = "boolean",
        },
        Permanent = {
            type = "boolean",
        },
        RequiresAutoMinorEngineVersionUpgrade = {
            type = "boolean",
        },
        VpcOnly = {
            type = "boolean",
        },
        SupportsOptionVersionDowngrade = {
            type = "boolean",
        },
        OptionGroupOptionSettings = {
            type = "list",
            member = M.OptionGroupOptionSetting,
        },
        OptionGroupOptionVersions = {
            type = "list",
            member = M.OptionVersion,
        },
        CopyableCrossAccount = {
            type = "boolean",
        },
    },
}

M.DescribeOptionGroupOptionsOutput = {
    type = "structure",
    id = "DescribeOptionGroupOptionsOutput",
    members = {
        OptionGroupOptions = {
            type = "list",
            member = M.OptionGroupOption,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeOptionGroupsInput = {
    type = "structure",
    id = "DescribeOptionGroupsInput",
    members = {
        OptionGroupName = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        EngineName = {
            type = "string",
        },
        MajorEngineVersion = {
            type = "string",
        },
    },
}

M.DescribeOptionGroupsOutput = {
    type = "structure",
    id = "DescribeOptionGroupsOutput",
    members = {
        OptionGroupsList = {
            type = "list",
            member = M.OptionGroup,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeOrderableDBInstanceOptionsInput = {
    type = "structure",
    id = "DescribeOrderableDBInstanceOptionsInput",
    members = {
        Engine = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EngineVersion = {
            type = "string",
        },
        DBInstanceClass = {
            type = "string",
        },
        LicenseModel = {
            type = "string",
        },
        AvailabilityZoneGroup = {
            type = "string",
        },
        Vpc = {
            type = "boolean",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.AvailableAdditionalStorageVolumesOption = {
    type = "structure",
    id = "AvailableAdditionalStorageVolumesOption",
    members = {
        SupportsStorageAutoscaling = {
            type = "boolean",
        },
        SupportsStorageThroughput = {
            type = "boolean",
        },
        SupportsIops = {
            type = "boolean",
        },
        StorageType = {
            type = "string",
        },
        MinStorageSize = {
            type = "integer",
        },
        MaxStorageSize = {
            type = "integer",
        },
        MinIops = {
            type = "integer",
        },
        MaxIops = {
            type = "integer",
        },
        MinIopsPerGib = {
            type = "double",
        },
        MaxIopsPerGib = {
            type = "double",
        },
        MinStorageThroughput = {
            type = "integer",
        },
        MaxStorageThroughput = {
            type = "integer",
        },
    },
}

M.AvailableProcessorFeature = {
    type = "structure",
    id = "AvailableProcessorFeature",
    members = {
        Name = {
            type = "string",
        },
        DefaultValue = {
            type = "string",
        },
        AllowedValues = {
            type = "string",
        },
    },
}

M.OrderableDBInstanceOption = {
    type = "structure",
    id = "OrderableDBInstanceOption",
    members = {
        Engine = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        DBInstanceClass = {
            type = "string",
        },
        LicenseModel = {
            type = "string",
        },
        AvailabilityZoneGroup = {
            type = "string",
        },
        AvailabilityZones = {
            type = "list",
            member = M.AvailabilityZone,
        },
        MultiAZCapable = {
            type = "boolean",
        },
        ReadReplicaCapable = {
            type = "boolean",
        },
        Vpc = {
            type = "boolean",
        },
        SupportsStorageEncryption = {
            type = "boolean",
        },
        StorageType = {
            type = "string",
        },
        SupportsIops = {
            type = "boolean",
        },
        SupportsStorageThroughput = {
            type = "boolean",
        },
        SupportsEnhancedMonitoring = {
            type = "boolean",
        },
        SupportsIAMDatabaseAuthentication = {
            type = "boolean",
        },
        SupportsPerformanceInsights = {
            type = "boolean",
        },
        MinStorageSize = {
            type = "integer",
        },
        MaxStorageSize = {
            type = "integer",
        },
        MinIopsPerDbInstance = {
            type = "integer",
        },
        MaxIopsPerDbInstance = {
            type = "integer",
        },
        MinIopsPerGib = {
            type = "double",
        },
        MaxIopsPerGib = {
            type = "double",
        },
        MinStorageThroughputPerDbInstance = {
            type = "integer",
        },
        MaxStorageThroughputPerDbInstance = {
            type = "integer",
        },
        MinStorageThroughputPerIops = {
            type = "double",
        },
        MaxStorageThroughputPerIops = {
            type = "double",
        },
        AvailableProcessorFeatures = {
            type = "list",
            member = M.AvailableProcessorFeature,
        },
        SupportedEngineModes = {
            type = "list",
            member = { type = "string" },
        },
        SupportsStorageAutoscaling = {
            type = "boolean",
        },
        SupportsKerberosAuthentication = {
            type = "boolean",
        },
        OutpostCapable = {
            type = "boolean",
        },
        SupportedActivityStreamModes = {
            type = "list",
            member = { type = "string" },
        },
        SupportsGlobalDatabases = {
            type = "boolean",
        },
        SupportedNetworkTypes = {
            type = "list",
            member = { type = "string" },
        },
        SupportsClusters = {
            type = "boolean",
        },
        SupportsDedicatedLogVolume = {
            type = "boolean",
        },
        SupportsAdditionalStorageVolumes = {
            type = "boolean",
        },
        SupportsHttpEndpoint = {
            type = "boolean",
        },
        AvailableAdditionalStorageVolumesOptions = {
            type = "list",
            member = M.AvailableAdditionalStorageVolumesOption,
        },
    },
}

M.DescribeOrderableDBInstanceOptionsOutput = {
    type = "structure",
    id = "DescribeOrderableDBInstanceOptionsOutput",
    members = {
        OrderableDBInstanceOptions = {
            type = "list",
            member = M.OrderableDBInstanceOption,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribePendingMaintenanceActionsInput = {
    type = "structure",
    id = "DescribePendingMaintenanceActionsInput",
    members = {
        ResourceIdentifier = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
    },
}

M.DescribePendingMaintenanceActionsOutput = {
    type = "structure",
    id = "DescribePendingMaintenanceActionsOutput",
    members = {
        PendingMaintenanceActions = {
            type = "list",
            member = M.ResourcePendingMaintenanceActions,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeReservedDBInstancesInput = {
    type = "structure",
    id = "DescribeReservedDBInstancesInput",
    members = {
        ReservedDBInstanceId = {
            type = "string",
        },
        ReservedDBInstancesOfferingId = {
            type = "string",
        },
        DBInstanceClass = {
            type = "string",
        },
        Duration = {
            type = "string",
        },
        ProductDescription = {
            type = "string",
        },
        OfferingType = {
            type = "string",
        },
        MultiAZ = {
            type = "boolean",
        },
        LeaseId = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.RecurringCharge = {
    type = "structure",
    id = "RecurringCharge",
    members = {
        RecurringChargeAmount = {
            type = "double",
        },
        RecurringChargeFrequency = {
            type = "string",
        },
    },
}

M.ReservedDBInstance = {
    type = "structure",
    id = "ReservedDBInstance",
    members = {
        ReservedDBInstanceId = {
            type = "string",
        },
        ReservedDBInstancesOfferingId = {
            type = "string",
        },
        DBInstanceClass = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        Duration = {
            type = "integer",
        },
        FixedPrice = {
            type = "double",
        },
        UsagePrice = {
            type = "double",
        },
        CurrencyCode = {
            type = "string",
        },
        DBInstanceCount = {
            type = "integer",
        },
        ProductDescription = {
            type = "string",
        },
        OfferingType = {
            type = "string",
        },
        MultiAZ = {
            type = "boolean",
        },
        State = {
            type = "string",
        },
        RecurringCharges = {
            type = "list",
            member = M.RecurringCharge,
        },
        ReservedDBInstanceArn = {
            type = "string",
        },
        LeaseId = {
            type = "string",
        },
    },
}

M.DescribeReservedDBInstancesOutput = {
    type = "structure",
    id = "DescribeReservedDBInstancesOutput",
    members = {
        Marker = {
            type = "string",
        },
        ReservedDBInstances = {
            type = "list",
            member = M.ReservedDBInstance,
        },
    },
}

M.ReservedDBInstanceNotFoundFault = {
    type = "structure",
    id = "ReservedDBInstanceNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeReservedDBInstancesOfferingsInput = {
    type = "structure",
    id = "DescribeReservedDBInstancesOfferingsInput",
    members = {
        ReservedDBInstancesOfferingId = {
            type = "string",
        },
        DBInstanceClass = {
            type = "string",
        },
        Duration = {
            type = "string",
        },
        ProductDescription = {
            type = "string",
        },
        OfferingType = {
            type = "string",
        },
        MultiAZ = {
            type = "boolean",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.ReservedDBInstancesOffering = {
    type = "structure",
    id = "ReservedDBInstancesOffering",
    members = {
        ReservedDBInstancesOfferingId = {
            type = "string",
        },
        DBInstanceClass = {
            type = "string",
        },
        Duration = {
            type = "integer",
        },
        FixedPrice = {
            type = "double",
        },
        UsagePrice = {
            type = "double",
        },
        CurrencyCode = {
            type = "string",
        },
        ProductDescription = {
            type = "string",
        },
        OfferingType = {
            type = "string",
        },
        MultiAZ = {
            type = "boolean",
        },
        RecurringCharges = {
            type = "list",
            member = M.RecurringCharge,
        },
    },
}

M.DescribeReservedDBInstancesOfferingsOutput = {
    type = "structure",
    id = "DescribeReservedDBInstancesOfferingsOutput",
    members = {
        Marker = {
            type = "string",
        },
        ReservedDBInstancesOfferings = {
            type = "list",
            member = M.ReservedDBInstancesOffering,
        },
    },
}

M.ReservedDBInstancesOfferingNotFoundFault = {
    type = "structure",
    id = "ReservedDBInstancesOfferingNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeServerlessV2PlatformVersionsInput = {
    type = "structure",
    id = "DescribeServerlessV2PlatformVersionsInput",
    members = {
        ServerlessV2PlatformVersion = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        DefaultOnly = {
            type = "boolean",
        },
        IncludeAll = {
            type = "boolean",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.ServerlessV2PlatformVersionInfo = {
    type = "structure",
    id = "ServerlessV2PlatformVersionInfo",
    members = {
        ServerlessV2PlatformVersion = {
            type = "string",
        },
        ServerlessV2PlatformVersionDescription = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        ServerlessV2FeaturesSupport = M.ServerlessV2FeaturesSupport,
        Status = {
            type = "string",
        },
        IsDefault = {
            type = "boolean",
        },
    },
}

M.DescribeServerlessV2PlatformVersionsOutput = {
    type = "structure",
    id = "DescribeServerlessV2PlatformVersionsOutput",
    members = {
        Marker = {
            type = "string",
        },
        ServerlessV2PlatformVersions = {
            type = "list",
            member = M.ServerlessV2PlatformVersionInfo,
        },
    },
}

M.DescribeSourceRegionsInput = {
    type = "structure",
    id = "DescribeSourceRegionsInput",
    members = {
        RegionName = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.SourceRegion = {
    type = "structure",
    id = "SourceRegion",
    members = {
        RegionName = {
            type = "string",
        },
        Endpoint = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        SupportsDBInstanceAutomatedBackupsReplication = {
            type = "boolean",
        },
    },
}

M.DescribeSourceRegionsOutput = {
    type = "structure",
    id = "DescribeSourceRegionsOutput",
    members = {
        Marker = {
            type = "string",
        },
        SourceRegions = {
            type = "list",
            member = M.SourceRegion,
        },
    },
}

M.DescribeTenantDatabasesInput = {
    type = "structure",
    id = "DescribeTenantDatabasesInput",
    members = {
        DBInstanceIdentifier = {
            type = "string",
        },
        TenantDBName = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
    },
}

M.DescribeTenantDatabasesOutput = {
    type = "structure",
    id = "DescribeTenantDatabasesOutput",
    members = {
        Marker = {
            type = "string",
        },
        TenantDatabases = {
            type = "list",
            member = M.TenantDatabase,
        },
    },
}

M.DescribeValidDBInstanceModificationsInput = {
    type = "structure",
    id = "DescribeValidDBInstanceModificationsInput",
    members = {
        DBInstanceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DoubleRange = {
    type = "structure",
    id = "DoubleRange",
    members = {
        From = {
            type = "double",
        },
        To = {
            type = "double",
        },
    },
}

M.Range = {
    type = "structure",
    id = "Range",
    members = {
        From = {
            type = "integer",
        },
        To = {
            type = "integer",
        },
        Step = {
            type = "integer",
        },
    },
}

M.ValidStorageOptions = {
    type = "structure",
    id = "ValidStorageOptions",
    members = {
        StorageType = {
            type = "string",
        },
        StorageSize = {
            type = "list",
            member = M.Range,
        },
        ProvisionedIops = {
            type = "list",
            member = M.Range,
        },
        IopsToStorageRatio = {
            type = "list",
            member = M.DoubleRange,
        },
        ProvisionedStorageThroughput = {
            type = "list",
            member = M.Range,
        },
        StorageThroughputToIopsRatio = {
            type = "list",
            member = M.DoubleRange,
        },
        SupportsStorageAutoscaling = {
            type = "boolean",
        },
    },
}

M.ValidVolumeOptions = {
    type = "structure",
    id = "ValidVolumeOptions",
    members = {
        VolumeName = {
            type = "string",
        },
        Storage = {
            type = "list",
            member = M.ValidStorageOptions,
        },
    },
}

M.ValidAdditionalStorageOptions = {
    type = "structure",
    id = "ValidAdditionalStorageOptions",
    members = {
        SupportsAdditionalStorageVolumes = {
            type = "boolean",
        },
        Volumes = {
            type = "list",
            member = M.ValidVolumeOptions,
        },
    },
}

M.ValidDBInstanceModificationsMessage = {
    type = "structure",
    id = "ValidDBInstanceModificationsMessage",
    members = {
        Storage = {
            type = "list",
            member = M.ValidStorageOptions,
        },
        ValidProcessorFeatures = {
            type = "list",
            member = M.AvailableProcessorFeature,
        },
        SupportsDedicatedLogVolume = {
            type = "boolean",
        },
        AdditionalStorage = M.ValidAdditionalStorageOptions,
    },
}

M.DescribeValidDBInstanceModificationsOutput = {
    type = "structure",
    id = "DescribeValidDBInstanceModificationsOutput",
    members = {
        ValidDBInstanceModificationsMessage = M.ValidDBInstanceModificationsMessage,
    },
}

M.DisableHttpEndpointInput = {
    type = "structure",
    id = "DisableHttpEndpointInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisableHttpEndpointOutput = {
    type = "structure",
    id = "DisableHttpEndpointOutput",
    members = {
        ResourceArn = {
            type = "string",
        },
        HttpEndpointEnabled = {
            type = "boolean",
        },
    },
}

M.InvalidResourceStateFault = {
    type = "structure",
    id = "InvalidResourceStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBLogFileNotFoundFault = {
    type = "structure",
    id = "DBLogFileNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DownloadDBLogFilePortionInput = {
    type = "structure",
    id = "DownloadDBLogFilePortionInput",
    members = {
        DBInstanceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogFileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
        },
        NumberOfLines = {
            type = "integer",
        },
    },
}

M.DownloadDBLogFilePortionOutput = {
    type = "structure",
    id = "DownloadDBLogFilePortionOutput",
    members = {
        LogFileData = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        AdditionalDataPending = {
            type = "boolean",
        },
    },
}

M.EnableHttpEndpointInput = {
    type = "structure",
    id = "EnableHttpEndpointInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnableHttpEndpointOutput = {
    type = "structure",
    id = "EnableHttpEndpointOutput",
    members = {
        ResourceArn = {
            type = "string",
        },
        HttpEndpointEnabled = {
            type = "boolean",
        },
    },
}

M.FailoverDBClusterInput = {
    type = "structure",
    id = "FailoverDBClusterInput",
    members = {
        DBClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetDBInstanceIdentifier = {
            type = "string",
        },
    },
}

M.FailoverDBClusterOutput = {
    type = "structure",
    id = "FailoverDBClusterOutput",
    members = {
        DBCluster = M.DBCluster,
    },
}

M.FailoverGlobalClusterInput = {
    type = "structure",
    id = "FailoverGlobalClusterInput",
    members = {
        GlobalClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetDbClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllowDataLoss = {
            type = "boolean",
        },
        Switchover = {
            type = "boolean",
        },
    },
}

M.FailoverGlobalClusterOutput = {
    type = "structure",
    id = "FailoverGlobalClusterOutput",
    members = {
        GlobalCluster = M.GlobalCluster,
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        ResourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.AuditPolicyState = {
    LOCKED_POLICY = "locked",
    UNLOCKED_POLICY = "unlocked",
}

M.ModifyActivityStreamInput = {
    type = "structure",
    id = "ModifyActivityStreamInput",
    members = {
        ResourceArn = {
            type = "string",
        },
        AuditPolicyState = {
            type = "string",
        },
    },
}

M.ModifyActivityStreamOutput = {
    type = "structure",
    id = "ModifyActivityStreamOutput",
    members = {
        KmsKeyId = {
            type = "string",
        },
        KinesisStreamName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Mode = {
            type = "string",
        },
        EngineNativeAuditFieldsIncluded = {
            type = "boolean",
        },
        PolicyStatus = {
            type = "string",
        },
    },
}

M.ModifyCertificatesInput = {
    type = "structure",
    id = "ModifyCertificatesInput",
    members = {
        CertificateIdentifier = {
            type = "string",
        },
        RemoveCustomerOverride = {
            type = "boolean",
        },
    },
}

M.ModifyCertificatesOutput = {
    type = "structure",
    id = "ModifyCertificatesOutput",
    members = {
        Certificate = M.Certificate,
    },
}

M.InvalidDBClusterCapacityFault = {
    type = "structure",
    id = "InvalidDBClusterCapacityFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ModifyCurrentDBClusterCapacityInput = {
    type = "structure",
    id = "ModifyCurrentDBClusterCapacityInput",
    members = {
        DBClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Capacity = {
            type = "integer",
        },
        SecondsBeforeTimeout = {
            type = "integer",
        },
        TimeoutAction = {
            type = "string",
        },
    },
}

M.ModifyCurrentDBClusterCapacityOutput = {
    type = "structure",
    id = "ModifyCurrentDBClusterCapacityOutput",
    members = {
        DBClusterIdentifier = {
            type = "string",
        },
        PendingCapacity = {
            type = "integer",
        },
        CurrentCapacity = {
            type = "integer",
        },
        SecondsBeforeTimeout = {
            type = "integer",
        },
        TimeoutAction = {
            type = "string",
        },
    },
}

M.CustomEngineVersionStatus = {
    available = "available",
    inactive = "inactive",
    inactive_except_restore = "inactive-except-restore",
}

M.ModifyCustomDBEngineVersionInput = {
    type = "structure",
    id = "ModifyCustomDBEngineVersionInput",
    members = {
        Engine = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EngineVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.ModifyCustomDBEngineVersionOutput = {
    type = "structure",
    id = "ModifyCustomDBEngineVersionOutput",
    members = {
        Engine = {
            type = "string",
        },
        MajorEngineVersion = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        DatabaseInstallationFilesS3BucketName = {
            type = "string",
        },
        DatabaseInstallationFilesS3Prefix = {
            type = "string",
        },
        DatabaseInstallationFiles = {
            type = "list",
            member = { type = "string" },
        },
        CustomDBEngineVersionManifest = {
            type = "string",
        },
        DBParameterGroupFamily = {
            type = "string",
        },
        DBEngineDescription = {
            type = "string",
        },
        DBEngineVersionArn = {
            type = "string",
        },
        DBEngineVersionDescription = {
            type = "string",
        },
        DefaultCharacterSet = M.CharacterSet,
        FailureReason = {
            type = "string",
        },
        Image = M.CustomDBEngineVersionAMI,
        DBEngineMediaType = {
            type = "string",
        },
        KMSKeyId = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
        },
        SupportedCharacterSets = {
            type = "list",
            member = M.CharacterSet,
        },
        SupportedNcharCharacterSets = {
            type = "list",
            member = M.CharacterSet,
        },
        ValidUpgradeTarget = {
            type = "list",
            member = M.UpgradeTarget,
        },
        SupportedTimezones = {
            type = "list",
            member = M.Timezone,
        },
        ExportableLogTypes = {
            type = "list",
            member = { type = "string" },
        },
        SupportsLogExportsToCloudwatchLogs = {
            type = "boolean",
        },
        SupportsReadReplica = {
            type = "boolean",
        },
        SupportedEngineModes = {
            type = "list",
            member = { type = "string" },
        },
        SupportedFeatureNames = {
            type = "list",
            member = { type = "string" },
        },
        Status = {
            type = "string",
        },
        SupportsParallelQuery = {
            type = "boolean",
        },
        SupportsGlobalDatabases = {
            type = "boolean",
        },
        TagList = {
            type = "list",
            member = M.Tag,
        },
        SupportsBabelfish = {
            type = "boolean",
        },
        SupportsLimitlessDatabase = {
            type = "boolean",
        },
        SupportsCertificateRotationWithoutRestart = {
            type = "boolean",
        },
        SupportedCACertificateIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        SupportsLocalWriteForwarding = {
            type = "boolean",
        },
        SupportsIntegrations = {
            type = "boolean",
        },
        ServerlessV2FeaturesSupport = M.ServerlessV2FeaturesSupport,
    },
}

M.CloudwatchLogsExportConfiguration = {
    type = "structure",
    id = "CloudwatchLogsExportConfiguration",
    members = {
        EnableLogTypes = {
            type = "list",
            member = { type = "string" },
        },
        DisableLogTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ModifyDBClusterInput = {
    type = "structure",
    id = "ModifyDBClusterInput",
    members = {
        DBClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewDBClusterIdentifier = {
            type = "string",
        },
        ApplyImmediately = {
            type = "boolean",
        },
        BackupRetentionPeriod = {
            type = "integer",
        },
        DBClusterParameterGroupName = {
            type = "string",
        },
        VpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        Port = {
            type = "integer",
        },
        MasterUserPassword = {
            type = "string",
        },
        OptionGroupName = {
            type = "string",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        EnableIAMDatabaseAuthentication = {
            type = "boolean",
        },
        BacktrackWindow = {
            type = "long",
        },
        CloudwatchLogsExportConfiguration = M.CloudwatchLogsExportConfiguration,
        EngineVersion = {
            type = "string",
        },
        AllowMajorVersionUpgrade = {
            type = "boolean",
        },
        DBInstanceParameterGroupName = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
        DomainIAMRoleName = {
            type = "string",
        },
        ScalingConfiguration = M.ScalingConfiguration,
        DeletionProtection = {
            type = "boolean",
        },
        EnableHttpEndpoint = {
            type = "boolean",
        },
        CopyTagsToSnapshot = {
            type = "boolean",
        },
        EnableGlobalWriteForwarding = {
            type = "boolean",
        },
        DBClusterInstanceClass = {
            type = "string",
        },
        AllocatedStorage = {
            type = "integer",
        },
        StorageType = {
            type = "string",
        },
        Iops = {
            type = "integer",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        NetworkType = {
            type = "string",
        },
        ServerlessV2ScalingConfiguration = M.ServerlessV2ScalingConfiguration,
        MonitoringInterval = {
            type = "integer",
        },
        MonitoringRoleArn = {
            type = "string",
        },
        DatabaseInsightsMode = {
            type = "string",
        },
        EnablePerformanceInsights = {
            type = "boolean",
        },
        PerformanceInsightsKMSKeyId = {
            type = "string",
        },
        PerformanceInsightsRetentionPeriod = {
            type = "integer",
        },
        ManageMasterUserPassword = {
            type = "boolean",
        },
        RotateMasterUserPassword = {
            type = "boolean",
        },
        EnableLocalWriteForwarding = {
            type = "boolean",
        },
        MasterUserSecretKmsKeyId = {
            type = "string",
        },
        EngineMode = {
            type = "string",
        },
        AllowEngineModeChange = {
            type = "boolean",
        },
        AwsBackupRecoveryPointArn = {
            type = "string",
        },
        EnableLimitlessDatabase = {
            type = "boolean",
        },
        CACertificateIdentifier = {
            type = "string",
        },
        MasterUserAuthenticationType = {
            type = "string",
        },
    },
}

M.ModifyDBClusterOutput = {
    type = "structure",
    id = "ModifyDBClusterOutput",
    members = {
        DBCluster = M.DBCluster,
    },
}

M.StorageTypeNotAvailableFault = {
    type = "structure",
    id = "StorageTypeNotAvailableFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ModifyDBClusterEndpointInput = {
    type = "structure",
    id = "ModifyDBClusterEndpointInput",
    members = {
        DBClusterEndpointIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointType = {
            type = "string",
        },
        StaticMembers = {
            type = "list",
            member = { type = "string" },
        },
        ExcludedMembers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ModifyDBClusterEndpointOutput = {
    type = "structure",
    id = "ModifyDBClusterEndpointOutput",
    members = {
        DBClusterEndpointIdentifier = {
            type = "string",
        },
        DBClusterIdentifier = {
            type = "string",
        },
        DBClusterEndpointResourceIdentifier = {
            type = "string",
        },
        Endpoint = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        EndpointType = {
            type = "string",
        },
        CustomEndpointType = {
            type = "string",
        },
        StaticMembers = {
            type = "list",
            member = { type = "string" },
        },
        ExcludedMembers = {
            type = "list",
            member = { type = "string" },
        },
        DBClusterEndpointArn = {
            type = "string",
        },
    },
}

M.ModifyDBClusterParameterGroupInput = {
    type = "structure",
    id = "ModifyDBClusterParameterGroupInput",
    members = {
        DBClusterParameterGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "list",
            member = M.Parameter,
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyDBClusterParameterGroupOutput = {
    type = "structure",
    id = "ModifyDBClusterParameterGroupOutput",
    members = {
        DBClusterParameterGroupName = {
            type = "string",
        },
    },
}

M.ModifyDBClusterSnapshotAttributeInput = {
    type = "structure",
    id = "ModifyDBClusterSnapshotAttributeInput",
    members = {
        DBClusterSnapshotIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValuesToAdd = {
            type = "list",
            member = { type = "string" },
        },
        ValuesToRemove = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ModifyDBClusterSnapshotAttributeOutput = {
    type = "structure",
    id = "ModifyDBClusterSnapshotAttributeOutput",
    members = {
        DBClusterSnapshotAttributesResult = M.DBClusterSnapshotAttributesResult,
    },
}

M.SharedSnapshotQuotaExceededFault = {
    type = "structure",
    id = "SharedSnapshotQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBUpgradeDependencyFailureFault = {
    type = "structure",
    id = "DBUpgradeDependencyFailureFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ModifyAdditionalStorageVolume = {
    type = "structure",
    id = "ModifyAdditionalStorageVolume",
    members = {
        VolumeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllocatedStorage = {
            type = "integer",
        },
        IOPS = {
            type = "integer",
        },
        MaxAllocatedStorage = {
            type = "integer",
        },
        StorageThroughput = {
            type = "integer",
        },
        StorageType = {
            type = "string",
        },
        SetForDelete = {
            type = "boolean",
        },
    },
}

M.ModifyDBInstanceInput = {
    type = "structure",
    id = "ModifyDBInstanceInput",
    members = {
        DBInstanceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllocatedStorage = {
            type = "integer",
        },
        DBInstanceClass = {
            type = "string",
        },
        DBSubnetGroupName = {
            type = "string",
        },
        DBSecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        VpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        ApplyImmediately = {
            type = "boolean",
        },
        MasterUserPassword = {
            type = "string",
        },
        DBParameterGroupName = {
            type = "string",
        },
        BackupRetentionPeriod = {
            type = "integer",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        MultiAZ = {
            type = "boolean",
        },
        EngineVersion = {
            type = "string",
        },
        AllowMajorVersionUpgrade = {
            type = "boolean",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        LicenseModel = {
            type = "string",
        },
        Iops = {
            type = "integer",
        },
        StorageThroughput = {
            type = "integer",
        },
        OptionGroupName = {
            type = "string",
        },
        NewDBInstanceIdentifier = {
            type = "string",
        },
        StorageType = {
            type = "string",
        },
        TdeCredentialArn = {
            type = "string",
        },
        TdeCredentialPassword = {
            type = "string",
        },
        CACertificateIdentifier = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
        DomainFqdn = {
            type = "string",
        },
        DomainOu = {
            type = "string",
        },
        DomainAuthSecretArn = {
            type = "string",
        },
        DomainDnsIps = {
            type = "list",
            member = { type = "string" },
        },
        DisableDomain = {
            type = "boolean",
        },
        CopyTagsToSnapshot = {
            type = "boolean",
        },
        MonitoringInterval = {
            type = "integer",
        },
        DBPortNumber = {
            type = "integer",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        MonitoringRoleArn = {
            type = "string",
        },
        DomainIAMRoleName = {
            type = "string",
        },
        PromotionTier = {
            type = "integer",
        },
        EnableIAMDatabaseAuthentication = {
            type = "boolean",
        },
        DatabaseInsightsMode = {
            type = "string",
        },
        EnablePerformanceInsights = {
            type = "boolean",
        },
        PerformanceInsightsKMSKeyId = {
            type = "string",
        },
        PerformanceInsightsRetentionPeriod = {
            type = "integer",
        },
        CloudwatchLogsExportConfiguration = M.CloudwatchLogsExportConfiguration,
        ProcessorFeatures = {
            type = "list",
            member = M.ProcessorFeature,
        },
        UseDefaultProcessorFeatures = {
            type = "boolean",
        },
        DeletionProtection = {
            type = "boolean",
        },
        MaxAllocatedStorage = {
            type = "integer",
        },
        CertificateRotationRestart = {
            type = "boolean",
        },
        ReplicaMode = {
            type = "string",
        },
        AutomationMode = {
            type = "string",
        },
        ResumeFullAutomationModeMinutes = {
            type = "integer",
        },
        EnableCustomerOwnedIp = {
            type = "boolean",
        },
        NetworkType = {
            type = "string",
        },
        AwsBackupRecoveryPointArn = {
            type = "string",
        },
        ManageMasterUserPassword = {
            type = "boolean",
        },
        RotateMasterUserPassword = {
            type = "boolean",
        },
        MasterUserSecretKmsKeyId = {
            type = "string",
        },
        MultiTenant = {
            type = "boolean",
        },
        DedicatedLogVolume = {
            type = "boolean",
        },
        Engine = {
            type = "string",
        },
        AdditionalStorageVolumes = {
            type = "list",
            member = M.ModifyAdditionalStorageVolume,
        },
        TagSpecifications = {
            type = "list",
            member = M.TagSpecification,
        },
        MasterUserAuthenticationType = {
            type = "string",
        },
    },
}

M.ModifyDBInstanceOutput = {
    type = "structure",
    id = "ModifyDBInstanceOutput",
    members = {
        DBInstance = M.DBInstance,
    },
}

M.ModifyDBParameterGroupInput = {
    type = "structure",
    id = "ModifyDBParameterGroupInput",
    members = {
        DBParameterGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "list",
            member = M.Parameter,
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyDBParameterGroupOutput = {
    type = "structure",
    id = "ModifyDBParameterGroupOutput",
    members = {
        DBParameterGroupName = {
            type = "string",
        },
    },
}

M.ModifyDBProxyInput = {
    type = "structure",
    id = "ModifyDBProxyInput",
    members = {
        DBProxyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewDBProxyName = {
            type = "string",
        },
        DefaultAuthScheme = {
            type = "string",
        },
        Auth = {
            type = "list",
            member = M.UserAuthConfig,
        },
        RequireTLS = {
            type = "boolean",
        },
        IdleClientTimeout = {
            type = "integer",
        },
        DebugLogging = {
            type = "boolean",
        },
        RoleArn = {
            type = "string",
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ModifyDBProxyOutput = {
    type = "structure",
    id = "ModifyDBProxyOutput",
    members = {
        DBProxy = M.DBProxy,
    },
}

M.ModifyDBProxyEndpointInput = {
    type = "structure",
    id = "ModifyDBProxyEndpointInput",
    members = {
        DBProxyEndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewDBProxyEndpointName = {
            type = "string",
        },
        VpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ModifyDBProxyEndpointOutput = {
    type = "structure",
    id = "ModifyDBProxyEndpointOutput",
    members = {
        DBProxyEndpoint = M.DBProxyEndpoint,
    },
}

M.ConnectionPoolConfiguration = {
    type = "structure",
    id = "ConnectionPoolConfiguration",
    members = {
        MaxConnectionsPercent = {
            type = "integer",
        },
        MaxIdleConnectionsPercent = {
            type = "integer",
        },
        ConnectionBorrowTimeout = {
            type = "integer",
        },
        SessionPinningFilters = {
            type = "list",
            member = { type = "string" },
        },
        InitQuery = {
            type = "string",
        },
    },
}

M.ModifyDBProxyTargetGroupInput = {
    type = "structure",
    id = "ModifyDBProxyTargetGroupInput",
    members = {
        TargetGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DBProxyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionPoolConfig = M.ConnectionPoolConfiguration,
        NewName = {
            type = "string",
        },
    },
}

M.ModifyDBProxyTargetGroupOutput = {
    type = "structure",
    id = "ModifyDBProxyTargetGroupOutput",
    members = {
        DBProxyTargetGroup = M.DBProxyTargetGroup,
    },
}

M.RecommendedActionUpdate = {
    type = "structure",
    id = "RecommendedActionUpdate",
    members = {
        ActionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyDBRecommendationInput = {
    type = "structure",
    id = "ModifyDBRecommendationInput",
    members = {
        RecommendationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Locale = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        RecommendedActionUpdates = {
            type = "list",
            member = M.RecommendedActionUpdate,
        },
    },
}

M.ModifyDBRecommendationOutput = {
    type = "structure",
    id = "ModifyDBRecommendationOutput",
    members = {
        DBRecommendation = M.DBRecommendation,
    },
}

M.ModifyDBShardGroupInput = {
    type = "structure",
    id = "ModifyDBShardGroupInput",
    members = {
        DBShardGroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxACU = {
            type = "double",
        },
        MinACU = {
            type = "double",
        },
        ComputeRedundancy = {
            type = "integer",
        },
    },
}

M.ModifyDBShardGroupOutput = {
    type = "structure",
    id = "ModifyDBShardGroupOutput",
    members = {
        DBShardGroupResourceId = {
            type = "string",
        },
        DBShardGroupIdentifier = {
            type = "string",
        },
        DBClusterIdentifier = {
            type = "string",
        },
        MaxACU = {
            type = "double",
        },
        MinACU = {
            type = "double",
        },
        ComputeRedundancy = {
            type = "integer",
        },
        Status = {
            type = "string",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        Endpoint = {
            type = "string",
        },
        DBShardGroupArn = {
            type = "string",
        },
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ModifyDBSnapshotInput = {
    type = "structure",
    id = "ModifyDBSnapshotInput",
    members = {
        DBSnapshotIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EngineVersion = {
            type = "string",
        },
        OptionGroupName = {
            type = "string",
        },
    },
}

M.ModifyDBSnapshotOutput = {
    type = "structure",
    id = "ModifyDBSnapshotOutput",
    members = {
        DBSnapshot = M.DBSnapshot,
    },
}

M.ModifyDBSnapshotAttributeInput = {
    type = "structure",
    id = "ModifyDBSnapshotAttributeInput",
    members = {
        DBSnapshotIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValuesToAdd = {
            type = "list",
            member = { type = "string" },
        },
        ValuesToRemove = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ModifyDBSnapshotAttributeOutput = {
    type = "structure",
    id = "ModifyDBSnapshotAttributeOutput",
    members = {
        DBSnapshotAttributesResult = M.DBSnapshotAttributesResult,
    },
}

M.ModifyDBSubnetGroupInput = {
    type = "structure",
    id = "ModifyDBSubnetGroupInput",
    members = {
        DBSubnetGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DBSubnetGroupDescription = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyDBSubnetGroupOutput = {
    type = "structure",
    id = "ModifyDBSubnetGroupOutput",
    members = {
        DBSubnetGroup = M.DBSubnetGroup,
    },
}

M.SubnetAlreadyInUse = {
    type = "structure",
    id = "SubnetAlreadyInUse",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ModifyEventSubscriptionInput = {
    type = "structure",
    id = "ModifyEventSubscriptionInput",
    members = {
        SubscriptionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnsTopicArn = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
        EventCategories = {
            type = "list",
            member = { type = "string" },
        },
        Enabled = {
            type = "boolean",
        },
    },
}

M.ModifyEventSubscriptionOutput = {
    type = "structure",
    id = "ModifyEventSubscriptionOutput",
    members = {
        EventSubscription = M.EventSubscription,
    },
}

M.ModifyGlobalClusterInput = {
    type = "structure",
    id = "ModifyGlobalClusterInput",
    members = {
        GlobalClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewGlobalClusterIdentifier = {
            type = "string",
        },
        DeletionProtection = {
            type = "boolean",
        },
        EngineVersion = {
            type = "string",
        },
        AllowMajorVersionUpgrade = {
            type = "boolean",
        },
    },
}

M.ModifyGlobalClusterOutput = {
    type = "structure",
    id = "ModifyGlobalClusterOutput",
    members = {
        GlobalCluster = M.GlobalCluster,
    },
}

M.ModifyIntegrationInput = {
    type = "structure",
    id = "ModifyIntegrationInput",
    members = {
        IntegrationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IntegrationName = {
            type = "string",
        },
        DataFilter = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.ModifyIntegrationOutput = {
    type = "structure",
    id = "ModifyIntegrationOutput",
    members = {
        SourceArn = {
            type = "string",
        },
        TargetArn = {
            type = "string",
        },
        IntegrationName = {
            type = "string",
        },
        IntegrationArn = {
            type = "string",
        },
        KMSKeyId = {
            type = "string",
        },
        AdditionalEncryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Status = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        DataFilter = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
        },
        Errors = {
            type = "list",
            member = M.IntegrationError,
        },
    },
}

M.OptionConfiguration = {
    type = "structure",
    id = "OptionConfiguration",
    members = {
        OptionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Port = {
            type = "integer",
        },
        OptionVersion = {
            type = "string",
        },
        DBSecurityGroupMemberships = {
            type = "list",
            member = { type = "string" },
        },
        VpcSecurityGroupMemberships = {
            type = "list",
            member = { type = "string" },
        },
        OptionSettings = {
            type = "list",
            member = M.OptionSetting,
        },
    },
}

M.ModifyOptionGroupInput = {
    type = "structure",
    id = "ModifyOptionGroupInput",
    members = {
        OptionGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OptionsToInclude = {
            type = "list",
            member = M.OptionConfiguration,
        },
        OptionsToRemove = {
            type = "list",
            member = { type = "string" },
        },
        ApplyImmediately = {
            type = "boolean",
        },
    },
}

M.ModifyOptionGroupOutput = {
    type = "structure",
    id = "ModifyOptionGroupOutput",
    members = {
        OptionGroup = M.OptionGroup,
    },
}

M.ModifyTenantDatabaseInput = {
    type = "structure",
    id = "ModifyTenantDatabaseInput",
    members = {
        DBInstanceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TenantDBName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MasterUserPassword = {
            type = "string",
        },
        NewTenantDBName = {
            type = "string",
        },
        ManageMasterUserPassword = {
            type = "boolean",
        },
        RotateMasterUserPassword = {
            type = "boolean",
        },
        MasterUserSecretKmsKeyId = {
            type = "string",
        },
    },
}

M.ModifyTenantDatabaseOutput = {
    type = "structure",
    id = "ModifyTenantDatabaseOutput",
    members = {
        TenantDatabase = M.TenantDatabase,
    },
}

M.PromoteReadReplicaInput = {
    type = "structure",
    id = "PromoteReadReplicaInput",
    members = {
        DBInstanceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BackupRetentionPeriod = {
            type = "integer",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        TagSpecifications = {
            type = "list",
            member = M.TagSpecification,
        },
    },
}

M.PromoteReadReplicaOutput = {
    type = "structure",
    id = "PromoteReadReplicaOutput",
    members = {
        DBInstance = M.DBInstance,
    },
}

M.PromoteReadReplicaDBClusterInput = {
    type = "structure",
    id = "PromoteReadReplicaDBClusterInput",
    members = {
        DBClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PromoteReadReplicaDBClusterOutput = {
    type = "structure",
    id = "PromoteReadReplicaDBClusterOutput",
    members = {
        DBCluster = M.DBCluster,
    },
}

M.PurchaseReservedDBInstancesOfferingInput = {
    type = "structure",
    id = "PurchaseReservedDBInstancesOfferingInput",
    members = {
        ReservedDBInstancesOfferingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReservedDBInstanceId = {
            type = "string",
        },
        DBInstanceCount = {
            type = "integer",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PurchaseReservedDBInstancesOfferingOutput = {
    type = "structure",
    id = "PurchaseReservedDBInstancesOfferingOutput",
    members = {
        ReservedDBInstance = M.ReservedDBInstance,
    },
}

M.ReservedDBInstanceAlreadyExistsFault = {
    type = "structure",
    id = "ReservedDBInstanceAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReservedDBInstanceQuotaExceededFault = {
    type = "structure",
    id = "ReservedDBInstanceQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RebootDBClusterInput = {
    type = "structure",
    id = "RebootDBClusterInput",
    members = {
        DBClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RebootDBClusterOutput = {
    type = "structure",
    id = "RebootDBClusterOutput",
    members = {
        DBCluster = M.DBCluster,
    },
}

M.RebootDBInstanceInput = {
    type = "structure",
    id = "RebootDBInstanceInput",
    members = {
        DBInstanceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ForceFailover = {
            type = "boolean",
        },
    },
}

M.RebootDBInstanceOutput = {
    type = "structure",
    id = "RebootDBInstanceOutput",
    members = {
        DBInstance = M.DBInstance,
    },
}

M.RebootDBShardGroupInput = {
    type = "structure",
    id = "RebootDBShardGroupInput",
    members = {
        DBShardGroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RebootDBShardGroupOutput = {
    type = "structure",
    id = "RebootDBShardGroupOutput",
    members = {
        DBShardGroupResourceId = {
            type = "string",
        },
        DBShardGroupIdentifier = {
            type = "string",
        },
        DBClusterIdentifier = {
            type = "string",
        },
        MaxACU = {
            type = "double",
        },
        MinACU = {
            type = "double",
        },
        ComputeRedundancy = {
            type = "integer",
        },
        Status = {
            type = "string",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        Endpoint = {
            type = "string",
        },
        DBShardGroupArn = {
            type = "string",
        },
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DBProxyTargetAlreadyRegisteredFault = {
    type = "structure",
    id = "DBProxyTargetAlreadyRegisteredFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InsufficientAvailableIPsInSubnetFault = {
    type = "structure",
    id = "InsufficientAvailableIPsInSubnetFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RegisterDBProxyTargetsInput = {
    type = "structure",
    id = "RegisterDBProxyTargetsInput",
    members = {
        DBProxyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetGroupName = {
            type = "string",
        },
        DBInstanceIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        DBClusterIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RegisterDBProxyTargetsOutput = {
    type = "structure",
    id = "RegisterDBProxyTargetsOutput",
    members = {
        DBProxyTargets = {
            type = "list",
            member = M.DBProxyTarget,
        },
    },
}

M.RemoveFromGlobalClusterInput = {
    type = "structure",
    id = "RemoveFromGlobalClusterInput",
    members = {
        GlobalClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DbClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveFromGlobalClusterOutput = {
    type = "structure",
    id = "RemoveFromGlobalClusterOutput",
    members = {
        GlobalCluster = M.GlobalCluster,
    },
}

M.DBClusterRoleNotFoundFault = {
    type = "structure",
    id = "DBClusterRoleNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RemoveRoleFromDBClusterInput = {
    type = "structure",
    id = "RemoveRoleFromDBClusterInput",
    members = {
        DBClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeatureName = {
            type = "string",
        },
    },
}

M.RemoveRoleFromDBClusterOutput = {
    type = "structure",
    id = "RemoveRoleFromDBClusterOutput",
}

M.DBInstanceRoleNotFoundFault = {
    type = "structure",
    id = "DBInstanceRoleNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RemoveRoleFromDBInstanceInput = {
    type = "structure",
    id = "RemoveRoleFromDBInstanceInput",
    members = {
        DBInstanceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FeatureName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveRoleFromDBInstanceOutput = {
    type = "structure",
    id = "RemoveRoleFromDBInstanceOutput",
}

M.RemoveSourceIdentifierFromSubscriptionInput = {
    type = "structure",
    id = "RemoveSourceIdentifierFromSubscriptionInput",
    members = {
        SubscriptionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveSourceIdentifierFromSubscriptionOutput = {
    type = "structure",
    id = "RemoveSourceIdentifierFromSubscriptionOutput",
    members = {
        EventSubscription = M.EventSubscription,
    },
}

M.RemoveTagsFromResourceInput = {
    type = "structure",
    id = "RemoveTagsFromResourceInput",
    members = {
        ResourceName = {
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
    id = "RemoveTagsFromResourceOutput",
}

M.ResetDBClusterParameterGroupInput = {
    type = "structure",
    id = "ResetDBClusterParameterGroupInput",
    members = {
        DBClusterParameterGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResetAllParameters = {
            type = "boolean",
        },
        Parameters = {
            type = "list",
            member = M.Parameter,
        },
    },
}

M.ResetDBClusterParameterGroupOutput = {
    type = "structure",
    id = "ResetDBClusterParameterGroupOutput",
    members = {
        DBClusterParameterGroupName = {
            type = "string",
        },
    },
}

M.ResetDBParameterGroupInput = {
    type = "structure",
    id = "ResetDBParameterGroupInput",
    members = {
        DBParameterGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResetAllParameters = {
            type = "boolean",
        },
        Parameters = {
            type = "list",
            member = M.Parameter,
        },
    },
}

M.ResetDBParameterGroupOutput = {
    type = "structure",
    id = "ResetDBParameterGroupOutput",
    members = {
        DBParameterGroupName = {
            type = "string",
        },
    },
}

M.InvalidS3BucketFault = {
    type = "structure",
    id = "InvalidS3BucketFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RestoreDBClusterFromS3Input = {
    type = "structure",
    id = "RestoreDBClusterFromS3Input",
    members = {
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        BackupRetentionPeriod = {
            type = "integer",
        },
        CharacterSetName = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
        },
        DBClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DBClusterParameterGroupName = {
            type = "string",
        },
        VpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        DBSubnetGroupName = {
            type = "string",
        },
        Engine = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EngineVersion = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        MasterUsername = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MasterUserPassword = {
            type = "string",
        },
        OptionGroupName = {
            type = "string",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        StorageEncrypted = {
            type = "boolean",
        },
        KmsKeyId = {
            type = "string",
        },
        EnableIAMDatabaseAuthentication = {
            type = "boolean",
        },
        SourceEngine = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceEngineVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Prefix = {
            type = "string",
        },
        S3IngestionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BacktrackWindow = {
            type = "long",
        },
        EnableCloudwatchLogsExports = {
            type = "list",
            member = { type = "string" },
        },
        DeletionProtection = {
            type = "boolean",
        },
        CopyTagsToSnapshot = {
            type = "boolean",
        },
        Domain = {
            type = "string",
        },
        DomainIAMRoleName = {
            type = "string",
        },
        StorageType = {
            type = "string",
        },
        NetworkType = {
            type = "string",
        },
        ServerlessV2ScalingConfiguration = M.ServerlessV2ScalingConfiguration,
        ManageMasterUserPassword = {
            type = "boolean",
        },
        MasterUserSecretKmsKeyId = {
            type = "string",
        },
        EngineLifecycleSupport = {
            type = "string",
        },
        TagSpecifications = {
            type = "list",
            member = M.TagSpecification,
        },
    },
}

M.RestoreDBClusterFromS3Output = {
    type = "structure",
    id = "RestoreDBClusterFromS3Output",
    members = {
        DBCluster = M.DBCluster,
    },
}

M.InsufficientDBClusterCapacityFault = {
    type = "structure",
    id = "InsufficientDBClusterCapacityFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRestoreFault = {
    type = "structure",
    id = "InvalidRestoreFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RestoreDBClusterFromSnapshotInput = {
    type = "structure",
    id = "RestoreDBClusterFromSnapshotInput",
    members = {
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        DBClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnapshotIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Engine = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EngineVersion = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        DBSubnetGroupName = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
        },
        OptionGroupName = {
            type = "string",
        },
        VpcSecurityGroupIds = {
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
        EnableIAMDatabaseAuthentication = {
            type = "boolean",
        },
        BacktrackWindow = {
            type = "long",
        },
        EnableCloudwatchLogsExports = {
            type = "list",
            member = { type = "string" },
        },
        EngineMode = {
            type = "string",
        },
        ScalingConfiguration = M.ScalingConfiguration,
        DBClusterParameterGroupName = {
            type = "string",
        },
        DeletionProtection = {
            type = "boolean",
        },
        CopyTagsToSnapshot = {
            type = "boolean",
        },
        Domain = {
            type = "string",
        },
        DomainIAMRoleName = {
            type = "string",
        },
        DBClusterInstanceClass = {
            type = "string",
        },
        StorageType = {
            type = "string",
        },
        Iops = {
            type = "integer",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        NetworkType = {
            type = "string",
        },
        ServerlessV2ScalingConfiguration = M.ServerlessV2ScalingConfiguration,
        RdsCustomClusterConfiguration = M.RdsCustomClusterConfiguration,
        MonitoringInterval = {
            type = "integer",
        },
        MonitoringRoleArn = {
            type = "string",
        },
        EnablePerformanceInsights = {
            type = "boolean",
        },
        PerformanceInsightsKMSKeyId = {
            type = "string",
        },
        PerformanceInsightsRetentionPeriod = {
            type = "integer",
        },
        BackupRetentionPeriod = {
            type = "integer",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        EngineLifecycleSupport = {
            type = "string",
        },
        TagSpecifications = {
            type = "list",
            member = M.TagSpecification,
        },
        EnableVPCNetworking = {
            type = "boolean",
        },
        EnableInternetAccessGateway = {
            type = "boolean",
        },
    },
}

M.RestoreDBClusterFromSnapshotOutput = {
    type = "structure",
    id = "RestoreDBClusterFromSnapshotOutput",
    members = {
        DBCluster = M.DBCluster,
    },
}

M.RestoreDBClusterToPointInTimeInput = {
    type = "structure",
    id = "RestoreDBClusterToPointInTimeInput",
    members = {
        DBClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RestoreType = {
            type = "string",
        },
        SourceDBClusterIdentifier = {
            type = "string",
        },
        RestoreToTime = {
            type = "timestamp",
        },
        UseLatestRestorableTime = {
            type = "boolean",
        },
        Port = {
            type = "integer",
        },
        DBSubnetGroupName = {
            type = "string",
        },
        OptionGroupName = {
            type = "string",
        },
        VpcSecurityGroupIds = {
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
        EnableIAMDatabaseAuthentication = {
            type = "boolean",
        },
        BacktrackWindow = {
            type = "long",
        },
        EnableCloudwatchLogsExports = {
            type = "list",
            member = { type = "string" },
        },
        DBClusterParameterGroupName = {
            type = "string",
        },
        DeletionProtection = {
            type = "boolean",
        },
        CopyTagsToSnapshot = {
            type = "boolean",
        },
        Domain = {
            type = "string",
        },
        DomainIAMRoleName = {
            type = "string",
        },
        DBClusterInstanceClass = {
            type = "string",
        },
        StorageType = {
            type = "string",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        Iops = {
            type = "integer",
        },
        NetworkType = {
            type = "string",
        },
        SourceDbClusterResourceId = {
            type = "string",
        },
        ServerlessV2ScalingConfiguration = M.ServerlessV2ScalingConfiguration,
        ScalingConfiguration = M.ScalingConfiguration,
        EngineMode = {
            type = "string",
        },
        RdsCustomClusterConfiguration = M.RdsCustomClusterConfiguration,
        MonitoringInterval = {
            type = "integer",
        },
        MonitoringRoleArn = {
            type = "string",
        },
        EnablePerformanceInsights = {
            type = "boolean",
        },
        PerformanceInsightsKMSKeyId = {
            type = "string",
        },
        PerformanceInsightsRetentionPeriod = {
            type = "integer",
        },
        BackupRetentionPeriod = {
            type = "integer",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        EngineLifecycleSupport = {
            type = "string",
        },
        TagSpecifications = {
            type = "list",
            member = M.TagSpecification,
        },
        EnableVPCNetworking = {
            type = "boolean",
        },
        EnableInternetAccessGateway = {
            type = "boolean",
        },
    },
}

M.RestoreDBClusterToPointInTimeOutput = {
    type = "structure",
    id = "RestoreDBClusterToPointInTimeOutput",
    members = {
        DBCluster = M.DBCluster,
    },
}

M.RestoreDBInstanceFromDBSnapshotInput = {
    type = "structure",
    id = "RestoreDBInstanceFromDBSnapshotInput",
    members = {
        DBInstanceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DBSnapshotIdentifier = {
            type = "string",
        },
        DBInstanceClass = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        AvailabilityZone = {
            type = "string",
        },
        DBSubnetGroupName = {
            type = "string",
        },
        MultiAZ = {
            type = "boolean",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        LicenseModel = {
            type = "string",
        },
        DBName = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        Iops = {
            type = "integer",
        },
        StorageThroughput = {
            type = "integer",
        },
        OptionGroupName = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        StorageType = {
            type = "string",
        },
        TdeCredentialArn = {
            type = "string",
        },
        TdeCredentialPassword = {
            type = "string",
        },
        VpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        Domain = {
            type = "string",
        },
        DomainFqdn = {
            type = "string",
        },
        DomainOu = {
            type = "string",
        },
        DomainAuthSecretArn = {
            type = "string",
        },
        DomainDnsIps = {
            type = "list",
            member = { type = "string" },
        },
        CopyTagsToSnapshot = {
            type = "boolean",
        },
        DomainIAMRoleName = {
            type = "string",
        },
        EnableIAMDatabaseAuthentication = {
            type = "boolean",
        },
        EnableCloudwatchLogsExports = {
            type = "list",
            member = { type = "string" },
        },
        ProcessorFeatures = {
            type = "list",
            member = M.ProcessorFeature,
        },
        UseDefaultProcessorFeatures = {
            type = "boolean",
        },
        DBParameterGroupName = {
            type = "string",
        },
        DeletionProtection = {
            type = "boolean",
        },
        EnableCustomerOwnedIp = {
            type = "boolean",
        },
        NetworkType = {
            type = "string",
        },
        BackupTarget = {
            type = "string",
        },
        CustomIamInstanceProfile = {
            type = "string",
        },
        AllocatedStorage = {
            type = "integer",
        },
        DBClusterSnapshotIdentifier = {
            type = "string",
        },
        BackupRetentionPeriod = {
            type = "integer",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        DedicatedLogVolume = {
            type = "boolean",
        },
        CACertificateIdentifier = {
            type = "string",
        },
        EngineLifecycleSupport = {
            type = "string",
        },
        AdditionalStorageVolumes = {
            type = "list",
            member = M.AdditionalStorageVolume,
        },
        TagSpecifications = {
            type = "list",
            member = M.TagSpecification,
        },
        ManageMasterUserPassword = {
            type = "boolean",
        },
        MasterUserSecretKmsKeyId = {
            type = "string",
        },
    },
}

M.RestoreDBInstanceFromDBSnapshotOutput = {
    type = "structure",
    id = "RestoreDBInstanceFromDBSnapshotOutput",
    members = {
        DBInstance = M.DBInstance,
    },
}

M.RestoreDBInstanceFromS3Input = {
    type = "structure",
    id = "RestoreDBInstanceFromS3Input",
    members = {
        DBName = {
            type = "string",
        },
        DBInstanceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllocatedStorage = {
            type = "integer",
        },
        DBInstanceClass = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Engine = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MasterUsername = {
            type = "string",
        },
        MasterUserPassword = {
            type = "string",
        },
        DBSecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        VpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        AvailabilityZone = {
            type = "string",
        },
        DBSubnetGroupName = {
            type = "string",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        DBParameterGroupName = {
            type = "string",
        },
        BackupRetentionPeriod = {
            type = "integer",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        MultiAZ = {
            type = "boolean",
        },
        EngineVersion = {
            type = "string",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        LicenseModel = {
            type = "string",
        },
        Iops = {
            type = "integer",
        },
        StorageThroughput = {
            type = "integer",
        },
        OptionGroupName = {
            type = "string",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        StorageType = {
            type = "string",
        },
        StorageEncrypted = {
            type = "boolean",
        },
        KmsKeyId = {
            type = "string",
        },
        CopyTagsToSnapshot = {
            type = "boolean",
        },
        MonitoringInterval = {
            type = "integer",
        },
        MonitoringRoleArn = {
            type = "string",
        },
        EnableIAMDatabaseAuthentication = {
            type = "boolean",
        },
        SourceEngine = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceEngineVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Prefix = {
            type = "string",
        },
        S3IngestionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatabaseInsightsMode = {
            type = "string",
        },
        EnablePerformanceInsights = {
            type = "boolean",
        },
        PerformanceInsightsKMSKeyId = {
            type = "string",
        },
        PerformanceInsightsRetentionPeriod = {
            type = "integer",
        },
        EnableCloudwatchLogsExports = {
            type = "list",
            member = { type = "string" },
        },
        ProcessorFeatures = {
            type = "list",
            member = M.ProcessorFeature,
        },
        UseDefaultProcessorFeatures = {
            type = "boolean",
        },
        DeletionProtection = {
            type = "boolean",
        },
        MaxAllocatedStorage = {
            type = "integer",
        },
        NetworkType = {
            type = "string",
        },
        ManageMasterUserPassword = {
            type = "boolean",
        },
        MasterUserSecretKmsKeyId = {
            type = "string",
        },
        DedicatedLogVolume = {
            type = "boolean",
        },
        CACertificateIdentifier = {
            type = "string",
        },
        EngineLifecycleSupport = {
            type = "string",
        },
        AdditionalStorageVolumes = {
            type = "list",
            member = M.AdditionalStorageVolume,
        },
        TagSpecifications = {
            type = "list",
            member = M.TagSpecification,
        },
    },
}

M.RestoreDBInstanceFromS3Output = {
    type = "structure",
    id = "RestoreDBInstanceFromS3Output",
    members = {
        DBInstance = M.DBInstance,
    },
}

M.PointInTimeRestoreNotEnabledFault = {
    type = "structure",
    id = "PointInTimeRestoreNotEnabledFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RestoreDBInstanceToPointInTimeInput = {
    type = "structure",
    id = "RestoreDBInstanceToPointInTimeInput",
    members = {
        SourceDBInstanceIdentifier = {
            type = "string",
        },
        TargetDBInstanceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RestoreTime = {
            type = "timestamp",
        },
        UseLatestRestorableTime = {
            type = "boolean",
        },
        DBInstanceClass = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        AvailabilityZone = {
            type = "string",
        },
        DBSubnetGroupName = {
            type = "string",
        },
        MultiAZ = {
            type = "boolean",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        LicenseModel = {
            type = "string",
        },
        DBName = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        Iops = {
            type = "integer",
        },
        StorageThroughput = {
            type = "integer",
        },
        OptionGroupName = {
            type = "string",
        },
        CopyTagsToSnapshot = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        StorageType = {
            type = "string",
        },
        TdeCredentialArn = {
            type = "string",
        },
        TdeCredentialPassword = {
            type = "string",
        },
        VpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        Domain = {
            type = "string",
        },
        DomainIAMRoleName = {
            type = "string",
        },
        DomainFqdn = {
            type = "string",
        },
        DomainOu = {
            type = "string",
        },
        DomainAuthSecretArn = {
            type = "string",
        },
        DomainDnsIps = {
            type = "list",
            member = { type = "string" },
        },
        EnableIAMDatabaseAuthentication = {
            type = "boolean",
        },
        EnableCloudwatchLogsExports = {
            type = "list",
            member = { type = "string" },
        },
        ProcessorFeatures = {
            type = "list",
            member = M.ProcessorFeature,
        },
        UseDefaultProcessorFeatures = {
            type = "boolean",
        },
        DBParameterGroupName = {
            type = "string",
        },
        DeletionProtection = {
            type = "boolean",
        },
        SourceDbiResourceId = {
            type = "string",
        },
        MaxAllocatedStorage = {
            type = "integer",
        },
        EnableCustomerOwnedIp = {
            type = "boolean",
        },
        NetworkType = {
            type = "string",
        },
        SourceDBInstanceAutomatedBackupsArn = {
            type = "string",
        },
        BackupTarget = {
            type = "string",
        },
        CustomIamInstanceProfile = {
            type = "string",
        },
        AllocatedStorage = {
            type = "integer",
        },
        BackupRetentionPeriod = {
            type = "integer",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        DedicatedLogVolume = {
            type = "boolean",
        },
        CACertificateIdentifier = {
            type = "string",
        },
        EngineLifecycleSupport = {
            type = "string",
        },
        AdditionalStorageVolumes = {
            type = "list",
            member = M.AdditionalStorageVolume,
        },
        TagSpecifications = {
            type = "list",
            member = M.TagSpecification,
        },
        ManageMasterUserPassword = {
            type = "boolean",
        },
        MasterUserSecretKmsKeyId = {
            type = "string",
        },
    },
}

M.RestoreDBInstanceToPointInTimeOutput = {
    type = "structure",
    id = "RestoreDBInstanceToPointInTimeOutput",
    members = {
        DBInstance = M.DBInstance,
    },
}

M.RevokeDBSecurityGroupIngressInput = {
    type = "structure",
    id = "RevokeDBSecurityGroupIngressInput",
    members = {
        DBSecurityGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CIDRIP = {
            type = "string",
        },
        EC2SecurityGroupName = {
            type = "string",
        },
        EC2SecurityGroupId = {
            type = "string",
        },
        EC2SecurityGroupOwnerId = {
            type = "string",
        },
    },
}

M.RevokeDBSecurityGroupIngressOutput = {
    type = "structure",
    id = "RevokeDBSecurityGroupIngressOutput",
    members = {
        DBSecurityGroup = M.DBSecurityGroup,
    },
}

M.StartActivityStreamInput = {
    type = "structure",
    id = "StartActivityStreamInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplyImmediately = {
            type = "boolean",
        },
        EngineNativeAuditFieldsIncluded = {
            type = "boolean",
        },
    },
}

M.StartActivityStreamOutput = {
    type = "structure",
    id = "StartActivityStreamOutput",
    members = {
        KmsKeyId = {
            type = "string",
        },
        KinesisStreamName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Mode = {
            type = "string",
        },
        EngineNativeAuditFieldsIncluded = {
            type = "boolean",
        },
        ApplyImmediately = {
            type = "boolean",
        },
    },
}

M.StartDBClusterInput = {
    type = "structure",
    id = "StartDBClusterInput",
    members = {
        DBClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartDBClusterOutput = {
    type = "structure",
    id = "StartDBClusterOutput",
    members = {
        DBCluster = M.DBCluster,
    },
}

M.StartDBInstanceInput = {
    type = "structure",
    id = "StartDBInstanceInput",
    members = {
        DBInstanceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartDBInstanceOutput = {
    type = "structure",
    id = "StartDBInstanceOutput",
    members = {
        DBInstance = M.DBInstance,
    },
}

M.StartDBInstanceAutomatedBackupsReplicationInput = {
    type = "structure",
    id = "StartDBInstanceAutomatedBackupsReplicationInput",
    members = {
        SourceDBInstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BackupRetentionPeriod = {
            type = "integer",
        },
        KmsKeyId = {
            type = "string",
        },
        PreSignedUrl = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.StartDBInstanceAutomatedBackupsReplicationOutput = {
    type = "structure",
    id = "StartDBInstanceAutomatedBackupsReplicationOutput",
    members = {
        DBInstanceAutomatedBackup = M.DBInstanceAutomatedBackup,
    },
}

M.ExportTaskAlreadyExistsFault = {
    type = "structure",
    id = "ExportTaskAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IamRoleMissingPermissionsFault = {
    type = "structure",
    id = "IamRoleMissingPermissionsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IamRoleNotFoundFault = {
    type = "structure",
    id = "IamRoleNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidExportOnlyFault = {
    type = "structure",
    id = "InvalidExportOnlyFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidExportSourceStateFault = {
    type = "structure",
    id = "InvalidExportSourceStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StartExportTaskInput = {
    type = "structure",
    id = "StartExportTaskInput",
    members = {
        ExportTaskIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Prefix = {
            type = "string",
        },
        ExportOnly = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.StartExportTaskOutput = {
    type = "structure",
    id = "StartExportTaskOutput",
    members = {
        ExportTaskIdentifier = {
            type = "string",
        },
        SourceArn = {
            type = "string",
        },
        ExportOnly = {
            type = "list",
            member = { type = "string" },
        },
        SnapshotTime = {
            type = "timestamp",
        },
        TaskStartTime = {
            type = "timestamp",
        },
        TaskEndTime = {
            type = "timestamp",
        },
        S3Bucket = {
            type = "string",
        },
        S3Prefix = {
            type = "string",
        },
        IamRoleArn = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        PercentProgress = {
            type = "integer",
        },
        TotalExtractedDataInGB = {
            type = "integer",
        },
        FailureCause = {
            type = "string",
        },
        WarningMessage = {
            type = "string",
        },
        SourceType = {
            type = "string",
        },
    },
}

M.StopActivityStreamInput = {
    type = "structure",
    id = "StopActivityStreamInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplyImmediately = {
            type = "boolean",
        },
    },
}

M.StopActivityStreamOutput = {
    type = "structure",
    id = "StopActivityStreamOutput",
    members = {
        KmsKeyId = {
            type = "string",
        },
        KinesisStreamName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.StopDBClusterInput = {
    type = "structure",
    id = "StopDBClusterInput",
    members = {
        DBClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopDBClusterOutput = {
    type = "structure",
    id = "StopDBClusterOutput",
    members = {
        DBCluster = M.DBCluster,
    },
}

M.StopDBInstanceInput = {
    type = "structure",
    id = "StopDBInstanceInput",
    members = {
        DBInstanceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DBSnapshotIdentifier = {
            type = "string",
        },
    },
}

M.StopDBInstanceOutput = {
    type = "structure",
    id = "StopDBInstanceOutput",
    members = {
        DBInstance = M.DBInstance,
    },
}

M.StopDBInstanceAutomatedBackupsReplicationInput = {
    type = "structure",
    id = "StopDBInstanceAutomatedBackupsReplicationInput",
    members = {
        SourceDBInstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopDBInstanceAutomatedBackupsReplicationOutput = {
    type = "structure",
    id = "StopDBInstanceAutomatedBackupsReplicationOutput",
    members = {
        DBInstanceAutomatedBackup = M.DBInstanceAutomatedBackup,
    },
}

M.SwitchoverBlueGreenDeploymentInput = {
    type = "structure",
    id = "SwitchoverBlueGreenDeploymentInput",
    members = {
        BlueGreenDeploymentIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SwitchoverTimeout = {
            type = "integer",
        },
    },
}

M.SwitchoverBlueGreenDeploymentOutput = {
    type = "structure",
    id = "SwitchoverBlueGreenDeploymentOutput",
    members = {
        BlueGreenDeployment = M.BlueGreenDeployment,
    },
}

M.SwitchoverGlobalClusterInput = {
    type = "structure",
    id = "SwitchoverGlobalClusterInput",
    members = {
        GlobalClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetDbClusterIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SwitchoverGlobalClusterOutput = {
    type = "structure",
    id = "SwitchoverGlobalClusterOutput",
    members = {
        GlobalCluster = M.GlobalCluster,
    },
}

M.SwitchoverReadReplicaInput = {
    type = "structure",
    id = "SwitchoverReadReplicaInput",
    members = {
        DBInstanceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SwitchoverReadReplicaOutput = {
    type = "structure",
    id = "SwitchoverReadReplicaOutput",
    members = {
        DBInstance = M.DBInstance,
    },
}

return M
