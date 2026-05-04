local M = {}

M.ACLPendingChanges = {
    type = "structure",
    members = {
        UserNamesToRemove = {
            type = "list",
            member_type = "string",
        },
        UserNamesToAdd = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
        MinimumEngineVersion = {
            type = "string",
        },
        PendingChanges = {
            type = "structure",
        },
        Clusters = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        ServiceUpdate = {
            type = "structure",
        },
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
            type = "number",
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
        Resharding = {
            type = "structure",
        },
        ACLs = {
            type = "structure",
        },
        ServiceUpdates = {
            type = "list",
            member_type = "structure",
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
        Endpoint = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        NumberOfNodes = {
            type = "number",
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
        PendingUpdates = {
            type = "structure",
        },
        MultiRegionClusterName = {
            type = "string",
        },
        NumberOfShards = {
            type = "number",
        },
        Shards = {
            type = "list",
            member_type = "structure",
        },
        AvailabilityMode = {
            type = "string",
        },
        ClusterEndpoint = {
            type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
        },
        UnprocessedClusters = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ShardDetail = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Configuration = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        SnapshotWindow = {
            type = "string",
        },
        NumShards = {
            type = "number",
        },
        Shards = {
            type = "list",
            member_type = "structure",
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
        ClusterConfiguration = {
            type = "structure",
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
            member_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateACLOutput = {
    type = "structure",
    members = {
        ACL = {
            type = "structure",
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
            type = "number",
        },
        NumReplicasPerShard = {
            type = "number",
        },
        SubnetGroupName = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        MaintenanceWindow = {
            type = "string",
        },
        Port = {
            type = "number",
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
            member_type = "string",
        },
        SnapshotName = {
            type = "string",
        },
        SnapshotRetentionLimit = {
            type = "number",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        Cluster = {
            type = "structure",
        },
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
            type = "number",
        },
        TLSEnabled = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        Clusters = {
            type = "list",
            member_type = "structure",
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
        MultiRegionCluster = {
            type = "structure",
        },
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
            member_type = "structure",
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
        ParameterGroup = {
            type = "structure",
        },
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

M.Subnet = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
        },
        AvailabilityZone = {
            type = "structure",
        },
        SupportedNetworkTypes = {
            type = "list",
            member_type = "string",
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

M.CreateSubnetGroupOutput = {
    type = "structure",
    members = {
        SubnetGroup = {
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
            member_type = "string",
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
        AuthenticationMode = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AccessString = {
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
            member_type = "string",
        },
        MinimumEngineVersion = {
            type = "string",
        },
        Authentication = {
            type = "structure",
        },
        ARN = {
            type = "string",
        },
    },
}

M.CreateUserOutput = {
    type = "structure",
    members = {
        User = {
            type = "structure",
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
        ACL = {
            type = "structure",
        },
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
        Cluster = {
            type = "structure",
        },
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
        MultiRegionCluster = {
            type = "structure",
        },
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
        ParameterGroup = {
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
        SubnetGroup = {
            type = "structure",
        },
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
        User = {
            type = "structure",
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

M.DescribeACLsInput = {
    type = "structure",
    members = {
        ACLName = {
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

M.DescribeACLsOutput = {
    type = "structure",
    members = {
        ACLs = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        DefaultOnly = {
            type = "boolean",
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
            member_type = "structure",
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
            type = "number",
        },
        MaxResults = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
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
            type = "number",
        },
        FixedPrice = {
            type = "number",
        },
        NodeCount = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
        FixedPrice = {
            type = "number",
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

M.DescribeReservedNodesOfferingsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        ReservedNodesOfferings = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        Status = {
            type = "list",
            member_type = "string",
        },
        MaxResults = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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

M.DescribeUsersInput = {
    type = "structure",
    members = {
        UserName = {
            type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxResults = {
            type = "number",
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
            member_type = "structure",
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
        Cluster = {
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
            member_type = "string",
        },
        ScaleDownNodeTypes = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
        ScaleDownNodeTypes = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            type = "number",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PurchaseReservedNodesOfferingOutput = {
    type = "structure",
    members = {
        ReservedNode = {
            type = "structure",
        },
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
        },
        ParameterNames = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ResetParameterGroupOutput = {
    type = "structure",
    members = {
        ParameterGroup = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
        },
        UserNamesToRemove = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UpdateACLOutput = {
    type = "structure",
    members = {
        ACL = {
            type = "structure",
        },
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
            type = "number",
        },
    },
}

M.ShardConfigurationRequest = {
    type = "structure",
    members = {
        ShardCount = {
            type = "number",
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
            member_type = "string",
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
            type = "number",
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
        ReplicaConfiguration = {
            type = "structure",
        },
        ShardConfiguration = {
            type = "structure",
        },
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
        Cluster = {
            type = "structure",
        },
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
        ShardConfiguration = {
            type = "structure",
        },
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
        MultiRegionCluster = {
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateParameterGroupOutput = {
    type = "structure",
    members = {
        ParameterGroup = {
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
            member_type = "string",
        },
    },
}

M.UpdateSubnetGroupOutput = {
    type = "structure",
    members = {
        SubnetGroup = {
            type = "structure",
        },
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
        AuthenticationMode = {
            type = "structure",
        },
        AccessString = {
            type = "string",
        },
    },
}

M.UpdateUserOutput = {
    type = "structure",
    members = {
        User = {
            type = "structure",
        },
    },
}

return M
