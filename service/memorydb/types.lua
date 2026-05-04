local M = {}

M.ACLPendingChanges = {
    type = "structure",
    members = {
        UserNamesToRemove = {
            type = "list",
            member = { type = "string" },
        },
        UserNamesToAdd = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ACL = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        UserNames = {
            type = "list",
            member = { type = "string" },
        },
        MinimumEngineVersion = {
            type = "string",
        },
        PendingChanges = M.ACLPendingChanges,
        Clusters = {
            type = "list",
            member = { type = "string" },
        },
        ARN = {
            type = "string",
        },
    },
}

M.ACLAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ACLNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ACLQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ACLsUpdateStatus = {
    type = "structure",
    members = {
        ACLToApply = {
            type = "string",
        },
    },
}

M.ServiceUpdateRequest = {
    type = "structure",
    members = {
        ServiceUpdateNameToApply = {
            type = "string",
        },
    },
}

M.BatchUpdateClusterInput = {
    type = "structure",
    members = {
        ClusterNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ServiceUpdate = M.ServiceUpdateRequest,
    },
}

M.AZStatus = {
    SingleAZ = "singleaz",
    MultiAZ = "multiaz",
}

M.Endpoint = {
    type = "structure",
    members = {
        Address = {
            type = "string",
        },
        Port = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.DataTieringStatus = {
    TRUE = "true",
    FALSE = "false",
}

M.IpDiscovery = {
    IPV4 = "ipv4",
    IPV6 = "ipv6",
}

M.NetworkType = {
    IPV4 = "ipv4",
    IPV6 = "ipv6",
    DUAL_STACK = "dual_stack",
}

M.SlotMigration = {
    type = "structure",
    members = {
        ProgressPercentage = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.ReshardingStatus = {
    type = "structure",
    members = {
        SlotMigration = M.SlotMigration,
    },
}

M.ServiceUpdateStatus = {
    NOT_APPLIED = "available",
    IN_PROGRESS = "in-progress",
    COMPLETE = "complete",
    SCHEDULED = "scheduled",
}

M.PendingModifiedServiceUpdate = {
    type = "structure",
    members = {
        ServiceUpdateName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.ClusterPendingUpdates = {
    type = "structure",
    members = {
        Resharding = M.ReshardingStatus,
        ACLs = M.ACLsUpdateStatus,
        ServiceUpdates = {
            type = "list",
            member = M.PendingModifiedServiceUpdate,
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

M.Node = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
        },
        Endpoint = M.Endpoint,
    },
}

M.Shard = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Slots = {
            type = "string",
        },
        Nodes = {
            type = "list",
            member = M.Node,
        },
        NumberOfNodes = {
            type = "integer",
        },
    },
}

M.Cluster = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        PendingUpdates = M.ClusterPendingUpdates,
        MultiRegionClusterName = {
            type = "string",
        },
        NumberOfShards = {
            type = "integer",
        },
        Shards = {
            type = "list",
            member = M.Shard,
        },
        AvailabilityMode = {
            type = "string",
        },
        ClusterEndpoint = M.Endpoint,
        NodeType = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        EnginePatchVersion = {
            type = "string",
        },
        ParameterGroupName = {
            type = "string",
        },
        ParameterGroupStatus = {
            type = "string",
        },
        SecurityGroups = {
            type = "list",
            member = M.SecurityGroupMembership,
        },
        SubnetGroupName = {
            type = "string",
        },
        TLSEnabled = {
            type = "boolean",
        },
        KmsKeyId = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
        SnsTopicArn = {
            type = "string",
        },
        SnsTopicStatus = {
            type = "string",
        },
        SnapshotRetentionLimit = {
            type = "integer",
        },
        MaintenanceWindow = {
            type = "string",
        },
        SnapshotWindow = {
            type = "string",
        },
        ACLName = {
            type = "string",
        },
        AutoMinorVersionUpgrade = {
            type = "boolean",
        },
        DataTiering = {
            type = "string",
        },
        NetworkType = {
            type = "string",
        },
        IpDiscovery = {
            type = "string",
        },
    },
}

M.UnprocessedCluster = {
    type = "structure",
    members = {
        ClusterName = {
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

M.BatchUpdateClusterOutput = {
    type = "structure",
    members = {
        ProcessedClusters = {
            type = "list",
            member = M.Cluster,
        },
        UnprocessedClusters = {
            type = "list",
            member = M.UnprocessedCluster,
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

M.ServiceUpdateNotFoundFault = {
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

M.ShardConfiguration = {
    type = "structure",
    members = {
        Slots = {
            type = "string",
        },
        ReplicaCount = {
            type = "integer",
        },
    },
}

M.ShardDetail = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Configuration = M.ShardConfiguration,
        Size = {
            type = "string",
        },
        SnapshotCreationTime = {
            type = "timestamp",
        },
    },
}

M.ClusterConfiguration = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        NodeType = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        MaintenanceWindow = {
            type = "string",
        },
        TopicArn = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        ParameterGroupName = {
            type = "string",
        },
        SubnetGroupName = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        SnapshotRetentionLimit = {
            type = "integer",
        },
        SnapshotWindow = {
            type = "string",
        },
        NumShards = {
            type = "integer",
        },
        Shards = {
            type = "list",
            member = M.ShardDetail,
        },
        MultiRegionParameterGroupName = {
            type = "string",
        },
        MultiRegionClusterName = {
            type = "string",
        },
    },
}

M.Snapshot = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Source = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
        ClusterConfiguration = M.ClusterConfiguration,
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

M.InvalidParameterCombinationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
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

M.ServiceLinkedRoleNotFoundFault = {
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

M.SnapshotNotFoundFault = {
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

M.TagQuotaPerResourceExceeded = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateACLInput = {
    type = "structure",
    members = {
        ACLName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserNames = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateACLOutput = {
    type = "structure",
    members = {
        ACL = M.ACL,
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

M.DuplicateUserNameFault = {
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

M.ClusterAlreadyExistsFault = {
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

M.CreateClusterInput = {
    type = "structure",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MultiRegionClusterName = {
            type = "string",
        },
        ParameterGroupName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        NumShards = {
            type = "integer",
        },
        NumReplicasPerShard = {
            type = "integer",
        },
        SubnetGroupName = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        MaintenanceWindow = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        SnsTopicArn = {
            type = "string",
        },
        TLSEnabled = {
            type = "boolean",
        },
        KmsKeyId = {
            type = "string",
        },
        SnapshotArns = {
            type = "list",
            member = { type = "string" },
        },
        SnapshotName = {
            type = "string",
        },
        SnapshotRetentionLimit = {
            type = "integer",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        SnapshotWindow = {
            type = "string",
        },
        ACLName = {
            type = "string",
            traits = {
                required = true,
            },
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
        DataTiering = {
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

M.CreateClusterOutput = {
    type = "structure",
    members = {
        Cluster = M.Cluster,
    },
}

M.InsufficientClusterCapacityFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidACLStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
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

M.InvalidMultiRegionClusterStateFault = {
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

M.MultiRegionClusterNotFoundFault = {
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

M.ParameterGroupNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ShardsPerClusterQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SubnetGroupNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateMultiRegionClusterInput = {
    type = "structure",
    members = {
        MultiRegionClusterNameSuffix = {
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
        },
        EngineVersion = {
            type = "string",
        },
        NodeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MultiRegionParameterGroupName = {
            type = "string",
        },
        NumShards = {
            type = "integer",
        },
        TLSEnabled = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.RegionalCluster = {
    type = "structure",
    members = {
        ClusterName = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
    },
}

M.MultiRegionCluster = {
    type = "structure",
    members = {
        MultiRegionClusterName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        NodeType = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        NumberOfShards = {
            type = "integer",
        },
        Clusters = {
            type = "list",
            member = M.RegionalCluster,
        },
        MultiRegionParameterGroupName = {
            type = "string",
        },
        TLSEnabled = {
            type = "boolean",
        },
        ARN = {
            type = "string",
        },
    },
}

M.CreateMultiRegionClusterOutput = {
    type = "structure",
    members = {
        MultiRegionCluster = M.MultiRegionCluster,
    },
}

M.MultiRegionClusterAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MultiRegionParameterGroupNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateParameterGroupInput = {
    type = "structure",
    members = {
        ParameterGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Family = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ParameterGroup = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Family = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
    },
}

M.CreateParameterGroupOutput = {
    type = "structure",
    members = {
        ParameterGroup = M.ParameterGroup,
    },
}

M.InvalidParameterGroupStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ParameterGroupAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ParameterGroupQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateSnapshotInput = {
    type = "structure",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
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

M.InvalidClusterStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateSubnetGroupInput = {
    type = "structure",
    members = {
        SubnetGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
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

M.Subnet = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
        },
        AvailabilityZone = M.AvailabilityZone,
        SupportedNetworkTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SubnetGroup = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
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

M.CreateSubnetGroupOutput = {
    type = "structure",
    members = {
        SubnetGroup = M.SubnetGroup,
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

M.SubnetGroupAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SubnetGroupQuotaExceededFault = {
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

M.SubnetQuotaExceededFault = {
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
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticationMode = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AuthenticationMode }),
        AccessString = {
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

M.User = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        AccessString = {
            type = "string",
        },
        ACLNames = {
            type = "list",
            member = { type = "string" },
        },
        MinimumEngineVersion = {
            type = "string",
        },
        Authentication = M.Authentication,
        ARN = {
            type = "string",
        },
    },
}

M.CreateUserOutput = {
    type = "structure",
    members = {
        User = M.User,
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

M.DeleteACLInput = {
    type = "structure",
    members = {
        ACLName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteACLOutput = {
    type = "structure",
    members = {
        ACL = M.ACL,
    },
}

M.DeleteClusterInput = {
    type = "structure",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MultiRegionClusterName = {
            type = "string",
        },
        FinalSnapshotName = {
            type = "string",
        },
    },
}

M.DeleteClusterOutput = {
    type = "structure",
    members = {
        Cluster = M.Cluster,
    },
}

M.DeleteMultiRegionClusterInput = {
    type = "structure",
    members = {
        MultiRegionClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMultiRegionClusterOutput = {
    type = "structure",
    members = {
        MultiRegionCluster = M.MultiRegionCluster,
    },
}

M.DeleteParameterGroupInput = {
    type = "structure",
    members = {
        ParameterGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteParameterGroupOutput = {
    type = "structure",
    members = {
        ParameterGroup = M.ParameterGroup,
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

M.DeleteSubnetGroupInput = {
    type = "structure",
    members = {
        SubnetGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSubnetGroupOutput = {
    type = "structure",
    members = {
        SubnetGroup = M.SubnetGroup,
    },
}

M.SubnetGroupInUseFault = {
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
        UserName = {
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
        User = M.User,
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

M.DescribeACLsInput = {
    type = "structure",
    members = {
        ACLName = {
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

M.DescribeACLsOutput = {
    type = "structure",
    members = {
        ACLs = {
            type = "list",
            member = M.ACL,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeClustersInput = {
    type = "structure",
    members = {
        ClusterName = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        ShowShardDetails = {
            type = "boolean",
        },
    },
}

M.DescribeClustersOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Clusters = {
            type = "list",
            member = M.Cluster,
        },
    },
}

M.DescribeEngineVersionsInput = {
    type = "structure",
    members = {
        Engine = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        ParameterGroupFamily = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        DefaultOnly = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.EngineVersionInfo = {
    type = "structure",
    members = {
        Engine = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        EnginePatchVersion = {
            type = "string",
        },
        ParameterGroupFamily = {
            type = "string",
        },
    },
}

M.DescribeEngineVersionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        EngineVersions = {
            type = "list",
            member = M.EngineVersionInfo,
        },
    },
}

M.SourceType = {
    node = "node",
    parameter_group = "parameter-group",
    subnet_group = "subnet-group",
    cluster = "cluster",
    user = "user",
    acl = "acl",
}

M.DescribeEventsInput = {
    type = "structure",
    members = {
        SourceName = {
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
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Event = {
    type = "structure",
    members = {
        SourceName = {
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
        NextToken = {
            type = "string",
        },
        Events = {
            type = "list",
            member = M.Event,
        },
    },
}

M.DescribeMultiRegionClustersInput = {
    type = "structure",
    members = {
        MultiRegionClusterName = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        ShowClusterDetails = {
            type = "boolean",
        },
    },
}

M.DescribeMultiRegionClustersOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MultiRegionClusters = {
            type = "list",
            member = M.MultiRegionCluster,
        },
    },
}

M.DescribeMultiRegionParameterGroupsInput = {
    type = "structure",
    members = {
        MultiRegionParameterGroupName = {
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

M.MultiRegionParameterGroup = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Family = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
    },
}

M.DescribeMultiRegionParameterGroupsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MultiRegionParameterGroups = {
            type = "list",
            member = M.MultiRegionParameterGroup,
        },
    },
}

M.DescribeMultiRegionParametersInput = {
    type = "structure",
    members = {
        MultiRegionParameterGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Source = {
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

M.MultiRegionParameter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Value = {
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
        MinimumEngineVersion = {
            type = "string",
        },
    },
}

M.DescribeMultiRegionParametersOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MultiRegionParameters = {
            type = "list",
            member = M.MultiRegionParameter,
        },
    },
}

M.DescribeParameterGroupsInput = {
    type = "structure",
    members = {
        ParameterGroupName = {
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

M.DescribeParameterGroupsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        ParameterGroups = {
            type = "list",
            member = M.ParameterGroup,
        },
    },
}

M.DescribeParametersInput = {
    type = "structure",
    members = {
        ParameterGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Parameter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DataType = {
            type = "string",
        },
        AllowedValues = {
            type = "string",
        },
        MinimumEngineVersion = {
            type = "string",
        },
    },
}

M.DescribeParametersOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Parameters = {
            type = "list",
            member = M.Parameter,
        },
    },
}

M.DescribeReservedNodesInput = {
    type = "structure",
    members = {
        ReservationId = {
            type = "string",
        },
        ReservedNodesOfferingId = {
            type = "string",
        },
        NodeType = {
            type = "string",
        },
        Duration = {
            type = "string",
        },
        OfferingType = {
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

M.RecurringCharge = {
    type = "structure",
    members = {
        RecurringChargeAmount = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        RecurringChargeFrequency = {
            type = "string",
        },
    },
}

M.ReservedNode = {
    type = "structure",
    members = {
        ReservationId = {
            type = "string",
        },
        ReservedNodesOfferingId = {
            type = "string",
        },
        NodeType = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        Duration = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        FixedPrice = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        NodeCount = {
            type = "integer",
            traits = {
                default = 0,
            },
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
        ARN = {
            type = "string",
        },
    },
}

M.DescribeReservedNodesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        ReservedNodes = {
            type = "list",
            member = M.ReservedNode,
        },
    },
}

M.ReservedNodeNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeReservedNodesOfferingsInput = {
    type = "structure",
    members = {
        ReservedNodesOfferingId = {
            type = "string",
        },
        NodeType = {
            type = "string",
        },
        Duration = {
            type = "string",
        },
        OfferingType = {
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

M.ReservedNodesOffering = {
    type = "structure",
    members = {
        ReservedNodesOfferingId = {
            type = "string",
        },
        NodeType = {
            type = "string",
        },
        Duration = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        FixedPrice = {
            type = "double",
            traits = {
                default = 0,
            },
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

M.DescribeReservedNodesOfferingsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        ReservedNodesOfferings = {
            type = "list",
            member = M.ReservedNodesOffering,
        },
    },
}

M.ReservedNodesOfferingNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeServiceUpdatesInput = {
    type = "structure",
    members = {
        ServiceUpdateName = {
            type = "string",
        },
        ClusterNames = {
            type = "list",
            member = { type = "string" },
        },
        Status = {
            type = "list",
            member = { type = "string" },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ServiceUpdateType = {
    SECURITY_UPDATE = "security-update",
}

M.ServiceUpdate = {
    type = "structure",
    members = {
        ClusterName = {
            type = "string",
        },
        ServiceUpdateName = {
            type = "string",
        },
        ReleaseDate = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        NodesUpdated = {
            type = "string",
        },
        AutoUpdateStartDate = {
            type = "timestamp",
        },
    },
}

M.DescribeServiceUpdatesOutput = {
    type = "structure",
    members = {
        NextToken = {
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
        ClusterName = {
            type = "string",
        },
        SnapshotName = {
            type = "string",
        },
        Source = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        ShowDetail = {
            type = "boolean",
        },
    },
}

M.DescribeSnapshotsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Snapshots = {
            type = "list",
            member = M.Snapshot,
        },
    },
}

M.DescribeSubnetGroupsInput = {
    type = "structure",
    members = {
        SubnetGroupName = {
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

M.DescribeSubnetGroupsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        SubnetGroups = {
            type = "list",
            member = M.SubnetGroup,
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
        UserName = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
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
        NextToken = {
            type = "string",
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

M.FailoverShardInput = {
    type = "structure",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ShardName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FailoverShardOutput = {
    type = "structure",
    members = {
        Cluster = M.Cluster,
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

M.ShardNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
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

M.ListAllowedMultiRegionClusterUpdatesInput = {
    type = "structure",
    members = {
        MultiRegionClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAllowedMultiRegionClusterUpdatesOutput = {
    type = "structure",
    members = {
        ScaleUpNodeTypes = {
            type = "list",
            member = { type = "string" },
        },
        ScaleDownNodeTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListAllowedNodeTypeUpdatesInput = {
    type = "structure",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAllowedNodeTypeUpdatesOutput = {
    type = "structure",
    members = {
        ScaleUpNodeTypes = {
            type = "list",
            member = { type = "string" },
        },
        ScaleDownNodeTypes = {
            type = "list",
            member = { type = "string" },
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

M.ListTagsInput = {
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

M.ListTagsOutput = {
    type = "structure",
    members = {
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PurchaseReservedNodesOfferingInput = {
    type = "structure",
    members = {
        ReservedNodesOfferingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReservationId = {
            type = "string",
        },
        NodeCount = {
            type = "integer",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PurchaseReservedNodesOfferingOutput = {
    type = "structure",
    members = {
        ReservedNode = M.ReservedNode,
    },
}

M.ReservedNodeAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReservedNodeQuotaExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResetParameterGroupInput = {
    type = "structure",
    members = {
        ParameterGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllParameters = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ParameterNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ResetParameterGroupOutput = {
    type = "structure",
    members = {
        ParameterGroup = M.ParameterGroup,
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
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

M.TagResourceOutput = {
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

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
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

M.UntagResourceOutput = {
    type = "structure",
    members = {
        TagList = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.UpdateACLInput = {
    type = "structure",
    members = {
        ACLName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserNamesToAdd = {
            type = "list",
            member = { type = "string" },
        },
        UserNamesToRemove = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateACLOutput = {
    type = "structure",
    members = {
        ACL = M.ACL,
    },
}

M.InvalidNodeStateFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
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

M.ReplicaConfigurationRequest = {
    type = "structure",
    members = {
        ReplicaCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ShardConfigurationRequest = {
    type = "structure",
    members = {
        ShardCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.UpdateClusterInput = {
    type = "structure",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        MaintenanceWindow = {
            type = "string",
        },
        SnsTopicArn = {
            type = "string",
        },
        SnsTopicStatus = {
            type = "string",
        },
        ParameterGroupName = {
            type = "string",
        },
        SnapshotWindow = {
            type = "string",
        },
        SnapshotRetentionLimit = {
            type = "integer",
        },
        NodeType = {
            type = "string",
        },
        Engine = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        ReplicaConfiguration = M.ReplicaConfigurationRequest,
        ShardConfiguration = M.ShardConfigurationRequest,
        ACLName = {
            type = "string",
        },
        IpDiscovery = {
            type = "string",
        },
    },
}

M.UpdateClusterOutput = {
    type = "structure",
    members = {
        Cluster = M.Cluster,
    },
}

M.UpdateStrategy = {
    COORDINATED = "coordinated",
    UNCOORDINATED = "uncoordinated",
}

M.UpdateMultiRegionClusterInput = {
    type = "structure",
    members = {
        MultiRegionClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeType = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EngineVersion = {
            type = "string",
        },
        ShardConfiguration = M.ShardConfigurationRequest,
        MultiRegionParameterGroupName = {
            type = "string",
        },
        UpdateStrategy = {
            type = "string",
        },
    },
}

M.UpdateMultiRegionClusterOutput = {
    type = "structure",
    members = {
        MultiRegionCluster = M.MultiRegionCluster,
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

M.UpdateParameterGroupInput = {
    type = "structure",
    members = {
        ParameterGroupName = {
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

M.UpdateParameterGroupOutput = {
    type = "structure",
    members = {
        ParameterGroup = M.ParameterGroup,
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

M.UpdateSubnetGroupInput = {
    type = "structure",
    members = {
        SubnetGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateSubnetGroupOutput = {
    type = "structure",
    members = {
        SubnetGroup = M.SubnetGroup,
    },
}

M.UpdateUserInput = {
    type = "structure",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticationMode = M.AuthenticationMode,
        AccessString = {
            type = "string",
        },
    },
}

M.UpdateUserOutput = {
    type = "structure",
    members = {
        User = M.User,
    },
}

return M
