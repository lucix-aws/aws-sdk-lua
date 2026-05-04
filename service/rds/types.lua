local M = {}

M.AccountQuota = {
    type = "structure",
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
}

M.DBClusterNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBClusterRoleAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBClusterRoleQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDBClusterStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AddRoleToDBInstanceInput = {
    type = "structure",
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
}

M.DBInstanceNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBInstanceRoleAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBInstanceRoleQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDBInstanceStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AddSourceIdentifierToSubscriptionInput = {
    type = "structure",
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
    members = {
        EventSubscription = M.EventSubscription,
    },
}

M.SourceNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SubscriptionNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
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
}

M.BlueGreenDeploymentNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBProxyEndpointNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBProxyNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBProxyTargetGroupNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBShardGroupNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBSnapshotNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBSnapshotTenantDatabaseNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IntegrationNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDBClusterEndpointStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TenantDatabaseNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApplyPendingMaintenanceActionInput = {
    type = "structure",
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
    members = {
        ResourcePendingMaintenanceActions = M.ResourcePendingMaintenanceActions,
    },
}

M.ResourceNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AuthorizationAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AuthorizationQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AuthorizeDBSecurityGroupIngressInput = {
    type = "structure",
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
    members = {
        DBSecurityGroup = M.DBSecurityGroup,
    },
}

M.DBSecurityGroupNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDBSecurityGroupStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BacktrackDBClusterInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidExportTaskStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CopyDBClusterParameterGroupInput = {
    type = "structure",
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
    members = {
        DBClusterParameterGroup = M.DBClusterParameterGroup,
    },
}

M.DBParameterGroupAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBParameterGroupNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBParameterGroupQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CopyDBClusterSnapshotInput = {
    type = "structure",
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
    members = {
        DBClusterSnapshot = M.DBClusterSnapshot,
    },
}

M.DBClusterSnapshotAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBClusterSnapshotNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDBClusterSnapshotStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSKeyNotAccessibleFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SnapshotQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CopyDBParameterGroupInput = {
    type = "structure",
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
    members = {
        DBParameterGroup = M.DBParameterGroup,
    },
}

M.CopyDBSnapshotInput = {
    type = "structure",
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
    members = {
        DBSnapshot = M.DBSnapshot,
    },
}

M.CustomAvailabilityZoneNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBSnapshotAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDBSnapshotStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CopyOptionGroupInput = {
    type = "structure",
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
    members = {
        OptionGroup = M.OptionGroup,
    },
}

M.OptionGroupAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OptionGroupNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OptionGroupQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BlueGreenDeploymentAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateBlueGreenDeploymentInput = {
    type = "structure",
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
    members = {
        BlueGreenDeployment = M.BlueGreenDeployment,
    },
}

M.DBClusterParameterGroupNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBClusterQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InstanceQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SourceClusterNotSupportedFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SourceDatabaseNotSupportedFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StorageQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateCustomDBEngineVersionFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateCustomDBEngineVersionInput = {
    type = "structure",
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
    members = {
        TimezoneName = {
            type = "string",
        },
    },
}

M.UpgradeTarget = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CustomDBEngineVersionNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CustomDBEngineVersionQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Ec2ImagePropertiesNotSupportedFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidCustomDBEngineVersionStateFault = {
    type = "structure",
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
    members = {
        DBCluster = M.DBCluster,
    },
}

M.DBClusterAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBSubnetGroupDoesNotCoverEnoughAZs = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBSubnetGroupNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DomainNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GlobalClusterNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InsufficientDBInstanceCapacityFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InsufficientStorageClusterCapacityFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDBSubnetGroupFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDBSubnetGroupStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidGlobalClusterStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSubnet = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidVPCNetworkStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NetworkTypeNotSupported = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StorageTypeNotSupportedFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.VpcEncryptionControlViolationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateDBClusterEndpointInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBClusterEndpointQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateDBClusterParameterGroupInput = {
    type = "structure",
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
    members = {
        DBClusterParameterGroup = M.DBClusterParameterGroup,
    },
}

M.CreateDBClusterSnapshotInput = {
    type = "structure",
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
    members = {
        DBClusterSnapshot = M.DBClusterSnapshot,
    },
}

M.AuthorizationNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BackupPolicyNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CertificateNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateDBInstanceInput = {
    type = "structure",
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
    members = {
        DBInstanceAutomatedBackupsArn = {
            type = "string",
        },
    },
}

M.DBParameterGroupStatus = {
    type = "structure",
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
    members = {
        Name = {
            type = "string",
        },
    },
}

M.Outpost = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.Subnet = {
    type = "structure",
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
    members = {
        DBInstance = M.DBInstance,
    },
}

M.DBInstanceAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ProvisionedIopsNotAvailableInAZFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TenantDatabaseQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateDBInstanceReadReplicaInput = {
    type = "structure",
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
    members = {
        DBInstance = M.DBInstance,
    },
}

M.DBSubnetGroupNotAllowedFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateDBParameterGroupInput = {
    type = "structure",
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
    members = {
        DBProxy = M.DBProxy,
    },
}

M.DBProxyAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBProxyQuotaExceededFault = {
    type = "structure",
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
    members = {
        DBProxyEndpoint = M.DBProxyEndpoint,
    },
}

M.DBProxyEndpointAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBProxyEndpointQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDBProxyStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateDBSecurityGroupInput = {
    type = "structure",
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
    members = {
        DBSecurityGroup = M.DBSecurityGroup,
    },
}

M.DBSecurityGroupAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBSecurityGroupNotSupportedFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBSecurityGroupQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateDBShardGroupInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaxDBShardGroupLimitReached = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedDBEngineVersionFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateDBSnapshotInput = {
    type = "structure",
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
    members = {
        DBSnapshot = M.DBSnapshot,
    },
}

M.CreateDBSubnetGroupInput = {
    type = "structure",
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
    members = {
        DBSubnetGroup = M.DBSubnetGroup,
    },
}

M.DBSubnetGroupAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBSubnetGroupQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBSubnetQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateEventSubscriptionInput = {
    type = "structure",
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
    members = {
        EventSubscription = M.EventSubscription,
    },
}

M.EventSubscriptionQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SNSInvalidTopicFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SNSNoAuthorizationFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SNSTopicArnNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SubscriptionAlreadyExistFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SubscriptionCategoryNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateGlobalClusterInput = {
    type = "structure",
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
    members = {
        GlobalCluster = M.GlobalCluster,
    },
}

M.GlobalClusterAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GlobalClusterQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDBShardGroupStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateIntegrationInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IntegrationConflictOperationFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IntegrationQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateOptionGroupInput = {
    type = "structure",
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
    members = {
        OptionGroup = M.OptionGroup,
    },
}

M.CreateTenantDatabaseInput = {
    type = "structure",
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
    members = {
        TenantDatabase = M.TenantDatabase,
    },
}

M.TenantDatabaseAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteBlueGreenDeploymentInput = {
    type = "structure",
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
    members = {
        BlueGreenDeployment = M.BlueGreenDeployment,
    },
}

M.InvalidBlueGreenDeploymentStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteCustomDBEngineVersionInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteDBClusterInput = {
    type = "structure",
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
    members = {
        DBCluster = M.DBCluster,
    },
}

M.DBClusterAutomatedBackupNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteDBClusterAutomatedBackupInput = {
    type = "structure",
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
    members = {
        DBClusterAutomatedBackup = M.DBClusterAutomatedBackup,
    },
}

M.InvalidDBClusterAutomatedBackupStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBClusterEndpointNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteDBClusterEndpointInput = {
    type = "structure",
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
}

M.InvalidDBParameterGroupStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteDBClusterSnapshotInput = {
    type = "structure",
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
    members = {
        DBClusterSnapshot = M.DBClusterSnapshot,
    },
}

M.DBInstanceAutomatedBackupQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteDBInstanceInput = {
    type = "structure",
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
    members = {
        DBInstance = M.DBInstance,
    },
}

M.DBInstanceAutomatedBackupNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteDBInstanceAutomatedBackupInput = {
    type = "structure",
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
    members = {
        DBInstanceAutomatedBackup = M.DBInstanceAutomatedBackup,
    },
}

M.InvalidDBInstanceAutomatedBackupStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteDBParameterGroupInput = {
    type = "structure",
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
}

M.DeleteDBProxyInput = {
    type = "structure",
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
    members = {
        DBProxy = M.DBProxy,
    },
}

M.DeleteDBProxyEndpointInput = {
    type = "structure",
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
    members = {
        DBProxyEndpoint = M.DBProxyEndpoint,
    },
}

M.InvalidDBProxyEndpointStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteDBSecurityGroupInput = {
    type = "structure",
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
}

M.DeleteDBShardGroupInput = {
    type = "structure",
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
    members = {
        DBSnapshot = M.DBSnapshot,
    },
}

M.DeleteDBSubnetGroupInput = {
    type = "structure",
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
}

M.InvalidDBSubnetStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteEventSubscriptionInput = {
    type = "structure",
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
    members = {
        EventSubscription = M.EventSubscription,
    },
}

M.InvalidEventSubscriptionStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteGlobalClusterInput = {
    type = "structure",
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
    members = {
        GlobalCluster = M.GlobalCluster,
    },
}

M.DeleteIntegrationInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteOptionGroupInput = {
    type = "structure",
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
}

M.InvalidOptionGroupStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteTenantDatabaseInput = {
    type = "structure",
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
    members = {
        TenantDatabase = M.TenantDatabase,
    },
}

M.DBProxyTargetNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeregisterDBProxyTargetsInput = {
    type = "structure",
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
}

M.DescribeAccountAttributesInput = {
    type = "structure",
}

M.DescribeAccountAttributesOutput = {
    type = "structure",
    members = {
        AccountQuotas = {
            type = "list",
            member = M.AccountQuota,
        },
    },
}

M.Filter = {
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

M.DescribeBlueGreenDeploymentsInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeDBClusterBacktracksInput = {
    type = "structure",
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
    members = {
        DBClusterSnapshotAttributesResult = M.DBClusterSnapshotAttributesResult,
    },
}

M.DescribeDBClusterSnapshotsInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeDBLogFilesInput = {
    type = "structure",
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
    members = {
        GroupBy = M.PerformanceInsightsMetricDimensionGroup,
        Metric = {
            type = "string",
        },
    },
}

M.MetricQuery = {
    type = "structure",
    members = {
        PerformanceInsightsMetricQuery = M.PerformanceInsightsMetricQuery,
    },
}

M.ScalarReferenceDetails = {
    type = "structure",
    members = {
        Value = {
            type = "double",
        },
    },
}

M.ReferenceDetails = {
    type = "structure",
    members = {
        ScalarReferenceDetails = M.ScalarReferenceDetails,
    },
}

M.MetricReference = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        ReferenceDetails = M.ReferenceDetails,
    },
}

M.Metric = {
    type = "structure",
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
    members = {
        PerformanceIssueDetails = M.PerformanceIssueDetails,
    },
}

M.DocLink = {
    type = "structure",
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
    members = {
        DBSnapshotAttributesResult = M.DBSnapshotAttributesResult,
    },
}

M.DescribeDBSnapshotsInput = {
    type = "structure",
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
    members = {
        EngineDefaults = M.EngineDefaults,
    },
}

M.DescribeEngineDefaultParametersInput = {
    type = "structure",
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
    members = {
        EngineDefaults = M.EngineDefaults,
    },
}

M.DescribeEventCategoriesInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeReservedDBInstancesOfferingsInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeServerlessV2PlatformVersionsInput = {
    type = "structure",
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
    members = {
        ValidDBInstanceModificationsMessage = M.ValidDBInstanceModificationsMessage,
    },
}

M.DisableHttpEndpointInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBLogFileNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DownloadDBLogFilePortionInput = {
    type = "structure",
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
    members = {
        DBCluster = M.DBCluster,
    },
}

M.FailoverGlobalClusterInput = {
    type = "structure",
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
    members = {
        GlobalCluster = M.GlobalCluster,
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
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
    members = {
        Certificate = M.Certificate,
    },
}

M.InvalidDBClusterCapacityFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ModifyCurrentDBClusterCapacityInput = {
    type = "structure",
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
    members = {
        DBCluster = M.DBCluster,
    },
}

M.StorageTypeNotAvailableFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ModifyDBClusterEndpointInput = {
    type = "structure",
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
    members = {
        DBClusterParameterGroupName = {
            type = "string",
        },
    },
}

M.ModifyDBClusterSnapshotAttributeInput = {
    type = "structure",
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
    members = {
        DBClusterSnapshotAttributesResult = M.DBClusterSnapshotAttributesResult,
    },
}

M.SharedSnapshotQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DBUpgradeDependencyFailureFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ModifyAdditionalStorageVolume = {
    type = "structure",
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
    members = {
        DBInstance = M.DBInstance,
    },
}

M.ModifyDBParameterGroupInput = {
    type = "structure",
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
    members = {
        DBParameterGroupName = {
            type = "string",
        },
    },
}

M.ModifyDBProxyInput = {
    type = "structure",
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
    members = {
        DBProxy = M.DBProxy,
    },
}

M.ModifyDBProxyEndpointInput = {
    type = "structure",
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
    members = {
        DBProxyEndpoint = M.DBProxyEndpoint,
    },
}

M.ConnectionPoolConfiguration = {
    type = "structure",
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
    members = {
        DBProxyTargetGroup = M.DBProxyTargetGroup,
    },
}

M.RecommendedActionUpdate = {
    type = "structure",
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
    members = {
        DBRecommendation = M.DBRecommendation,
    },
}

M.ModifyDBShardGroupInput = {
    type = "structure",
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
    members = {
        DBSnapshot = M.DBSnapshot,
    },
}

M.ModifyDBSnapshotAttributeInput = {
    type = "structure",
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
    members = {
        DBSnapshotAttributesResult = M.DBSnapshotAttributesResult,
    },
}

M.ModifyDBSubnetGroupInput = {
    type = "structure",
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
    members = {
        DBSubnetGroup = M.DBSubnetGroup,
    },
}

M.SubnetAlreadyInUse = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ModifyEventSubscriptionInput = {
    type = "structure",
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
    members = {
        EventSubscription = M.EventSubscription,
    },
}

M.ModifyGlobalClusterInput = {
    type = "structure",
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
    members = {
        GlobalCluster = M.GlobalCluster,
    },
}

M.ModifyIntegrationInput = {
    type = "structure",
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
    members = {
        OptionGroup = M.OptionGroup,
    },
}

M.ModifyTenantDatabaseInput = {
    type = "structure",
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
    members = {
        TenantDatabase = M.TenantDatabase,
    },
}

M.PromoteReadReplicaInput = {
    type = "structure",
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
    members = {
        DBInstance = M.DBInstance,
    },
}

M.PromoteReadReplicaDBClusterInput = {
    type = "structure",
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
    members = {
        DBCluster = M.DBCluster,
    },
}

M.PurchaseReservedDBInstancesOfferingInput = {
    type = "structure",
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
    members = {
        ReservedDBInstance = M.ReservedDBInstance,
    },
}

M.ReservedDBInstanceAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReservedDBInstanceQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RebootDBClusterInput = {
    type = "structure",
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
    members = {
        DBCluster = M.DBCluster,
    },
}

M.RebootDBInstanceInput = {
    type = "structure",
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
    members = {
        DBInstance = M.DBInstance,
    },
}

M.RebootDBShardGroupInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InsufficientAvailableIPsInSubnetFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RegisterDBProxyTargetsInput = {
    type = "structure",
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
    members = {
        DBProxyTargets = {
            type = "list",
            member = M.DBProxyTarget,
        },
    },
}

M.RemoveFromGlobalClusterInput = {
    type = "structure",
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
    members = {
        GlobalCluster = M.GlobalCluster,
    },
}

M.DBClusterRoleNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RemoveRoleFromDBClusterInput = {
    type = "structure",
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
}

M.DBInstanceRoleNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RemoveRoleFromDBInstanceInput = {
    type = "structure",
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
}

M.RemoveSourceIdentifierFromSubscriptionInput = {
    type = "structure",
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
    members = {
        EventSubscription = M.EventSubscription,
    },
}

M.RemoveTagsFromResourceInput = {
    type = "structure",
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
}

M.ResetDBClusterParameterGroupInput = {
    type = "structure",
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
    members = {
        DBClusterParameterGroupName = {
            type = "string",
        },
    },
}

M.ResetDBParameterGroupInput = {
    type = "structure",
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
    members = {
        DBParameterGroupName = {
            type = "string",
        },
    },
}

M.InvalidS3BucketFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RestoreDBClusterFromS3Input = {
    type = "structure",
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
    members = {
        DBCluster = M.DBCluster,
    },
}

M.InsufficientDBClusterCapacityFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRestoreFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RestoreDBClusterFromSnapshotInput = {
    type = "structure",
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
    members = {
        DBCluster = M.DBCluster,
    },
}

M.RestoreDBClusterToPointInTimeInput = {
    type = "structure",
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
    members = {
        DBCluster = M.DBCluster,
    },
}

M.RestoreDBInstanceFromDBSnapshotInput = {
    type = "structure",
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
    members = {
        DBInstance = M.DBInstance,
    },
}

M.RestoreDBInstanceFromS3Input = {
    type = "structure",
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
    members = {
        DBInstance = M.DBInstance,
    },
}

M.PointInTimeRestoreNotEnabledFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RestoreDBInstanceToPointInTimeInput = {
    type = "structure",
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
    members = {
        DBInstance = M.DBInstance,
    },
}

M.RevokeDBSecurityGroupIngressInput = {
    type = "structure",
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
    members = {
        DBSecurityGroup = M.DBSecurityGroup,
    },
}

M.StartActivityStreamInput = {
    type = "structure",
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
    members = {
        DBCluster = M.DBCluster,
    },
}

M.StartDBInstanceInput = {
    type = "structure",
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
    members = {
        DBInstance = M.DBInstance,
    },
}

M.StartDBInstanceAutomatedBackupsReplicationInput = {
    type = "structure",
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
    members = {
        DBInstanceAutomatedBackup = M.DBInstanceAutomatedBackup,
    },
}

M.ExportTaskAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IamRoleMissingPermissionsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IamRoleNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidExportOnlyFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidExportSourceStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StartExportTaskInput = {
    type = "structure",
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
    members = {
        DBCluster = M.DBCluster,
    },
}

M.StopDBInstanceInput = {
    type = "structure",
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
    members = {
        DBInstance = M.DBInstance,
    },
}

M.StopDBInstanceAutomatedBackupsReplicationInput = {
    type = "structure",
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
    members = {
        DBInstanceAutomatedBackup = M.DBInstanceAutomatedBackup,
    },
}

M.SwitchoverBlueGreenDeploymentInput = {
    type = "structure",
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
    members = {
        BlueGreenDeployment = M.BlueGreenDeployment,
    },
}

M.SwitchoverGlobalClusterInput = {
    type = "structure",
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
    members = {
        GlobalCluster = M.GlobalCluster,
    },
}

M.SwitchoverReadReplicaInput = {
    type = "structure",
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
    members = {
        DBInstance = M.DBInstance,
    },
}

return M
