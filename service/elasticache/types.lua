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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        ARN = {
            type = "string",
        },
    },
}

M.AuthorizeCacheSecurityGroupIngressOutput = {
    type = "structure",
    members = {
        CacheSecurityGroup = {
            type = "structure",
        },
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
            member_type = "string",
        },
        CacheClusterIds = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        UnprocessedUpdateActions = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        CacheClusterIds = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        UnprocessedUpdateActions = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        CloudWatchLogsDetails = {
            type = "structure",
        },
        KinesisFirehoseDetails = {
            type = "structure",
        },
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
        DestinationDetails = {
            type = "structure",
        },
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
        ReadEndpoint = {
            type = "structure",
        },
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
        PrimaryEndpoint = {
            type = "structure",
        },
        ReaderEndpoint = {
            type = "structure",
        },
        Slots = {
            type = "string",
        },
        NodeGroupMembers = {
            type = "list",
            member_type = "structure",
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
        DestinationDetails = {
            type = "structure",
        },
        LogFormat = {
            type = "string",
        },
    },
}

M.SlotMigration = {
    type = "structure",
    members = {
        ProgressPercentage = {
            type = "number",
        },
    },
}

M.ReshardingStatus = {
    type = "structure",
    members = {
        SlotMigration = {
            type = "structure",
        },
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
            member_type = "string",
        },
        UserGroupIdsToRemove = {
            type = "list",
            member_type = "string",
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
        Resharding = {
            type = "structure",
        },
        AuthTokenStatus = {
            type = "string",
        },
        UserGroups = {
            type = "structure",
        },
        LogDeliveryConfigurations = {
            type = "list",
            member_type = "structure",
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
        GlobalReplicationGroupInfo = {
            type = "structure",
        },
        Status = {
            type = "string",
        },
        PendingModifiedValues = {
            type = "structure",
        },
        MemberClusters = {
            type = "list",
            member_type = "string",
        },
        NodeGroups = {
            type = "list",
            member_type = "structure",
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
        ConfigurationEndpoint = {
            type = "structure",
        },
        SnapshotRetentionLimit = {
            type = "number",
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
            member_type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
        UserGroupIds = {
            type = "list",
            member_type = "string",
        },
        LogDeliveryConfigurations = {
            type = "list",
            member_type = "structure",
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
        ReplicationGroup = {
            type = "structure",
        },
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
            member_type = "structure",
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
        ServerlessCacheConfiguration = {
            type = "structure",
        },
    },
}

M.CopyServerlessCacheSnapshotOutput = {
    type = "structure",
    members = {
        ServerlessCacheSnapshot = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
        },
        PrimaryAvailabilityZone = {
            type = "string",
        },
        ReplicaAvailabilityZones = {
            type = "list",
            member_type = "string",
        },
        PrimaryOutpostArn = {
            type = "string",
        },
        ReplicaOutpostArns = {
            type = "list",
            member_type = "string",
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
        NodeGroupConfiguration = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
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
            type = "number",
        },
        SnapshotWindow = {
            type = "string",
        },
        NumNodeGroups = {
            type = "number",
        },
        AutomaticFailover = {
            type = "string",
        },
        NodeSnapshots = {
            type = "list",
            member_type = "structure",
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
        Snapshot = {
            type = "structure",
        },
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
        DestinationDetails = {
            type = "structure",
        },
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
            member_type = "string",
        },
        NumCacheNodes = {
            type = "number",
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
            member_type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        SnapshotArns = {
            type = "list",
            member_type = "string",
        },
        SnapshotName = {
            type = "string",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        NotificationTopicArn = {
            type = "string",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        SnapshotRetentionLimit = {
            type = "number",
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
            member_type = "string",
        },
        LogDeliveryConfigurations = {
            type = "list",
            member_type = "structure",
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
        Endpoint = {
            type = "structure",
        },
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
            member_type = "string",
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
            type = "number",
        },
        ScaleIntervalMinutes = {
            type = "number",
        },
    },
}

M.PendingModifiedValues = {
    type = "structure",
    members = {
        NumCacheNodes = {
            type = "number",
        },
        CacheNodeIdsToRemove = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        TransitEncryptionEnabled = {
            type = "boolean",
        },
        TransitEncryptionMode = {
            type = "string",
        },
        ScaleConfig = {
            type = "structure",
        },
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
        ConfigurationEndpoint = {
            type = "structure",
        },
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
            type = "number",
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
        PendingModifiedValues = {
            type = "structure",
        },
        NotificationConfiguration = {
            type = "structure",
        },
        CacheSecurityGroups = {
            type = "list",
            member_type = "structure",
        },
        CacheParameterGroup = {
            type = "structure",
        },
        CacheSubnetGroupName = {
            type = "string",
        },
        CacheNodes = {
            type = "list",
            member_type = "structure",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        SecurityGroups = {
            type = "list",
            member_type = "structure",
        },
        ReplicationGroupId = {
            type = "string",
        },
        SnapshotRetentionLimit = {
            type = "number",
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
            member_type = "structure",
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
        CacheCluster = {
            type = "structure",
        },
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
            member_type = "structure",
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
        CacheParameterGroup = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.CreateCacheSecurityGroupOutput = {
    type = "structure",
    members = {
        CacheSecurityGroup = {
            type = "structure",
        },
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
        SubnetAvailabilityZone = {
            type = "structure",
        },
        SubnetOutpost = {
            type = "structure",
        },
        SupportedNetworkTypes = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        ARN = {
            type = "string",
        },
        SupportedNetworkTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateCacheSubnetGroupOutput = {
    type = "structure",
    members = {
        CacheSubnetGroup = {
            type = "structure",
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
            member_type = "structure",
        },
        ClusterEnabled = {
            type = "boolean",
        },
        GlobalNodeGroups = {
            type = "list",
            member_type = "structure",
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
        GlobalReplicationGroup = {
            type = "structure",
        },
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
            type = "number",
        },
        PreferredCacheClusterAZs = {
            type = "list",
            member_type = "string",
        },
        NumNodeGroups = {
            type = "number",
        },
        ReplicasPerNodeGroup = {
            type = "number",
        },
        NodeGroupConfiguration = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        SnapshotArns = {
            type = "list",
            member_type = "string",
        },
        SnapshotName = {
            type = "string",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        NotificationTopicArn = {
            type = "string",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        SnapshotRetentionLimit = {
            type = "number",
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
            member_type = "string",
        },
        LogDeliveryConfigurations = {
            type = "list",
            member_type = "structure",
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
        ReplicationGroup = {
            type = "structure",
        },
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
            type = "number",
        },
        Minimum = {
            type = "number",
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
            type = "number",
        },
        Minimum = {
            type = "number",
        },
    },
}

M.CacheUsageLimits = {
    type = "structure",
    members = {
        DataStorage = {
            type = "structure",
        },
        ECPUPerSecond = {
            type = "structure",
        },
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
        CacheUsageLimits = {
            type = "structure",
        },
        KmsKeyId = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        SnapshotArnsToRestore = {
            type = "list",
            member_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        UserGroupId = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
        },
        SnapshotRetentionLimit = {
            type = "number",
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
        CacheUsageLimits = {
            type = "structure",
        },
        KmsKeyId = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        Endpoint = {
            type = "structure",
        },
        ReaderEndpoint = {
            type = "structure",
        },
        ARN = {
            type = "string",
        },
        UserGroupId = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
        },
        SnapshotRetentionLimit = {
            type = "number",
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
        ServerlessCache = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.CreateServerlessCacheSnapshotOutput = {
    type = "structure",
    members = {
        ServerlessCacheSnapshot = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.CreateSnapshotOutput = {
    type = "structure",
    members = {
        Snapshot = {
            type = "structure",
        },
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "structure",
        },
        AuthenticationMode = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "string",
        },
        Authentication = {
            type = "structure",
        },
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
            member_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UserGroupPendingChanges = {
    type = "structure",
    members = {
        UserIdsToRemove = {
            type = "list",
            member_type = "string",
        },
        UserIdsToAdd = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
        MinimumEngineVersion = {
            type = "string",
        },
        PendingChanges = {
            type = "structure",
        },
        ReplicationGroups = {
            type = "list",
            member_type = "string",
        },
        ServerlessCaches = {
            type = "list",
            member_type = "string",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        GlobalNodeGroupsToRemove = {
            type = "list",
            member_type = "string",
        },
        GlobalNodeGroupsToRetain = {
            type = "list",
            member_type = "string",
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
        GlobalReplicationGroup = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        PreferredAvailabilityZones = {
            type = "list",
            member_type = "string",
        },
        PreferredOutpostArns = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        ReplicaConfiguration = {
            type = "list",
            member_type = "structure",
        },
        ReplicasToRemove = {
            type = "list",
            member_type = "string",
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
        ReplicationGroup = {
            type = "structure",
        },
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
        CacheCluster = {
            type = "structure",
        },
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
        GlobalReplicationGroup = {
            type = "structure",
        },
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
        ReplicationGroup = {
            type = "structure",
        },
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
        ServerlessCache = {
            type = "structure",
        },
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
        ServerlessCacheSnapshot = {
            type = "structure",
        },
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
        Snapshot = {
            type = "structure",
        },
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
            member_type = "string",
        },
        Authentication = {
            type = "structure",
        },
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
            member_type = "string",
        },
        MinimumEngineVersion = {
            type = "string",
        },
        PendingChanges = {
            type = "structure",
        },
        ReplicationGroups = {
            type = "list",
            member_type = "string",
        },
        ServerlessCaches = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        CacheNodeTypeSpecificParameters = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
        CacheParameterGroupFamily = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        Parameters = {
            type = "list",
            member_type = "structure",
        },
        CacheNodeTypeSpecificParameters = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
        FixedPrice = {
            type = "number",
        },
        UsagePrice = {
            type = "number",
        },
        CacheNodeCount = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
        FixedPrice = {
            type = "number",
        },
        UsagePrice = {
            type = "number",
        },
        ProductDescription = {
            type = "string",
        },
        OfferingType = {
            type = "string",
        },
        RecurringCharges = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
        },
        CacheClusterIds = {
            type = "list",
            member_type = "string",
        },
        Engine = {
            type = "string",
        },
        ServiceUpdateStatus = {
            type = "list",
            member_type = "string",
        },
        ServiceUpdateTimeRange = {
            type = "structure",
        },
        UpdateActionStatus = {
            type = "list",
            member_type = "string",
        },
        ShowNodeLevelUpdateStatus = {
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
            member_type = "structure",
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
            member_type = "structure",
        },
        CacheNodeUpdateStatus = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "string",
        },
        MinimumEngineVersion = {
            type = "string",
        },
        PendingChanges = {
            type = "structure",
        },
        ReplicationGroups = {
            type = "list",
            member_type = "string",
        },
        ServerlessCaches = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
        },
        Authentication = {
            type = "structure",
        },
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
            member_type = "structure",
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
        GlobalReplicationGroup = {
            type = "structure",
        },
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
        ServerlessCacheSnapshot = {
            type = "structure",
        },
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
        GlobalReplicationGroup = {
            type = "structure",
        },
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
            member_type = "string",
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
            member_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        RegionalConfigurations = {
            type = "list",
            member_type = "structure",
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
        GlobalReplicationGroup = {
            type = "structure",
        },
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
            type = "number",
        },
        ReplicaConfiguration = {
            type = "list",
            member_type = "structure",
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
        ReplicationGroup = {
            type = "structure",
        },
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
            member_type = "string",
        },
        ScaleDownModifications = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            type = "number",
        },
        CacheNodeIdsToRemove = {
            type = "list",
            member_type = "string",
        },
        AZMode = {
            type = "string",
        },
        NewAvailabilityZones = {
            type = "list",
            member_type = "string",
        },
        CacheSecurityGroupNames = {
            type = "list",
            member_type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
            member_type = "structure",
        },
        IpDiscovery = {
            type = "string",
        },
        ScaleConfig = {
            type = "structure",
        },
    },
}

M.ModifyCacheClusterOutput = {
    type = "structure",
    members = {
        CacheCluster = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
        },
    },
}

M.ModifyCacheSubnetGroupOutput = {
    type = "structure",
    members = {
        CacheSubnetGroup = {
            type = "structure",
        },
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
        GlobalReplicationGroup = {
            type = "structure",
        },
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
            member_type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
            member_type = "string",
        },
        UserGroupIdsToRemove = {
            type = "list",
            member_type = "string",
        },
        RemoveUserGroups = {
            type = "boolean",
        },
        LogDeliveryConfigurations = {
            type = "list",
            member_type = "structure",
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
        ReplicationGroup = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
        },
        NodeGroupsToRemove = {
            type = "list",
            member_type = "string",
        },
        NodeGroupsToRetain = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ModifyReplicationGroupShardConfigurationOutput = {
    type = "structure",
    members = {
        ReplicationGroup = {
            type = "structure",
        },
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
        CacheUsageLimits = {
            type = "structure",
        },
        RemoveUserGroup = {
            type = "boolean",
        },
        UserGroupId = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        SnapshotRetentionLimit = {
            type = "number",
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
        ServerlessCache = {
            type = "structure",
        },
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
            member_type = "string",
        },
        NoPasswordRequired = {
            type = "boolean",
        },
        AuthenticationMode = {
            type = "structure",
        },
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
            member_type = "string",
        },
        Authentication = {
            type = "structure",
        },
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
            member_type = "string",
        },
        UserIdsToRemove = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
        MinimumEngineVersion = {
            type = "string",
        },
        PendingChanges = {
            type = "structure",
        },
        ReplicationGroups = {
            type = "list",
            member_type = "string",
        },
        ServerlessCaches = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PurchaseReservedCacheNodesOfferingOutput = {
    type = "structure",
    members = {
        ReservedCacheNode = {
            type = "structure",
        },
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
        GlobalReplicationGroup = {
            type = "structure",
        },
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RebootCacheClusterOutput = {
    type = "structure",
    members = {
        CacheCluster = {
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
    members = {
        TagList = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        CacheSecurityGroup = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StartMigrationOutput = {
    type = "structure",
    members = {
        ReplicationGroup = {
            type = "structure",
        },
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
        ReplicationGroup = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TestMigrationOutput = {
    type = "structure",
    members = {
        ReplicationGroup = {
            type = "structure",
        },
    },
}

return M
