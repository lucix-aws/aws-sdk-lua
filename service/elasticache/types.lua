local M = {}

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
    members = {
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CacheClusterNotFoundFault = {
    type = "structure",
    id = "CacheClusterNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CacheParameterGroupNotFoundFault = {
    type = "structure",
    id = "CacheParameterGroupNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CacheSecurityGroupNotFoundFault = {
    type = "structure",
    id = "CacheSecurityGroupNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CacheSubnetGroupNotFoundFault = {
    type = "structure",
    id = "CacheSubnetGroupNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidARNFault = {
    type = "structure",
    id = "InvalidARNFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidReplicationGroupStateFault = {
    type = "structure",
    id = "InvalidReplicationGroupStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidServerlessCacheSnapshotStateFault = {
    type = "structure",
    id = "InvalidServerlessCacheSnapshotStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidServerlessCacheStateFault = {
    type = "structure",
    id = "InvalidServerlessCacheStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReplicationGroupNotFoundFault = {
    type = "structure",
    id = "ReplicationGroupNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReservedCacheNodeNotFoundFault = {
    type = "structure",
    id = "ReservedCacheNodeNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServerlessCacheNotFoundFault = {
    type = "structure",
    id = "ServerlessCacheNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServerlessCacheSnapshotNotFoundFault = {
    type = "structure",
    id = "ServerlessCacheSnapshotNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SnapshotNotFoundFault = {
    type = "structure",
    id = "SnapshotNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TagQuotaPerResourceExceeded = {
    type = "structure",
    id = "TagQuotaPerResourceExceeded",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UserGroupNotFoundFault = {
    type = "structure",
    id = "UserGroupNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UserNotFoundFault = {
    type = "structure",
    id = "UserNotFoundFault",
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

M.AuthorizeCacheSecurityGroupIngressInput = {
    type = "structure",
    id = "AuthorizeCacheSecurityGroupIngressInput",
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
    id = "EC2SecurityGroup",
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
    id = "CacheSecurityGroup",
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
    id = "AuthorizeCacheSecurityGroupIngressOutput",
    members = {
        CacheSecurityGroup = M.CacheSecurityGroup,
    },
}

M.InvalidCacheSecurityGroupStateFault = {
    type = "structure",
    id = "InvalidCacheSecurityGroupStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParameterCombinationException = {
    type = "structure",
    id = "InvalidParameterCombinationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParameterValueException = {
    type = "structure",
    id = "InvalidParameterValueException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchApplyUpdateActionInput = {
    type = "structure",
    id = "BatchApplyUpdateActionInput",
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
    id = "ProcessedUpdateAction",
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
    id = "UnprocessedUpdateAction",
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
    id = "BatchApplyUpdateActionOutput",
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
    id = "ServiceUpdateNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchStopUpdateActionInput = {
    type = "structure",
    id = "BatchStopUpdateActionInput",
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
    id = "BatchStopUpdateActionOutput",
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
    id = "CompleteMigrationInput",
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
    id = "Endpoint",
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
    id = "GlobalReplicationGroupInfo",
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
    id = "CloudWatchLogsDestinationDetails",
    members = {
        LogGroup = {
            type = "string",
        },
    },
}

M.KinesisFirehoseDestinationDetails = {
    type = "structure",
    id = "KinesisFirehoseDestinationDetails",
    members = {
        DeliveryStream = {
            type = "string",
        },
    },
}

M.DestinationDetails = {
    type = "structure",
    id = "DestinationDetails",
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
    id = "LogDeliveryConfiguration",
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
    id = "NodeGroupMember",
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
    id = "NodeGroup",
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
    id = "PendingLogDeliveryConfiguration",
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
    id = "SlotMigration",
    members = {
        ProgressPercentage = {
            type = "double",
        },
    },
}

M.ReshardingStatus = {
    type = "structure",
    id = "ReshardingStatus",
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
    id = "UserGroupsUpdateStatus",
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
    id = "ReplicationGroupPendingModifiedValues",
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
    id = "ReplicationGroup",
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
    id = "CompleteMigrationOutput",
    members = {
        ReplicationGroup = M.ReplicationGroup,
    },
}

M.ReplicationGroupNotUnderMigrationFault = {
    type = "structure",
    id = "ReplicationGroupNotUnderMigrationFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CopyServerlessCacheSnapshotInput = {
    type = "structure",
    id = "CopyServerlessCacheSnapshotInput",
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
    id = "ServerlessCacheConfiguration",
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
    id = "ServerlessCacheSnapshot",
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
    id = "CopyServerlessCacheSnapshotOutput",
    members = {
        ServerlessCacheSnapshot = M.ServerlessCacheSnapshot,
    },
}

M.ServerlessCacheSnapshotAlreadyExistsFault = {
    type = "structure",
    id = "ServerlessCacheSnapshotAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServerlessCacheSnapshotQuotaExceededFault = {
    type = "structure",
    id = "ServerlessCacheSnapshotQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceLinkedRoleNotFoundFault = {
    type = "structure",
    id = "ServiceLinkedRoleNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CopySnapshotInput = {
    type = "structure",
    id = "CopySnapshotInput",
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
    id = "NodeGroupConfiguration",
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
    id = "NodeSnapshot",
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
    id = "Snapshot",
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
    id = "CopySnapshotOutput",
    members = {
        Snapshot = M.Snapshot,
    },
}

M.InvalidSnapshotStateFault = {
    type = "structure",
    id = "InvalidSnapshotStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SnapshotAlreadyExistsFault = {
    type = "structure",
    id = "SnapshotAlreadyExistsFault",
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

M.CacheClusterAlreadyExistsFault = {
    type = "structure",
    id = "CacheClusterAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterQuotaForCustomerExceededFault = {
    type = "structure",
    id = "ClusterQuotaForCustomerExceededFault",
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
    id = "LogDeliveryConfigurationRequest",
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
    id = "CreateCacheClusterInput",
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
    id = "CacheNode",
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
    id = "CacheParameterGroupStatus",
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
    id = "CacheSecurityGroupMembership",
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
    id = "NotificationConfiguration",
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
    id = "ScaleConfig",
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
    id = "PendingModifiedValues",
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
    id = "SecurityGroupMembership",
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
    id = "CacheCluster",
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
    id = "CreateCacheClusterOutput",
    members = {
        CacheCluster = M.CacheCluster,
    },
}

M.InsufficientCacheClusterCapacityFault = {
    type = "structure",
    id = "InsufficientCacheClusterCapacityFault",
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

M.NodeQuotaForClusterExceededFault = {
    type = "structure",
    id = "NodeQuotaForClusterExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NodeQuotaForCustomerExceededFault = {
    type = "structure",
    id = "NodeQuotaForCustomerExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CacheParameterGroupAlreadyExistsFault = {
    type = "structure",
    id = "CacheParameterGroupAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CacheParameterGroupQuotaExceededFault = {
    type = "structure",
    id = "CacheParameterGroupQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateCacheParameterGroupInput = {
    type = "structure",
    id = "CreateCacheParameterGroupInput",
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
    id = "CacheParameterGroup",
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
    id = "CreateCacheParameterGroupOutput",
    members = {
        CacheParameterGroup = M.CacheParameterGroup,
    },
}

M.InvalidCacheParameterGroupStateFault = {
    type = "structure",
    id = "InvalidCacheParameterGroupStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CacheSecurityGroupAlreadyExistsFault = {
    type = "structure",
    id = "CacheSecurityGroupAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CacheSecurityGroupQuotaExceededFault = {
    type = "structure",
    id = "CacheSecurityGroupQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateCacheSecurityGroupInput = {
    type = "structure",
    id = "CreateCacheSecurityGroupInput",
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
    id = "CreateCacheSecurityGroupOutput",
    members = {
        CacheSecurityGroup = M.CacheSecurityGroup,
    },
}

M.CacheSubnetGroupAlreadyExistsFault = {
    type = "structure",
    id = "CacheSubnetGroupAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CacheSubnetGroupQuotaExceededFault = {
    type = "structure",
    id = "CacheSubnetGroupQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CacheSubnetQuotaExceededFault = {
    type = "structure",
    id = "CacheSubnetQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateCacheSubnetGroupInput = {
    type = "structure",
    id = "CreateCacheSubnetGroupInput",
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
    id = "AvailabilityZone",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.SubnetOutpost = {
    type = "structure",
    id = "SubnetOutpost",
    members = {
        SubnetOutpostArn = {
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
        SubnetOutpost = M.SubnetOutpost,
        SupportedNetworkTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CacheSubnetGroup = {
    type = "structure",
    id = "CacheSubnetGroup",
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
    id = "CreateCacheSubnetGroupOutput",
    members = {
        CacheSubnetGroup = M.CacheSubnetGroup,
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

M.SubnetNotAllowedFault = {
    type = "structure",
    id = "SubnetNotAllowedFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateGlobalReplicationGroupInput = {
    type = "structure",
    id = "CreateGlobalReplicationGroupInput",
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
    id = "GlobalNodeGroup",
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
    id = "GlobalReplicationGroupMember",
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
    id = "GlobalReplicationGroup",
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
    id = "CreateGlobalReplicationGroupOutput",
    members = {
        GlobalReplicationGroup = M.GlobalReplicationGroup,
    },
}

M.GlobalReplicationGroupAlreadyExistsFault = {
    type = "structure",
    id = "GlobalReplicationGroupAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateReplicationGroupInput = {
    type = "structure",
    id = "CreateReplicationGroupInput",
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
    id = "CreateReplicationGroupOutput",
    members = {
        ReplicationGroup = M.ReplicationGroup,
    },
}

M.GlobalReplicationGroupNotFoundFault = {
    type = "structure",
    id = "GlobalReplicationGroupNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidCacheClusterStateFault = {
    type = "structure",
    id = "InvalidCacheClusterStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidGlobalReplicationGroupStateFault = {
    type = "structure",
    id = "InvalidGlobalReplicationGroupStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidUserGroupStateFault = {
    type = "structure",
    id = "InvalidUserGroupStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NodeGroupsPerReplicationGroupQuotaExceededFault = {
    type = "structure",
    id = "NodeGroupsPerReplicationGroupQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReplicationGroupAlreadyExistsFault = {
    type = "structure",
    id = "ReplicationGroupAlreadyExistsFault",
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
    id = "DataStorage",
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
    id = "ECPUPerSecond",
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
    id = "CacheUsageLimits",
    members = {
        DataStorage = M.DataStorage,
        ECPUPerSecond = M.ECPUPerSecond,
    },
}

M.CreateServerlessCacheInput = {
    type = "structure",
    id = "CreateServerlessCacheInput",
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
    id = "ServerlessCache",
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
    id = "CreateServerlessCacheOutput",
    members = {
        ServerlessCache = M.ServerlessCache,
    },
}

M.InvalidCredentialsException = {
    type = "structure",
    id = "InvalidCredentialsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServerlessCacheAlreadyExistsFault = {
    type = "structure",
    id = "ServerlessCacheAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServerlessCacheQuotaForCustomerExceededFault = {
    type = "structure",
    id = "ServerlessCacheQuotaForCustomerExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateServerlessCacheSnapshotInput = {
    type = "structure",
    id = "CreateServerlessCacheSnapshotInput",
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
    id = "CreateServerlessCacheSnapshotOutput",
    members = {
        ServerlessCacheSnapshot = M.ServerlessCacheSnapshot,
    },
}

M.CreateSnapshotInput = {
    type = "structure",
    id = "CreateSnapshotInput",
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
    id = "CreateSnapshotOutput",
    members = {
        Snapshot = M.Snapshot,
    },
}

M.SnapshotFeatureNotSupportedFault = {
    type = "structure",
    id = "SnapshotFeatureNotSupportedFault",
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
    id = "AuthenticationMode",
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
    id = "CreateUserInput",
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
    id = "Authentication",
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
    id = "CreateUserOutput",
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
    id = "DuplicateUserNameFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UserAlreadyExistsFault = {
    type = "structure",
    id = "UserAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UserQuotaExceededFault = {
    type = "structure",
    id = "UserQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateUserGroupInput = {
    type = "structure",
    id = "CreateUserGroupInput",
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
    id = "UserGroupPendingChanges",
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
    id = "CreateUserGroupOutput",
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
    id = "DefaultUserRequired",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UserGroupAlreadyExistsFault = {
    type = "structure",
    id = "UserGroupAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UserGroupQuotaExceededFault = {
    type = "structure",
    id = "UserGroupQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DecreaseNodeGroupsInGlobalReplicationGroupInput = {
    type = "structure",
    id = "DecreaseNodeGroupsInGlobalReplicationGroupInput",
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
    id = "DecreaseNodeGroupsInGlobalReplicationGroupOutput",
    members = {
        GlobalReplicationGroup = M.GlobalReplicationGroup,
    },
}

M.ConfigureShard = {
    type = "structure",
    id = "ConfigureShard",
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
    id = "DecreaseReplicaCountInput",
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
    id = "DecreaseReplicaCountOutput",
    members = {
        ReplicationGroup = M.ReplicationGroup,
    },
}

M.NoOperationFault = {
    type = "structure",
    id = "NoOperationFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteCacheClusterInput = {
    type = "structure",
    id = "DeleteCacheClusterInput",
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
    id = "DeleteCacheClusterOutput",
    members = {
        CacheCluster = M.CacheCluster,
    },
}

M.DeleteCacheParameterGroupInput = {
    type = "structure",
    id = "DeleteCacheParameterGroupInput",
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
    id = "DeleteCacheParameterGroupOutput",
}

M.DeleteCacheSecurityGroupInput = {
    type = "structure",
    id = "DeleteCacheSecurityGroupInput",
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
    id = "DeleteCacheSecurityGroupOutput",
}

M.CacheSubnetGroupInUse = {
    type = "structure",
    id = "CacheSubnetGroupInUse",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteCacheSubnetGroupInput = {
    type = "structure",
    id = "DeleteCacheSubnetGroupInput",
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
    id = "DeleteCacheSubnetGroupOutput",
}

M.DeleteGlobalReplicationGroupInput = {
    type = "structure",
    id = "DeleteGlobalReplicationGroupInput",
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
    id = "DeleteGlobalReplicationGroupOutput",
    members = {
        GlobalReplicationGroup = M.GlobalReplicationGroup,
    },
}

M.DeleteReplicationGroupInput = {
    type = "structure",
    id = "DeleteReplicationGroupInput",
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
    id = "DeleteReplicationGroupOutput",
    members = {
        ReplicationGroup = M.ReplicationGroup,
    },
}

M.DeleteServerlessCacheInput = {
    type = "structure",
    id = "DeleteServerlessCacheInput",
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
    id = "DeleteServerlessCacheOutput",
    members = {
        ServerlessCache = M.ServerlessCache,
    },
}

M.DeleteServerlessCacheSnapshotInput = {
    type = "structure",
    id = "DeleteServerlessCacheSnapshotInput",
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
    id = "DeleteServerlessCacheSnapshotOutput",
    members = {
        ServerlessCacheSnapshot = M.ServerlessCacheSnapshot,
    },
}

M.DeleteSnapshotInput = {
    type = "structure",
    id = "DeleteSnapshotInput",
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
    id = "DeleteSnapshotOutput",
    members = {
        Snapshot = M.Snapshot,
    },
}

M.DefaultUserAssociatedToUserGroupFault = {
    type = "structure",
    id = "DefaultUserAssociatedToUserGroupFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteUserInput = {
    type = "structure",
    id = "DeleteUserInput",
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
    id = "DeleteUserOutput",
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
    id = "InvalidUserStateFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteUserGroupInput = {
    type = "structure",
    id = "DeleteUserGroupInput",
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
    id = "DeleteUserGroupOutput",
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
    id = "DescribeCacheClustersInput",
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
    id = "DescribeCacheClustersOutput",
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
    id = "DescribeCacheEngineVersionsInput",
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
    id = "CacheEngineVersion",
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
    id = "DescribeCacheEngineVersionsOutput",
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
    id = "DescribeCacheParameterGroupsInput",
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
    id = "DescribeCacheParameterGroupsOutput",
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
    id = "DescribeCacheParametersInput",
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
    id = "CacheNodeTypeSpecificValue",
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
    id = "CacheNodeTypeSpecificParameter",
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
    id = "DescribeCacheParametersOutput",
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
    id = "DescribeCacheSecurityGroupsInput",
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
    id = "DescribeCacheSecurityGroupsOutput",
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
    id = "DescribeCacheSubnetGroupsInput",
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
    id = "DescribeCacheSubnetGroupsOutput",
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
    id = "DescribeEngineDefaultParametersInput",
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
    id = "EngineDefaults",
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
    id = "DescribeEngineDefaultParametersOutput",
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
        Date = {
            type = "timestamp",
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

M.DescribeGlobalReplicationGroupsInput = {
    type = "structure",
    id = "DescribeGlobalReplicationGroupsInput",
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
    id = "DescribeGlobalReplicationGroupsOutput",
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
    id = "DescribeReplicationGroupsInput",
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
    id = "DescribeReplicationGroupsOutput",
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
    id = "DescribeReservedCacheNodesInput",
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

M.ReservedCacheNode = {
    type = "structure",
    id = "ReservedCacheNode",
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
    id = "DescribeReservedCacheNodesOutput",
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
    id = "DescribeReservedCacheNodesOfferingsInput",
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
    id = "ReservedCacheNodesOffering",
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
    id = "DescribeReservedCacheNodesOfferingsOutput",
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
    id = "ReservedCacheNodesOfferingNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeServerlessCachesInput = {
    type = "structure",
    id = "DescribeServerlessCachesInput",
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
    id = "DescribeServerlessCachesOutput",
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
    id = "DescribeServerlessCacheSnapshotsInput",
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
    id = "DescribeServerlessCacheSnapshotsOutput",
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
    id = "DescribeServiceUpdatesInput",
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
    id = "ServiceUpdate",
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
    id = "DescribeServiceUpdatesOutput",
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
    id = "DescribeSnapshotsInput",
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
    id = "DescribeSnapshotsOutput",
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
    id = "TimeRangeFilter",
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
    id = "DescribeUpdateActionsInput",
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
    id = "CacheNodeUpdateStatus",
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
    id = "NodeGroupMemberUpdateStatus",
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
    id = "NodeGroupUpdateStatus",
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
    id = "UpdateAction",
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
    id = "DescribeUpdateActionsOutput",
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
    id = "DescribeUserGroupsInput",
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
    id = "UserGroup",
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
    id = "DescribeUserGroupsOutput",
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

M.DescribeUsersInput = {
    type = "structure",
    id = "DescribeUsersInput",
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
    id = "User",
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
    id = "DescribeUsersOutput",
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
    id = "DisassociateGlobalReplicationGroupInput",
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
    id = "DisassociateGlobalReplicationGroupOutput",
    members = {
        GlobalReplicationGroup = M.GlobalReplicationGroup,
    },
}

M.ExportServerlessCacheSnapshotInput = {
    type = "structure",
    id = "ExportServerlessCacheSnapshotInput",
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
    id = "ExportServerlessCacheSnapshotOutput",
    members = {
        ServerlessCacheSnapshot = M.ServerlessCacheSnapshot,
    },
}

M.FailoverGlobalReplicationGroupInput = {
    type = "structure",
    id = "FailoverGlobalReplicationGroupInput",
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
    id = "FailoverGlobalReplicationGroupOutput",
    members = {
        GlobalReplicationGroup = M.GlobalReplicationGroup,
    },
}

M.ReshardingConfiguration = {
    type = "structure",
    id = "ReshardingConfiguration",
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
    id = "RegionalConfiguration",
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
    id = "IncreaseNodeGroupsInGlobalReplicationGroupInput",
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
    id = "IncreaseNodeGroupsInGlobalReplicationGroupOutput",
    members = {
        GlobalReplicationGroup = M.GlobalReplicationGroup,
    },
}

M.IncreaseReplicaCountInput = {
    type = "structure",
    id = "IncreaseReplicaCountInput",
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
    id = "IncreaseReplicaCountOutput",
    members = {
        ReplicationGroup = M.ReplicationGroup,
    },
}

M.InvalidKMSKeyFault = {
    type = "structure",
    id = "InvalidKMSKeyFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListAllowedNodeTypeModificationsInput = {
    type = "structure",
    id = "ListAllowedNodeTypeModificationsInput",
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
    id = "ListAllowedNodeTypeModificationsOutput",
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
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
    id = "ModifyCacheClusterInput",
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
    id = "ModifyCacheClusterOutput",
    members = {
        CacheCluster = M.CacheCluster,
    },
}

M.ParameterNameValue = {
    type = "structure",
    id = "ParameterNameValue",
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
    id = "ModifyCacheParameterGroupInput",
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
    id = "ModifyCacheParameterGroupOutput",
    members = {
        CacheParameterGroupName = {
            type = "string",
        },
    },
}

M.ModifyCacheSubnetGroupInput = {
    type = "structure",
    id = "ModifyCacheSubnetGroupInput",
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
    id = "ModifyCacheSubnetGroupOutput",
    members = {
        CacheSubnetGroup = M.CacheSubnetGroup,
    },
}

M.SubnetInUse = {
    type = "structure",
    id = "SubnetInUse",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ModifyGlobalReplicationGroupInput = {
    type = "structure",
    id = "ModifyGlobalReplicationGroupInput",
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
    id = "ModifyGlobalReplicationGroupOutput",
    members = {
        GlobalReplicationGroup = M.GlobalReplicationGroup,
    },
}

M.ModifyReplicationGroupInput = {
    type = "structure",
    id = "ModifyReplicationGroupInput",
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
    id = "ModifyReplicationGroupOutput",
    members = {
        ReplicationGroup = M.ReplicationGroup,
    },
}

M.ModifyReplicationGroupShardConfigurationInput = {
    type = "structure",
    id = "ModifyReplicationGroupShardConfigurationInput",
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
    id = "ModifyReplicationGroupShardConfigurationOutput",
    members = {
        ReplicationGroup = M.ReplicationGroup,
    },
}

M.ModifyServerlessCacheInput = {
    type = "structure",
    id = "ModifyServerlessCacheInput",
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
    id = "ModifyServerlessCacheOutput",
    members = {
        ServerlessCache = M.ServerlessCache,
    },
}

M.ModifyUserInput = {
    type = "structure",
    id = "ModifyUserInput",
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
    id = "ModifyUserOutput",
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
    id = "ModifyUserGroupInput",
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
    id = "ModifyUserGroupOutput",
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
    id = "PurchaseReservedCacheNodesOfferingInput",
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
    id = "PurchaseReservedCacheNodesOfferingOutput",
    members = {
        ReservedCacheNode = M.ReservedCacheNode,
    },
}

M.ReservedCacheNodeAlreadyExistsFault = {
    type = "structure",
    id = "ReservedCacheNodeAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReservedCacheNodeQuotaExceededFault = {
    type = "structure",
    id = "ReservedCacheNodeQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RebalanceSlotsInGlobalReplicationGroupInput = {
    type = "structure",
    id = "RebalanceSlotsInGlobalReplicationGroupInput",
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
    id = "RebalanceSlotsInGlobalReplicationGroupOutput",
    members = {
        GlobalReplicationGroup = M.GlobalReplicationGroup,
    },
}

M.RebootCacheClusterInput = {
    type = "structure",
    id = "RebootCacheClusterInput",
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
    id = "RebootCacheClusterOutput",
    members = {
        CacheCluster = M.CacheCluster,
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
    members = {
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.TagNotFoundFault = {
    type = "structure",
    id = "TagNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResetCacheParameterGroupInput = {
    type = "structure",
    id = "ResetCacheParameterGroupInput",
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
    id = "ResetCacheParameterGroupOutput",
    members = {
        CacheParameterGroupName = {
            type = "string",
        },
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

M.RevokeCacheSecurityGroupIngressInput = {
    type = "structure",
    id = "RevokeCacheSecurityGroupIngressInput",
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
    id = "RevokeCacheSecurityGroupIngressOutput",
    members = {
        CacheSecurityGroup = M.CacheSecurityGroup,
    },
}

M.ReplicationGroupAlreadyUnderMigrationFault = {
    type = "structure",
    id = "ReplicationGroupAlreadyUnderMigrationFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CustomerNodeEndpoint = {
    type = "structure",
    id = "CustomerNodeEndpoint",
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
    id = "StartMigrationInput",
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
    id = "StartMigrationOutput",
    members = {
        ReplicationGroup = M.ReplicationGroup,
    },
}

M.APICallRateForCustomerExceededFault = {
    type = "structure",
    id = "APICallRateForCustomerExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NodeGroupNotFoundFault = {
    type = "structure",
    id = "NodeGroupNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TestFailoverInput = {
    type = "structure",
    id = "TestFailoverInput",
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
    id = "TestFailoverNotAvailableFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TestFailoverOutput = {
    type = "structure",
    id = "TestFailoverOutput",
    members = {
        ReplicationGroup = M.ReplicationGroup,
    },
}

M.TestMigrationInput = {
    type = "structure",
    id = "TestMigrationInput",
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
    id = "TestMigrationOutput",
    members = {
        ReplicationGroup = M.ReplicationGroup,
    },
}

return M
