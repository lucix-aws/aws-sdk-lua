local M = {}

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

M.DBInstanceNotFoundFault = {
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
        StorageType = {
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

M.ServerlessV2ScalingConfiguration = {
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
        CopyTagsToSnapshot = {
            type = "boolean",
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
        EnableCloudwatchLogsExports = {
            type = "list",
            member = { type = "string" },
        },
        DeletionProtection = {
            type = "boolean",
        },
        ServerlessV2ScalingConfiguration = M.ServerlessV2ScalingConfiguration,
        GlobalClusterIdentifier = {
            type = "string",
        },
        StorageType = {
            type = "string",
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
        Iops = {
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
        ReplicationSourceIdentifier = {
            type = "string",
        },
        ReadReplicaIdentifiers = {
            type = "list",
            member = { type = "string" },
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
        CopyTagsToSnapshot = {
            type = "boolean",
        },
        EnabledCloudwatchLogsExports = {
            type = "list",
            member = { type = "string" },
        },
        PendingModifiedValues = M.ClusterPendingModifiedValues,
        DeletionProtection = {
            type = "boolean",
        },
        CrossAccountClone = {
            type = "boolean",
        },
        AutomaticRestartTime = {
            type = "timestamp",
        },
        ServerlessV2ScalingConfiguration = M.ServerlessV2ScalingConfigurationInfo,
        GlobalClusterIdentifier = {
            type = "string",
        },
        IOOptimizedNextAllowedModificationTime = {
            type = "timestamp",
        },
        StorageType = {
            type = "string",
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

M.GlobalClusterNotFoundFault = {
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

M.InvalidDBInstanceStateFault = {
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

M.StorageQuotaExceededFault = {
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
        OptionGroupName = {
            type = "string",
        },
        CharacterSetName = {
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
            traits = {
                required = true,
            },
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
        EnablePerformanceInsights = {
            type = "boolean",
        },
        PerformanceInsightsKMSKeyId = {
            type = "string",
        },
        EnableCloudwatchLogsExports = {
            type = "list",
            member = { type = "string" },
        },
        DeletionProtection = {
            type = "boolean",
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

M.AvailabilityZone = {
    type = "structure",
    members = {
        Name = {
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
        LicenseModel = {
            type = "string",
        },
        Iops = {
            type = "integer",
        },
        OptionGroupMemberships = {
            type = "list",
            member = M.OptionGroupMembership,
        },
        CharacterSetName = {
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
        PerformanceInsightsEnabled = {
            type = "boolean",
        },
        PerformanceInsightsKMSKeyId = {
            type = "string",
        },
        EnabledCloudwatchLogsExports = {
            type = "list",
            member = { type = "string" },
        },
        DeletionProtection = {
            type = "boolean",
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

M.DBSecurityGroupNotFoundFault = {
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

M.InstanceQuotaExceededFault = {
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

M.OptionGroupNotFoundFault = {
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

M.StorageTypeNotSupportedFault = {
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
        DeletionProtection = {
            type = "boolean",
        },
        DatabaseName = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        StorageEncrypted = {
            type = "boolean",
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
        DatabaseName = {
            type = "string",
        },
        StorageEncrypted = {
            type = "boolean",
        },
        DeletionProtection = {
            type = "boolean",
        },
        GlobalClusterMembers = {
            type = "list",
            member = M.GlobalClusterMember,
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
    },
}

M.DeleteDBClusterOutput = {
    type = "structure",
    members = {
        DBCluster = M.DBCluster,
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

M.InvalidDBClusterEndpointStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
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

M.DBSnapshotAlreadyExistsFault = {
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
    },
}

M.DeleteDBInstanceOutput = {
    type = "structure",
    members = {
        DBInstance = M.DBInstance,
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
        SupportsGlobalDatabases = {
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
        EngineVersion = {
            type = "string",
        },
        DBParameterGroupFamily = {
            type = "string",
        },
        DBEngineDescription = {
            type = "string",
        },
        DBEngineVersionDescription = {
            type = "string",
        },
        DefaultCharacterSet = M.CharacterSet,
        SupportedCharacterSets = {
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
        SupportsGlobalDatabases = {
            type = "boolean",
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
            member = M.DBEngineVersion,
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

M.DescribeGlobalClustersInput = {
    type = "structure",
    members = {
        GlobalClusterIdentifier = {
            type = "string",
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
        SupportsGlobalDatabases = {
            type = "boolean",
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
    },
}

M.ValidDBInstanceModificationsMessage = {
    type = "structure",
    members = {
        Storage = {
            type = "list",
            member = M.ValidStorageOptions,
        },
    },
}

M.DescribeValidDBInstanceModificationsOutput = {
    type = "structure",
    members = {
        ValidDBInstanceModificationsMessage = M.ValidDBInstanceModificationsMessage,
    },
}

M.FailoverDBClusterInput = {
    type = "structure",
    members = {
        DBClusterIdentifier = {
            type = "string",
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

M.InvalidDBSecurityGroupStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
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
        DeletionProtection = {
            type = "boolean",
        },
        CopyTagsToSnapshot = {
            type = "boolean",
        },
        ServerlessV2ScalingConfiguration = M.ServerlessV2ScalingConfiguration,
        StorageType = {
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

M.CertificateNotFoundFault = {
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
        EnablePerformanceInsights = {
            type = "boolean",
        },
        PerformanceInsightsKMSKeyId = {
            type = "string",
        },
        CloudwatchLogsExportConfiguration = M.CloudwatchLogsExportConfiguration,
        DeletionProtection = {
            type = "boolean",
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

M.InsufficientDBClusterCapacityFault = {
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
        ServerlessV2ScalingConfiguration = M.ServerlessV2ScalingConfiguration,
        StorageType = {
            type = "string",
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
            traits = {
                required = true,
            },
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
        ServerlessV2ScalingConfiguration = M.ServerlessV2ScalingConfiguration,
        StorageType = {
            type = "string",
        },
    },
}

M.RestoreDBClusterToPointInTimeOutput = {
    type = "structure",
    members = {
        DBCluster = M.DBCluster,
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

return M
