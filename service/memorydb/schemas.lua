local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.memorydb"

local M = {}

M.ClusterNameList = schema.new({ type = "list", list_member = prelude.String })

M.ClusterList = schema.new({ type = "list", list_member = M.Cluster })

M.UnprocessedClusterList = schema.new({ type = "list", list_member = M.UnprocessedCluster })

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.UserNameListInput = schema.new({ type = "list", list_member = prelude.String })

M.SecurityGroupIdsList = schema.new({ type = "list", list_member = prelude.String })

M.SnapshotArnsList = schema.new({ type = "list", list_member = prelude.String })

M.SubnetIdentifierList = schema.new({ type = "list", list_member = prelude.String })

M.ACLList = schema.new({ type = "list", list_member = M.ACL })

M.EngineVersionInfoList = schema.new({ type = "list", list_member = M.EngineVersionInfo })

M.EventList = schema.new({ type = "list", list_member = M.Event })

M.MultiRegionClusterList = schema.new({ type = "list", list_member = M.MultiRegionCluster })

M.MultiRegionParameterGroupList = schema.new({ type = "list", list_member = M.MultiRegionParameterGroup })

M.MultiRegionParametersList = schema.new({ type = "list", list_member = M.MultiRegionParameter })

M.ParameterGroupList = schema.new({ type = "list", list_member = M.ParameterGroup })

M.ParametersList = schema.new({ type = "list", list_member = M.Parameter })

M.ReservedNodeList = schema.new({ type = "list", list_member = M.ReservedNode })

M.ReservedNodesOfferingList = schema.new({ type = "list", list_member = M.ReservedNodesOffering })

M.ServiceUpdateStatusList = schema.new({ type = "list", list_member = prelude.String })

M.ServiceUpdateList = schema.new({ type = "list", list_member = M.ServiceUpdate })

M.SnapshotList = schema.new({ type = "list", list_member = M.Snapshot })

M.SubnetGroupList = schema.new({ type = "list", list_member = M.SubnetGroup })

M.FilterList = schema.new({ type = "list", list_member = M.Filter })

M.UserList = schema.new({ type = "list", list_member = M.User })

M.NodeTypeList = schema.new({ type = "list", list_member = prelude.String })

M.ParameterNameList = schema.new({ type = "list", list_member = prelude.String })

M.KeyList = schema.new({ type = "list", list_member = prelude.String })

M.ParameterNameValueList = schema.new({ type = "list", list_member = M.ParameterNameValue })

M.UserNameList = schema.new({ type = "list", list_member = prelude.String })

M.ACLClusterNameList = schema.new({ type = "list", list_member = prelude.String })

M.ShardList = schema.new({ type = "list", list_member = M.Shard })

M.SecurityGroupMembershipList = schema.new({ type = "list", list_member = M.SecurityGroupMembership })

M.RegionalClusterList = schema.new({ type = "list", list_member = M.RegionalCluster })

M.SubnetList = schema.new({ type = "list", list_member = M.Subnet })

M.NetworkTypeList = schema.new({ type = "list", list_member = prelude.String })

M.PasswordListInput = schema.new({ type = "list", list_member = prelude.String })

M.ACLNameList = schema.new({ type = "list", list_member = prelude.String })

M.RecurringChargeList = schema.new({ type = "list", list_member = M.RecurringCharge })

M.ShardDetails = schema.new({ type = "list", list_member = M.ShardDetail })

M.PendingModifiedServiceUpdateList = schema.new({ type = "list", list_member = M.PendingModifiedServiceUpdate })

M.FilterValueList = schema.new({ type = "list", list_member = prelude.String })

M.NodeList = schema.new({ type = "list", list_member = M.Node })

M.ACLPendingChanges = schema.new({
    id = id.from(_N, "ACLPendingChanges"),
    type = "structure",
    members = {
        UserNamesToRemove = schema.new({
            id = id.from(_N, "ACLPendingChanges", "UserNamesToRemove"),
            type = "list",
            name = "UserNamesToRemove",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        UserNamesToAdd = schema.new({
            id = id.from(_N, "ACLPendingChanges", "UserNamesToAdd"),
            type = "list",
            name = "UserNamesToAdd",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ACL = schema.new({
    id = id.from(_N, "ACL"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ACL", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ACL", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        UserNames = schema.new({
            id = id.from(_N, "ACL", "UserNames"),
            type = "list",
            name = "UserNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MinimumEngineVersion = schema.new({
            id = id.from(_N, "ACL", "MinimumEngineVersion"),
            type = "string",
            name = "MinimumEngineVersion",
            target_id = prelude.String.id,
        }),
        PendingChanges = schema.new({
            id = id.from(_N, "ACL", "PendingChanges"),
            type = "structure",
            name = "PendingChanges",
            target_id = id.from(_N, "ACLPendingChanges"),
            target = M.ACLPendingChanges,
        }),
        Clusters = schema.new({
            id = id.from(_N, "ACL", "Clusters"),
            type = "list",
            name = "Clusters",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ARN = schema.new({
            id = id.from(_N, "ACL", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
    },
})

M.ACLAlreadyExistsFault = schema.new({
    id = id.from(_N, "ACLAlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ACLAlreadyExistsFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ACLNotFoundFault = schema.new({
    id = id.from(_N, "ACLNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ACLNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ACLQuotaExceededFault = schema.new({
    id = id.from(_N, "ACLQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ACLQuotaExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ACLsUpdateStatus = schema.new({
    id = id.from(_N, "ACLsUpdateStatus"),
    type = "structure",
    members = {
        ACLToApply = schema.new({
            id = id.from(_N, "ACLsUpdateStatus", "ACLToApply"),
            type = "string",
            name = "ACLToApply",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceUpdateRequest = schema.new({
    id = id.from(_N, "ServiceUpdateRequest"),
    type = "structure",
    members = {
        ServiceUpdateNameToApply = schema.new({
            id = id.from(_N, "ServiceUpdateRequest", "ServiceUpdateNameToApply"),
            type = "string",
            name = "ServiceUpdateNameToApply",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchUpdateClusterInput = schema.new({
    id = id.from(_N, "BatchUpdateClusterRequest"),
    type = "structure",
    members = {
        ClusterNames = schema.new({
            id = id.from(_N, "BatchUpdateClusterInput", "ClusterNames"),
            type = "list",
            name = "ClusterNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceUpdate = schema.new({
            id = id.from(_N, "BatchUpdateClusterInput", "ServiceUpdate"),
            type = "structure",
            name = "ServiceUpdate",
            target_id = id.from(_N, "ServiceUpdateRequest"),
            target = M.ServiceUpdateRequest,
        }),
    },
})

M.Endpoint = schema.new({
    id = id.from(_N, "Endpoint"),
    type = "structure",
    members = {
        Address = schema.new({
            id = id.from(_N, "Endpoint", "Address"),
            type = "string",
            name = "Address",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "Endpoint", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.SlotMigration = schema.new({
    id = id.from(_N, "SlotMigration"),
    type = "structure",
    members = {
        ProgressPercentage = schema.new({
            id = id.from(_N, "SlotMigration", "ProgressPercentage"),
            type = "double",
            name = "ProgressPercentage",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ReshardingStatus = schema.new({
    id = id.from(_N, "ReshardingStatus"),
    type = "structure",
    members = {
        SlotMigration = schema.new({
            id = id.from(_N, "ReshardingStatus", "SlotMigration"),
            type = "structure",
            name = "SlotMigration",
            target_id = id.from(_N, "SlotMigration"),
            target = M.SlotMigration,
        }),
    },
})

M.PendingModifiedServiceUpdate = schema.new({
    id = id.from(_N, "PendingModifiedServiceUpdate"),
    type = "structure",
    members = {
        ServiceUpdateName = schema.new({
            id = id.from(_N, "PendingModifiedServiceUpdate", "ServiceUpdateName"),
            type = "string",
            name = "ServiceUpdateName",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "PendingModifiedServiceUpdate", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.ClusterPendingUpdates = schema.new({
    id = id.from(_N, "ClusterPendingUpdates"),
    type = "structure",
    members = {
        Resharding = schema.new({
            id = id.from(_N, "ClusterPendingUpdates", "Resharding"),
            type = "structure",
            name = "Resharding",
            target_id = id.from(_N, "ReshardingStatus"),
            target = M.ReshardingStatus,
        }),
        ACLs = schema.new({
            id = id.from(_N, "ClusterPendingUpdates", "ACLs"),
            type = "structure",
            name = "ACLs",
            target_id = id.from(_N, "ACLsUpdateStatus"),
            target = M.ACLsUpdateStatus,
        }),
        ServiceUpdates = schema.new({
            id = id.from(_N, "ClusterPendingUpdates", "ServiceUpdates"),
            type = "list",
            name = "ServiceUpdates",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.PendingModifiedServiceUpdate, traits = { [traits.XML_NAME] = { name = "PendingModifiedServiceUpdate" } } }),
        }),
    },
})

M.SecurityGroupMembership = schema.new({
    id = id.from(_N, "SecurityGroupMembership"),
    type = "structure",
    members = {
        SecurityGroupId = schema.new({
            id = id.from(_N, "SecurityGroupMembership", "SecurityGroupId"),
            type = "string",
            name = "SecurityGroupId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "SecurityGroupMembership", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.Node = schema.new({
    id = id.from(_N, "Node"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Node", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Node", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        AvailabilityZone = schema.new({
            id = id.from(_N, "Node", "AvailabilityZone"),
            type = "string",
            name = "AvailabilityZone",
            target_id = prelude.String.id,
        }),
        CreateTime = schema.new({
            id = id.from(_N, "Node", "CreateTime"),
            type = "timestamp",
            name = "CreateTime",
            target_id = prelude.Timestamp.id,
        }),
        Endpoint = schema.new({
            id = id.from(_N, "Node", "Endpoint"),
            type = "structure",
            name = "Endpoint",
            target_id = id.from(_N, "Endpoint"),
            target = M.Endpoint,
        }),
    },
})

M.Shard = schema.new({
    id = id.from(_N, "Shard"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Shard", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Shard", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Slots = schema.new({
            id = id.from(_N, "Shard", "Slots"),
            type = "string",
            name = "Slots",
            target_id = prelude.String.id,
        }),
        Nodes = schema.new({
            id = id.from(_N, "Shard", "Nodes"),
            type = "list",
            name = "Nodes",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Node, traits = { [traits.XML_NAME] = { name = "Node" } } }),
        }),
        NumberOfNodes = schema.new({
            id = id.from(_N, "Shard", "NumberOfNodes"),
            type = "integer",
            name = "NumberOfNodes",
            target_id = prelude.Integer.id,
        }),
    },
})

M.Cluster = schema.new({
    id = id.from(_N, "Cluster"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Cluster", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "Cluster", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Cluster", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        PendingUpdates = schema.new({
            id = id.from(_N, "Cluster", "PendingUpdates"),
            type = "structure",
            name = "PendingUpdates",
            target_id = id.from(_N, "ClusterPendingUpdates"),
            target = M.ClusterPendingUpdates,
        }),
        MultiRegionClusterName = schema.new({
            id = id.from(_N, "Cluster", "MultiRegionClusterName"),
            type = "string",
            name = "MultiRegionClusterName",
            target_id = prelude.String.id,
        }),
        NumberOfShards = schema.new({
            id = id.from(_N, "Cluster", "NumberOfShards"),
            type = "integer",
            name = "NumberOfShards",
            target_id = prelude.Integer.id,
        }),
        Shards = schema.new({
            id = id.from(_N, "Cluster", "Shards"),
            type = "list",
            name = "Shards",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Shard, traits = { [traits.XML_NAME] = { name = "Shard" } } }),
        }),
        AvailabilityMode = schema.new({
            id = id.from(_N, "Cluster", "AvailabilityMode"),
            type = "string",
            name = "AvailabilityMode",
            target_id = prelude.String.id,
        }),
        ClusterEndpoint = schema.new({
            id = id.from(_N, "Cluster", "ClusterEndpoint"),
            type = "structure",
            name = "ClusterEndpoint",
            target_id = id.from(_N, "Endpoint"),
            target = M.Endpoint,
        }),
        NodeType = schema.new({
            id = id.from(_N, "Cluster", "NodeType"),
            type = "string",
            name = "NodeType",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "Cluster", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "Cluster", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        EnginePatchVersion = schema.new({
            id = id.from(_N, "Cluster", "EnginePatchVersion"),
            type = "string",
            name = "EnginePatchVersion",
            target_id = prelude.String.id,
        }),
        ParameterGroupName = schema.new({
            id = id.from(_N, "Cluster", "ParameterGroupName"),
            type = "string",
            name = "ParameterGroupName",
            target_id = prelude.String.id,
        }),
        ParameterGroupStatus = schema.new({
            id = id.from(_N, "Cluster", "ParameterGroupStatus"),
            type = "string",
            name = "ParameterGroupStatus",
            target_id = prelude.String.id,
        }),
        SecurityGroups = schema.new({
            id = id.from(_N, "Cluster", "SecurityGroups"),
            type = "list",
            name = "SecurityGroups",
            target_id = prelude.Document.id,
            list_member = M.SecurityGroupMembership,
        }),
        SubnetGroupName = schema.new({
            id = id.from(_N, "Cluster", "SubnetGroupName"),
            type = "string",
            name = "SubnetGroupName",
            target_id = prelude.String.id,
        }),
        TLSEnabled = schema.new({
            id = id.from(_N, "Cluster", "TLSEnabled"),
            type = "boolean",
            name = "TLSEnabled",
            target_id = prelude.Boolean.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "Cluster", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        ARN = schema.new({
            id = id.from(_N, "Cluster", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        SnsTopicArn = schema.new({
            id = id.from(_N, "Cluster", "SnsTopicArn"),
            type = "string",
            name = "SnsTopicArn",
            target_id = prelude.String.id,
        }),
        SnsTopicStatus = schema.new({
            id = id.from(_N, "Cluster", "SnsTopicStatus"),
            type = "string",
            name = "SnsTopicStatus",
            target_id = prelude.String.id,
        }),
        SnapshotRetentionLimit = schema.new({
            id = id.from(_N, "Cluster", "SnapshotRetentionLimit"),
            type = "integer",
            name = "SnapshotRetentionLimit",
            target_id = prelude.Integer.id,
        }),
        MaintenanceWindow = schema.new({
            id = id.from(_N, "Cluster", "MaintenanceWindow"),
            type = "string",
            name = "MaintenanceWindow",
            target_id = prelude.String.id,
        }),
        SnapshotWindow = schema.new({
            id = id.from(_N, "Cluster", "SnapshotWindow"),
            type = "string",
            name = "SnapshotWindow",
            target_id = prelude.String.id,
        }),
        ACLName = schema.new({
            id = id.from(_N, "Cluster", "ACLName"),
            type = "string",
            name = "ACLName",
            target_id = prelude.String.id,
        }),
        AutoMinorVersionUpgrade = schema.new({
            id = id.from(_N, "Cluster", "AutoMinorVersionUpgrade"),
            type = "boolean",
            name = "AutoMinorVersionUpgrade",
            target_id = prelude.Boolean.id,
        }),
        DataTiering = schema.new({
            id = id.from(_N, "Cluster", "DataTiering"),
            type = "string",
            name = "DataTiering",
            target_id = prelude.String.id,
        }),
        NetworkType = schema.new({
            id = id.from(_N, "Cluster", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
        IpDiscovery = schema.new({
            id = id.from(_N, "Cluster", "IpDiscovery"),
            type = "string",
            name = "IpDiscovery",
            target_id = prelude.String.id,
        }),
    },
})

M.UnprocessedCluster = schema.new({
    id = id.from(_N, "UnprocessedCluster"),
    type = "structure",
    members = {
        ClusterName = schema.new({
            id = id.from(_N, "UnprocessedCluster", "ClusterName"),
            type = "string",
            name = "ClusterName",
            target_id = prelude.String.id,
        }),
        ErrorType = schema.new({
            id = id.from(_N, "UnprocessedCluster", "ErrorType"),
            type = "string",
            name = "ErrorType",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "UnprocessedCluster", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchUpdateClusterOutput = schema.new({
    id = id.from(_N, "BatchUpdateClusterResponse"),
    type = "structure",
    members = {
        ProcessedClusters = schema.new({
            id = id.from(_N, "BatchUpdateClusterOutput", "ProcessedClusters"),
            type = "list",
            name = "ProcessedClusters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Cluster, traits = { [traits.XML_NAME] = { name = "Cluster" } } }),
        }),
        UnprocessedClusters = schema.new({
            id = id.from(_N, "BatchUpdateClusterOutput", "UnprocessedClusters"),
            type = "list",
            name = "UnprocessedClusters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.UnprocessedCluster, traits = { [traits.XML_NAME] = { name = "UnprocessedCluster" } } }),
        }),
    },
})

M.InvalidParameterValueException = schema.new({
    id = id.from(_N, "InvalidParameterValueException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidParameterValueException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceUpdateNotFoundFault = schema.new({
    id = id.from(_N, "ServiceUpdateNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceUpdateNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "Tag", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.CopySnapshotInput = schema.new({
    id = id.from(_N, "CopySnapshotRequest"),
    type = "structure",
    members = {
        SourceSnapshotName = schema.new({
            id = id.from(_N, "CopySnapshotInput", "SourceSnapshotName"),
            type = "string",
            name = "SourceSnapshotName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetSnapshotName = schema.new({
            id = id.from(_N, "CopySnapshotInput", "TargetSnapshotName"),
            type = "string",
            name = "TargetSnapshotName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetBucket = schema.new({
            id = id.from(_N, "CopySnapshotInput", "TargetBucket"),
            type = "string",
            name = "TargetBucket",
            target_id = prelude.String.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "CopySnapshotInput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CopySnapshotInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.ShardConfiguration = schema.new({
    id = id.from(_N, "ShardConfiguration"),
    type = "structure",
    members = {
        Slots = schema.new({
            id = id.from(_N, "ShardConfiguration", "Slots"),
            type = "string",
            name = "Slots",
            target_id = prelude.String.id,
        }),
        ReplicaCount = schema.new({
            id = id.from(_N, "ShardConfiguration", "ReplicaCount"),
            type = "integer",
            name = "ReplicaCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ShardDetail = schema.new({
    id = id.from(_N, "ShardDetail"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ShardDetail", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Configuration = schema.new({
            id = id.from(_N, "ShardDetail", "Configuration"),
            type = "structure",
            name = "Configuration",
            target_id = id.from(_N, "ShardConfiguration"),
            target = M.ShardConfiguration,
        }),
        Size = schema.new({
            id = id.from(_N, "ShardDetail", "Size"),
            type = "string",
            name = "Size",
            target_id = prelude.String.id,
        }),
        SnapshotCreationTime = schema.new({
            id = id.from(_N, "ShardDetail", "SnapshotCreationTime"),
            type = "timestamp",
            name = "SnapshotCreationTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ClusterConfiguration = schema.new({
    id = id.from(_N, "ClusterConfiguration"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ClusterConfiguration", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ClusterConfiguration", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        NodeType = schema.new({
            id = id.from(_N, "ClusterConfiguration", "NodeType"),
            type = "string",
            name = "NodeType",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "ClusterConfiguration", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "ClusterConfiguration", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        MaintenanceWindow = schema.new({
            id = id.from(_N, "ClusterConfiguration", "MaintenanceWindow"),
            type = "string",
            name = "MaintenanceWindow",
            target_id = prelude.String.id,
        }),
        TopicArn = schema.new({
            id = id.from(_N, "ClusterConfiguration", "TopicArn"),
            type = "string",
            name = "TopicArn",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "ClusterConfiguration", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        ParameterGroupName = schema.new({
            id = id.from(_N, "ClusterConfiguration", "ParameterGroupName"),
            type = "string",
            name = "ParameterGroupName",
            target_id = prelude.String.id,
        }),
        SubnetGroupName = schema.new({
            id = id.from(_N, "ClusterConfiguration", "SubnetGroupName"),
            type = "string",
            name = "SubnetGroupName",
            target_id = prelude.String.id,
        }),
        VpcId = schema.new({
            id = id.from(_N, "ClusterConfiguration", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
        SnapshotRetentionLimit = schema.new({
            id = id.from(_N, "ClusterConfiguration", "SnapshotRetentionLimit"),
            type = "integer",
            name = "SnapshotRetentionLimit",
            target_id = prelude.Integer.id,
        }),
        SnapshotWindow = schema.new({
            id = id.from(_N, "ClusterConfiguration", "SnapshotWindow"),
            type = "string",
            name = "SnapshotWindow",
            target_id = prelude.String.id,
        }),
        NumShards = schema.new({
            id = id.from(_N, "ClusterConfiguration", "NumShards"),
            type = "integer",
            name = "NumShards",
            target_id = prelude.Integer.id,
        }),
        Shards = schema.new({
            id = id.from(_N, "ClusterConfiguration", "Shards"),
            type = "list",
            name = "Shards",
            target_id = prelude.Document.id,
            list_member = M.ShardDetail,
        }),
        MultiRegionParameterGroupName = schema.new({
            id = id.from(_N, "ClusterConfiguration", "MultiRegionParameterGroupName"),
            type = "string",
            name = "MultiRegionParameterGroupName",
            target_id = prelude.String.id,
        }),
        MultiRegionClusterName = schema.new({
            id = id.from(_N, "ClusterConfiguration", "MultiRegionClusterName"),
            type = "string",
            name = "MultiRegionClusterName",
            target_id = prelude.String.id,
        }),
    },
})

M.Snapshot = schema.new({
    id = id.from(_N, "Snapshot"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Snapshot", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Snapshot", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Source = schema.new({
            id = id.from(_N, "Snapshot", "Source"),
            type = "string",
            name = "Source",
            target_id = prelude.String.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "Snapshot", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        ARN = schema.new({
            id = id.from(_N, "Snapshot", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        ClusterConfiguration = schema.new({
            id = id.from(_N, "Snapshot", "ClusterConfiguration"),
            type = "structure",
            name = "ClusterConfiguration",
            target_id = id.from(_N, "ClusterConfiguration"),
            target = M.ClusterConfiguration,
        }),
        DataTiering = schema.new({
            id = id.from(_N, "Snapshot", "DataTiering"),
            type = "string",
            name = "DataTiering",
            target_id = prelude.String.id,
        }),
    },
})

M.CopySnapshotOutput = schema.new({
    id = id.from(_N, "CopySnapshotResponse"),
    type = "structure",
    members = {
        Snapshot = schema.new({
            id = id.from(_N, "CopySnapshotOutput", "Snapshot"),
            type = "structure",
            name = "Snapshot",
            target_id = id.from(_N, "Snapshot"),
            target = M.Snapshot,
        }),
    },
})

M.InvalidParameterCombinationException = schema.new({
    id = id.from(_N, "InvalidParameterCombinationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidParameterCombinationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidSnapshotStateFault = schema.new({
    id = id.from(_N, "InvalidSnapshotStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidSnapshotStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceLinkedRoleNotFoundFault = schema.new({
    id = id.from(_N, "ServiceLinkedRoleNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceLinkedRoleNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.SnapshotAlreadyExistsFault = schema.new({
    id = id.from(_N, "SnapshotAlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SnapshotAlreadyExistsFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.SnapshotNotFoundFault = schema.new({
    id = id.from(_N, "SnapshotNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SnapshotNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.SnapshotQuotaExceededFault = schema.new({
    id = id.from(_N, "SnapshotQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SnapshotQuotaExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.TagQuotaPerResourceExceeded = schema.new({
    id = id.from(_N, "TagQuotaPerResourceExceeded"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TagQuotaPerResourceExceeded", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateACLInput = schema.new({
    id = id.from(_N, "CreateACLRequest"),
    type = "structure",
    members = {
        ACLName = schema.new({
            id = id.from(_N, "CreateACLInput", "ACLName"),
            type = "string",
            name = "ACLName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserNames = schema.new({
            id = id.from(_N, "CreateACLInput", "UserNames"),
            type = "list",
            name = "UserNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateACLInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.CreateACLOutput = schema.new({
    id = id.from(_N, "CreateACLResponse"),
    type = "structure",
    members = {
        ACL = schema.new({
            id = id.from(_N, "CreateACLOutput", "ACL"),
            type = "structure",
            name = "ACL",
            target_id = id.from(_N, "ACL"),
            target = M.ACL,
        }),
    },
})

M.DefaultUserRequired = schema.new({
    id = id.from(_N, "DefaultUserRequired"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DefaultUserRequired", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DuplicateUserNameFault = schema.new({
    id = id.from(_N, "DuplicateUserNameFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DuplicateUserNameFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UserNotFoundFault = schema.new({
    id = id.from(_N, "UserNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "UserNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ClusterAlreadyExistsFault = schema.new({
    id = id.from(_N, "ClusterAlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ClusterAlreadyExistsFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ClusterQuotaForCustomerExceededFault = schema.new({
    id = id.from(_N, "ClusterQuotaForCustomerExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ClusterQuotaForCustomerExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateClusterInput = schema.new({
    id = id.from(_N, "CreateClusterRequest"),
    type = "structure",
    members = {
        ClusterName = schema.new({
            id = id.from(_N, "CreateClusterInput", "ClusterName"),
            type = "string",
            name = "ClusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NodeType = schema.new({
            id = id.from(_N, "CreateClusterInput", "NodeType"),
            type = "string",
            name = "NodeType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MultiRegionClusterName = schema.new({
            id = id.from(_N, "CreateClusterInput", "MultiRegionClusterName"),
            type = "string",
            name = "MultiRegionClusterName",
            target_id = prelude.String.id,
        }),
        ParameterGroupName = schema.new({
            id = id.from(_N, "CreateClusterInput", "ParameterGroupName"),
            type = "string",
            name = "ParameterGroupName",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateClusterInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        NumShards = schema.new({
            id = id.from(_N, "CreateClusterInput", "NumShards"),
            type = "integer",
            name = "NumShards",
            target_id = prelude.Integer.id,
        }),
        NumReplicasPerShard = schema.new({
            id = id.from(_N, "CreateClusterInput", "NumReplicasPerShard"),
            type = "integer",
            name = "NumReplicasPerShard",
            target_id = prelude.Integer.id,
        }),
        SubnetGroupName = schema.new({
            id = id.from(_N, "CreateClusterInput", "SubnetGroupName"),
            type = "string",
            name = "SubnetGroupName",
            target_id = prelude.String.id,
        }),
        SecurityGroupIds = schema.new({
            id = id.from(_N, "CreateClusterInput", "SecurityGroupIds"),
            type = "list",
            name = "SecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SecurityGroupId" } } }),
        }),
        MaintenanceWindow = schema.new({
            id = id.from(_N, "CreateClusterInput", "MaintenanceWindow"),
            type = "string",
            name = "MaintenanceWindow",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "CreateClusterInput", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        SnsTopicArn = schema.new({
            id = id.from(_N, "CreateClusterInput", "SnsTopicArn"),
            type = "string",
            name = "SnsTopicArn",
            target_id = prelude.String.id,
        }),
        TLSEnabled = schema.new({
            id = id.from(_N, "CreateClusterInput", "TLSEnabled"),
            type = "boolean",
            name = "TLSEnabled",
            target_id = prelude.Boolean.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "CreateClusterInput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        SnapshotArns = schema.new({
            id = id.from(_N, "CreateClusterInput", "SnapshotArns"),
            type = "list",
            name = "SnapshotArns",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SnapshotArn" } } }),
        }),
        SnapshotName = schema.new({
            id = id.from(_N, "CreateClusterInput", "SnapshotName"),
            type = "string",
            name = "SnapshotName",
            target_id = prelude.String.id,
        }),
        SnapshotRetentionLimit = schema.new({
            id = id.from(_N, "CreateClusterInput", "SnapshotRetentionLimit"),
            type = "integer",
            name = "SnapshotRetentionLimit",
            target_id = prelude.Integer.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateClusterInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
        SnapshotWindow = schema.new({
            id = id.from(_N, "CreateClusterInput", "SnapshotWindow"),
            type = "string",
            name = "SnapshotWindow",
            target_id = prelude.String.id,
        }),
        ACLName = schema.new({
            id = id.from(_N, "CreateClusterInput", "ACLName"),
            type = "string",
            name = "ACLName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Engine = schema.new({
            id = id.from(_N, "CreateClusterInput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "CreateClusterInput", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        AutoMinorVersionUpgrade = schema.new({
            id = id.from(_N, "CreateClusterInput", "AutoMinorVersionUpgrade"),
            type = "boolean",
            name = "AutoMinorVersionUpgrade",
            target_id = prelude.Boolean.id,
        }),
        DataTiering = schema.new({
            id = id.from(_N, "CreateClusterInput", "DataTiering"),
            type = "boolean",
            name = "DataTiering",
            target_id = prelude.Boolean.id,
        }),
        NetworkType = schema.new({
            id = id.from(_N, "CreateClusterInput", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
        IpDiscovery = schema.new({
            id = id.from(_N, "CreateClusterInput", "IpDiscovery"),
            type = "string",
            name = "IpDiscovery",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateClusterOutput = schema.new({
    id = id.from(_N, "CreateClusterResponse"),
    type = "structure",
    members = {
        Cluster = schema.new({
            id = id.from(_N, "CreateClusterOutput", "Cluster"),
            type = "structure",
            name = "Cluster",
            target_id = id.from(_N, "Cluster"),
            target = M.Cluster,
        }),
    },
})

M.InsufficientClusterCapacityFault = schema.new({
    id = id.from(_N, "InsufficientClusterCapacityFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InsufficientClusterCapacityFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidACLStateFault = schema.new({
    id = id.from(_N, "InvalidACLStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidACLStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidCredentialsException = schema.new({
    id = id.from(_N, "InvalidCredentialsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidCredentialsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidMultiRegionClusterStateFault = schema.new({
    id = id.from(_N, "InvalidMultiRegionClusterStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidMultiRegionClusterStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidVPCNetworkStateFault = schema.new({
    id = id.from(_N, "InvalidVPCNetworkStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidVPCNetworkStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.MultiRegionClusterNotFoundFault = schema.new({
    id = id.from(_N, "MultiRegionClusterNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "MultiRegionClusterNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.NodeQuotaForClusterExceededFault = schema.new({
    id = id.from(_N, "NodeQuotaForClusterExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NodeQuotaForClusterExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.NodeQuotaForCustomerExceededFault = schema.new({
    id = id.from(_N, "NodeQuotaForCustomerExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NodeQuotaForCustomerExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ParameterGroupNotFoundFault = schema.new({
    id = id.from(_N, "ParameterGroupNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ParameterGroupNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ShardsPerClusterQuotaExceededFault = schema.new({
    id = id.from(_N, "ShardsPerClusterQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ShardsPerClusterQuotaExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.SubnetGroupNotFoundFault = schema.new({
    id = id.from(_N, "SubnetGroupNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SubnetGroupNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateMultiRegionClusterInput = schema.new({
    id = id.from(_N, "CreateMultiRegionClusterRequest"),
    type = "structure",
    members = {
        MultiRegionClusterNameSuffix = schema.new({
            id = id.from(_N, "CreateMultiRegionClusterInput", "MultiRegionClusterNameSuffix"),
            type = "string",
            name = "MultiRegionClusterNameSuffix",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateMultiRegionClusterInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "CreateMultiRegionClusterInput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "CreateMultiRegionClusterInput", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        NodeType = schema.new({
            id = id.from(_N, "CreateMultiRegionClusterInput", "NodeType"),
            type = "string",
            name = "NodeType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MultiRegionParameterGroupName = schema.new({
            id = id.from(_N, "CreateMultiRegionClusterInput", "MultiRegionParameterGroupName"),
            type = "string",
            name = "MultiRegionParameterGroupName",
            target_id = prelude.String.id,
        }),
        NumShards = schema.new({
            id = id.from(_N, "CreateMultiRegionClusterInput", "NumShards"),
            type = "integer",
            name = "NumShards",
            target_id = prelude.Integer.id,
        }),
        TLSEnabled = schema.new({
            id = id.from(_N, "CreateMultiRegionClusterInput", "TLSEnabled"),
            type = "boolean",
            name = "TLSEnabled",
            target_id = prelude.Boolean.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateMultiRegionClusterInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.RegionalCluster = schema.new({
    id = id.from(_N, "RegionalCluster"),
    type = "structure",
    members = {
        ClusterName = schema.new({
            id = id.from(_N, "RegionalCluster", "ClusterName"),
            type = "string",
            name = "ClusterName",
            target_id = prelude.String.id,
        }),
        Region = schema.new({
            id = id.from(_N, "RegionalCluster", "Region"),
            type = "string",
            name = "Region",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "RegionalCluster", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        ARN = schema.new({
            id = id.from(_N, "RegionalCluster", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
    },
})

M.MultiRegionCluster = schema.new({
    id = id.from(_N, "MultiRegionCluster"),
    type = "structure",
    members = {
        MultiRegionClusterName = schema.new({
            id = id.from(_N, "MultiRegionCluster", "MultiRegionClusterName"),
            type = "string",
            name = "MultiRegionClusterName",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "MultiRegionCluster", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "MultiRegionCluster", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        NodeType = schema.new({
            id = id.from(_N, "MultiRegionCluster", "NodeType"),
            type = "string",
            name = "NodeType",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "MultiRegionCluster", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "MultiRegionCluster", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        NumberOfShards = schema.new({
            id = id.from(_N, "MultiRegionCluster", "NumberOfShards"),
            type = "integer",
            name = "NumberOfShards",
            target_id = prelude.Integer.id,
        }),
        Clusters = schema.new({
            id = id.from(_N, "MultiRegionCluster", "Clusters"),
            type = "list",
            name = "Clusters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.RegionalCluster, traits = { [traits.XML_NAME] = { name = "RegionalCluster" } } }),
        }),
        MultiRegionParameterGroupName = schema.new({
            id = id.from(_N, "MultiRegionCluster", "MultiRegionParameterGroupName"),
            type = "string",
            name = "MultiRegionParameterGroupName",
            target_id = prelude.String.id,
        }),
        TLSEnabled = schema.new({
            id = id.from(_N, "MultiRegionCluster", "TLSEnabled"),
            type = "boolean",
            name = "TLSEnabled",
            target_id = prelude.Boolean.id,
        }),
        ARN = schema.new({
            id = id.from(_N, "MultiRegionCluster", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateMultiRegionClusterOutput = schema.new({
    id = id.from(_N, "CreateMultiRegionClusterResponse"),
    type = "structure",
    members = {
        MultiRegionCluster = schema.new({
            id = id.from(_N, "CreateMultiRegionClusterOutput", "MultiRegionCluster"),
            type = "structure",
            name = "MultiRegionCluster",
            target_id = id.from(_N, "MultiRegionCluster"),
            target = M.MultiRegionCluster,
        }),
    },
})

M.MultiRegionClusterAlreadyExistsFault = schema.new({
    id = id.from(_N, "MultiRegionClusterAlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "MultiRegionClusterAlreadyExistsFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.MultiRegionParameterGroupNotFoundFault = schema.new({
    id = id.from(_N, "MultiRegionParameterGroupNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "MultiRegionParameterGroupNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateParameterGroupInput = schema.new({
    id = id.from(_N, "CreateParameterGroupRequest"),
    type = "structure",
    members = {
        ParameterGroupName = schema.new({
            id = id.from(_N, "CreateParameterGroupInput", "ParameterGroupName"),
            type = "string",
            name = "ParameterGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Family = schema.new({
            id = id.from(_N, "CreateParameterGroupInput", "Family"),
            type = "string",
            name = "Family",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateParameterGroupInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateParameterGroupInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.ParameterGroup = schema.new({
    id = id.from(_N, "ParameterGroup"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ParameterGroup", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Family = schema.new({
            id = id.from(_N, "ParameterGroup", "Family"),
            type = "string",
            name = "Family",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ParameterGroup", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        ARN = schema.new({
            id = id.from(_N, "ParameterGroup", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateParameterGroupOutput = schema.new({
    id = id.from(_N, "CreateParameterGroupResponse"),
    type = "structure",
    members = {
        ParameterGroup = schema.new({
            id = id.from(_N, "CreateParameterGroupOutput", "ParameterGroup"),
            type = "structure",
            name = "ParameterGroup",
            target_id = id.from(_N, "ParameterGroup"),
            target = M.ParameterGroup,
        }),
    },
})

M.InvalidParameterGroupStateFault = schema.new({
    id = id.from(_N, "InvalidParameterGroupStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidParameterGroupStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ParameterGroupAlreadyExistsFault = schema.new({
    id = id.from(_N, "ParameterGroupAlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ParameterGroupAlreadyExistsFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ParameterGroupQuotaExceededFault = schema.new({
    id = id.from(_N, "ParameterGroupQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ParameterGroupQuotaExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ClusterNotFoundFault = schema.new({
    id = id.from(_N, "ClusterNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ClusterNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSnapshotInput = schema.new({
    id = id.from(_N, "CreateSnapshotRequest"),
    type = "structure",
    members = {
        ClusterName = schema.new({
            id = id.from(_N, "CreateSnapshotInput", "ClusterName"),
            type = "string",
            name = "ClusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SnapshotName = schema.new({
            id = id.from(_N, "CreateSnapshotInput", "SnapshotName"),
            type = "string",
            name = "SnapshotName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "CreateSnapshotInput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateSnapshotInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.CreateSnapshotOutput = schema.new({
    id = id.from(_N, "CreateSnapshotResponse"),
    type = "structure",
    members = {
        Snapshot = schema.new({
            id = id.from(_N, "CreateSnapshotOutput", "Snapshot"),
            type = "structure",
            name = "Snapshot",
            target_id = id.from(_N, "Snapshot"),
            target = M.Snapshot,
        }),
    },
})

M.InvalidClusterStateFault = schema.new({
    id = id.from(_N, "InvalidClusterStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidClusterStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSubnetGroupInput = schema.new({
    id = id.from(_N, "CreateSubnetGroupRequest"),
    type = "structure",
    members = {
        SubnetGroupName = schema.new({
            id = id.from(_N, "CreateSubnetGroupInput", "SubnetGroupName"),
            type = "string",
            name = "SubnetGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateSubnetGroupInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        SubnetIds = schema.new({
            id = id.from(_N, "CreateSubnetGroupInput", "SubnetIds"),
            type = "list",
            name = "SubnetIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SubnetIdentifier" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateSubnetGroupInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.AvailabilityZone = schema.new({
    id = id.from(_N, "AvailabilityZone"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "AvailabilityZone", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.Subnet = schema.new({
    id = id.from(_N, "Subnet"),
    type = "structure",
    members = {
        Identifier = schema.new({
            id = id.from(_N, "Subnet", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
        }),
        AvailabilityZone = schema.new({
            id = id.from(_N, "Subnet", "AvailabilityZone"),
            type = "structure",
            name = "AvailabilityZone",
            target_id = id.from(_N, "AvailabilityZone"),
            target = M.AvailabilityZone,
        }),
        SupportedNetworkTypes = schema.new({
            id = id.from(_N, "Subnet", "SupportedNetworkTypes"),
            type = "list",
            name = "SupportedNetworkTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.SubnetGroup = schema.new({
    id = id.from(_N, "SubnetGroup"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "SubnetGroup", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "SubnetGroup", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        VpcId = schema.new({
            id = id.from(_N, "SubnetGroup", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
        Subnets = schema.new({
            id = id.from(_N, "SubnetGroup", "Subnets"),
            type = "list",
            name = "Subnets",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Subnet, traits = { [traits.XML_NAME] = { name = "Subnet" } } }),
        }),
        ARN = schema.new({
            id = id.from(_N, "SubnetGroup", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        SupportedNetworkTypes = schema.new({
            id = id.from(_N, "SubnetGroup", "SupportedNetworkTypes"),
            type = "list",
            name = "SupportedNetworkTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateSubnetGroupOutput = schema.new({
    id = id.from(_N, "CreateSubnetGroupResponse"),
    type = "structure",
    members = {
        SubnetGroup = schema.new({
            id = id.from(_N, "CreateSubnetGroupOutput", "SubnetGroup"),
            type = "structure",
            name = "SubnetGroup",
            target_id = id.from(_N, "SubnetGroup"),
            target = M.SubnetGroup,
        }),
    },
})

M.InvalidSubnet = schema.new({
    id = id.from(_N, "InvalidSubnet"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidSubnet", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.SubnetGroupAlreadyExistsFault = schema.new({
    id = id.from(_N, "SubnetGroupAlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SubnetGroupAlreadyExistsFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.SubnetGroupQuotaExceededFault = schema.new({
    id = id.from(_N, "SubnetGroupQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SubnetGroupQuotaExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.SubnetNotAllowedFault = schema.new({
    id = id.from(_N, "SubnetNotAllowedFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SubnetNotAllowedFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.SubnetQuotaExceededFault = schema.new({
    id = id.from(_N, "SubnetQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SubnetQuotaExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AuthenticationMode = schema.new({
    id = id.from(_N, "AuthenticationMode"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "AuthenticationMode", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Passwords = schema.new({
            id = id.from(_N, "AuthenticationMode", "Passwords"),
            type = "list",
            name = "Passwords",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateUserInput = schema.new({
    id = id.from(_N, "CreateUserRequest"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "CreateUserInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AuthenticationMode = schema.new({
            id = id.from(_N, "CreateUserInput", "AuthenticationMode"),
            type = "structure",
            name = "AuthenticationMode",
            target_id = id.from(_N, "AuthenticationMode"),
            target = M.AuthenticationMode,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccessString = schema.new({
            id = id.from(_N, "CreateUserInput", "AccessString"),
            type = "string",
            name = "AccessString",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateUserInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.Authentication = schema.new({
    id = id.from(_N, "Authentication"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "Authentication", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        PasswordCount = schema.new({
            id = id.from(_N, "Authentication", "PasswordCount"),
            type = "integer",
            name = "PasswordCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.User = schema.new({
    id = id.from(_N, "User"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "User", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "User", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        AccessString = schema.new({
            id = id.from(_N, "User", "AccessString"),
            type = "string",
            name = "AccessString",
            target_id = prelude.String.id,
        }),
        ACLNames = schema.new({
            id = id.from(_N, "User", "ACLNames"),
            type = "list",
            name = "ACLNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MinimumEngineVersion = schema.new({
            id = id.from(_N, "User", "MinimumEngineVersion"),
            type = "string",
            name = "MinimumEngineVersion",
            target_id = prelude.String.id,
        }),
        Authentication = schema.new({
            id = id.from(_N, "User", "Authentication"),
            type = "structure",
            name = "Authentication",
            target_id = id.from(_N, "Authentication"),
            target = M.Authentication,
        }),
        ARN = schema.new({
            id = id.from(_N, "User", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateUserOutput = schema.new({
    id = id.from(_N, "CreateUserResponse"),
    type = "structure",
    members = {
        User = schema.new({
            id = id.from(_N, "CreateUserOutput", "User"),
            type = "structure",
            name = "User",
            target_id = id.from(_N, "User"),
            target = M.User,
        }),
    },
})

M.UserAlreadyExistsFault = schema.new({
    id = id.from(_N, "UserAlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "UserAlreadyExistsFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UserQuotaExceededFault = schema.new({
    id = id.from(_N, "UserQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "UserQuotaExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteACLInput = schema.new({
    id = id.from(_N, "DeleteACLRequest"),
    type = "structure",
    members = {
        ACLName = schema.new({
            id = id.from(_N, "DeleteACLInput", "ACLName"),
            type = "string",
            name = "ACLName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteACLOutput = schema.new({
    id = id.from(_N, "DeleteACLResponse"),
    type = "structure",
    members = {
        ACL = schema.new({
            id = id.from(_N, "DeleteACLOutput", "ACL"),
            type = "structure",
            name = "ACL",
            target_id = id.from(_N, "ACL"),
            target = M.ACL,
        }),
    },
})

M.DeleteClusterInput = schema.new({
    id = id.from(_N, "DeleteClusterRequest"),
    type = "structure",
    members = {
        ClusterName = schema.new({
            id = id.from(_N, "DeleteClusterInput", "ClusterName"),
            type = "string",
            name = "ClusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MultiRegionClusterName = schema.new({
            id = id.from(_N, "DeleteClusterInput", "MultiRegionClusterName"),
            type = "string",
            name = "MultiRegionClusterName",
            target_id = prelude.String.id,
        }),
        FinalSnapshotName = schema.new({
            id = id.from(_N, "DeleteClusterInput", "FinalSnapshotName"),
            type = "string",
            name = "FinalSnapshotName",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteClusterOutput = schema.new({
    id = id.from(_N, "DeleteClusterResponse"),
    type = "structure",
    members = {
        Cluster = schema.new({
            id = id.from(_N, "DeleteClusterOutput", "Cluster"),
            type = "structure",
            name = "Cluster",
            target_id = id.from(_N, "Cluster"),
            target = M.Cluster,
        }),
    },
})

M.DeleteMultiRegionClusterInput = schema.new({
    id = id.from(_N, "DeleteMultiRegionClusterRequest"),
    type = "structure",
    members = {
        MultiRegionClusterName = schema.new({
            id = id.from(_N, "DeleteMultiRegionClusterInput", "MultiRegionClusterName"),
            type = "string",
            name = "MultiRegionClusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteMultiRegionClusterOutput = schema.new({
    id = id.from(_N, "DeleteMultiRegionClusterResponse"),
    type = "structure",
    members = {
        MultiRegionCluster = schema.new({
            id = id.from(_N, "DeleteMultiRegionClusterOutput", "MultiRegionCluster"),
            type = "structure",
            name = "MultiRegionCluster",
            target_id = id.from(_N, "MultiRegionCluster"),
            target = M.MultiRegionCluster,
        }),
    },
})

M.DeleteParameterGroupInput = schema.new({
    id = id.from(_N, "DeleteParameterGroupRequest"),
    type = "structure",
    members = {
        ParameterGroupName = schema.new({
            id = id.from(_N, "DeleteParameterGroupInput", "ParameterGroupName"),
            type = "string",
            name = "ParameterGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteParameterGroupOutput = schema.new({
    id = id.from(_N, "DeleteParameterGroupResponse"),
    type = "structure",
    members = {
        ParameterGroup = schema.new({
            id = id.from(_N, "DeleteParameterGroupOutput", "ParameterGroup"),
            type = "structure",
            name = "ParameterGroup",
            target_id = id.from(_N, "ParameterGroup"),
            target = M.ParameterGroup,
        }),
    },
})

M.DeleteSnapshotInput = schema.new({
    id = id.from(_N, "DeleteSnapshotRequest"),
    type = "structure",
    members = {
        SnapshotName = schema.new({
            id = id.from(_N, "DeleteSnapshotInput", "SnapshotName"),
            type = "string",
            name = "SnapshotName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteSnapshotOutput = schema.new({
    id = id.from(_N, "DeleteSnapshotResponse"),
    type = "structure",
    members = {
        Snapshot = schema.new({
            id = id.from(_N, "DeleteSnapshotOutput", "Snapshot"),
            type = "structure",
            name = "Snapshot",
            target_id = id.from(_N, "Snapshot"),
            target = M.Snapshot,
        }),
    },
})

M.DeleteSubnetGroupInput = schema.new({
    id = id.from(_N, "DeleteSubnetGroupRequest"),
    type = "structure",
    members = {
        SubnetGroupName = schema.new({
            id = id.from(_N, "DeleteSubnetGroupInput", "SubnetGroupName"),
            type = "string",
            name = "SubnetGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteSubnetGroupOutput = schema.new({
    id = id.from(_N, "DeleteSubnetGroupResponse"),
    type = "structure",
    members = {
        SubnetGroup = schema.new({
            id = id.from(_N, "DeleteSubnetGroupOutput", "SubnetGroup"),
            type = "structure",
            name = "SubnetGroup",
            target_id = id.from(_N, "SubnetGroup"),
            target = M.SubnetGroup,
        }),
    },
})

M.SubnetGroupInUseFault = schema.new({
    id = id.from(_N, "SubnetGroupInUseFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SubnetGroupInUseFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteUserInput = schema.new({
    id = id.from(_N, "DeleteUserRequest"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "DeleteUserInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteUserOutput = schema.new({
    id = id.from(_N, "DeleteUserResponse"),
    type = "structure",
    members = {
        User = schema.new({
            id = id.from(_N, "DeleteUserOutput", "User"),
            type = "structure",
            name = "User",
            target_id = id.from(_N, "User"),
            target = M.User,
        }),
    },
})

M.InvalidUserStateFault = schema.new({
    id = id.from(_N, "InvalidUserStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidUserStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeACLsInput = schema.new({
    id = id.from(_N, "DescribeACLsRequest"),
    type = "structure",
    members = {
        ACLName = schema.new({
            id = id.from(_N, "DescribeACLsInput", "ACLName"),
            type = "string",
            name = "ACLName",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeACLsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeACLsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeACLsOutput = schema.new({
    id = id.from(_N, "DescribeACLsResponse"),
    type = "structure",
    members = {
        ACLs = schema.new({
            id = id.from(_N, "DescribeACLsOutput", "ACLs"),
            type = "list",
            name = "ACLs",
            target_id = prelude.Document.id,
            list_member = M.ACL,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeACLsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeClustersInput = schema.new({
    id = id.from(_N, "DescribeClustersRequest"),
    type = "structure",
    members = {
        ClusterName = schema.new({
            id = id.from(_N, "DescribeClustersInput", "ClusterName"),
            type = "string",
            name = "ClusterName",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeClustersInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeClustersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        ShowShardDetails = schema.new({
            id = id.from(_N, "DescribeClustersInput", "ShowShardDetails"),
            type = "boolean",
            name = "ShowShardDetails",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DescribeClustersOutput = schema.new({
    id = id.from(_N, "DescribeClustersResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeClustersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Clusters = schema.new({
            id = id.from(_N, "DescribeClustersOutput", "Clusters"),
            type = "list",
            name = "Clusters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Cluster, traits = { [traits.XML_NAME] = { name = "Cluster" } } }),
        }),
    },
})

M.DescribeEngineVersionsInput = schema.new({
    id = id.from(_N, "DescribeEngineVersionsRequest"),
    type = "structure",
    members = {
        Engine = schema.new({
            id = id.from(_N, "DescribeEngineVersionsInput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "DescribeEngineVersionsInput", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        ParameterGroupFamily = schema.new({
            id = id.from(_N, "DescribeEngineVersionsInput", "ParameterGroupFamily"),
            type = "string",
            name = "ParameterGroupFamily",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeEngineVersionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeEngineVersionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        DefaultOnly = schema.new({
            id = id.from(_N, "DescribeEngineVersionsInput", "DefaultOnly"),
            type = "boolean",
            name = "DefaultOnly",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.EngineVersionInfo = schema.new({
    id = id.from(_N, "EngineVersionInfo"),
    type = "structure",
    members = {
        Engine = schema.new({
            id = id.from(_N, "EngineVersionInfo", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "EngineVersionInfo", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        EnginePatchVersion = schema.new({
            id = id.from(_N, "EngineVersionInfo", "EnginePatchVersion"),
            type = "string",
            name = "EnginePatchVersion",
            target_id = prelude.String.id,
        }),
        ParameterGroupFamily = schema.new({
            id = id.from(_N, "EngineVersionInfo", "ParameterGroupFamily"),
            type = "string",
            name = "ParameterGroupFamily",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeEngineVersionsOutput = schema.new({
    id = id.from(_N, "DescribeEngineVersionsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeEngineVersionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        EngineVersions = schema.new({
            id = id.from(_N, "DescribeEngineVersionsOutput", "EngineVersions"),
            type = "list",
            name = "EngineVersions",
            target_id = prelude.Document.id,
            list_member = M.EngineVersionInfo,
        }),
    },
})

M.DescribeEventsInput = schema.new({
    id = id.from(_N, "DescribeEventsRequest"),
    type = "structure",
    members = {
        SourceName = schema.new({
            id = id.from(_N, "DescribeEventsInput", "SourceName"),
            type = "string",
            name = "SourceName",
            target_id = prelude.String.id,
        }),
        SourceType = schema.new({
            id = id.from(_N, "DescribeEventsInput", "SourceType"),
            type = "string",
            name = "SourceType",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "DescribeEventsInput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "DescribeEventsInput", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        Duration = schema.new({
            id = id.from(_N, "DescribeEventsInput", "Duration"),
            type = "integer",
            name = "Duration",
            target_id = prelude.Integer.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeEventsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeEventsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.Event = schema.new({
    id = id.from(_N, "Event"),
    type = "structure",
    members = {
        SourceName = schema.new({
            id = id.from(_N, "Event", "SourceName"),
            type = "string",
            name = "SourceName",
            target_id = prelude.String.id,
        }),
        SourceType = schema.new({
            id = id.from(_N, "Event", "SourceType"),
            type = "string",
            name = "SourceType",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "Event", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        Date = schema.new({
            id = id.from(_N, "Event", "Date"),
            type = "timestamp",
            name = "Date",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeEventsOutput = schema.new({
    id = id.from(_N, "DescribeEventsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeEventsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Events = schema.new({
            id = id.from(_N, "DescribeEventsOutput", "Events"),
            type = "list",
            name = "Events",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Event, traits = { [traits.XML_NAME] = { name = "Event" } } }),
        }),
    },
})

M.DescribeMultiRegionClustersInput = schema.new({
    id = id.from(_N, "DescribeMultiRegionClustersRequest"),
    type = "structure",
    members = {
        MultiRegionClusterName = schema.new({
            id = id.from(_N, "DescribeMultiRegionClustersInput", "MultiRegionClusterName"),
            type = "string",
            name = "MultiRegionClusterName",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeMultiRegionClustersInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeMultiRegionClustersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        ShowClusterDetails = schema.new({
            id = id.from(_N, "DescribeMultiRegionClustersInput", "ShowClusterDetails"),
            type = "boolean",
            name = "ShowClusterDetails",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DescribeMultiRegionClustersOutput = schema.new({
    id = id.from(_N, "DescribeMultiRegionClustersResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeMultiRegionClustersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MultiRegionClusters = schema.new({
            id = id.from(_N, "DescribeMultiRegionClustersOutput", "MultiRegionClusters"),
            type = "list",
            name = "MultiRegionClusters",
            target_id = prelude.Document.id,
            list_member = M.MultiRegionCluster,
        }),
    },
})

M.DescribeMultiRegionParameterGroupsInput = schema.new({
    id = id.from(_N, "DescribeMultiRegionParameterGroupsRequest"),
    type = "structure",
    members = {
        MultiRegionParameterGroupName = schema.new({
            id = id.from(_N, "DescribeMultiRegionParameterGroupsInput", "MultiRegionParameterGroupName"),
            type = "string",
            name = "MultiRegionParameterGroupName",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeMultiRegionParameterGroupsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeMultiRegionParameterGroupsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.MultiRegionParameterGroup = schema.new({
    id = id.from(_N, "MultiRegionParameterGroup"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "MultiRegionParameterGroup", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Family = schema.new({
            id = id.from(_N, "MultiRegionParameterGroup", "Family"),
            type = "string",
            name = "Family",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "MultiRegionParameterGroup", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        ARN = schema.new({
            id = id.from(_N, "MultiRegionParameterGroup", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeMultiRegionParameterGroupsOutput = schema.new({
    id = id.from(_N, "DescribeMultiRegionParameterGroupsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeMultiRegionParameterGroupsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MultiRegionParameterGroups = schema.new({
            id = id.from(_N, "DescribeMultiRegionParameterGroupsOutput", "MultiRegionParameterGroups"),
            type = "list",
            name = "MultiRegionParameterGroups",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.MultiRegionParameterGroup, traits = { [traits.XML_NAME] = { name = "MultiRegionParameterGroup" } } }),
        }),
    },
})

M.DescribeMultiRegionParametersInput = schema.new({
    id = id.from(_N, "DescribeMultiRegionParametersRequest"),
    type = "structure",
    members = {
        MultiRegionParameterGroupName = schema.new({
            id = id.from(_N, "DescribeMultiRegionParametersInput", "MultiRegionParameterGroupName"),
            type = "string",
            name = "MultiRegionParameterGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Source = schema.new({
            id = id.from(_N, "DescribeMultiRegionParametersInput", "Source"),
            type = "string",
            name = "Source",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeMultiRegionParametersInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeMultiRegionParametersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.MultiRegionParameter = schema.new({
    id = id.from(_N, "MultiRegionParameter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "MultiRegionParameter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "MultiRegionParameter", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "MultiRegionParameter", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Source = schema.new({
            id = id.from(_N, "MultiRegionParameter", "Source"),
            type = "string",
            name = "Source",
            target_id = prelude.String.id,
        }),
        DataType = schema.new({
            id = id.from(_N, "MultiRegionParameter", "DataType"),
            type = "string",
            name = "DataType",
            target_id = prelude.String.id,
        }),
        AllowedValues = schema.new({
            id = id.from(_N, "MultiRegionParameter", "AllowedValues"),
            type = "string",
            name = "AllowedValues",
            target_id = prelude.String.id,
        }),
        MinimumEngineVersion = schema.new({
            id = id.from(_N, "MultiRegionParameter", "MinimumEngineVersion"),
            type = "string",
            name = "MinimumEngineVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeMultiRegionParametersOutput = schema.new({
    id = id.from(_N, "DescribeMultiRegionParametersResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeMultiRegionParametersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MultiRegionParameters = schema.new({
            id = id.from(_N, "DescribeMultiRegionParametersOutput", "MultiRegionParameters"),
            type = "list",
            name = "MultiRegionParameters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.MultiRegionParameter, traits = { [traits.XML_NAME] = { name = "MultiRegionParameter" } } }),
        }),
    },
})

M.DescribeParameterGroupsInput = schema.new({
    id = id.from(_N, "DescribeParameterGroupsRequest"),
    type = "structure",
    members = {
        ParameterGroupName = schema.new({
            id = id.from(_N, "DescribeParameterGroupsInput", "ParameterGroupName"),
            type = "string",
            name = "ParameterGroupName",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeParameterGroupsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeParameterGroupsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeParameterGroupsOutput = schema.new({
    id = id.from(_N, "DescribeParameterGroupsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeParameterGroupsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        ParameterGroups = schema.new({
            id = id.from(_N, "DescribeParameterGroupsOutput", "ParameterGroups"),
            type = "list",
            name = "ParameterGroups",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ParameterGroup, traits = { [traits.XML_NAME] = { name = "ParameterGroup" } } }),
        }),
    },
})

M.DescribeParametersInput = schema.new({
    id = id.from(_N, "DescribeParametersRequest"),
    type = "structure",
    members = {
        ParameterGroupName = schema.new({
            id = id.from(_N, "DescribeParametersInput", "ParameterGroupName"),
            type = "string",
            name = "ParameterGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeParametersInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeParametersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.Parameter = schema.new({
    id = id.from(_N, "Parameter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Parameter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "Parameter", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "Parameter", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DataType = schema.new({
            id = id.from(_N, "Parameter", "DataType"),
            type = "string",
            name = "DataType",
            target_id = prelude.String.id,
        }),
        AllowedValues = schema.new({
            id = id.from(_N, "Parameter", "AllowedValues"),
            type = "string",
            name = "AllowedValues",
            target_id = prelude.String.id,
        }),
        MinimumEngineVersion = schema.new({
            id = id.from(_N, "Parameter", "MinimumEngineVersion"),
            type = "string",
            name = "MinimumEngineVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeParametersOutput = schema.new({
    id = id.from(_N, "DescribeParametersResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeParametersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Parameters = schema.new({
            id = id.from(_N, "DescribeParametersOutput", "Parameters"),
            type = "list",
            name = "Parameters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Parameter, traits = { [traits.XML_NAME] = { name = "Parameter" } } }),
        }),
    },
})

M.DescribeReservedNodesInput = schema.new({
    id = id.from(_N, "DescribeReservedNodesRequest"),
    type = "structure",
    members = {
        ReservationId = schema.new({
            id = id.from(_N, "DescribeReservedNodesInput", "ReservationId"),
            type = "string",
            name = "ReservationId",
            target_id = prelude.String.id,
        }),
        ReservedNodesOfferingId = schema.new({
            id = id.from(_N, "DescribeReservedNodesInput", "ReservedNodesOfferingId"),
            type = "string",
            name = "ReservedNodesOfferingId",
            target_id = prelude.String.id,
        }),
        NodeType = schema.new({
            id = id.from(_N, "DescribeReservedNodesInput", "NodeType"),
            type = "string",
            name = "NodeType",
            target_id = prelude.String.id,
        }),
        Duration = schema.new({
            id = id.from(_N, "DescribeReservedNodesInput", "Duration"),
            type = "string",
            name = "Duration",
            target_id = prelude.String.id,
        }),
        OfferingType = schema.new({
            id = id.from(_N, "DescribeReservedNodesInput", "OfferingType"),
            type = "string",
            name = "OfferingType",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeReservedNodesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeReservedNodesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RecurringCharge = schema.new({
    id = id.from(_N, "RecurringCharge"),
    type = "structure",
    members = {
        RecurringChargeAmount = schema.new({
            id = id.from(_N, "RecurringCharge", "RecurringChargeAmount"),
            type = "double",
            name = "RecurringChargeAmount",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        RecurringChargeFrequency = schema.new({
            id = id.from(_N, "RecurringCharge", "RecurringChargeFrequency"),
            type = "string",
            name = "RecurringChargeFrequency",
            target_id = prelude.String.id,
        }),
    },
})

M.ReservedNode = schema.new({
    id = id.from(_N, "ReservedNode"),
    type = "structure",
    members = {
        ReservationId = schema.new({
            id = id.from(_N, "ReservedNode", "ReservationId"),
            type = "string",
            name = "ReservationId",
            target_id = prelude.String.id,
        }),
        ReservedNodesOfferingId = schema.new({
            id = id.from(_N, "ReservedNode", "ReservedNodesOfferingId"),
            type = "string",
            name = "ReservedNodesOfferingId",
            target_id = prelude.String.id,
        }),
        NodeType = schema.new({
            id = id.from(_N, "ReservedNode", "NodeType"),
            type = "string",
            name = "NodeType",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "ReservedNode", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        Duration = schema.new({
            id = id.from(_N, "ReservedNode", "Duration"),
            type = "integer",
            name = "Duration",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        FixedPrice = schema.new({
            id = id.from(_N, "ReservedNode", "FixedPrice"),
            type = "double",
            name = "FixedPrice",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        NodeCount = schema.new({
            id = id.from(_N, "ReservedNode", "NodeCount"),
            type = "integer",
            name = "NodeCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        OfferingType = schema.new({
            id = id.from(_N, "ReservedNode", "OfferingType"),
            type = "string",
            name = "OfferingType",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "ReservedNode", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        RecurringCharges = schema.new({
            id = id.from(_N, "ReservedNode", "RecurringCharges"),
            type = "list",
            name = "RecurringCharges",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.RecurringCharge, traits = { [traits.XML_NAME] = { name = "RecurringCharge" } } }),
        }),
        ARN = schema.new({
            id = id.from(_N, "ReservedNode", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeReservedNodesOutput = schema.new({
    id = id.from(_N, "DescribeReservedNodesResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeReservedNodesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        ReservedNodes = schema.new({
            id = id.from(_N, "DescribeReservedNodesOutput", "ReservedNodes"),
            type = "list",
            name = "ReservedNodes",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ReservedNode, traits = { [traits.XML_NAME] = { name = "ReservedNode" } } }),
        }),
    },
})

M.ReservedNodeNotFoundFault = schema.new({
    id = id.from(_N, "ReservedNodeNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ReservedNodeNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeReservedNodesOfferingsInput = schema.new({
    id = id.from(_N, "DescribeReservedNodesOfferingsRequest"),
    type = "structure",
    members = {
        ReservedNodesOfferingId = schema.new({
            id = id.from(_N, "DescribeReservedNodesOfferingsInput", "ReservedNodesOfferingId"),
            type = "string",
            name = "ReservedNodesOfferingId",
            target_id = prelude.String.id,
        }),
        NodeType = schema.new({
            id = id.from(_N, "DescribeReservedNodesOfferingsInput", "NodeType"),
            type = "string",
            name = "NodeType",
            target_id = prelude.String.id,
        }),
        Duration = schema.new({
            id = id.from(_N, "DescribeReservedNodesOfferingsInput", "Duration"),
            type = "string",
            name = "Duration",
            target_id = prelude.String.id,
        }),
        OfferingType = schema.new({
            id = id.from(_N, "DescribeReservedNodesOfferingsInput", "OfferingType"),
            type = "string",
            name = "OfferingType",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeReservedNodesOfferingsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeReservedNodesOfferingsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ReservedNodesOffering = schema.new({
    id = id.from(_N, "ReservedNodesOffering"),
    type = "structure",
    members = {
        ReservedNodesOfferingId = schema.new({
            id = id.from(_N, "ReservedNodesOffering", "ReservedNodesOfferingId"),
            type = "string",
            name = "ReservedNodesOfferingId",
            target_id = prelude.String.id,
        }),
        NodeType = schema.new({
            id = id.from(_N, "ReservedNodesOffering", "NodeType"),
            type = "string",
            name = "NodeType",
            target_id = prelude.String.id,
        }),
        Duration = schema.new({
            id = id.from(_N, "ReservedNodesOffering", "Duration"),
            type = "integer",
            name = "Duration",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        FixedPrice = schema.new({
            id = id.from(_N, "ReservedNodesOffering", "FixedPrice"),
            type = "double",
            name = "FixedPrice",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        OfferingType = schema.new({
            id = id.from(_N, "ReservedNodesOffering", "OfferingType"),
            type = "string",
            name = "OfferingType",
            target_id = prelude.String.id,
        }),
        RecurringCharges = schema.new({
            id = id.from(_N, "ReservedNodesOffering", "RecurringCharges"),
            type = "list",
            name = "RecurringCharges",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.RecurringCharge, traits = { [traits.XML_NAME] = { name = "RecurringCharge" } } }),
        }),
    },
})

M.DescribeReservedNodesOfferingsOutput = schema.new({
    id = id.from(_N, "DescribeReservedNodesOfferingsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeReservedNodesOfferingsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        ReservedNodesOfferings = schema.new({
            id = id.from(_N, "DescribeReservedNodesOfferingsOutput", "ReservedNodesOfferings"),
            type = "list",
            name = "ReservedNodesOfferings",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ReservedNodesOffering, traits = { [traits.XML_NAME] = { name = "ReservedNodesOffering" } } }),
        }),
    },
})

M.ReservedNodesOfferingNotFoundFault = schema.new({
    id = id.from(_N, "ReservedNodesOfferingNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ReservedNodesOfferingNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeServiceUpdatesInput = schema.new({
    id = id.from(_N, "DescribeServiceUpdatesRequest"),
    type = "structure",
    members = {
        ServiceUpdateName = schema.new({
            id = id.from(_N, "DescribeServiceUpdatesInput", "ServiceUpdateName"),
            type = "string",
            name = "ServiceUpdateName",
            target_id = prelude.String.id,
        }),
        ClusterNames = schema.new({
            id = id.from(_N, "DescribeServiceUpdatesInput", "ClusterNames"),
            type = "list",
            name = "ClusterNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Status = schema.new({
            id = id.from(_N, "DescribeServiceUpdatesInput", "Status"),
            type = "list",
            name = "Status",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeServiceUpdatesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeServiceUpdatesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceUpdate = schema.new({
    id = id.from(_N, "ServiceUpdate"),
    type = "structure",
    members = {
        ClusterName = schema.new({
            id = id.from(_N, "ServiceUpdate", "ClusterName"),
            type = "string",
            name = "ClusterName",
            target_id = prelude.String.id,
        }),
        ServiceUpdateName = schema.new({
            id = id.from(_N, "ServiceUpdate", "ServiceUpdateName"),
            type = "string",
            name = "ServiceUpdateName",
            target_id = prelude.String.id,
        }),
        ReleaseDate = schema.new({
            id = id.from(_N, "ServiceUpdate", "ReleaseDate"),
            type = "timestamp",
            name = "ReleaseDate",
            target_id = prelude.Timestamp.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ServiceUpdate", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ServiceUpdate", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "ServiceUpdate", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "ServiceUpdate", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        NodesUpdated = schema.new({
            id = id.from(_N, "ServiceUpdate", "NodesUpdated"),
            type = "string",
            name = "NodesUpdated",
            target_id = prelude.String.id,
        }),
        AutoUpdateStartDate = schema.new({
            id = id.from(_N, "ServiceUpdate", "AutoUpdateStartDate"),
            type = "timestamp",
            name = "AutoUpdateStartDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeServiceUpdatesOutput = schema.new({
    id = id.from(_N, "DescribeServiceUpdatesResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeServiceUpdatesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        ServiceUpdates = schema.new({
            id = id.from(_N, "DescribeServiceUpdatesOutput", "ServiceUpdates"),
            type = "list",
            name = "ServiceUpdates",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ServiceUpdate, traits = { [traits.XML_NAME] = { name = "ServiceUpdate" } } }),
        }),
    },
})

M.DescribeSnapshotsInput = schema.new({
    id = id.from(_N, "DescribeSnapshotsRequest"),
    type = "structure",
    members = {
        ClusterName = schema.new({
            id = id.from(_N, "DescribeSnapshotsInput", "ClusterName"),
            type = "string",
            name = "ClusterName",
            target_id = prelude.String.id,
        }),
        SnapshotName = schema.new({
            id = id.from(_N, "DescribeSnapshotsInput", "SnapshotName"),
            type = "string",
            name = "SnapshotName",
            target_id = prelude.String.id,
        }),
        Source = schema.new({
            id = id.from(_N, "DescribeSnapshotsInput", "Source"),
            type = "string",
            name = "Source",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeSnapshotsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeSnapshotsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        ShowDetail = schema.new({
            id = id.from(_N, "DescribeSnapshotsInput", "ShowDetail"),
            type = "boolean",
            name = "ShowDetail",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DescribeSnapshotsOutput = schema.new({
    id = id.from(_N, "DescribeSnapshotsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeSnapshotsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Snapshots = schema.new({
            id = id.from(_N, "DescribeSnapshotsOutput", "Snapshots"),
            type = "list",
            name = "Snapshots",
            target_id = prelude.Document.id,
            list_member = M.Snapshot,
        }),
    },
})

M.DescribeSubnetGroupsInput = schema.new({
    id = id.from(_N, "DescribeSubnetGroupsRequest"),
    type = "structure",
    members = {
        SubnetGroupName = schema.new({
            id = id.from(_N, "DescribeSubnetGroupsInput", "SubnetGroupName"),
            type = "string",
            name = "SubnetGroupName",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeSubnetGroupsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeSubnetGroupsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeSubnetGroupsOutput = schema.new({
    id = id.from(_N, "DescribeSubnetGroupsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeSubnetGroupsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        SubnetGroups = schema.new({
            id = id.from(_N, "DescribeSubnetGroupsOutput", "SubnetGroups"),
            type = "list",
            name = "SubnetGroups",
            target_id = prelude.Document.id,
            list_member = M.SubnetGroup,
        }),
    },
})

M.Filter = schema.new({
    id = id.from(_N, "Filter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Filter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "Filter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeUsersInput = schema.new({
    id = id.from(_N, "DescribeUsersRequest"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "DescribeUsersInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeUsersInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.Filter,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeUsersInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeUsersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeUsersOutput = schema.new({
    id = id.from(_N, "DescribeUsersResponse"),
    type = "structure",
    members = {
        Users = schema.new({
            id = id.from(_N, "DescribeUsersOutput", "Users"),
            type = "list",
            name = "Users",
            target_id = prelude.Document.id,
            list_member = M.User,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeUsersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.APICallRateForCustomerExceededFault = schema.new({
    id = id.from(_N, "APICallRateForCustomerExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "APICallRateForCustomerExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.FailoverShardInput = schema.new({
    id = id.from(_N, "FailoverShardRequest"),
    type = "structure",
    members = {
        ClusterName = schema.new({
            id = id.from(_N, "FailoverShardInput", "ClusterName"),
            type = "string",
            name = "ClusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ShardName = schema.new({
            id = id.from(_N, "FailoverShardInput", "ShardName"),
            type = "string",
            name = "ShardName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FailoverShardOutput = schema.new({
    id = id.from(_N, "FailoverShardResponse"),
    type = "structure",
    members = {
        Cluster = schema.new({
            id = id.from(_N, "FailoverShardOutput", "Cluster"),
            type = "structure",
            name = "Cluster",
            target_id = id.from(_N, "Cluster"),
            target = M.Cluster,
        }),
    },
})

M.InvalidKMSKeyFault = schema.new({
    id = id.from(_N, "InvalidKMSKeyFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidKMSKeyFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ShardNotFoundFault = schema.new({
    id = id.from(_N, "ShardNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ShardNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.TestFailoverNotAvailableFault = schema.new({
    id = id.from(_N, "TestFailoverNotAvailableFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TestFailoverNotAvailableFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAllowedMultiRegionClusterUpdatesInput = schema.new({
    id = id.from(_N, "ListAllowedMultiRegionClusterUpdatesRequest"),
    type = "structure",
    members = {
        MultiRegionClusterName = schema.new({
            id = id.from(_N, "ListAllowedMultiRegionClusterUpdatesInput", "MultiRegionClusterName"),
            type = "string",
            name = "MultiRegionClusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListAllowedMultiRegionClusterUpdatesOutput = schema.new({
    id = id.from(_N, "ListAllowedMultiRegionClusterUpdatesResponse"),
    type = "structure",
    members = {
        ScaleUpNodeTypes = schema.new({
            id = id.from(_N, "ListAllowedMultiRegionClusterUpdatesOutput", "ScaleUpNodeTypes"),
            type = "list",
            name = "ScaleUpNodeTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ScaleDownNodeTypes = schema.new({
            id = id.from(_N, "ListAllowedMultiRegionClusterUpdatesOutput", "ScaleDownNodeTypes"),
            type = "list",
            name = "ScaleDownNodeTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListAllowedNodeTypeUpdatesInput = schema.new({
    id = id.from(_N, "ListAllowedNodeTypeUpdatesRequest"),
    type = "structure",
    members = {
        ClusterName = schema.new({
            id = id.from(_N, "ListAllowedNodeTypeUpdatesInput", "ClusterName"),
            type = "string",
            name = "ClusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListAllowedNodeTypeUpdatesOutput = schema.new({
    id = id.from(_N, "ListAllowedNodeTypeUpdatesResponse"),
    type = "structure",
    members = {
        ScaleUpNodeTypes = schema.new({
            id = id.from(_N, "ListAllowedNodeTypeUpdatesOutput", "ScaleUpNodeTypes"),
            type = "list",
            name = "ScaleUpNodeTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ScaleDownNodeTypes = schema.new({
            id = id.from(_N, "ListAllowedNodeTypeUpdatesOutput", "ScaleDownNodeTypes"),
            type = "list",
            name = "ScaleDownNodeTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.InvalidARNFault = schema.new({
    id = id.from(_N, "InvalidARNFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidARNFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsInput = schema.new({
    id = id.from(_N, "ListTagsRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "ListTagsInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTagsOutput = schema.new({
    id = id.from(_N, "ListTagsResponse"),
    type = "structure",
    members = {
        TagList = schema.new({
            id = id.from(_N, "ListTagsOutput", "TagList"),
            type = "list",
            name = "TagList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.PurchaseReservedNodesOfferingInput = schema.new({
    id = id.from(_N, "PurchaseReservedNodesOfferingRequest"),
    type = "structure",
    members = {
        ReservedNodesOfferingId = schema.new({
            id = id.from(_N, "PurchaseReservedNodesOfferingInput", "ReservedNodesOfferingId"),
            type = "string",
            name = "ReservedNodesOfferingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReservationId = schema.new({
            id = id.from(_N, "PurchaseReservedNodesOfferingInput", "ReservationId"),
            type = "string",
            name = "ReservationId",
            target_id = prelude.String.id,
        }),
        NodeCount = schema.new({
            id = id.from(_N, "PurchaseReservedNodesOfferingInput", "NodeCount"),
            type = "integer",
            name = "NodeCount",
            target_id = prelude.Integer.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "PurchaseReservedNodesOfferingInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.PurchaseReservedNodesOfferingOutput = schema.new({
    id = id.from(_N, "PurchaseReservedNodesOfferingResponse"),
    type = "structure",
    members = {
        ReservedNode = schema.new({
            id = id.from(_N, "PurchaseReservedNodesOfferingOutput", "ReservedNode"),
            type = "structure",
            name = "ReservedNode",
            target_id = id.from(_N, "ReservedNode"),
            target = M.ReservedNode,
        }),
    },
})

M.ReservedNodeAlreadyExistsFault = schema.new({
    id = id.from(_N, "ReservedNodeAlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ReservedNodeAlreadyExistsFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ReservedNodeQuotaExceededFault = schema.new({
    id = id.from(_N, "ReservedNodeQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ReservedNodeQuotaExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResetParameterGroupInput = schema.new({
    id = id.from(_N, "ResetParameterGroupRequest"),
    type = "structure",
    members = {
        ParameterGroupName = schema.new({
            id = id.from(_N, "ResetParameterGroupInput", "ParameterGroupName"),
            type = "string",
            name = "ParameterGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AllParameters = schema.new({
            id = id.from(_N, "ResetParameterGroupInput", "AllParameters"),
            type = "boolean",
            name = "AllParameters",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        ParameterNames = schema.new({
            id = id.from(_N, "ResetParameterGroupInput", "ParameterNames"),
            type = "list",
            name = "ParameterNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ResetParameterGroupOutput = schema.new({
    id = id.from(_N, "ResetParameterGroupResponse"),
    type = "structure",
    members = {
        ParameterGroup = schema.new({
            id = id.from(_N, "ResetParameterGroupOutput", "ParameterGroup"),
            type = "structure",
            name = "ParameterGroup",
            target_id = id.from(_N, "ParameterGroup"),
            target = M.ParameterGroup,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceResponse"),
    type = "structure",
    members = {
        TagList = schema.new({
            id = id.from(_N, "TagResourceOutput", "TagList"),
            type = "list",
            name = "TagList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.TagNotFoundFault = schema.new({
    id = id.from(_N, "TagNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TagNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "TagKeys"),
            type = "list",
            name = "TagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceResponse"),
    type = "structure",
    members = {
        TagList = schema.new({
            id = id.from(_N, "UntagResourceOutput", "TagList"),
            type = "list",
            name = "TagList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.UpdateACLInput = schema.new({
    id = id.from(_N, "UpdateACLRequest"),
    type = "structure",
    members = {
        ACLName = schema.new({
            id = id.from(_N, "UpdateACLInput", "ACLName"),
            type = "string",
            name = "ACLName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserNamesToAdd = schema.new({
            id = id.from(_N, "UpdateACLInput", "UserNamesToAdd"),
            type = "list",
            name = "UserNamesToAdd",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        UserNamesToRemove = schema.new({
            id = id.from(_N, "UpdateACLInput", "UserNamesToRemove"),
            type = "list",
            name = "UserNamesToRemove",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateACLOutput = schema.new({
    id = id.from(_N, "UpdateACLResponse"),
    type = "structure",
    members = {
        ACL = schema.new({
            id = id.from(_N, "UpdateACLOutput", "ACL"),
            type = "structure",
            name = "ACL",
            target_id = id.from(_N, "ACL"),
            target = M.ACL,
        }),
    },
})

M.InvalidNodeStateFault = schema.new({
    id = id.from(_N, "InvalidNodeStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidNodeStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.NoOperationFault = schema.new({
    id = id.from(_N, "NoOperationFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NoOperationFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ReplicaConfigurationRequest = schema.new({
    id = id.from(_N, "ReplicaConfigurationRequest"),
    type = "structure",
    members = {
        ReplicaCount = schema.new({
            id = id.from(_N, "ReplicaConfigurationRequest", "ReplicaCount"),
            type = "integer",
            name = "ReplicaCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ShardConfigurationRequest = schema.new({
    id = id.from(_N, "ShardConfigurationRequest"),
    type = "structure",
    members = {
        ShardCount = schema.new({
            id = id.from(_N, "ShardConfigurationRequest", "ShardCount"),
            type = "integer",
            name = "ShardCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.UpdateClusterInput = schema.new({
    id = id.from(_N, "UpdateClusterRequest"),
    type = "structure",
    members = {
        ClusterName = schema.new({
            id = id.from(_N, "UpdateClusterInput", "ClusterName"),
            type = "string",
            name = "ClusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateClusterInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        SecurityGroupIds = schema.new({
            id = id.from(_N, "UpdateClusterInput", "SecurityGroupIds"),
            type = "list",
            name = "SecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SecurityGroupId" } } }),
        }),
        MaintenanceWindow = schema.new({
            id = id.from(_N, "UpdateClusterInput", "MaintenanceWindow"),
            type = "string",
            name = "MaintenanceWindow",
            target_id = prelude.String.id,
        }),
        SnsTopicArn = schema.new({
            id = id.from(_N, "UpdateClusterInput", "SnsTopicArn"),
            type = "string",
            name = "SnsTopicArn",
            target_id = prelude.String.id,
        }),
        SnsTopicStatus = schema.new({
            id = id.from(_N, "UpdateClusterInput", "SnsTopicStatus"),
            type = "string",
            name = "SnsTopicStatus",
            target_id = prelude.String.id,
        }),
        ParameterGroupName = schema.new({
            id = id.from(_N, "UpdateClusterInput", "ParameterGroupName"),
            type = "string",
            name = "ParameterGroupName",
            target_id = prelude.String.id,
        }),
        SnapshotWindow = schema.new({
            id = id.from(_N, "UpdateClusterInput", "SnapshotWindow"),
            type = "string",
            name = "SnapshotWindow",
            target_id = prelude.String.id,
        }),
        SnapshotRetentionLimit = schema.new({
            id = id.from(_N, "UpdateClusterInput", "SnapshotRetentionLimit"),
            type = "integer",
            name = "SnapshotRetentionLimit",
            target_id = prelude.Integer.id,
        }),
        NodeType = schema.new({
            id = id.from(_N, "UpdateClusterInput", "NodeType"),
            type = "string",
            name = "NodeType",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "UpdateClusterInput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "UpdateClusterInput", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        ReplicaConfiguration = schema.new({
            id = id.from(_N, "UpdateClusterInput", "ReplicaConfiguration"),
            type = "structure",
            name = "ReplicaConfiguration",
            target_id = id.from(_N, "ReplicaConfigurationRequest"),
            target = M.ReplicaConfigurationRequest,
        }),
        ShardConfiguration = schema.new({
            id = id.from(_N, "UpdateClusterInput", "ShardConfiguration"),
            type = "structure",
            name = "ShardConfiguration",
            target_id = id.from(_N, "ShardConfigurationRequest"),
            target = M.ShardConfigurationRequest,
        }),
        ACLName = schema.new({
            id = id.from(_N, "UpdateClusterInput", "ACLName"),
            type = "string",
            name = "ACLName",
            target_id = prelude.String.id,
        }),
        IpDiscovery = schema.new({
            id = id.from(_N, "UpdateClusterInput", "IpDiscovery"),
            type = "string",
            name = "IpDiscovery",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateClusterOutput = schema.new({
    id = id.from(_N, "UpdateClusterResponse"),
    type = "structure",
    members = {
        Cluster = schema.new({
            id = id.from(_N, "UpdateClusterOutput", "Cluster"),
            type = "structure",
            name = "Cluster",
            target_id = id.from(_N, "Cluster"),
            target = M.Cluster,
        }),
    },
})

M.UpdateMultiRegionClusterInput = schema.new({
    id = id.from(_N, "UpdateMultiRegionClusterRequest"),
    type = "structure",
    members = {
        MultiRegionClusterName = schema.new({
            id = id.from(_N, "UpdateMultiRegionClusterInput", "MultiRegionClusterName"),
            type = "string",
            name = "MultiRegionClusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NodeType = schema.new({
            id = id.from(_N, "UpdateMultiRegionClusterInput", "NodeType"),
            type = "string",
            name = "NodeType",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateMultiRegionClusterInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "UpdateMultiRegionClusterInput", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        ShardConfiguration = schema.new({
            id = id.from(_N, "UpdateMultiRegionClusterInput", "ShardConfiguration"),
            type = "structure",
            name = "ShardConfiguration",
            target_id = id.from(_N, "ShardConfigurationRequest"),
            target = M.ShardConfigurationRequest,
        }),
        MultiRegionParameterGroupName = schema.new({
            id = id.from(_N, "UpdateMultiRegionClusterInput", "MultiRegionParameterGroupName"),
            type = "string",
            name = "MultiRegionParameterGroupName",
            target_id = prelude.String.id,
        }),
        UpdateStrategy = schema.new({
            id = id.from(_N, "UpdateMultiRegionClusterInput", "UpdateStrategy"),
            type = "string",
            name = "UpdateStrategy",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateMultiRegionClusterOutput = schema.new({
    id = id.from(_N, "UpdateMultiRegionClusterResponse"),
    type = "structure",
    members = {
        MultiRegionCluster = schema.new({
            id = id.from(_N, "UpdateMultiRegionClusterOutput", "MultiRegionCluster"),
            type = "structure",
            name = "MultiRegionCluster",
            target_id = id.from(_N, "MultiRegionCluster"),
            target = M.MultiRegionCluster,
        }),
    },
})

M.ParameterNameValue = schema.new({
    id = id.from(_N, "ParameterNameValue"),
    type = "structure",
    members = {
        ParameterName = schema.new({
            id = id.from(_N, "ParameterNameValue", "ParameterName"),
            type = "string",
            name = "ParameterName",
            target_id = prelude.String.id,
        }),
        ParameterValue = schema.new({
            id = id.from(_N, "ParameterNameValue", "ParameterValue"),
            type = "string",
            name = "ParameterValue",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateParameterGroupInput = schema.new({
    id = id.from(_N, "UpdateParameterGroupRequest"),
    type = "structure",
    members = {
        ParameterGroupName = schema.new({
            id = id.from(_N, "UpdateParameterGroupInput", "ParameterGroupName"),
            type = "string",
            name = "ParameterGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ParameterNameValues = schema.new({
            id = id.from(_N, "UpdateParameterGroupInput", "ParameterNameValues"),
            type = "list",
            name = "ParameterNameValues",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ParameterNameValue, traits = { [traits.XML_NAME] = { name = "ParameterNameValue" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateParameterGroupOutput = schema.new({
    id = id.from(_N, "UpdateParameterGroupResponse"),
    type = "structure",
    members = {
        ParameterGroup = schema.new({
            id = id.from(_N, "UpdateParameterGroupOutput", "ParameterGroup"),
            type = "structure",
            name = "ParameterGroup",
            target_id = id.from(_N, "ParameterGroup"),
            target = M.ParameterGroup,
        }),
    },
})

M.SubnetInUse = schema.new({
    id = id.from(_N, "SubnetInUse"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SubnetInUse", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateSubnetGroupInput = schema.new({
    id = id.from(_N, "UpdateSubnetGroupRequest"),
    type = "structure",
    members = {
        SubnetGroupName = schema.new({
            id = id.from(_N, "UpdateSubnetGroupInput", "SubnetGroupName"),
            type = "string",
            name = "SubnetGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateSubnetGroupInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        SubnetIds = schema.new({
            id = id.from(_N, "UpdateSubnetGroupInput", "SubnetIds"),
            type = "list",
            name = "SubnetIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SubnetIdentifier" } } }),
        }),
    },
})

M.UpdateSubnetGroupOutput = schema.new({
    id = id.from(_N, "UpdateSubnetGroupResponse"),
    type = "structure",
    members = {
        SubnetGroup = schema.new({
            id = id.from(_N, "UpdateSubnetGroupOutput", "SubnetGroup"),
            type = "structure",
            name = "SubnetGroup",
            target_id = id.from(_N, "SubnetGroup"),
            target = M.SubnetGroup,
        }),
    },
})

M.UpdateUserInput = schema.new({
    id = id.from(_N, "UpdateUserRequest"),
    type = "structure",
    members = {
        UserName = schema.new({
            id = id.from(_N, "UpdateUserInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AuthenticationMode = schema.new({
            id = id.from(_N, "UpdateUserInput", "AuthenticationMode"),
            type = "structure",
            name = "AuthenticationMode",
            target_id = id.from(_N, "AuthenticationMode"),
            target = M.AuthenticationMode,
        }),
        AccessString = schema.new({
            id = id.from(_N, "UpdateUserInput", "AccessString"),
            type = "string",
            name = "AccessString",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateUserOutput = schema.new({
    id = id.from(_N, "UpdateUserResponse"),
    type = "structure",
    members = {
        User = schema.new({
            id = id.from(_N, "UpdateUserOutput", "User"),
            type = "structure",
            name = "User",
            target_id = id.from(_N, "User"),
            target = M.User,
        }),
    },
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
