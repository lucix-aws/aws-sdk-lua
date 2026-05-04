local M = {}

M.AccountQuota = {
    type = "structure",
    members = {
        AccountQuotaName = {
            type = "string",
        },
        Used = {
            type = "number",
        },
        Max = {
            type = "number",
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
            type = "number",
        },
        IOPS = {
            type = "number",
        },
        MaxAllocatedStorage = {
            type = "number",
        },
        StorageThroughput = {
            type = "number",
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
            type = "number",
        },
        IOPS = {
            type = "number",
        },
        MaxAllocatedStorage = {
            type = "number",
        },
        StorageThroughput = {
            type = "number",
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
            member_type = "string",
        },
        EventCategoriesList = {
            type = "list",
            member_type = "string",
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
        EventSubscription = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
        },
    },
}

M.ApplyPendingMaintenanceActionOutput = {
    type = "structure",
    members = {
        ResourcePendingMaintenanceActions = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        IPRanges = {
            type = "list",
            member_type = "structure",
        },
        DBSecurityGroupArn = {
            type = "string",
        },
    },
}

M.AuthorizeDBSecurityGroupIngressOutput = {
    type = "structure",
    members = {
        DBSecurityGroup = {
            type = "structure",
        },
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
            member_type = "string",
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
            type = "number",
        },
        TotalExtractedDataInGB = {
            type = "number",
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
            member_type = "structure",
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
        DBClusterParameterGroup = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
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
            type = "number",
        },
        Status = {
            type = "string",
        },
        Port = {
            type = "number",
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
            type = "number",
        },
        StorageEncrypted = {
            type = "boolean",
        },
        StorageEncryptionType = {
            type = "string",
        },
        BackupRetentionPeriod = {
            type = "number",
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
            member_type = "structure",
        },
        StorageType = {
            type = "string",
        },
        StorageThroughput = {
            type = "number",
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
        DBClusterSnapshot = {
            type = "structure",
        },
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
            member_type = "structure",
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
        DBParameterGroup = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
        },
        Status = {
            type = "string",
        },
        Port = {
            type = "number",
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
            type = "number",
        },
        StorageThroughput = {
            type = "number",
        },
        OptionGroupName = {
            type = "string",
        },
        PercentProgress = {
            type = "number",
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
            type = "number",
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
            member_type = "structure",
        },
        DbiResourceId = {
            type = "string",
        },
        TagList = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        SnapshotAvailabilityZone = {
            type = "string",
        },
    },
}

M.CopyDBSnapshotOutput = {
    type = "structure",
    members = {
        DBSnapshot = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
        },
        OptionVersion = {
            type = "string",
        },
        OptionSettings = {
            type = "list",
            member_type = "structure",
        },
        DBSecurityGroupMemberships = {
            type = "list",
            member_type = "structure",
        },
        VpcSecurityGroupMemberships = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        OptionGroup = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        TargetDBInstanceClass = {
            type = "string",
        },
        UpgradeTargetStorageConfig = {
            type = "boolean",
        },
        TargetIops = {
            type = "number",
        },
        TargetStorageType = {
            type = "string",
        },
        TargetAllocatedStorage = {
            type = "number",
        },
        TargetStorageThroughput = {
            type = "number",
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
            member_type = "structure",
        },
        Tasks = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
    },
}

M.CreateBlueGreenDeploymentOutput = {
    type = "structure",
    members = {
        BlueGreenDeployment = {
            type = "structure",
        },
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
            member_type = "string",
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
            member_type = "structure",
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
            type = "number",
        },
        MaxCapacity = {
            type = "number",
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
            member_type = "string",
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
            member_type = "string",
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
        DefaultCharacterSet = {
            type = "structure",
        },
        FailureReason = {
            type = "string",
        },
        Image = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        SupportedNcharCharacterSets = {
            type = "list",
            member_type = "structure",
        },
        ValidUpgradeTarget = {
            type = "list",
            member_type = "structure",
        },
        SupportedTimezones = {
            type = "list",
            member_type = "structure",
        },
        ExportableLogTypes = {
            type = "list",
            member_type = "string",
        },
        SupportsLogExportsToCloudwatchLogs = {
            type = "boolean",
        },
        SupportsReadReplica = {
            type = "boolean",
        },
        SupportedEngineModes = {
            type = "list",
            member_type = "string",
        },
        SupportedFeatureNames = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
        },
        SupportsLocalWriteForwarding = {
            type = "boolean",
        },
        SupportsIntegrations = {
            type = "boolean",
        },
        ServerlessV2FeaturesSupport = {
            type = "structure",
        },
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
            type = "number",
        },
        MaxCapacity = {
            type = "number",
        },
        AutoPause = {
            type = "boolean",
        },
        SecondsUntilAutoPause = {
            type = "number",
        },
        TimeoutAction = {
            type = "string",
        },
        SecondsBeforeTimeout = {
            type = "number",
        },
    },
}

M.ServerlessV2ScalingConfiguration = {
    type = "structure",
    members = {
        MinCapacity = {
            type = "number",
        },
        MaxCapacity = {
            type = "number",
        },
        SecondsUntilAutoPause = {
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.CreateDBClusterInput = {
    type = "structure",
    members = {
        AvailabilityZones = {
            type = "list",
            member_type = "string",
        },
        BackupRetentionPeriod = {
            type = "number",
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
            member_type = "string",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
        EnableCloudwatchLogsExports = {
            type = "list",
            member_type = "string",
        },
        EngineMode = {
            type = "string",
        },
        ScalingConfiguration = {
            type = "structure",
        },
        RdsCustomClusterConfiguration = {
            type = "structure",
        },
        DBClusterInstanceClass = {
            type = "string",
        },
        AllocatedStorage = {
            type = "number",
        },
        StorageType = {
            type = "string",
        },
        Iops = {
            type = "number",
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
        ServerlessV2ScalingConfiguration = {
            type = "structure",
        },
        MonitoringInterval = {
            type = "number",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "string",
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
            type = "number",
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
            member_type = "string",
        },
        LogTypesToDisable = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ClusterPendingModifiedValues = {
    type = "structure",
    members = {
        PendingCloudwatchLogsExports = {
            type = "structure",
        },
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
            type = "number",
        },
        StorageType = {
            type = "string",
        },
        AllocatedStorage = {
            type = "number",
        },
        RdsCustomClusterConfiguration = {
            type = "structure",
        },
        Iops = {
            type = "number",
        },
        CertificateDetails = {
            type = "structure",
        },
    },
}

M.ScalingConfigurationInfo = {
    type = "structure",
    members = {
        MinCapacity = {
            type = "number",
        },
        MaxCapacity = {
            type = "number",
        },
        AutoPause = {
            type = "boolean",
        },
        SecondsUntilAutoPause = {
            type = "number",
        },
        TimeoutAction = {
            type = "string",
        },
        SecondsBeforeTimeout = {
            type = "number",
        },
    },
}

M.ServerlessV2ScalingConfigurationInfo = {
    type = "structure",
    members = {
        MinCapacity = {
            type = "number",
        },
        MaxCapacity = {
            type = "number",
        },
        SecondsUntilAutoPause = {
            type = "number",
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
            type = "number",
        },
        AvailabilityZones = {
            type = "list",
            member_type = "string",
        },
        BackupRetentionPeriod = {
            type = "number",
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
            member_type = "string",
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
            type = "number",
        },
        MasterUsername = {
            type = "string",
        },
        DBClusterOptionGroupMemberships = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        StatusInfos = {
            type = "list",
            member_type = "structure",
        },
        DBClusterMembers = {
            type = "list",
            member_type = "structure",
        },
        VpcSecurityGroups = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
        },
        BacktrackConsumedChangeRecords = {
            type = "number",
        },
        EnabledCloudwatchLogsExports = {
            type = "list",
            member_type = "string",
        },
        Capacity = {
            type = "number",
        },
        PendingModifiedValues = {
            type = "structure",
        },
        EngineMode = {
            type = "string",
        },
        ScalingConfigurationInfo = {
            type = "structure",
        },
        RdsCustomClusterConfiguration = {
            type = "structure",
        },
        DBClusterInstanceClass = {
            type = "string",
        },
        StorageType = {
            type = "string",
        },
        Iops = {
            type = "number",
        },
        StorageThroughput = {
            type = "number",
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
            member_type = "structure",
        },
        TagList = {
            type = "list",
            member_type = "structure",
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
        ServerlessV2ScalingConfiguration = {
            type = "structure",
        },
        ServerlessV2PlatformVersion = {
            type = "string",
        },
        MonitoringInterval = {
            type = "number",
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
            type = "number",
        },
        DBSystemId = {
            type = "string",
        },
        MasterUserSecret = {
            type = "structure",
        },
        LocalWriteForwardingStatus = {
            type = "string",
        },
        AwsBackupRecoveryPointArn = {
            type = "string",
        },
        LimitlessDatabase = {
            type = "structure",
        },
        ClusterScalabilityType = {
            type = "string",
        },
        CertificateDetails = {
            type = "structure",
        },
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
        DBCluster = {
            type = "structure",
        },
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
            member_type = "string",
        },
        ExcludedMembers = {
            type = "list",
            member_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        ExcludedMembers = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
    },
}

M.CreateDBClusterParameterGroupOutput = {
    type = "structure",
    members = {
        DBClusterParameterGroup = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.CreateDBClusterSnapshotOutput = {
    type = "structure",
    members = {
        DBClusterSnapshot = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "string",
        },
        VpcSecurityGroupIds = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        Port = {
            type = "number",
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
            type = "number",
        },
        StorageThroughput = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
        },
        CopyTagsToSnapshot = {
            type = "boolean",
        },
        MonitoringInterval = {
            type = "number",
        },
        MonitoringRoleArn = {
            type = "string",
        },
        DomainIAMRoleName = {
            type = "string",
        },
        PromotionTier = {
            type = "number",
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
            type = "number",
        },
        EnableCloudwatchLogsExports = {
            type = "list",
            member_type = "string",
        },
        ProcessorFeatures = {
            type = "list",
            member_type = "structure",
        },
        DeletionProtection = {
            type = "boolean",
        },
        MaxAllocatedStorage = {
            type = "number",
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
            member_type = "structure",
        },
        TagSpecifications = {
            type = "list",
            member_type = "structure",
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
        SubnetAvailabilityZone = {
            type = "structure",
        },
        SubnetOutpost = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        DBSubnetGroupArn = {
            type = "string",
        },
        SupportedNetworkTypes = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
            type = "number",
        },
        MasterUserPassword = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        BackupRetentionPeriod = {
            type = "number",
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
            type = "number",
        },
        StorageThroughput = {
            type = "number",
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
        PendingCloudwatchLogsExports = {
            type = "structure",
        },
        ProcessorFeatures = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        Endpoint = {
            type = "structure",
        },
        AllocatedStorage = {
            type = "number",
        },
        InstanceCreateTime = {
            type = "timestamp",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        BackupRetentionPeriod = {
            type = "number",
        },
        DBSecurityGroups = {
            type = "list",
            member_type = "structure",
        },
        VpcSecurityGroups = {
            type = "list",
            member_type = "structure",
        },
        DBParameterGroups = {
            type = "list",
            member_type = "structure",
        },
        AvailabilityZone = {
            type = "string",
        },
        DBSubnetGroup = {
            type = "structure",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        UpgradeRolloutOrder = {
            type = "string",
        },
        PendingModifiedValues = {
            type = "structure",
        },
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
            member_type = "string",
        },
        ReadReplicaDBClusterIdentifiers = {
            type = "list",
            member_type = "string",
        },
        ReplicaMode = {
            type = "string",
        },
        LicenseModel = {
            type = "string",
        },
        Iops = {
            type = "number",
        },
        StorageThroughput = {
            type = "number",
        },
        OptionGroupMemberships = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
        },
        CopyTagsToSnapshot = {
            type = "boolean",
        },
        MonitoringInterval = {
            type = "number",
        },
        EnhancedMonitoringResourceArn = {
            type = "string",
        },
        MonitoringRoleArn = {
            type = "string",
        },
        PromotionTier = {
            type = "number",
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
            type = "number",
        },
        EnabledCloudwatchLogsExports = {
            type = "list",
            member_type = "string",
        },
        ProcessorFeatures = {
            type = "list",
            member_type = "structure",
        },
        DeletionProtection = {
            type = "boolean",
        },
        AssociatedRoles = {
            type = "list",
            member_type = "structure",
        },
        ListenerEndpoint = {
            type = "structure",
        },
        MaxAllocatedStorage = {
            type = "number",
        },
        TagList = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        CertificateDetails = {
            type = "structure",
        },
        DBSystemId = {
            type = "string",
        },
        MasterUserSecret = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        StorageVolumeStatus = {
            type = "string",
        },
    },
}

M.CreateDBInstanceOutput = {
    type = "structure",
    members = {
        DBInstance = {
            type = "structure",
        },
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
            type = "number",
        },
        MultiAZ = {
            type = "boolean",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        Iops = {
            type = "number",
        },
        StorageThroughput = {
            type = "number",
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
            member_type = "structure",
        },
        DBSubnetGroupName = {
            type = "string",
        },
        VpcSecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        StorageType = {
            type = "string",
        },
        CopyTagsToSnapshot = {
            type = "boolean",
        },
        MonitoringInterval = {
            type = "number",
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
            type = "number",
        },
        EnableCloudwatchLogsExports = {
            type = "list",
            member_type = "string",
        },
        ProcessorFeatures = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            type = "number",
        },
        BackupTarget = {
            type = "string",
        },
        CustomIamInstanceProfile = {
            type = "string",
        },
        AllocatedStorage = {
            type = "number",
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
            member_type = "structure",
        },
        TagSpecifications = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateDBInstanceReadReplicaOutput = {
    type = "structure",
    members = {
        DBInstance = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.CreateDBParameterGroupOutput = {
    type = "structure",
    members = {
        DBParameterGroup = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcSubnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        VpcSecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        RequireTLS = {
            type = "boolean",
        },
        IdleClientTimeout = {
            type = "number",
        },
        DebugLogging = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        VpcSubnetIds = {
            type = "list",
            member_type = "string",
        },
        DefaultAuthScheme = {
            type = "string",
        },
        Auth = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        DBProxy = {
            type = "structure",
        },
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        VpcSecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        TargetRole = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        VpcSubnetIds = {
            type = "list",
            member_type = "string",
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
        DBProxyEndpoint = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.CreateDBSecurityGroupOutput = {
    type = "structure",
    members = {
        DBSecurityGroup = {
            type = "structure",
        },
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
            type = "number",
        },
        MaxACU = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MinACU = {
            type = "number",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        MinACU = {
            type = "number",
        },
        ComputeRedundancy = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
    },
}

M.CreateDBSnapshotOutput = {
    type = "structure",
    members = {
        DBSnapshot = {
            type = "structure",
        },
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
            member_type = "string",
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

M.CreateDBSubnetGroupOutput = {
    type = "structure",
    members = {
        DBSubnetGroup = {
            type = "structure",
        },
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
            member_type = "string",
        },
        SourceIds = {
            type = "list",
            member_type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateEventSubscriptionOutput = {
    type = "structure",
    members = {
        EventSubscription = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
        },
        Endpoint = {
            type = "string",
        },
        FailoverState = {
            type = "structure",
        },
        TagList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateGlobalClusterOutput = {
    type = "structure",
    members = {
        GlobalCluster = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        Status = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
    },
}

M.CreateOptionGroupOutput = {
    type = "structure",
    members = {
        OptionGroup = {
            type = "structure",
        },
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
            member_type = "structure",
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
        PendingModifiedValues = {
            type = "structure",
        },
        MasterUserSecret = {
            type = "structure",
        },
        TagList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateTenantDatabaseOutput = {
    type = "structure",
    members = {
        TenantDatabase = {
            type = "structure",
        },
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
        BlueGreenDeployment = {
            type = "structure",
        },
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
            member_type = "string",
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
        DefaultCharacterSet = {
            type = "structure",
        },
        FailureReason = {
            type = "string",
        },
        Image = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        SupportedNcharCharacterSets = {
            type = "list",
            member_type = "structure",
        },
        ValidUpgradeTarget = {
            type = "list",
            member_type = "structure",
        },
        SupportedTimezones = {
            type = "list",
            member_type = "structure",
        },
        ExportableLogTypes = {
            type = "list",
            member_type = "string",
        },
        SupportsLogExportsToCloudwatchLogs = {
            type = "boolean",
        },
        SupportsReadReplica = {
            type = "boolean",
        },
        SupportedEngineModes = {
            type = "list",
            member_type = "string",
        },
        SupportedFeatureNames = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
        },
        SupportsLocalWriteForwarding = {
            type = "boolean",
        },
        SupportsIntegrations = {
            type = "boolean",
        },
        ServerlessV2FeaturesSupport = {
            type = "structure",
        },
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
        DBCluster = {
            type = "structure",
        },
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
        RestoreWindow = {
            type = "structure",
        },
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
            type = "number",
        },
        EngineVersion = {
            type = "string",
        },
        DBClusterArn = {
            type = "string",
        },
        BackupRetentionPeriod = {
            type = "number",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        EngineMode = {
            type = "string",
        },
        AvailabilityZones = {
            type = "list",
            member_type = "string",
        },
        Port = {
            type = "number",
        },
        KmsKeyId = {
            type = "string",
        },
        StorageType = {
            type = "string",
        },
        Iops = {
            type = "number",
        },
        StorageThroughput = {
            type = "number",
        },
        AwsBackupRecoveryPointArn = {
            type = "string",
        },
        TagList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DeleteDBClusterAutomatedBackupOutput = {
    type = "structure",
    members = {
        DBClusterAutomatedBackup = {
            type = "structure",
        },
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
            member_type = "string",
        },
        ExcludedMembers = {
            type = "list",
            member_type = "string",
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
        DBClusterSnapshot = {
            type = "structure",
        },
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
        DBInstance = {
            type = "structure",
        },
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
        RestoreWindow = {
            type = "structure",
        },
        AllocatedStorage = {
            type = "number",
        },
        Status = {
            type = "string",
        },
        Port = {
            type = "number",
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
            type = "number",
        },
        StorageThroughput = {
            type = "number",
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
            type = "number",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        DBInstanceAutomatedBackupsArn = {
            type = "string",
        },
        DBInstanceAutomatedBackupsReplications = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        DedicatedLogVolume = {
            type = "boolean",
        },
        AdditionalStorageVolumes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DeleteDBInstanceAutomatedBackupOutput = {
    type = "structure",
    members = {
        DBInstanceAutomatedBackup = {
            type = "structure",
        },
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
        DBProxy = {
            type = "structure",
        },
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
        DBProxyEndpoint = {
            type = "structure",
        },
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
            type = "number",
        },
        MinACU = {
            type = "number",
        },
        ComputeRedundancy = {
            type = "number",
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
            member_type = "structure",
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
        DBSnapshot = {
            type = "structure",
        },
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
        EventSubscription = {
            type = "structure",
        },
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
        GlobalCluster = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        Status = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        TenantDatabase = {
            type = "structure",
        },
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
            member_type = "string",
        },
        DBClusterIdentifiers = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
        },
    },
}

M.DescribeBlueGreenDeploymentsOutput = {
    type = "structure",
    members = {
        BlueGreenDeployments = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "string",
        },
        ExcludedMembers = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "string",
        },
    },
}

M.DescribeDBClusterParametersOutput = {
    type = "structure",
    members = {
        Parameters = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
        },
    },
}

M.DescribeDBClusterSnapshotAttributesOutput = {
    type = "structure",
    members = {
        DBClusterSnapshotAttributesResult = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "string",
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
        DefaultCharacterSet = {
            type = "structure",
        },
        FailureReason = {
            type = "string",
        },
        Image = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        SupportedNcharCharacterSets = {
            type = "list",
            member_type = "structure",
        },
        ValidUpgradeTarget = {
            type = "list",
            member_type = "structure",
        },
        SupportedTimezones = {
            type = "list",
            member_type = "structure",
        },
        ExportableLogTypes = {
            type = "list",
            member_type = "string",
        },
        SupportsLogExportsToCloudwatchLogs = {
            type = "boolean",
        },
        SupportsReadReplica = {
            type = "boolean",
        },
        SupportedEngineModes = {
            type = "list",
            member_type = "string",
        },
        SupportedFeatureNames = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
        },
        SupportsLocalWriteForwarding = {
            type = "boolean",
        },
        SupportsIntegrations = {
            type = "boolean",
        },
        ServerlessV2FeaturesSupport = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
        FileSize = {
            type = "number",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            type = "number",
        },
        Size = {
            type = "number",
        },
    },
}

M.DescribeDBLogFilesOutput = {
    type = "structure",
    members = {
        DescribeDBLogFiles = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.DescribeDBMajorEngineVersionsOutput = {
    type = "structure",
    members = {
        DBMajorEngineVersions = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
        },
    },
}

M.DescribeDBProxiesOutput = {
    type = "structure",
    members = {
        DBProxies = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
        },
    },
}

M.DescribeDBProxyEndpointsOutput = {
    type = "structure",
    members = {
        DBProxyEndpoints = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
        },
    },
}

M.ConnectionPoolConfigurationInfo = {
    type = "structure",
    members = {
        MaxConnectionsPercent = {
            type = "number",
        },
        MaxIdleConnectionsPercent = {
            type = "number",
        },
        ConnectionBorrowTimeout = {
            type = "number",
        },
        SessionPinningFilters = {
            type = "list",
            member_type = "string",
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
        ConnectionPoolConfig = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
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
            type = "number",
        },
        Type = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        TargetHealth = {
            type = "structure",
        },
    },
}

M.DescribeDBProxyTargetsOutput = {
    type = "structure",
    members = {
        Targets = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "string",
        },
        Group = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
    },
}

M.PerformanceInsightsMetricQuery = {
    type = "structure",
    members = {
        GroupBy = {
            type = "structure",
        },
        Metric = {
            type = "string",
        },
    },
}

M.MetricQuery = {
    type = "structure",
    members = {
        PerformanceInsightsMetricQuery = {
            type = "structure",
        },
    },
}

M.ScalarReferenceDetails = {
    type = "structure",
    members = {
        Value = {
            type = "number",
        },
    },
}

M.ReferenceDetails = {
    type = "structure",
    members = {
        ScalarReferenceDetails = {
            type = "structure",
        },
    },
}

M.MetricReference = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        ReferenceDetails = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        StatisticsDetails = {
            type = "string",
        },
        MetricQuery = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        Analysis = {
            type = "string",
        },
    },
}

M.IssueDetails = {
    type = "structure",
    members = {
        PerformanceIssueDetails = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        ApplyModes = {
            type = "list",
            member_type = "string",
        },
        Status = {
            type = "string",
        },
        IssueDetails = {
            type = "structure",
        },
        ContextAttributes = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        IssueDetails = {
            type = "structure",
        },
    },
}

M.DescribeDBRecommendationsOutput = {
    type = "structure",
    members = {
        DBRecommendations = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
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
            type = "number",
        },
        MinACU = {
            type = "number",
        },
        ComputeRedundancy = {
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.DescribeDBShardGroupsOutput = {
    type = "structure",
    members = {
        DBShardGroups = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
        },
    },
}

M.DescribeDBSnapshotAttributesOutput = {
    type = "structure",
    members = {
        DBSnapshotAttributesResult = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.DescribeEngineDefaultClusterParametersOutput = {
    type = "structure",
    members = {
        EngineDefaults = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeEngineDefaultParametersOutput = {
    type = "structure",
    members = {
        EngineDefaults = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
        },
    },
}

M.DescribeEventCategoriesOutput = {
    type = "structure",
    members = {
        EventCategoriesMapList = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        EventCategories = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "string",
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
            type = "number",
        },
        TotalExtractedDataInGB = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
        Status = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
        OptionsDependedOn = {
            type = "list",
            member_type = "string",
        },
        OptionsConflictsWith = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        OptionGroupOptionVersions = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            type = "number",
        },
        MaxStorageSize = {
            type = "number",
        },
        MinIops = {
            type = "number",
        },
        MaxIops = {
            type = "number",
        },
        MinIopsPerGib = {
            type = "number",
        },
        MaxIopsPerGib = {
            type = "number",
        },
        MinStorageThroughput = {
            type = "number",
        },
        MaxStorageThroughput = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
        MaxStorageSize = {
            type = "number",
        },
        MinIopsPerDbInstance = {
            type = "number",
        },
        MaxIopsPerDbInstance = {
            type = "number",
        },
        MinIopsPerGib = {
            type = "number",
        },
        MaxIopsPerGib = {
            type = "number",
        },
        MinStorageThroughputPerDbInstance = {
            type = "number",
        },
        MaxStorageThroughputPerDbInstance = {
            type = "number",
        },
        MinStorageThroughputPerIops = {
            type = "number",
        },
        MaxStorageThroughputPerIops = {
            type = "number",
        },
        AvailableProcessorFeatures = {
            type = "list",
            member_type = "structure",
        },
        SupportedEngineModes = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
        SupportsGlobalDatabases = {
            type = "boolean",
        },
        SupportedNetworkTypes = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
    },
}

M.DescribeOrderableDBInstanceOptionsOutput = {
    type = "structure",
    members = {
        OrderableDBInstanceOptions = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
        },
    },
}

M.DescribePendingMaintenanceActionsOutput = {
    type = "structure",
    members = {
        PendingMaintenanceActions = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            type = "number",
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
            type = "number",
        },
        FixedPrice = {
            type = "number",
        },
        UsagePrice = {
            type = "number",
        },
        CurrencyCode = {
            type = "string",
        },
        DBInstanceCount = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        MaxRecords = {
            type = "number",
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
            type = "number",
        },
        FixedPrice = {
            type = "number",
        },
        UsagePrice = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        DefaultOnly = {
            type = "boolean",
        },
        IncludeAll = {
            type = "boolean",
        },
        MaxRecords = {
            type = "number",
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
        ServerlessV2FeaturesSupport = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
        },
        Marker = {
            type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
        To = {
            type = "number",
        },
    },
}

M.Range = {
    type = "structure",
    members = {
        From = {
            type = "number",
        },
        To = {
            type = "number",
        },
        Step = {
            type = "number",
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
            member_type = "structure",
        },
        ProvisionedIops = {
            type = "list",
            member_type = "structure",
        },
        IopsToStorageRatio = {
            type = "list",
            member_type = "structure",
        },
        ProvisionedStorageThroughput = {
            type = "list",
            member_type = "structure",
        },
        StorageThroughputToIopsRatio = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
    },
}

M.ValidDBInstanceModificationsMessage = {
    type = "structure",
    members = {
        Storage = {
            type = "list",
            member_type = "structure",
        },
        ValidProcessorFeatures = {
            type = "list",
            member_type = "structure",
        },
        SupportsDedicatedLogVolume = {
            type = "boolean",
        },
        AdditionalStorage = {
            type = "structure",
        },
    },
}

M.DescribeValidDBInstanceModificationsOutput = {
    type = "structure",
    members = {
        ValidDBInstanceModificationsMessage = {
            type = "structure",
        },
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
            type = "number",
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
        DBCluster = {
            type = "structure",
        },
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
        GlobalCluster = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        TagList = {
            type = "list",
            member_type = "structure",
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
        Certificate = {
            type = "structure",
        },
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
            type = "number",
        },
        SecondsBeforeTimeout = {
            type = "number",
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
            type = "number",
        },
        CurrentCapacity = {
            type = "number",
        },
        SecondsBeforeTimeout = {
            type = "number",
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
            member_type = "string",
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
        DefaultCharacterSet = {
            type = "structure",
        },
        FailureReason = {
            type = "string",
        },
        Image = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        SupportedNcharCharacterSets = {
            type = "list",
            member_type = "structure",
        },
        ValidUpgradeTarget = {
            type = "list",
            member_type = "structure",
        },
        SupportedTimezones = {
            type = "list",
            member_type = "structure",
        },
        ExportableLogTypes = {
            type = "list",
            member_type = "string",
        },
        SupportsLogExportsToCloudwatchLogs = {
            type = "boolean",
        },
        SupportsReadReplica = {
            type = "boolean",
        },
        SupportedEngineModes = {
            type = "list",
            member_type = "string",
        },
        SupportedFeatureNames = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
        },
        SupportsLocalWriteForwarding = {
            type = "boolean",
        },
        SupportsIntegrations = {
            type = "boolean",
        },
        ServerlessV2FeaturesSupport = {
            type = "structure",
        },
    },
}

M.CloudwatchLogsExportConfiguration = {
    type = "structure",
    members = {
        EnableLogTypes = {
            type = "list",
            member_type = "string",
        },
        DisableLogTypes = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        DBClusterParameterGroupName = {
            type = "string",
        },
        VpcSecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        Port = {
            type = "number",
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
            type = "number",
        },
        CloudwatchLogsExportConfiguration = {
            type = "structure",
        },
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
        ScalingConfiguration = {
            type = "structure",
        },
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
            type = "number",
        },
        StorageType = {
            type = "string",
        },
        Iops = {
            type = "number",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        NetworkType = {
            type = "string",
        },
        ServerlessV2ScalingConfiguration = {
            type = "structure",
        },
        MonitoringInterval = {
            type = "number",
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
            type = "number",
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
        DBCluster = {
            type = "structure",
        },
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
            member_type = "string",
        },
        ExcludedMembers = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
        ExcludedMembers = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
        },
        ValuesToRemove = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ModifyDBClusterSnapshotAttributeOutput = {
    type = "structure",
    members = {
        DBClusterSnapshotAttributesResult = {
            type = "structure",
        },
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
            type = "number",
        },
        IOPS = {
            type = "number",
        },
        MaxAllocatedStorage = {
            type = "number",
        },
        StorageThroughput = {
            type = "number",
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
            type = "number",
        },
        DBInstanceClass = {
            type = "string",
        },
        DBSubnetGroupName = {
            type = "string",
        },
        DBSecurityGroups = {
            type = "list",
            member_type = "string",
        },
        VpcSecurityGroupIds = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
            type = "number",
        },
        StorageThroughput = {
            type = "number",
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
            member_type = "string",
        },
        DisableDomain = {
            type = "boolean",
        },
        CopyTagsToSnapshot = {
            type = "boolean",
        },
        MonitoringInterval = {
            type = "number",
        },
        DBPortNumber = {
            type = "number",
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
            type = "number",
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
            type = "number",
        },
        CloudwatchLogsExportConfiguration = {
            type = "structure",
        },
        ProcessorFeatures = {
            type = "list",
            member_type = "structure",
        },
        UseDefaultProcessorFeatures = {
            type = "boolean",
        },
        DeletionProtection = {
            type = "boolean",
        },
        MaxAllocatedStorage = {
            type = "number",
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
            type = "number",
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
            member_type = "structure",
        },
        TagSpecifications = {
            type = "list",
            member_type = "structure",
        },
        MasterUserAuthenticationType = {
            type = "string",
        },
    },
}

M.ModifyDBInstanceOutput = {
    type = "structure",
    members = {
        DBInstance = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
        },
        RequireTLS = {
            type = "boolean",
        },
        IdleClientTimeout = {
            type = "number",
        },
        DebugLogging = {
            type = "boolean",
        },
        RoleArn = {
            type = "string",
        },
        SecurityGroups = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ModifyDBProxyOutput = {
    type = "structure",
    members = {
        DBProxy = {
            type = "structure",
        },
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
            member_type = "string",
        },
    },
}

M.ModifyDBProxyEndpointOutput = {
    type = "structure",
    members = {
        DBProxyEndpoint = {
            type = "structure",
        },
    },
}

M.ConnectionPoolConfiguration = {
    type = "structure",
    members = {
        MaxConnectionsPercent = {
            type = "number",
        },
        MaxIdleConnectionsPercent = {
            type = "number",
        },
        ConnectionBorrowTimeout = {
            type = "number",
        },
        SessionPinningFilters = {
            type = "list",
            member_type = "string",
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
        ConnectionPoolConfig = {
            type = "structure",
        },
        NewName = {
            type = "string",
        },
    },
}

M.ModifyDBProxyTargetGroupOutput = {
    type = "structure",
    members = {
        DBProxyTargetGroup = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.ModifyDBRecommendationOutput = {
    type = "structure",
    members = {
        DBRecommendation = {
            type = "structure",
        },
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
            type = "number",
        },
        MinACU = {
            type = "number",
        },
        ComputeRedundancy = {
            type = "number",
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
            type = "number",
        },
        MinACU = {
            type = "number",
        },
        ComputeRedundancy = {
            type = "number",
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
            member_type = "structure",
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
        DBSnapshot = {
            type = "structure",
        },
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
            member_type = "string",
        },
        ValuesToRemove = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ModifyDBSnapshotAttributeOutput = {
    type = "structure",
    members = {
        DBSnapshotAttributesResult = {
            type = "structure",
        },
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyDBSubnetGroupOutput = {
    type = "structure",
    members = {
        DBSubnetGroup = {
            type = "structure",
        },
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
            member_type = "string",
        },
        Enabled = {
            type = "boolean",
        },
    },
}

M.ModifyEventSubscriptionOutput = {
    type = "structure",
    members = {
        EventSubscription = {
            type = "structure",
        },
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
        GlobalCluster = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        Status = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
        },
        OptionVersion = {
            type = "string",
        },
        DBSecurityGroupMemberships = {
            type = "list",
            member_type = "string",
        },
        VpcSecurityGroupMemberships = {
            type = "list",
            member_type = "string",
        },
        OptionSettings = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        OptionsToRemove = {
            type = "list",
            member_type = "string",
        },
        ApplyImmediately = {
            type = "boolean",
        },
    },
}

M.ModifyOptionGroupOutput = {
    type = "structure",
    members = {
        OptionGroup = {
            type = "structure",
        },
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
        TenantDatabase = {
            type = "structure",
        },
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
            type = "number",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        TagSpecifications = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PromoteReadReplicaOutput = {
    type = "structure",
    members = {
        DBInstance = {
            type = "structure",
        },
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
        DBCluster = {
            type = "structure",
        },
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
            type = "number",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PurchaseReservedDBInstancesOfferingOutput = {
    type = "structure",
    members = {
        ReservedDBInstance = {
            type = "structure",
        },
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
        DBCluster = {
            type = "structure",
        },
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
        DBInstance = {
            type = "structure",
        },
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
            type = "number",
        },
        MinACU = {
            type = "number",
        },
        ComputeRedundancy = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
        },
        DBClusterIdentifiers = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RegisterDBProxyTargetsOutput = {
    type = "structure",
    members = {
        DBProxyTargets = {
            type = "list",
            member_type = "structure",
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
        GlobalCluster = {
            type = "structure",
        },
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
        EventSubscription = {
            type = "structure",
        },
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
        },
        BackupRetentionPeriod = {
            type = "number",
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
            member_type = "string",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
        EnableCloudwatchLogsExports = {
            type = "list",
            member_type = "string",
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
        ServerlessV2ScalingConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.RestoreDBClusterFromS3Output = {
    type = "structure",
    members = {
        DBCluster = {
            type = "structure",
        },
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
            member_type = "string",
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
            type = "number",
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
            member_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        KmsKeyId = {
            type = "string",
        },
        EnableIAMDatabaseAuthentication = {
            type = "boolean",
        },
        BacktrackWindow = {
            type = "number",
        },
        EnableCloudwatchLogsExports = {
            type = "list",
            member_type = "string",
        },
        EngineMode = {
            type = "string",
        },
        ScalingConfiguration = {
            type = "structure",
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
        Iops = {
            type = "number",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        NetworkType = {
            type = "string",
        },
        ServerlessV2ScalingConfiguration = {
            type = "structure",
        },
        RdsCustomClusterConfiguration = {
            type = "structure",
        },
        MonitoringInterval = {
            type = "number",
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
            type = "number",
        },
        BackupRetentionPeriod = {
            type = "number",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        EngineLifecycleSupport = {
            type = "string",
        },
        TagSpecifications = {
            type = "list",
            member_type = "structure",
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
        DBCluster = {
            type = "structure",
        },
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
            type = "number",
        },
        DBSubnetGroupName = {
            type = "string",
        },
        OptionGroupName = {
            type = "string",
        },
        VpcSecurityGroupIds = {
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
        EnableIAMDatabaseAuthentication = {
            type = "boolean",
        },
        BacktrackWindow = {
            type = "number",
        },
        EnableCloudwatchLogsExports = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        NetworkType = {
            type = "string",
        },
        SourceDbClusterResourceId = {
            type = "string",
        },
        ServerlessV2ScalingConfiguration = {
            type = "structure",
        },
        ScalingConfiguration = {
            type = "structure",
        },
        EngineMode = {
            type = "string",
        },
        RdsCustomClusterConfiguration = {
            type = "structure",
        },
        MonitoringInterval = {
            type = "number",
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
            type = "number",
        },
        BackupRetentionPeriod = {
            type = "number",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        EngineLifecycleSupport = {
            type = "string",
        },
        TagSpecifications = {
            type = "list",
            member_type = "structure",
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
        DBCluster = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        StorageThroughput = {
            type = "number",
        },
        OptionGroupName = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
        },
        ProcessorFeatures = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        DBClusterSnapshotIdentifier = {
            type = "string",
        },
        BackupRetentionPeriod = {
            type = "number",
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
            member_type = "structure",
        },
        TagSpecifications = {
            type = "list",
            member_type = "structure",
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
        DBInstance = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "string",
        },
        VpcSecurityGroupIds = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        Port = {
            type = "number",
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
            type = "number",
        },
        StorageThroughput = {
            type = "number",
        },
        OptionGroupName = {
            type = "string",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
        EnableCloudwatchLogsExports = {
            type = "list",
            member_type = "string",
        },
        ProcessorFeatures = {
            type = "list",
            member_type = "structure",
        },
        UseDefaultProcessorFeatures = {
            type = "boolean",
        },
        DeletionProtection = {
            type = "boolean",
        },
        MaxAllocatedStorage = {
            type = "number",
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
            member_type = "structure",
        },
        TagSpecifications = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RestoreDBInstanceFromS3Output = {
    type = "structure",
    members = {
        DBInstance = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        StorageThroughput = {
            type = "number",
        },
        OptionGroupName = {
            type = "string",
        },
        CopyTagsToSnapshot = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
        },
        EnableIAMDatabaseAuthentication = {
            type = "boolean",
        },
        EnableCloudwatchLogsExports = {
            type = "list",
            member_type = "string",
        },
        ProcessorFeatures = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
        BackupRetentionPeriod = {
            type = "number",
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
            member_type = "structure",
        },
        TagSpecifications = {
            type = "list",
            member_type = "structure",
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
        DBInstance = {
            type = "structure",
        },
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
        DBSecurityGroup = {
            type = "structure",
        },
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
        DBCluster = {
            type = "structure",
        },
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
        DBInstance = {
            type = "structure",
        },
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
            type = "number",
        },
        KmsKeyId = {
            type = "string",
        },
        PreSignedUrl = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StartDBInstanceAutomatedBackupsReplicationOutput = {
    type = "structure",
    members = {
        DBInstanceAutomatedBackup = {
            type = "structure",
        },
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
            member_type = "string",
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
            member_type = "string",
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
            type = "number",
        },
        TotalExtractedDataInGB = {
            type = "number",
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
        DBCluster = {
            type = "structure",
        },
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
        DBInstance = {
            type = "structure",
        },
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
        DBInstanceAutomatedBackup = {
            type = "structure",
        },
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
            type = "number",
        },
    },
}

M.SwitchoverBlueGreenDeploymentOutput = {
    type = "structure",
    members = {
        BlueGreenDeployment = {
            type = "structure",
        },
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
        GlobalCluster = {
            type = "structure",
        },
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
        DBInstance = {
            type = "structure",
        },
    },
}

return M
