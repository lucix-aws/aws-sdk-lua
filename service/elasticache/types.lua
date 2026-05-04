local M = {}

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
    members = {
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CacheClusterNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CacheParameterGroupNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CacheSecurityGroupNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CacheSubnetGroupNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidARNFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidReplicationGroupStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidServerlessCacheSnapshotStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidServerlessCacheStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReplicationGroupNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReservedCacheNodeNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServerlessCacheNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServerlessCacheSnapshotNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SnapshotNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TagQuotaPerResourceExceeded = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UserGroupNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UserNotFoundFault = {
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

M.AuthorizeCacheSecurityGroupIngressInput = {
    type = "structure",
    members = {
        CacheSecurityGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EC2SecurityGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EC2SecurityGroupOwnerId = {
            type = "string",
            traits = {
                required = true,
            },
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
        EC2SecurityGroupOwnerId = {
            type = "string",
        },
    },
}

M.CacheSecurityGroup = {
    type = "structure",
    members = {
        OwnerId = {
            type = "string",
        },
        CacheSecurityGroupName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EC2SecurityGroups = {
            type = "list",
            member = M.EC2SecurityGroup,
        },
        ARN = {
            type = "string",
        },
    },
}

M.AuthorizeCacheSecurityGroupIngressOutput = {
    type = "structure",
    members = {
        CacheSecurityGroup = M.CacheSecurityGroup,
    },
}

M.InvalidCacheSecurityGroupStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParameterCombinationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParameterValueException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchApplyUpdateActionInput = {
    type = "structure",
    members = {
        ReplicationGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        CacheClusterIds = {
            type = "list",
            member = { type = "string" },
        },
        ServiceUpdateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateActionStatus = {
    NOT_APPLIED = "not-applied",
    WAITING_TO_START = "waiting-to-start",
    IN_PROGRESS = "in-progress",
    STOPPING = "stopping",
    STOPPED = "stopped",
    COMPLETE = "complete",
    SCHEDULING = "scheduling",
    SCHEDULED = "scheduled",
    NOT_APPLICABLE = "not-applicable",
}

M.ProcessedUpdateAction = {
    type = "structure",
    members = {
        ReplicationGroupId = {
            type = "string",
        },
        CacheClusterId = {
            type = "string",
        },
        ServiceUpdateName = {
            type = "string",
        },
        UpdateActionStatus = {
            type = "string",
        },
    },
}

M.UnprocessedUpdateAction = {
    type = "structure",
    members = {
        ReplicationGroupId = {
            type = "string",
        },
        CacheClusterId = {
            type = "string",
        },
        ServiceUpdateName = {
            type = "string",
        },
        ErrorType = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.BatchApplyUpdateActionOutput = {
    type = "structure",
    members = {
        ProcessedUpdateActions = {
            type = "list",
            member = M.ProcessedUpdateAction,
        },
        UnprocessedUpdateActions = {
            type = "list",
            member = M.UnprocessedUpdateAction,
        },
    },
}

M.ServiceUpdateNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchStopUpdateActionInput = {
    type = "structure",
    members = {
        ReplicationGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        CacheClusterIds = {
            type = "list",
            member = { type = "string" },
        },
        ServiceUpdateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchStopUpdateActionOutput = {
    type = "structure",
    members = {
        ProcessedUpdateActions = {
            type = "list",
            member = M.ProcessedUpdateAction,
        },
        UnprocessedUpdateActions = {
            type = "list",
            member = M.UnprocessedUpdateAction,
        },
    },
}

M.CompleteMigrationInput = {
    type = "structure",
    members = {
        ReplicationGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Force = {
            type = "boolean",
        },
    },
}

M.AutomaticFailoverStatus = {
    ENABLED = "enabled",
    DISABLED = "disabled",
    ENABLING = "enabling",
    DISABLING = "disabling",
}

M.ClusterMode = {
    ENABLED = "enabled",
    DISABLED = "disabled",
    COMPATIBLE = "compatible",
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
    },
}

M.DataTieringStatus = {
    ENABLED = "enabled",
    DISABLED = "disabled",
}

M.GlobalReplicationGroupInfo = {
    type = "structure",
    members = {
        GlobalReplicationGroupId = {
            type = "string",
        },
        GlobalReplicationGroupMemberRole = {
            type = "string",
        },
    },
}

M.IpDiscovery = {
    IPV4 = "ipv4",
    IPV6 = "ipv6",
}

M.CloudWatchLogsDestinationDetails = {
    type = "structure",
    members = {
        LogGroup = {
            type = "string",
        },
    },
}

M.KinesisFirehoseDestinationDetails = {
    type = "structure",
    members = {
        DeliveryStream = {
            type = "string",
        },
    },
}

M.DestinationDetails = {
    type = "structure",
    members = {
        CloudWatchLogsDetails = M.CloudWatchLogsDestinationDetails,
        KinesisFirehoseDetails = M.KinesisFirehoseDestinationDetails,
    },
}

M.DestinationType = {
    CloudWatchLogs = "cloudwatch-logs",
    KinesisFirehose = "kinesis-firehose",
}

M.LogFormat = {
    TEXT = "text",
    JSON = "json",
}

M.LogType = {
    SLOW_LOG = "slow-log",
    ENGINE_LOG = "engine-log",
}

M.LogDeliveryConfigurationStatus = {
    ACTIVE = "active",
    ENABLING = "enabling",
    MODIFYING = "modifying",
    DISABLING = "disabling",
    ERROR = "error",
}

M.LogDeliveryConfiguration = {
    type = "structure",
    members = {
        LogType = {
            type = "string",
        },
        DestinationType = {
            type = "string",
        },
        DestinationDetails = M.DestinationDetails,
        LogFormat = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.MultiAZStatus = {
    ENABLED = "enabled",
    DISABLED = "disabled",
}

M.NetworkType = {
    IPV4 = "ipv4",
    IPV6 = "ipv6",
    DUAL_STACK = "dual_stack",
}

M.NodeGroupMember = {
    type = "structure",
    members = {
        CacheClusterId = {
            type = "string",
        },
        CacheNodeId = {
            type = "string",
        },
        ReadEndpoint = M.Endpoint,
        PreferredAvailabilityZone = {
            type = "string",
        },
        PreferredOutpostArn = {
            type = "string",
        },
        CurrentRole = {
            type = "string",
        },
    },
}

M.NodeGroup = {
    type = "structure",
    members = {
        NodeGroupId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        PrimaryEndpoint = M.Endpoint,
        ReaderEndpoint = M.Endpoint,
        Slots = {
            type = "string",
        },
        NodeGroupMembers = {
            type = "list",
            member = M.NodeGroupMember,
        },
    },
}

M.AuthTokenUpdateStatus = {
    SETTING = "SETTING",
    ROTATING = "ROTATING",
}

M.PendingAutomaticFailoverStatus = {
    ENABLED = "enabled",
    DISABLED = "disabled",
}

M.PendingLogDeliveryConfiguration = {
    type = "structure",
    members = {
        LogType = {
            type = "string",
        },
        DestinationType = {
            type = "string",
        },
        DestinationDetails = M.DestinationDetails,
        LogFormat = {
            type = "string",
        },
    },
}

M.SlotMigration = {
    type = "structure",
    members = {
        ProgressPercentage = {
            type = "double",
        },
    },
}

M.ReshardingStatus = {
    type = "structure",
    members = {
        SlotMigration = M.SlotMigration,
    },
}

M.TransitEncryptionMode = {
    PREFERRED = "preferred",
    REQUIRED = "required",
}

M.UserGroupsUpdateStatus = {
    type = "structure",
    members = {
        UserGroupIdsToAdd = {
            type = "list",
            member = { type = "string" },
        },
        UserGroupIdsToRemove = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ReplicationGroupPendingModifiedValues = {
    type = "structure",
    members = {
        PrimaryClusterId = {
            type = "string",
        },
        AutomaticFailoverStatus = {
            type = "string",
        },
        Resharding = M.ReshardingStatus,
        AuthTokenStatus = {
            type = "string",
        },
        UserGroups = M.UserGroupsUpdateStatus,
        LogDeliveryConfigurations = {
            type = "list",
            member = M.PendingLogDeliveryConfiguration,
        },
        TransitEncryptionEnabled = {
            type = "boolean",
        },
        TransitEncryptionMode = {
            type = "string",
        },
        ClusterMode = {
            type = "string",
        },
    },
}

M.ReplicationGroup = {
    type = "structure",
    members = {
        ReplicationGroupId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        GlobalReplicationGroupInfo = M.GlobalReplicationGroupInfo,
        Status = {
            type = "string",
        },
        PendingModifiedValues = M.ReplicationGroupPendingModifiedValues,
        MemberClusters = {
            type = "list",
            member = { type = "string" },
        },
        NodeGroups = {
            type = "list",
            member = M.NodeGroup,
        },
        SnapshottingClusterId = {
            type = "string",
        },
        AutomaticFailover = {
            type = "string",
        },
        MultiAZ = {
            type = "string",
        },
        ConfigurationEndpoint = M.Endpoint,
        SnapshotRetentionLimit = {
            type = "integer",
        },
        SnapshotWindow = {
            type = "string",
        },
        ClusterEnabled = {
            type = "boolean",
        },
        CacheNodeType = {
            type = "string",
        },
        AuthTokenEnabled = {
            type = "boolean",
        },
        AuthTokenLastModifiedDate = {
            type = "timestamp",
        },
        TransitEncryptionEnabled = {
            type = "boolean",
        },
        AtRestEncryptionEnabled = {
            type = "boolean",
        },
        MemberClustersOutpostArns = {
            type = "list",
            member = { type = "string" },
        },
        KmsKeyId = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
        UserGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        LogDeliveryConfigurations = {
            type = "list",
            member = M.LogDeliveryConfiguration,
        },
        ReplicationGroupCreateTime = {
            type = "timestamp",
        },
        DataTiering = {
            type = "string",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        NetworkType = {
            type = "string",
        },
        IpDiscovery = {
            type = "string",
        },
        TransitEncryptionMode = {
            type = "string",
        },
        ClusterMode = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
    },
}

M.CompleteMigrationOutput = {
    type = "structure",
    members = {
        ReplicationGroup = M.ReplicationGroup,
    },
}

M.ReplicationGroupNotUnderMigrationFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CopyServerlessCacheSnapshotInput = {
    type = "structure",
    members = {
        SourceServerlessCacheSnapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetServerlessCacheSnapshotName = {
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
    },
}

M.ServerlessCacheConfiguration = {
    type = "structure",
    members = {
        ServerlessCacheName = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        MajorEngineVersion = {
            type = "string",
        },
    },
}

M.ServerlessCacheSnapshot = {
    type = "structure",
    members = {
        ServerlessCacheSnapshotName = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        SnapshotType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
        },
        ExpiryTime = {
            type = "timestamp",
        },
        BytesUsedForCache = {
            type = "string",
        },
        ServerlessCacheConfiguration = M.ServerlessCacheConfiguration,
    },
}

M.CopyServerlessCacheSnapshotOutput = {
    type = "structure",
    members = {
        ServerlessCacheSnapshot = M.ServerlessCacheSnapshot,
    },
}

M.ServerlessCacheSnapshotAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServerlessCacheSnapshotQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceLinkedRoleNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CopySnapshotInput = {
    type = "structure",
    members = {
        SourceSnapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetSnapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetBucket = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.NodeGroupConfiguration = {
    type = "structure",
    members = {
        NodeGroupId = {
            type = "string",
        },
        Slots = {
            type = "string",
        },
        ReplicaCount = {
            type = "integer",
        },
        PrimaryAvailabilityZone = {
            type = "string",
        },
        ReplicaAvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        PrimaryOutpostArn = {
            type = "string",
        },
        ReplicaOutpostArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.NodeSnapshot = {
    type = "structure",
    members = {
        CacheClusterId = {
            type = "string",
        },
        NodeGroupId = {
            type = "string",
        },
        CacheNodeId = {
            type = "string",
        },
        NodeGroupConfiguration = M.NodeGroupConfiguration,
        CacheSize = {
            type = "string",
        },
        CacheNodeCreateTime = {
            type = "timestamp",
        },
        SnapshotCreateTime = {
            type = "timestamp",
        },
    },
}

M.Snapshot = {
    type = "structure",
    members = {
        SnapshotName = {
            type = "string",
        },
        ReplicationGroupId = {
            type = "string",
        },
        ReplicationGroupDescription = {
            type = "string",
        },
        CacheClusterId = {
            type = "string",
        },
        SnapshotStatus = {
            type = "string",
        },
        SnapshotSource = {
            type = "string",
        },
        CacheNodeType = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        NumCacheNodes = {
            type = "integer",
        },
        PreferredAvailabilityZone = {
            type = "string",
        },
        PreferredOutpostArn = {
            type = "string",
        },
        CacheClusterCreateTime = {
            type = "timestamp",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        TopicArn = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        CacheParameterGroupName = {
            type = "string",
        },
        CacheSubnetGroupName = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        SnapshotRetentionLimit = {
            type = "integer",
        },
        SnapshotWindow = {
            type = "string",
        },
        NumNodeGroups = {
            type = "integer",
        },
        AutomaticFailover = {
            type = "string",
        },
        NodeSnapshots = {
            type = "list",
            member = M.NodeSnapshot,
        },
        KmsKeyId = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
        DataTiering = {
            type = "string",
        },
    },
}

M.CopySnapshotOutput = {
    type = "structure",
    members = {
        Snapshot = M.Snapshot,
    },
}

M.InvalidSnapshotStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SnapshotAlreadyExistsFault = {
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

M.CacheClusterAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterQuotaForCustomerExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AZMode = {
    SINGLE_AZ = "single-az",
    CROSS_AZ = "cross-az",
}

M.LogDeliveryConfigurationRequest = {
    type = "structure",
    members = {
        LogType = {
            type = "string",
        },
        DestinationType = {
            type = "string",
        },
        DestinationDetails = M.DestinationDetails,
        LogFormat = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
    },
}

M.OutpostMode = {
    SINGLE_OUTPOST = "single-outpost",
    CROSS_OUTPOST = "cross-outpost",
}

M.CreateCacheClusterInput = {
    type = "structure",
    members = {
        CacheClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReplicationGroupId = {
            type = "string",
        },
        AZMode = {
            type = "string",
        },
        PreferredAvailabilityZone = {
            type = "string",
        },
        PreferredAvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        NumCacheNodes = {
            type = "integer",
        },
        CacheNodeType = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        CacheParameterGroupName = {
            type = "string",
        },
        CacheSubnetGroupName = {
            type = "string",
        },
        CacheSecurityGroupNames = {
            type = "list",
            member = { type = "string" },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        SnapshotArns = {
            type = "list",
            member = { type = "string" },
        },
        SnapshotName = {
            type = "string",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        NotificationTopicArn = {
            type = "string",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        SnapshotRetentionLimit = {
            type = "integer",
        },
        SnapshotWindow = {
            type = "string",
        },
        AuthToken = {
            type = "string",
        },
        OutpostMode = {
            type = "string",
        },
        PreferredOutpostArn = {
            type = "string",
        },
        PreferredOutpostArns = {
            type = "list",
            member = { type = "string" },
        },
        LogDeliveryConfigurations = {
            type = "list",
            member = M.LogDeliveryConfigurationRequest,
        },
        TransitEncryptionEnabled = {
            type = "boolean",
        },
        NetworkType = {
            type = "string",
        },
        IpDiscovery = {
            type = "string",
        },
    },
}

M.CacheNode = {
    type = "structure",
    members = {
        CacheNodeId = {
            type = "string",
        },
        CacheNodeStatus = {
            type = "string",
        },
        CacheNodeCreateTime = {
            type = "timestamp",
        },
        Endpoint = M.Endpoint,
        ParameterGroupStatus = {
            type = "string",
        },
        SourceCacheNodeId = {
            type = "string",
        },
        CustomerAvailabilityZone = {
            type = "string",
        },
        CustomerOutpostArn = {
            type = "string",
        },
    },
}

M.CacheParameterGroupStatus = {
    type = "structure",
    members = {
        CacheParameterGroupName = {
            type = "string",
        },
        ParameterApplyStatus = {
            type = "string",
        },
        CacheNodeIdsToReboot = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CacheSecurityGroupMembership = {
    type = "structure",
    members = {
        CacheSecurityGroupName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.NotificationConfiguration = {
    type = "structure",
    members = {
        TopicArn = {
            type = "string",
        },
        TopicStatus = {
            type = "string",
        },
    },
}

M.ScaleConfig = {
    type = "structure",
    members = {
        ScalePercentage = {
            type = "integer",
        },
        ScaleIntervalMinutes = {
            type = "integer",
        },
    },
}

M.PendingModifiedValues = {
    type = "structure",
    members = {
        NumCacheNodes = {
            type = "integer",
        },
        CacheNodeIdsToRemove = {
            type = "list",
            member = { type = "string" },
        },
        EngineVersion = {
            type = "string",
        },
        CacheNodeType = {
            type = "string",
        },
        AuthTokenStatus = {
            type = "string",
        },
        LogDeliveryConfigurations = {
            type = "list",
            member = M.PendingLogDeliveryConfiguration,
        },
        TransitEncryptionEnabled = {
            type = "boolean",
        },
        TransitEncryptionMode = {
            type = "string",
        },
        ScaleConfig = M.ScaleConfig,
    },
}

M.SecurityGroupMembership = {
    type = "structure",
    members = {
        SecurityGroupId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.CacheCluster = {
    type = "structure",
    members = {
        CacheClusterId = {
            type = "string",
        },
        ConfigurationEndpoint = M.Endpoint,
        ClientDownloadLandingPage = {
            type = "string",
        },
        CacheNodeType = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        CacheClusterStatus = {
            type = "string",
        },
        NumCacheNodes = {
            type = "integer",
        },
        PreferredAvailabilityZone = {
            type = "string",
        },
        PreferredOutpostArn = {
            type = "string",
        },
        CacheClusterCreateTime = {
            type = "timestamp",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        PendingModifiedValues = M.PendingModifiedValues,
        NotificationConfiguration = M.NotificationConfiguration,
        CacheSecurityGroups = {
            type = "list",
            member = M.CacheSecurityGroupMembership,
        },
        CacheParameterGroup = M.CacheParameterGroupStatus,
        CacheSubnetGroupName = {
            type = "string",
        },
        CacheNodes = {
            type = "list",
            member = M.CacheNode,
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        SecurityGroups = {
            type = "list",
            member = M.SecurityGroupMembership,
        },
        ReplicationGroupId = {
            type = "string",
        },
        SnapshotRetentionLimit = {
            type = "integer",
        },
        SnapshotWindow = {
            type = "string",
        },
        AuthTokenEnabled = {
            type = "boolean",
        },
        AuthTokenLastModifiedDate = {
            type = "timestamp",
        },
        TransitEncryptionEnabled = {
            type = "boolean",
        },
        AtRestEncryptionEnabled = {
            type = "boolean",
        },
        ARN = {
            type = "string",
        },
        ReplicationGroupLogDeliveryEnabled = {
            type = "boolean",
        },
        LogDeliveryConfigurations = {
            type = "list",
            member = M.LogDeliveryConfiguration,
        },
        NetworkType = {
            type = "string",
        },
        IpDiscovery = {
            type = "string",
        },
        TransitEncryptionMode = {
            type = "string",
        },
    },
}

M.CreateCacheClusterOutput = {
    type = "structure",
    members = {
        CacheCluster = M.CacheCluster,
    },
}

M.InsufficientCacheClusterCapacityFault = {
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

M.NodeQuotaForClusterExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NodeQuotaForCustomerExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CacheParameterGroupAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CacheParameterGroupQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateCacheParameterGroupInput = {
    type = "structure",
    members = {
        CacheParameterGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CacheParameterGroupFamily = {
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

M.CacheParameterGroup = {
    type = "structure",
    members = {
        CacheParameterGroupName = {
            type = "string",
        },
        CacheParameterGroupFamily = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        IsGlobal = {
            type = "boolean",
        },
        ARN = {
            type = "string",
        },
    },
}

M.CreateCacheParameterGroupOutput = {
    type = "structure",
    members = {
        CacheParameterGroup = M.CacheParameterGroup,
    },
}

M.InvalidCacheParameterGroupStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CacheSecurityGroupAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CacheSecurityGroupQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateCacheSecurityGroupInput = {
    type = "structure",
    members = {
        CacheSecurityGroupName = {
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

M.CreateCacheSecurityGroupOutput = {
    type = "structure",
    members = {
        CacheSecurityGroup = M.CacheSecurityGroup,
    },
}

M.CacheSubnetGroupAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CacheSubnetGroupQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CacheSubnetQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateCacheSubnetGroupInput = {
    type = "structure",
    members = {
        CacheSubnetGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CacheSubnetGroupDescription = {
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

M.AvailabilityZone = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.SubnetOutpost = {
    type = "structure",
    members = {
        SubnetOutpostArn = {
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
        SubnetOutpost = M.SubnetOutpost,
        SupportedNetworkTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CacheSubnetGroup = {
    type = "structure",
    members = {
        CacheSubnetGroupName = {
            type = "string",
        },
        CacheSubnetGroupDescription = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        Subnets = {
            type = "list",
            member = M.Subnet,
        },
        ARN = {
            type = "string",
        },
        SupportedNetworkTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateCacheSubnetGroupOutput = {
    type = "structure",
    members = {
        CacheSubnetGroup = M.CacheSubnetGroup,
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

M.SubnetNotAllowedFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateGlobalReplicationGroupInput = {
    type = "structure",
    members = {
        GlobalReplicationGroupIdSuffix = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GlobalReplicationGroupDescription = {
            type = "string",
        },
        PrimaryReplicationGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GlobalNodeGroup = {
    type = "structure",
    members = {
        GlobalNodeGroupId = {
            type = "string",
        },
        Slots = {
            type = "string",
        },
    },
}

M.GlobalReplicationGroupMember = {
    type = "structure",
    members = {
        ReplicationGroupId = {
            type = "string",
        },
        ReplicationGroupRegion = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        AutomaticFailover = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.GlobalReplicationGroup = {
    type = "structure",
    members = {
        GlobalReplicationGroupId = {
            type = "string",
        },
        GlobalReplicationGroupDescription = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CacheNodeType = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        Members = {
            type = "list",
            member = M.GlobalReplicationGroupMember,
        },
        ClusterEnabled = {
            type = "boolean",
        },
        GlobalNodeGroups = {
            type = "list",
            member = M.GlobalNodeGroup,
        },
        AuthTokenEnabled = {
            type = "boolean",
        },
        TransitEncryptionEnabled = {
            type = "boolean",
        },
        AtRestEncryptionEnabled = {
            type = "boolean",
        },
        ARN = {
            type = "string",
        },
    },
}

M.CreateGlobalReplicationGroupOutput = {
    type = "structure",
    members = {
        GlobalReplicationGroup = M.GlobalReplicationGroup,
    },
}

M.GlobalReplicationGroupAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateReplicationGroupInput = {
    type = "structure",
    members = {
        ReplicationGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReplicationGroupDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GlobalReplicationGroupId = {
            type = "string",
        },
        PrimaryClusterId = {
            type = "string",
        },
        AutomaticFailoverEnabled = {
            type = "boolean",
        },
        MultiAZEnabled = {
            type = "boolean",
        },
        NumCacheClusters = {
            type = "integer",
        },
        PreferredCacheClusterAZs = {
            type = "list",
            member = { type = "string" },
        },
        NumNodeGroups = {
            type = "integer",
        },
        ReplicasPerNodeGroup = {
            type = "integer",
        },
        NodeGroupConfiguration = {
            type = "list",
            member = M.NodeGroupConfiguration,
        },
        CacheNodeType = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        CacheParameterGroupName = {
            type = "string",
        },
        CacheSubnetGroupName = {
            type = "string",
        },
        CacheSecurityGroupNames = {
            type = "list",
            member = { type = "string" },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        SnapshotArns = {
            type = "list",
            member = { type = "string" },
        },
        SnapshotName = {
            type = "string",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        NotificationTopicArn = {
            type = "string",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        SnapshotRetentionLimit = {
            type = "integer",
        },
        SnapshotWindow = {
            type = "string",
        },
        AuthToken = {
            type = "string",
        },
        TransitEncryptionEnabled = {
            type = "boolean",
        },
        AtRestEncryptionEnabled = {
            type = "boolean",
        },
        KmsKeyId = {
            type = "string",
        },
        UserGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        LogDeliveryConfigurations = {
            type = "list",
            member = M.LogDeliveryConfigurationRequest,
        },
        DataTieringEnabled = {
            type = "boolean",
        },
        NetworkType = {
            type = "string",
        },
        IpDiscovery = {
            type = "string",
        },
        TransitEncryptionMode = {
            type = "string",
        },
        ClusterMode = {
            type = "string",
        },
        ServerlessCacheSnapshotName = {
            type = "string",
        },
    },
}

M.CreateReplicationGroupOutput = {
    type = "structure",
    members = {
        ReplicationGroup = M.ReplicationGroup,
    },
}

M.GlobalReplicationGroupNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidCacheClusterStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidGlobalReplicationGroupStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidUserGroupStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NodeGroupsPerReplicationGroupQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReplicationGroupAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DataStorageUnit = {
    GB = "GB",
}

M.DataStorage = {
    type = "structure",
    members = {
        Maximum = {
            type = "integer",
        },
        Minimum = {
            type = "integer",
        },
        Unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ECPUPerSecond = {
    type = "structure",
    members = {
        Maximum = {
            type = "integer",
        },
        Minimum = {
            type = "integer",
        },
    },
}

M.CacheUsageLimits = {
    type = "structure",
    members = {
        DataStorage = M.DataStorage,
        ECPUPerSecond = M.ECPUPerSecond,
    },
}

M.CreateServerlessCacheInput = {
    type = "structure",
    members = {
        ServerlessCacheName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Engine = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MajorEngineVersion = {
            type = "string",
        },
        CacheUsageLimits = M.CacheUsageLimits,
        KmsKeyId = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        SnapshotArnsToRestore = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        UserGroupId = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        SnapshotRetentionLimit = {
            type = "integer",
        },
        DailySnapshotTime = {
            type = "string",
        },
        NetworkType = {
            type = "string",
        },
    },
}

M.ServerlessCache = {
    type = "structure",
    members = {
        ServerlessCacheName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        MajorEngineVersion = {
            type = "string",
        },
        FullEngineVersion = {
            type = "string",
        },
        CacheUsageLimits = M.CacheUsageLimits,
        KmsKeyId = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        Endpoint = M.Endpoint,
        ReaderEndpoint = M.Endpoint,
        ARN = {
            type = "string",
        },
        UserGroupId = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        SnapshotRetentionLimit = {
            type = "integer",
        },
        DailySnapshotTime = {
            type = "string",
        },
        NetworkType = {
            type = "string",
        },
    },
}

M.CreateServerlessCacheOutput = {
    type = "structure",
    members = {
        ServerlessCache = M.ServerlessCache,
    },
}

M.InvalidCredentialsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServerlessCacheAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServerlessCacheQuotaForCustomerExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateServerlessCacheSnapshotInput = {
    type = "structure",
    members = {
        ServerlessCacheSnapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServerlessCacheName = {
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
    },
}

M.CreateServerlessCacheSnapshotOutput = {
    type = "structure",
    members = {
        ServerlessCacheSnapshot = M.ServerlessCacheSnapshot,
    },
}

M.CreateSnapshotInput = {
    type = "structure",
    members = {
        ReplicationGroupId = {
            type = "string",
        },
        CacheClusterId = {
            type = "string",
        },
        SnapshotName = {
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
    },
}

M.CreateSnapshotOutput = {
    type = "structure",
    members = {
        Snapshot = M.Snapshot,
    },
}

M.SnapshotFeatureNotSupportedFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InputAuthenticationType = {
    PASSWORD = "password",
    NO_PASSWORD = "no-password-required",
    IAM = "iam",
}

M.AuthenticationMode = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Passwords = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateUserInput = {
    type = "structure",
    members = {
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserName = {
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
        Passwords = {
            type = "list",
            member = { type = "string" },
        },
        AccessString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NoPasswordRequired = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        AuthenticationMode = M.AuthenticationMode,
    },
}

M.AuthenticationType = {
    PASSWORD = "password",
    NO_PASSWORD = "no-password",
    IAM = "iam",
}

M.Authentication = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        PasswordCount = {
            type = "integer",
        },
    },
}

M.CreateUserOutput = {
    type = "structure",
    members = {
        UserId = {
            type = "string",
        },
        UserName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        MinimumEngineVersion = {
            type = "string",
        },
        AccessString = {
            type = "string",
        },
        UserGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        Authentication = M.Authentication,
        ARN = {
            type = "string",
        },
    },
}

M.DuplicateUserNameFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UserAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UserQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateUserGroupInput = {
    type = "structure",
    members = {
        UserGroupId = {
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
        UserIds = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.UserGroupPendingChanges = {
    type = "structure",
    members = {
        UserIdsToRemove = {
            type = "list",
            member = { type = "string" },
        },
        UserIdsToAdd = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateUserGroupOutput = {
    type = "structure",
    members = {
        UserGroupId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        UserIds = {
            type = "list",
            member = { type = "string" },
        },
        MinimumEngineVersion = {
            type = "string",
        },
        PendingChanges = M.UserGroupPendingChanges,
        ReplicationGroups = {
            type = "list",
            member = { type = "string" },
        },
        ServerlessCaches = {
            type = "list",
            member = { type = "string" },
        },
        ARN = {
            type = "string",
        },
    },
}

M.DefaultUserRequired = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UserGroupAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UserGroupQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DecreaseNodeGroupsInGlobalReplicationGroupInput = {
    type = "structure",
    members = {
        GlobalReplicationGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeGroupCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        GlobalNodeGroupsToRemove = {
            type = "list",
            member = { type = "string" },
        },
        GlobalNodeGroupsToRetain = {
            type = "list",
            member = { type = "string" },
        },
        ApplyImmediately = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.DecreaseNodeGroupsInGlobalReplicationGroupOutput = {
    type = "structure",
    members = {
        GlobalReplicationGroup = M.GlobalReplicationGroup,
    },
}

M.ConfigureShard = {
    type = "structure",
    members = {
        NodeGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewReplicaCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        PreferredAvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        PreferredOutpostArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DecreaseReplicaCountInput = {
    type = "structure",
    members = {
        ReplicationGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewReplicaCount = {
            type = "integer",
        },
        ReplicaConfiguration = {
            type = "list",
            member = M.ConfigureShard,
        },
        ReplicasToRemove = {
            type = "list",
            member = { type = "string" },
        },
        ApplyImmediately = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.DecreaseReplicaCountOutput = {
    type = "structure",
    members = {
        ReplicationGroup = M.ReplicationGroup,
    },
}

M.NoOperationFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteCacheClusterInput = {
    type = "structure",
    members = {
        CacheClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FinalSnapshotIdentifier = {
            type = "string",
        },
    },
}

M.DeleteCacheClusterOutput = {
    type = "structure",
    members = {
        CacheCluster = M.CacheCluster,
    },
}

M.DeleteCacheParameterGroupInput = {
    type = "structure",
    members = {
        CacheParameterGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCacheParameterGroupOutput = {
    type = "structure",
}

M.DeleteCacheSecurityGroupInput = {
    type = "structure",
    members = {
        CacheSecurityGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCacheSecurityGroupOutput = {
    type = "structure",
}

M.CacheSubnetGroupInUse = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteCacheSubnetGroupInput = {
    type = "structure",
    members = {
        CacheSubnetGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCacheSubnetGroupOutput = {
    type = "structure",
}

M.DeleteGlobalReplicationGroupInput = {
    type = "structure",
    members = {
        GlobalReplicationGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetainPrimaryReplicationGroup = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteGlobalReplicationGroupOutput = {
    type = "structure",
    members = {
        GlobalReplicationGroup = M.GlobalReplicationGroup,
    },
}

M.DeleteReplicationGroupInput = {
    type = "structure",
    members = {
        ReplicationGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetainPrimaryCluster = {
            type = "boolean",
        },
        FinalSnapshotIdentifier = {
            type = "string",
        },
    },
}

M.DeleteReplicationGroupOutput = {
    type = "structure",
    members = {
        ReplicationGroup = M.ReplicationGroup,
    },
}

M.DeleteServerlessCacheInput = {
    type = "structure",
    members = {
        ServerlessCacheName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FinalSnapshotName = {
            type = "string",
        },
    },
}

M.DeleteServerlessCacheOutput = {
    type = "structure",
    members = {
        ServerlessCache = M.ServerlessCache,
    },
}

M.DeleteServerlessCacheSnapshotInput = {
    type = "structure",
    members = {
        ServerlessCacheSnapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteServerlessCacheSnapshotOutput = {
    type = "structure",
    members = {
        ServerlessCacheSnapshot = M.ServerlessCacheSnapshot,
    },
}

M.DeleteSnapshotInput = {
    type = "structure",
    members = {
        SnapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSnapshotOutput = {
    type = "structure",
    members = {
        Snapshot = M.Snapshot,
    },
}

M.DefaultUserAssociatedToUserGroupFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteUserInput = {
    type = "structure",
    members = {
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteUserOutput = {
    type = "structure",
    members = {
        UserId = {
            type = "string",
        },
        UserName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        MinimumEngineVersion = {
            type = "string",
        },
        AccessString = {
            type = "string",
        },
        UserGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        Authentication = M.Authentication,
        ARN = {
            type = "string",
        },
    },
}

M.InvalidUserStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteUserGroupInput = {
    type = "structure",
    members = {
        UserGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteUserGroupOutput = {
    type = "structure",
    members = {
        UserGroupId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        UserIds = {
            type = "list",
            member = { type = "string" },
        },
        MinimumEngineVersion = {
            type = "string",
        },
        PendingChanges = M.UserGroupPendingChanges,
        ReplicationGroups = {
            type = "list",
            member = { type = "string" },
        },
        ServerlessCaches = {
            type = "list",
            member = { type = "string" },
        },
        ARN = {
            type = "string",
        },
    },
}

M.DescribeCacheClustersInput = {
    type = "structure",
    members = {
        CacheClusterId = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
        ShowCacheNodeInfo = {
            type = "boolean",
        },
        ShowCacheClustersNotInReplicationGroups = {
            type = "boolean",
        },
    },
}

M.DescribeCacheClustersOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        CacheClusters = {
            type = "list",
            member = M.CacheCluster,
        },
    },
}

M.DescribeCacheEngineVersionsInput = {
    type = "structure",
    members = {
        Engine = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        CacheParameterGroupFamily = {
            type = "string",
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
    },
}

M.CacheEngineVersion = {
    type = "structure",
    members = {
        Engine = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        CacheParameterGroupFamily = {
            type = "string",
        },
        CacheEngineDescription = {
            type = "string",
        },
        CacheEngineVersionDescription = {
            type = "string",
        },
    },
}

M.DescribeCacheEngineVersionsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        CacheEngineVersions = {
            type = "list",
            member = M.CacheEngineVersion,
        },
    },
}

M.DescribeCacheParameterGroupsInput = {
    type = "structure",
    members = {
        CacheParameterGroupName = {
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

M.DescribeCacheParameterGroupsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        CacheParameterGroups = {
            type = "list",
            member = M.CacheParameterGroup,
        },
    },
}

M.DescribeCacheParametersInput = {
    type = "structure",
    members = {
        CacheParameterGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Source = {
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

M.CacheNodeTypeSpecificValue = {
    type = "structure",
    members = {
        CacheNodeType = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.ChangeType = {
    immediate = "immediate",
    requires_reboot = "requires-reboot",
}

M.CacheNodeTypeSpecificParameter = {
    type = "structure",
    members = {
        ParameterName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Source = {
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
        CacheNodeTypeSpecificValues = {
            type = "list",
            member = M.CacheNodeTypeSpecificValue,
        },
        ChangeType = {
            type = "string",
        },
    },
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
        ChangeType = {
            type = "string",
        },
    },
}

M.DescribeCacheParametersOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        Parameters = {
            type = "list",
            member = M.Parameter,
        },
        CacheNodeTypeSpecificParameters = {
            type = "list",
            member = M.CacheNodeTypeSpecificParameter,
        },
    },
}

M.DescribeCacheSecurityGroupsInput = {
    type = "structure",
    members = {
        CacheSecurityGroupName = {
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

M.DescribeCacheSecurityGroupsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        CacheSecurityGroups = {
            type = "list",
            member = M.CacheSecurityGroup,
        },
    },
}

M.DescribeCacheSubnetGroupsInput = {
    type = "structure",
    members = {
        CacheSubnetGroupName = {
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

M.DescribeCacheSubnetGroupsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        CacheSubnetGroups = {
            type = "list",
            member = M.CacheSubnetGroup,
        },
    },
}

M.DescribeEngineDefaultParametersInput = {
    type = "structure",
    members = {
        CacheParameterGroupFamily = {
            type = "string",
            traits = {
                required = true,
            },
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
        CacheParameterGroupFamily = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        Parameters = {
            type = "list",
            member = M.Parameter,
        },
        CacheNodeTypeSpecificParameters = {
            type = "list",
            member = M.CacheNodeTypeSpecificParameter,
        },
    },
}

M.DescribeEngineDefaultParametersOutput = {
    type = "structure",
    members = {
        EngineDefaults = M.EngineDefaults,
    },
}

M.SourceType = {
    cache_cluster = "cache-cluster",
    cache_parameter_group = "cache-parameter-group",
    cache_security_group = "cache-security-group",
    cache_subnet_group = "cache-subnet-group",
    replication_group = "replication-group",
    serverless_cache = "serverless-cache",
    serverless_cache_snapshot = "serverless-cache-snapshot",
    user = "user",
    user_group = "user-group",
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
        Date = {
            type = "timestamp",
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

M.DescribeGlobalReplicationGroupsInput = {
    type = "structure",
    members = {
        GlobalReplicationGroupId = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
        ShowMemberInfo = {
            type = "boolean",
        },
    },
}

M.DescribeGlobalReplicationGroupsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        GlobalReplicationGroups = {
            type = "list",
            member = M.GlobalReplicationGroup,
        },
    },
}

M.DescribeReplicationGroupsInput = {
    type = "structure",
    members = {
        ReplicationGroupId = {
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

M.DescribeReplicationGroupsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        ReplicationGroups = {
            type = "list",
            member = M.ReplicationGroup,
        },
    },
}

M.DescribeReservedCacheNodesInput = {
    type = "structure",
    members = {
        ReservedCacheNodeId = {
            type = "string",
        },
        ReservedCacheNodesOfferingId = {
            type = "string",
        },
        CacheNodeType = {
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

M.ReservedCacheNode = {
    type = "structure",
    members = {
        ReservedCacheNodeId = {
            type = "string",
        },
        ReservedCacheNodesOfferingId = {
            type = "string",
        },
        CacheNodeType = {
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
        CacheNodeCount = {
            type = "integer",
        },
        ProductDescription = {
            type = "string",
        },
        OfferingType = {
            type = "string",
        },
        State = {
            type = "string",
        },
        RecurringCharges = {
            type = "list",
            member = M.RecurringCharge,
        },
        ReservationARN = {
            type = "string",
        },
    },
}

M.DescribeReservedCacheNodesOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        ReservedCacheNodes = {
            type = "list",
            member = M.ReservedCacheNode,
        },
    },
}

M.DescribeReservedCacheNodesOfferingsInput = {
    type = "structure",
    members = {
        ReservedCacheNodesOfferingId = {
            type = "string",
        },
        CacheNodeType = {
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
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.ReservedCacheNodesOffering = {
    type = "structure",
    members = {
        ReservedCacheNodesOfferingId = {
            type = "string",
        },
        CacheNodeType = {
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
        ProductDescription = {
            type = "string",
        },
        OfferingType = {
            type = "string",
        },
        RecurringCharges = {
            type = "list",
            member = M.RecurringCharge,
        },
    },
}

M.DescribeReservedCacheNodesOfferingsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        ReservedCacheNodesOfferings = {
            type = "list",
            member = M.ReservedCacheNodesOffering,
        },
    },
}

M.ReservedCacheNodesOfferingNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeServerlessCachesInput = {
    type = "structure",
    members = {
        ServerlessCacheName = {
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

M.DescribeServerlessCachesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        ServerlessCaches = {
            type = "list",
            member = M.ServerlessCache,
        },
    },
}

M.DescribeServerlessCacheSnapshotsInput = {
    type = "structure",
    members = {
        ServerlessCacheName = {
            type = "string",
        },
        ServerlessCacheSnapshotName = {
            type = "string",
        },
        SnapshotType = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.DescribeServerlessCacheSnapshotsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        ServerlessCacheSnapshots = {
            type = "list",
            member = M.ServerlessCacheSnapshot,
        },
    },
}

M.ServiceUpdateStatus = {
    AVAILABLE = "available",
    CANCELLED = "cancelled",
    EXPIRED = "expired",
}

M.DescribeServiceUpdatesInput = {
    type = "structure",
    members = {
        ServiceUpdateName = {
            type = "string",
        },
        ServiceUpdateStatus = {
            type = "list",
            member = { type = "string" },
        },
        MaxRecords = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.ServiceUpdateSeverity = {
    CRITICAL = "critical",
    IMPORTANT = "important",
    MEDIUM = "medium",
    LOW = "low",
}

M.ServiceUpdateType = {
    SECURITY_UPDATE = "security-update",
}

M.ServiceUpdate = {
    type = "structure",
    members = {
        ServiceUpdateName = {
            type = "string",
        },
        ServiceUpdateReleaseDate = {
            type = "timestamp",
        },
        ServiceUpdateEndDate = {
            type = "timestamp",
        },
        ServiceUpdateSeverity = {
            type = "string",
        },
        ServiceUpdateRecommendedApplyByDate = {
            type = "timestamp",
        },
        ServiceUpdateStatus = {
            type = "string",
        },
        ServiceUpdateDescription = {
            type = "string",
        },
        ServiceUpdateType = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        AutoUpdateAfterRecommendedApplyByDate = {
            type = "boolean",
        },
        EstimatedUpdateTime = {
            type = "string",
        },
    },
}

M.DescribeServiceUpdatesOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        ServiceUpdates = {
            type = "list",
            member = M.ServiceUpdate,
        },
    },
}

M.DescribeSnapshotsInput = {
    type = "structure",
    members = {
        ReplicationGroupId = {
            type = "string",
        },
        CacheClusterId = {
            type = "string",
        },
        SnapshotName = {
            type = "string",
        },
        SnapshotSource = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        ShowNodeGroupConfig = {
            type = "boolean",
        },
    },
}

M.DescribeSnapshotsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        Snapshots = {
            type = "list",
            member = M.Snapshot,
        },
    },
}

M.TimeRangeFilter = {
    type = "structure",
    members = {
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.DescribeUpdateActionsInput = {
    type = "structure",
    members = {
        ServiceUpdateName = {
            type = "string",
        },
        ReplicationGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        CacheClusterIds = {
            type = "list",
            member = { type = "string" },
        },
        Engine = {
            type = "string",
        },
        ServiceUpdateStatus = {
            type = "list",
            member = { type = "string" },
        },
        ServiceUpdateTimeRange = M.TimeRangeFilter,
        UpdateActionStatus = {
            type = "list",
            member = { type = "string" },
        },
        ShowNodeLevelUpdateStatus = {
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

M.NodeUpdateInitiatedBy = {
    SYSTEM = "system",
    CUSTOMER = "customer",
}

M.NodeUpdateStatus = {
    NOT_APPLIED = "not-applied",
    WAITING_TO_START = "waiting-to-start",
    IN_PROGRESS = "in-progress",
    STOPPING = "stopping",
    STOPPED = "stopped",
    COMPLETE = "complete",
}

M.CacheNodeUpdateStatus = {
    type = "structure",
    members = {
        CacheNodeId = {
            type = "string",
        },
        NodeUpdateStatus = {
            type = "string",
        },
        NodeDeletionDate = {
            type = "timestamp",
        },
        NodeUpdateStartDate = {
            type = "timestamp",
        },
        NodeUpdateEndDate = {
            type = "timestamp",
        },
        NodeUpdateInitiatedBy = {
            type = "string",
        },
        NodeUpdateInitiatedDate = {
            type = "timestamp",
        },
        NodeUpdateStatusModifiedDate = {
            type = "timestamp",
        },
    },
}

M.NodeGroupMemberUpdateStatus = {
    type = "structure",
    members = {
        CacheClusterId = {
            type = "string",
        },
        CacheNodeId = {
            type = "string",
        },
        NodeUpdateStatus = {
            type = "string",
        },
        NodeDeletionDate = {
            type = "timestamp",
        },
        NodeUpdateStartDate = {
            type = "timestamp",
        },
        NodeUpdateEndDate = {
            type = "timestamp",
        },
        NodeUpdateInitiatedBy = {
            type = "string",
        },
        NodeUpdateInitiatedDate = {
            type = "timestamp",
        },
        NodeUpdateStatusModifiedDate = {
            type = "timestamp",
        },
    },
}

M.NodeGroupUpdateStatus = {
    type = "structure",
    members = {
        NodeGroupId = {
            type = "string",
        },
        NodeGroupMemberUpdateStatus = {
            type = "list",
            member = M.NodeGroupMemberUpdateStatus,
        },
    },
}

M.SlaMet = {
    YES = "yes",
    NO = "no",
    NA = "n/a",
}

M.UpdateAction = {
    type = "structure",
    members = {
        ReplicationGroupId = {
            type = "string",
        },
        CacheClusterId = {
            type = "string",
        },
        ServiceUpdateName = {
            type = "string",
        },
        ServiceUpdateReleaseDate = {
            type = "timestamp",
        },
        ServiceUpdateSeverity = {
            type = "string",
        },
        ServiceUpdateStatus = {
            type = "string",
        },
        ServiceUpdateRecommendedApplyByDate = {
            type = "timestamp",
        },
        ServiceUpdateType = {
            type = "string",
        },
        UpdateActionAvailableDate = {
            type = "timestamp",
        },
        UpdateActionStatus = {
            type = "string",
        },
        NodesUpdated = {
            type = "string",
        },
        UpdateActionStatusModifiedDate = {
            type = "timestamp",
        },
        SlaMet = {
            type = "string",
        },
        NodeGroupUpdateStatus = {
            type = "list",
            member = M.NodeGroupUpdateStatus,
        },
        CacheNodeUpdateStatus = {
            type = "list",
            member = M.CacheNodeUpdateStatus,
        },
        EstimatedUpdateTime = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
    },
}

M.DescribeUpdateActionsOutput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        UpdateActions = {
            type = "list",
            member = M.UpdateAction,
        },
    },
}

M.DescribeUserGroupsInput = {
    type = "structure",
    members = {
        UserGroupId = {
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

M.UserGroup = {
    type = "structure",
    members = {
        UserGroupId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        UserIds = {
            type = "list",
            member = { type = "string" },
        },
        MinimumEngineVersion = {
            type = "string",
        },
        PendingChanges = M.UserGroupPendingChanges,
        ReplicationGroups = {
            type = "list",
            member = { type = "string" },
        },
        ServerlessCaches = {
            type = "list",
            member = { type = "string" },
        },
        ARN = {
            type = "string",
        },
    },
}

M.DescribeUserGroupsOutput = {
    type = "structure",
    members = {
        UserGroups = {
            type = "list",
            member = M.UserGroup,
        },
        Marker = {
            type = "string",
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

M.DescribeUsersInput = {
    type = "structure",
    members = {
        Engine = {
            type = "string",
        },
        UserId = {
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

M.User = {
    type = "structure",
    members = {
        UserId = {
            type = "string",
        },
        UserName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        MinimumEngineVersion = {
            type = "string",
        },
        AccessString = {
            type = "string",
        },
        UserGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        Authentication = M.Authentication,
        ARN = {
            type = "string",
        },
    },
}

M.DescribeUsersOutput = {
    type = "structure",
    members = {
        Users = {
            type = "list",
            member = M.User,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DisassociateGlobalReplicationGroupInput = {
    type = "structure",
    members = {
        GlobalReplicationGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReplicationGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReplicationGroupRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateGlobalReplicationGroupOutput = {
    type = "structure",
    members = {
        GlobalReplicationGroup = M.GlobalReplicationGroup,
    },
}

M.ExportServerlessCacheSnapshotInput = {
    type = "structure",
    members = {
        ServerlessCacheSnapshotName = {
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
    },
}

M.ExportServerlessCacheSnapshotOutput = {
    type = "structure",
    members = {
        ServerlessCacheSnapshot = M.ServerlessCacheSnapshot,
    },
}

M.FailoverGlobalReplicationGroupInput = {
    type = "structure",
    members = {
        GlobalReplicationGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimaryRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimaryReplicationGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FailoverGlobalReplicationGroupOutput = {
    type = "structure",
    members = {
        GlobalReplicationGroup = M.GlobalReplicationGroup,
    },
}

M.ReshardingConfiguration = {
    type = "structure",
    members = {
        NodeGroupId = {
            type = "string",
        },
        PreferredAvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RegionalConfiguration = {
    type = "structure",
    members = {
        ReplicationGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReplicationGroupRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReshardingConfiguration = {
            type = "list",
            member = M.ReshardingConfiguration,
            traits = {
                required = true,
            },
        },
    },
}

M.IncreaseNodeGroupsInGlobalReplicationGroupInput = {
    type = "structure",
    members = {
        GlobalReplicationGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeGroupCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        RegionalConfigurations = {
            type = "list",
            member = M.RegionalConfiguration,
        },
        ApplyImmediately = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.IncreaseNodeGroupsInGlobalReplicationGroupOutput = {
    type = "structure",
    members = {
        GlobalReplicationGroup = M.GlobalReplicationGroup,
    },
}

M.IncreaseReplicaCountInput = {
    type = "structure",
    members = {
        ReplicationGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewReplicaCount = {
            type = "integer",
        },
        ReplicaConfiguration = {
            type = "list",
            member = M.ConfigureShard,
        },
        ApplyImmediately = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.IncreaseReplicaCountOutput = {
    type = "structure",
    members = {
        ReplicationGroup = M.ReplicationGroup,
    },
}

M.InvalidKMSKeyFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListAllowedNodeTypeModificationsInput = {
    type = "structure",
    members = {
        CacheClusterId = {
            type = "string",
        },
        ReplicationGroupId = {
            type = "string",
        },
    },
}

M.ListAllowedNodeTypeModificationsOutput = {
    type = "structure",
    members = {
        ScaleUpModifications = {
            type = "list",
            member = { type = "string" },
        },
        ScaleDownModifications = {
            type = "list",
            member = { type = "string" },
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

M.AuthTokenUpdateStrategyType = {
    SET = "SET",
    ROTATE = "ROTATE",
    DELETE = "DELETE",
}

M.ModifyCacheClusterInput = {
    type = "structure",
    members = {
        CacheClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NumCacheNodes = {
            type = "integer",
        },
        CacheNodeIdsToRemove = {
            type = "list",
            member = { type = "string" },
        },
        AZMode = {
            type = "string",
        },
        NewAvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        CacheSecurityGroupNames = {
            type = "list",
            member = { type = "string" },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        NotificationTopicArn = {
            type = "string",
        },
        CacheParameterGroupName = {
            type = "string",
        },
        NotificationTopicStatus = {
            type = "string",
        },
        ApplyImmediately = {
            type = "boolean",
        },
        Engine = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        SnapshotRetentionLimit = {
            type = "integer",
        },
        SnapshotWindow = {
            type = "string",
        },
        CacheNodeType = {
            type = "string",
        },
        AuthToken = {
            type = "string",
        },
        AuthTokenUpdateStrategy = {
            type = "string",
        },
        LogDeliveryConfigurations = {
            type = "list",
            member = M.LogDeliveryConfigurationRequest,
        },
        IpDiscovery = {
            type = "string",
        },
        ScaleConfig = M.ScaleConfig,
    },
}

M.ModifyCacheClusterOutput = {
    type = "structure",
    members = {
        CacheCluster = M.CacheCluster,
    },
}

M.ParameterNameValue = {
    type = "structure",
    members = {
        ParameterName = {
            type = "string",
        },
        ParameterValue = {
            type = "string",
        },
    },
}

M.ModifyCacheParameterGroupInput = {
    type = "structure",
    members = {
        CacheParameterGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParameterNameValues = {
            type = "list",
            member = M.ParameterNameValue,
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyCacheParameterGroupOutput = {
    type = "structure",
    members = {
        CacheParameterGroupName = {
            type = "string",
        },
    },
}

M.ModifyCacheSubnetGroupInput = {
    type = "structure",
    members = {
        CacheSubnetGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CacheSubnetGroupDescription = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ModifyCacheSubnetGroupOutput = {
    type = "structure",
    members = {
        CacheSubnetGroup = M.CacheSubnetGroup,
    },
}

M.SubnetInUse = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ModifyGlobalReplicationGroupInput = {
    type = "structure",
    members = {
        GlobalReplicationGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplyImmediately = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        CacheNodeType = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        CacheParameterGroupName = {
            type = "string",
        },
        GlobalReplicationGroupDescription = {
            type = "string",
        },
        AutomaticFailoverEnabled = {
            type = "boolean",
        },
    },
}

M.ModifyGlobalReplicationGroupOutput = {
    type = "structure",
    members = {
        GlobalReplicationGroup = M.GlobalReplicationGroup,
    },
}

M.ModifyReplicationGroupInput = {
    type = "structure",
    members = {
        ReplicationGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReplicationGroupDescription = {
            type = "string",
        },
        PrimaryClusterId = {
            type = "string",
        },
        SnapshottingClusterId = {
            type = "string",
        },
        AutomaticFailoverEnabled = {
            type = "boolean",
        },
        MultiAZEnabled = {
            type = "boolean",
        },
        NodeGroupId = {
            type = "string",
        },
        CacheSecurityGroupNames = {
            type = "list",
            member = { type = "string" },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        NotificationTopicArn = {
            type = "string",
        },
        CacheParameterGroupName = {
            type = "string",
        },
        NotificationTopicStatus = {
            type = "string",
        },
        ApplyImmediately = {
            type = "boolean",
        },
        Engine = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        SnapshotRetentionLimit = {
            type = "integer",
        },
        SnapshotWindow = {
            type = "string",
        },
        CacheNodeType = {
            type = "string",
        },
        AuthToken = {
            type = "string",
        },
        AuthTokenUpdateStrategy = {
            type = "string",
        },
        UserGroupIdsToAdd = {
            type = "list",
            member = { type = "string" },
        },
        UserGroupIdsToRemove = {
            type = "list",
            member = { type = "string" },
        },
        RemoveUserGroups = {
            type = "boolean",
        },
        LogDeliveryConfigurations = {
            type = "list",
            member = M.LogDeliveryConfigurationRequest,
        },
        IpDiscovery = {
            type = "string",
        },
        TransitEncryptionEnabled = {
            type = "boolean",
        },
        TransitEncryptionMode = {
            type = "string",
        },
        ClusterMode = {
            type = "string",
        },
    },
}

M.ModifyReplicationGroupOutput = {
    type = "structure",
    members = {
        ReplicationGroup = M.ReplicationGroup,
    },
}

M.ModifyReplicationGroupShardConfigurationInput = {
    type = "structure",
    members = {
        ReplicationGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeGroupCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        ApplyImmediately = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        ReshardingConfiguration = {
            type = "list",
            member = M.ReshardingConfiguration,
        },
        NodeGroupsToRemove = {
            type = "list",
            member = { type = "string" },
        },
        NodeGroupsToRetain = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ModifyReplicationGroupShardConfigurationOutput = {
    type = "structure",
    members = {
        ReplicationGroup = M.ReplicationGroup,
    },
}

M.ModifyServerlessCacheInput = {
    type = "structure",
    members = {
        ServerlessCacheName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        CacheUsageLimits = M.CacheUsageLimits,
        RemoveUserGroup = {
            type = "boolean",
        },
        UserGroupId = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        SnapshotRetentionLimit = {
            type = "integer",
        },
        DailySnapshotTime = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        MajorEngineVersion = {
            type = "string",
        },
    },
}

M.ModifyServerlessCacheOutput = {
    type = "structure",
    members = {
        ServerlessCache = M.ServerlessCache,
    },
}

M.ModifyUserInput = {
    type = "structure",
    members = {
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccessString = {
            type = "string",
        },
        AppendAccessString = {
            type = "string",
        },
        Passwords = {
            type = "list",
            member = { type = "string" },
        },
        NoPasswordRequired = {
            type = "boolean",
        },
        AuthenticationMode = M.AuthenticationMode,
        Engine = {
            type = "string",
        },
    },
}

M.ModifyUserOutput = {
    type = "structure",
    members = {
        UserId = {
            type = "string",
        },
        UserName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        MinimumEngineVersion = {
            type = "string",
        },
        AccessString = {
            type = "string",
        },
        UserGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        Authentication = M.Authentication,
        ARN = {
            type = "string",
        },
    },
}

M.ModifyUserGroupInput = {
    type = "structure",
    members = {
        UserGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserIdsToAdd = {
            type = "list",
            member = { type = "string" },
        },
        UserIdsToRemove = {
            type = "list",
            member = { type = "string" },
        },
        Engine = {
            type = "string",
        },
    },
}

M.ModifyUserGroupOutput = {
    type = "structure",
    members = {
        UserGroupId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        UserIds = {
            type = "list",
            member = { type = "string" },
        },
        MinimumEngineVersion = {
            type = "string",
        },
        PendingChanges = M.UserGroupPendingChanges,
        ReplicationGroups = {
            type = "list",
            member = { type = "string" },
        },
        ServerlessCaches = {
            type = "list",
            member = { type = "string" },
        },
        ARN = {
            type = "string",
        },
    },
}

M.PurchaseReservedCacheNodesOfferingInput = {
    type = "structure",
    members = {
        ReservedCacheNodesOfferingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReservedCacheNodeId = {
            type = "string",
        },
        CacheNodeCount = {
            type = "integer",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PurchaseReservedCacheNodesOfferingOutput = {
    type = "structure",
    members = {
        ReservedCacheNode = M.ReservedCacheNode,
    },
}

M.ReservedCacheNodeAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReservedCacheNodeQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RebalanceSlotsInGlobalReplicationGroupInput = {
    type = "structure",
    members = {
        GlobalReplicationGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplyImmediately = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.RebalanceSlotsInGlobalReplicationGroupOutput = {
    type = "structure",
    members = {
        GlobalReplicationGroup = M.GlobalReplicationGroup,
    },
}

M.RebootCacheClusterInput = {
    type = "structure",
    members = {
        CacheClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CacheNodeIdsToReboot = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RebootCacheClusterOutput = {
    type = "structure",
    members = {
        CacheCluster = M.CacheCluster,
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
    members = {
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.TagNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResetCacheParameterGroupInput = {
    type = "structure",
    members = {
        CacheParameterGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResetAllParameters = {
            type = "boolean",
        },
        ParameterNameValues = {
            type = "list",
            member = M.ParameterNameValue,
        },
    },
}

M.ResetCacheParameterGroupOutput = {
    type = "structure",
    members = {
        CacheParameterGroupName = {
            type = "string",
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

M.RevokeCacheSecurityGroupIngressInput = {
    type = "structure",
    members = {
        CacheSecurityGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EC2SecurityGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EC2SecurityGroupOwnerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RevokeCacheSecurityGroupIngressOutput = {
    type = "structure",
    members = {
        CacheSecurityGroup = M.CacheSecurityGroup,
    },
}

M.ReplicationGroupAlreadyUnderMigrationFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CustomerNodeEndpoint = {
    type = "structure",
    members = {
        Address = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
    },
}

M.StartMigrationInput = {
    type = "structure",
    members = {
        ReplicationGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CustomerNodeEndpointList = {
            type = "list",
            member = M.CustomerNodeEndpoint,
            traits = {
                required = true,
            },
        },
    },
}

M.StartMigrationOutput = {
    type = "structure",
    members = {
        ReplicationGroup = M.ReplicationGroup,
    },
}

M.APICallRateForCustomerExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NodeGroupNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TestFailoverInput = {
    type = "structure",
    members = {
        ReplicationGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TestFailoverNotAvailableFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TestFailoverOutput = {
    type = "structure",
    members = {
        ReplicationGroup = M.ReplicationGroup,
    },
}

M.TestMigrationInput = {
    type = "structure",
    members = {
        ReplicationGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CustomerNodeEndpointList = {
            type = "list",
            member = M.CustomerNodeEndpoint,
            traits = {
                required = true,
            },
        },
    },
}

M.TestMigrationOutput = {
    type = "structure",
    members = {
        ReplicationGroup = M.ReplicationGroup,
    },
}

return M
