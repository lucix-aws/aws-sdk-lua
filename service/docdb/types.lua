local M = {}

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
        StorageType = {
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
        PreSignedUrl = {
            type = "string",
        },
        EnableCloudwatchLogsExports = {
            type = "list",
            member = { type = "string" },
        },
        DeletionProtection = {
            type = "boolean",
        },
        GlobalClusterIdentifier = {
            type = "string",
        },
        StorageType = {
            type = "string",
        },
        ServerlessV2ScalingConfiguration = M.ServerlessV2ScalingConfiguration,
        ManageMasterUserPassword = {
            type = "boolean",
        },
        MasterUserSecretKmsKeyId = {
            type = "string",
        },
        NetworkType = {
            type = "string",
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

M.ClusterMasterUserSecret = {
    type = "structure",
    id = "ClusterMasterUserSecret",
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

M.DBCluster = {
    type = "structure",
    id = "DBCluster",
    members = {
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        BackupRetentionPeriod = {
            type = "integer",
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
        CloneGroupId = {
            type = "string",
        },
        ClusterCreateTime = {
            type = "timestamp",
        },
        EnabledCloudwatchLogsExports = {
            type = "list",
            member = { type = "string" },
        },
        DeletionProtection = {
            type = "boolean",
        },
        IOOptimizedNextAllowedModificationTime = {
            type = "timestamp",
        },
        StorageType = {
            type = "string",
        },
        ServerlessV2ScalingConfiguration = M.ServerlessV2ScalingConfigurationInfo,
        MasterUserSecret = M.ClusterMasterUserSecret,
        NetworkType = {
            type = "string",
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

M.CreateDBInstanceInput = {
    type = "structure",
    id = "CreateDBInstanceInput",
    members = {
        DBInstanceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
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
        AvailabilityZone = {
            type = "string",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        AutoMinorVersionUpgrade = {
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
        CopyTagsToSnapshot = {
            type = "boolean",
        },
        PromotionTier = {
            type = "integer",
        },
        EnablePerformanceInsights = {
            type = "boolean",
        },
        PerformanceInsightsKMSKeyId = {
            type = "string",
        },
        CACertificateIdentifier = {
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

M.AvailabilityZone = {
    type = "structure",
    id = "AvailabilityZone",
    members = {
        Name = {
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
        Endpoint = M.Endpoint,
        InstanceCreateTime = {
            type = "timestamp",
        },
        PreferredBackupWindow = {
            type = "string",
        },
        BackupRetentionPeriod = {
            type = "integer",
        },
        VpcSecurityGroups = {
            type = "list",
            member = M.VpcSecurityGroupMembership,
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
        EngineVersion = {
            type = "string",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        PubliclyAccessible = {
            type = "boolean",
        },
        StatusInfos = {
            type = "list",
            member = M.DBInstanceStatusInfo,
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
        CopyTagsToSnapshot = {
            type = "boolean",
        },
        PromotionTier = {
            type = "integer",
        },
        DBInstanceArn = {
            type = "string",
        },
        EnabledCloudwatchLogsExports = {
            type = "list",
            member = { type = "string" },
        },
        CertificateDetails = M.CertificateDetails,
        PerformanceInsightsEnabled = {
            type = "boolean",
        },
        PerformanceInsightsKMSKeyId = {
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
        DeletionProtection = {
            type = "boolean",
        },
        DatabaseName = {
            type = "string",
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
    },
}

M.DeleteDBClusterOutput = {
    type = "structure",
    id = "DeleteDBClusterOutput",
    members = {
        DBCluster = M.DBCluster,
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
    },
}

M.DeleteDBInstanceOutput = {
    type = "structure",
    id = "DeleteDBInstanceOutput",
    members = {
        DBInstance = M.DBInstance,
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
    },
}

M.DescribeCertificatesOutput = {
    type = "structure",
    id = "DescribeCertificatesOutput",
    members = {
        Certificates = {
            type = "list",
            member = M.Certificate,
        },
        Marker = {
            type = "string",
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
    },
}

M.DBEngineVersion = {
    type = "structure",
    id = "DBEngineVersion",
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
        ValidUpgradeTarget = {
            type = "list",
            member = M.UpgradeTarget,
        },
        ExportableLogTypes = {
            type = "list",
            member = { type = "string" },
        },
        SupportsLogExportsToCloudwatchLogs = {
            type = "boolean",
        },
        SupportedCACertificateIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        SupportsCertificateRotationWithoutRestart = {
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
        AvailabilityZones = {
            type = "list",
            member = M.AvailabilityZone,
        },
        Vpc = {
            type = "boolean",
        },
        StorageType = {
            type = "string",
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

M.FailoverDBClusterInput = {
    type = "structure",
    id = "FailoverDBClusterInput",
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
        PreferredBackupWindow = {
            type = "string",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        CloudwatchLogsExportConfiguration = M.CloudwatchLogsExportConfiguration,
        EngineVersion = {
            type = "string",
        },
        AllowMajorVersionUpgrade = {
            type = "boolean",
        },
        DeletionProtection = {
            type = "boolean",
        },
        StorageType = {
            type = "string",
        },
        ServerlessV2ScalingConfiguration = M.ServerlessV2ScalingConfiguration,
        ManageMasterUserPassword = {
            type = "boolean",
        },
        MasterUserSecretKmsKeyId = {
            type = "string",
        },
        RotateMasterUserPassword = {
            type = "boolean",
        },
        NetworkType = {
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
        DBInstanceClass = {
            type = "string",
        },
        ApplyImmediately = {
            type = "boolean",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        NewDBInstanceIdentifier = {
            type = "string",
        },
        CACertificateIdentifier = {
            type = "string",
        },
        CopyTagsToSnapshot = {
            type = "boolean",
        },
        PromotionTier = {
            type = "integer",
        },
        EnablePerformanceInsights = {
            type = "boolean",
        },
        PerformanceInsightsKMSKeyId = {
            type = "string",
        },
        CertificateRotationRestart = {
            type = "boolean",
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
    },
}

M.ModifyGlobalClusterOutput = {
    type = "structure",
    id = "ModifyGlobalClusterOutput",
    members = {
        GlobalCluster = M.GlobalCluster,
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
        EnableCloudwatchLogsExports = {
            type = "list",
            member = { type = "string" },
        },
        DeletionProtection = {
            type = "boolean",
        },
        DBClusterParameterGroupName = {
            type = "string",
        },
        ServerlessV2ScalingConfiguration = M.ServerlessV2ScalingConfiguration,
        StorageType = {
            type = "string",
        },
        NetworkType = {
            type = "string",
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
        EnableCloudwatchLogsExports = {
            type = "list",
            member = { type = "string" },
        },
        DeletionProtection = {
            type = "boolean",
        },
        ServerlessV2ScalingConfiguration = M.ServerlessV2ScalingConfiguration,
        StorageType = {
            type = "string",
        },
        NetworkType = {
            type = "string",
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

return M
