local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.elasticache"

local M = {}

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.ReplicationGroupIdList = schema.new({ type = "list", list_member = prelude.String })

M.CacheClusterIdList = schema.new({ type = "list", list_member = prelude.String })

M.ProcessedUpdateActionList = schema.new({ type = "list", list_member = M.ProcessedUpdateAction })

M.UnprocessedUpdateActionList = schema.new({ type = "list", list_member = M.UnprocessedUpdateAction })

M.PreferredAvailabilityZoneList = schema.new({ type = "list", list_member = prelude.String })

M.CacheSecurityGroupNameList = schema.new({ type = "list", list_member = prelude.String })

M.SecurityGroupIdsList = schema.new({ type = "list", list_member = prelude.String })

M.SnapshotArnsList = schema.new({ type = "list", list_member = prelude.String })

M.PreferredOutpostArnList = schema.new({ type = "list", list_member = prelude.String })

M.LogDeliveryConfigurationRequestList = schema.new({ type = "list", list_member = M.LogDeliveryConfigurationRequest })

M.SubnetIdentifierList = schema.new({ type = "list", list_member = prelude.String })

M.AvailabilityZonesList = schema.new({ type = "list", list_member = prelude.String })

M.NodeGroupConfigurationList = schema.new({ type = "list", list_member = M.NodeGroupConfiguration })

M.UserGroupIdListInput = schema.new({ type = "list", list_member = prelude.String })

M.SubnetIdsList = schema.new({ type = "list", list_member = prelude.String })

M.PasswordListInput = schema.new({ type = "list", list_member = prelude.String })

M.UserGroupIdList = schema.new({ type = "list", list_member = prelude.String })

M.UserIdListInput = schema.new({ type = "list", list_member = prelude.String })

M.UserIdList = schema.new({ type = "list", list_member = prelude.String })

M.UGReplicationGroupIdList = schema.new({ type = "list", list_member = prelude.String })

M.UGServerlessCacheIdList = schema.new({ type = "list", list_member = prelude.String })

M.GlobalNodeGroupIdList = schema.new({ type = "list", list_member = prelude.String })

M.ReplicaConfigurationList = schema.new({ type = "list", list_member = M.ConfigureShard })

M.RemoveReplicasList = schema.new({ type = "list", list_member = prelude.String })

M.CacheClusterList = schema.new({ type = "list", list_member = M.CacheCluster })

M.CacheEngineVersionList = schema.new({ type = "list", list_member = M.CacheEngineVersion })

M.CacheParameterGroupList = schema.new({ type = "list", list_member = M.CacheParameterGroup })

M.ParametersList = schema.new({ type = "list", list_member = M.Parameter })

M.CacheNodeTypeSpecificParametersList = schema.new({ type = "list", list_member = M.CacheNodeTypeSpecificParameter })

M.CacheSecurityGroups = schema.new({ type = "list", list_member = M.CacheSecurityGroup })

M.CacheSubnetGroups = schema.new({ type = "list", list_member = M.CacheSubnetGroup })

M.EventList = schema.new({ type = "list", list_member = M.Event })

M.GlobalReplicationGroupList = schema.new({ type = "list", list_member = M.GlobalReplicationGroup })

M.ReplicationGroupList = schema.new({ type = "list", list_member = M.ReplicationGroup })

M.ReservedCacheNodeList = schema.new({ type = "list", list_member = M.ReservedCacheNode })

M.ReservedCacheNodesOfferingList = schema.new({ type = "list", list_member = M.ReservedCacheNodesOffering })

M.ServerlessCacheList = schema.new({ type = "list", list_member = M.ServerlessCache })

M.ServerlessCacheSnapshotList = schema.new({ type = "list", list_member = M.ServerlessCacheSnapshot })

M.ServiceUpdateStatusList = schema.new({ type = "list", list_member = prelude.String })

M.ServiceUpdateList = schema.new({ type = "list", list_member = M.ServiceUpdate })

M.SnapshotList = schema.new({ type = "list", list_member = M.Snapshot })

M.UpdateActionStatusList = schema.new({ type = "list", list_member = prelude.String })

M.UpdateActionList = schema.new({ type = "list", list_member = M.UpdateAction })

M.UserGroupList = schema.new({ type = "list", list_member = M.UserGroup })

M.FilterList = schema.new({ type = "list", list_member = M.Filter })

M.UserList = schema.new({ type = "list", list_member = M.User })

M.RegionalConfigurationList = schema.new({ type = "list", list_member = M.RegionalConfiguration })

M.NodeTypeList = schema.new({ type = "list", list_member = prelude.String })

M.CacheNodeIdsList = schema.new({ type = "list", list_member = prelude.String })

M.ParameterNameValueList = schema.new({ type = "list", list_member = M.ParameterNameValue })

M.ReshardingConfigurationList = schema.new({ type = "list", list_member = M.ReshardingConfiguration })

M.NodeGroupsToRemoveList = schema.new({ type = "list", list_member = prelude.String })

M.NodeGroupsToRetainList = schema.new({ type = "list", list_member = prelude.String })

M.KeyList = schema.new({ type = "list", list_member = prelude.String })

M.CustomerNodeEndpointList = schema.new({ type = "list", list_member = M.CustomerNodeEndpoint })

M.EC2SecurityGroupList = schema.new({ type = "list", list_member = M.EC2SecurityGroup })

M.ClusterIdList = schema.new({ type = "list", list_member = prelude.String })

M.NodeGroupList = schema.new({ type = "list", list_member = M.NodeGroup })

M.ReplicationGroupOutpostArnList = schema.new({ type = "list", list_member = prelude.String })

M.LogDeliveryConfigurationList = schema.new({ type = "list", list_member = M.LogDeliveryConfiguration })

M.NodeSnapshotList = schema.new({ type = "list", list_member = M.NodeSnapshot })

M.CacheSecurityGroupMembershipList = schema.new({ type = "list", list_member = M.CacheSecurityGroupMembership })

M.CacheNodeList = schema.new({ type = "list", list_member = M.CacheNode })

M.SecurityGroupMembershipList = schema.new({ type = "list", list_member = M.SecurityGroupMembership })

M.SubnetList = schema.new({ type = "list", list_member = M.Subnet })

M.NetworkTypeList = schema.new({ type = "list", list_member = prelude.String })

M.GlobalReplicationGroupMemberList = schema.new({ type = "list", list_member = M.GlobalReplicationGroupMember })

M.GlobalNodeGroupList = schema.new({ type = "list", list_member = M.GlobalNodeGroup })

M.RecurringChargeList = schema.new({ type = "list", list_member = M.RecurringCharge })

M.PendingLogDeliveryConfigurationList = schema.new({ type = "list", list_member = M.PendingLogDeliveryConfiguration })

M.OutpostArnsList = schema.new({ type = "list", list_member = prelude.String })

M.CacheNodeTypeSpecificValueList = schema.new({ type = "list", list_member = M.CacheNodeTypeSpecificValue })

M.NodeGroupUpdateStatusList = schema.new({ type = "list", list_member = M.NodeGroupUpdateStatus })

M.CacheNodeUpdateStatusList = schema.new({ type = "list", list_member = M.CacheNodeUpdateStatus })

M.FilterValueList = schema.new({ type = "list", list_member = prelude.String })

M.NodeGroupMemberList = schema.new({ type = "list", list_member = M.NodeGroupMember })

M.NodeGroupMemberUpdateStatusList = schema.new({ type = "list", list_member = M.NodeGroupMemberUpdateStatus })

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

M.AddTagsToResourceInput = schema.new({
    id = id.from(_N, "AddTagsToResourceMessage"),
    type = "structure",
    members = {
        ResourceName = schema.new({
            id = id.from(_N, "AddTagsToResourceInput", "ResourceName"),
            type = "string",
            name = "ResourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "AddTagsToResourceInput", "Tags"),
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

M.AddTagsToResourceOutput = schema.new({
    id = id.from(_N, "TagListMessage"),
    type = "structure",
    members = {
        TagList = schema.new({
            id = id.from(_N, "AddTagsToResourceOutput", "TagList"),
            type = "list",
            name = "TagList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.CacheClusterNotFoundFault = schema.new({
    id = id.from(_N, "CacheClusterNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CacheClusterNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CacheParameterGroupNotFoundFault = schema.new({
    id = id.from(_N, "CacheParameterGroupNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CacheParameterGroupNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CacheSecurityGroupNotFoundFault = schema.new({
    id = id.from(_N, "CacheSecurityGroupNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CacheSecurityGroupNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CacheSubnetGroupNotFoundFault = schema.new({
    id = id.from(_N, "CacheSubnetGroupNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CacheSubnetGroupNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
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

M.InvalidReplicationGroupStateFault = schema.new({
    id = id.from(_N, "InvalidReplicationGroupStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidReplicationGroupStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidServerlessCacheSnapshotStateFault = schema.new({
    id = id.from(_N, "InvalidServerlessCacheSnapshotStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidServerlessCacheSnapshotStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidServerlessCacheStateFault = schema.new({
    id = id.from(_N, "InvalidServerlessCacheStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidServerlessCacheStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ReplicationGroupNotFoundFault = schema.new({
    id = id.from(_N, "ReplicationGroupNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ReplicationGroupNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ReservedCacheNodeNotFoundFault = schema.new({
    id = id.from(_N, "ReservedCacheNodeNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ReservedCacheNodeNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServerlessCacheNotFoundFault = schema.new({
    id = id.from(_N, "ServerlessCacheNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServerlessCacheNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServerlessCacheSnapshotNotFoundFault = schema.new({
    id = id.from(_N, "ServerlessCacheSnapshotNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServerlessCacheSnapshotNotFoundFault", "message"),
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

M.UserGroupNotFoundFault = schema.new({
    id = id.from(_N, "UserGroupNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "UserGroupNotFoundFault", "message"),
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

M.AuthorizationAlreadyExistsFault = schema.new({
    id = id.from(_N, "AuthorizationAlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AuthorizationAlreadyExistsFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AuthorizeCacheSecurityGroupIngressInput = schema.new({
    id = id.from(_N, "AuthorizeCacheSecurityGroupIngressMessage"),
    type = "structure",
    members = {
        CacheSecurityGroupName = schema.new({
            id = id.from(_N, "AuthorizeCacheSecurityGroupIngressInput", "CacheSecurityGroupName"),
            type = "string",
            name = "CacheSecurityGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EC2SecurityGroupName = schema.new({
            id = id.from(_N, "AuthorizeCacheSecurityGroupIngressInput", "EC2SecurityGroupName"),
            type = "string",
            name = "EC2SecurityGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EC2SecurityGroupOwnerId = schema.new({
            id = id.from(_N, "AuthorizeCacheSecurityGroupIngressInput", "EC2SecurityGroupOwnerId"),
            type = "string",
            name = "EC2SecurityGroupOwnerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EC2SecurityGroup = schema.new({
    id = id.from(_N, "EC2SecurityGroup"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "EC2SecurityGroup", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        EC2SecurityGroupName = schema.new({
            id = id.from(_N, "EC2SecurityGroup", "EC2SecurityGroupName"),
            type = "string",
            name = "EC2SecurityGroupName",
            target_id = prelude.String.id,
        }),
        EC2SecurityGroupOwnerId = schema.new({
            id = id.from(_N, "EC2SecurityGroup", "EC2SecurityGroupOwnerId"),
            type = "string",
            name = "EC2SecurityGroupOwnerId",
            target_id = prelude.String.id,
        }),
    },
})

M.CacheSecurityGroup = schema.new({
    id = id.from(_N, "CacheSecurityGroup"),
    type = "structure",
    members = {
        OwnerId = schema.new({
            id = id.from(_N, "CacheSecurityGroup", "OwnerId"),
            type = "string",
            name = "OwnerId",
            target_id = prelude.String.id,
        }),
        CacheSecurityGroupName = schema.new({
            id = id.from(_N, "CacheSecurityGroup", "CacheSecurityGroupName"),
            type = "string",
            name = "CacheSecurityGroupName",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CacheSecurityGroup", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        EC2SecurityGroups = schema.new({
            id = id.from(_N, "CacheSecurityGroup", "EC2SecurityGroups"),
            type = "list",
            name = "EC2SecurityGroups",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.EC2SecurityGroup, traits = { [traits.XML_NAME] = { name = "EC2SecurityGroup" } } }),
        }),
        ARN = schema.new({
            id = id.from(_N, "CacheSecurityGroup", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
    },
})

M.AuthorizeCacheSecurityGroupIngressOutput = schema.new({
    id = id.from(_N, "AuthorizeCacheSecurityGroupIngressResult"),
    type = "structure",
    members = {
        CacheSecurityGroup = schema.new({
            id = id.from(_N, "AuthorizeCacheSecurityGroupIngressOutput", "CacheSecurityGroup"),
            type = "structure",
            name = "CacheSecurityGroup",
            target_id = id.from(_N, "CacheSecurityGroup"),
            target = M.CacheSecurityGroup,
        }),
    },
})

M.InvalidCacheSecurityGroupStateFault = schema.new({
    id = id.from(_N, "InvalidCacheSecurityGroupStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidCacheSecurityGroupStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
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

M.BatchApplyUpdateActionInput = schema.new({
    id = id.from(_N, "BatchApplyUpdateActionMessage"),
    type = "structure",
    members = {
        ReplicationGroupIds = schema.new({
            id = id.from(_N, "BatchApplyUpdateActionInput", "ReplicationGroupIds"),
            type = "list",
            name = "ReplicationGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CacheClusterIds = schema.new({
            id = id.from(_N, "BatchApplyUpdateActionInput", "CacheClusterIds"),
            type = "list",
            name = "CacheClusterIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ServiceUpdateName = schema.new({
            id = id.from(_N, "BatchApplyUpdateActionInput", "ServiceUpdateName"),
            type = "string",
            name = "ServiceUpdateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ProcessedUpdateAction = schema.new({
    id = id.from(_N, "ProcessedUpdateAction"),
    type = "structure",
    members = {
        ReplicationGroupId = schema.new({
            id = id.from(_N, "ProcessedUpdateAction", "ReplicationGroupId"),
            type = "string",
            name = "ReplicationGroupId",
            target_id = prelude.String.id,
        }),
        CacheClusterId = schema.new({
            id = id.from(_N, "ProcessedUpdateAction", "CacheClusterId"),
            type = "string",
            name = "CacheClusterId",
            target_id = prelude.String.id,
        }),
        ServiceUpdateName = schema.new({
            id = id.from(_N, "ProcessedUpdateAction", "ServiceUpdateName"),
            type = "string",
            name = "ServiceUpdateName",
            target_id = prelude.String.id,
        }),
        UpdateActionStatus = schema.new({
            id = id.from(_N, "ProcessedUpdateAction", "UpdateActionStatus"),
            type = "string",
            name = "UpdateActionStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.UnprocessedUpdateAction = schema.new({
    id = id.from(_N, "UnprocessedUpdateAction"),
    type = "structure",
    members = {
        ReplicationGroupId = schema.new({
            id = id.from(_N, "UnprocessedUpdateAction", "ReplicationGroupId"),
            type = "string",
            name = "ReplicationGroupId",
            target_id = prelude.String.id,
        }),
        CacheClusterId = schema.new({
            id = id.from(_N, "UnprocessedUpdateAction", "CacheClusterId"),
            type = "string",
            name = "CacheClusterId",
            target_id = prelude.String.id,
        }),
        ServiceUpdateName = schema.new({
            id = id.from(_N, "UnprocessedUpdateAction", "ServiceUpdateName"),
            type = "string",
            name = "ServiceUpdateName",
            target_id = prelude.String.id,
        }),
        ErrorType = schema.new({
            id = id.from(_N, "UnprocessedUpdateAction", "ErrorType"),
            type = "string",
            name = "ErrorType",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "UnprocessedUpdateAction", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchApplyUpdateActionOutput = schema.new({
    id = id.from(_N, "UpdateActionResultsMessage"),
    type = "structure",
    members = {
        ProcessedUpdateActions = schema.new({
            id = id.from(_N, "BatchApplyUpdateActionOutput", "ProcessedUpdateActions"),
            type = "list",
            name = "ProcessedUpdateActions",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ProcessedUpdateAction, traits = { [traits.XML_NAME] = { name = "ProcessedUpdateAction" } } }),
        }),
        UnprocessedUpdateActions = schema.new({
            id = id.from(_N, "BatchApplyUpdateActionOutput", "UnprocessedUpdateActions"),
            type = "list",
            name = "UnprocessedUpdateActions",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.UnprocessedUpdateAction, traits = { [traits.XML_NAME] = { name = "UnprocessedUpdateAction" } } }),
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

M.BatchStopUpdateActionInput = schema.new({
    id = id.from(_N, "BatchStopUpdateActionMessage"),
    type = "structure",
    members = {
        ReplicationGroupIds = schema.new({
            id = id.from(_N, "BatchStopUpdateActionInput", "ReplicationGroupIds"),
            type = "list",
            name = "ReplicationGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CacheClusterIds = schema.new({
            id = id.from(_N, "BatchStopUpdateActionInput", "CacheClusterIds"),
            type = "list",
            name = "CacheClusterIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ServiceUpdateName = schema.new({
            id = id.from(_N, "BatchStopUpdateActionInput", "ServiceUpdateName"),
            type = "string",
            name = "ServiceUpdateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchStopUpdateActionOutput = schema.new({
    id = id.from(_N, "UpdateActionResultsMessage"),
    type = "structure",
    members = {
        ProcessedUpdateActions = schema.new({
            id = id.from(_N, "BatchStopUpdateActionOutput", "ProcessedUpdateActions"),
            type = "list",
            name = "ProcessedUpdateActions",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ProcessedUpdateAction, traits = { [traits.XML_NAME] = { name = "ProcessedUpdateAction" } } }),
        }),
        UnprocessedUpdateActions = schema.new({
            id = id.from(_N, "BatchStopUpdateActionOutput", "UnprocessedUpdateActions"),
            type = "list",
            name = "UnprocessedUpdateActions",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.UnprocessedUpdateAction, traits = { [traits.XML_NAME] = { name = "UnprocessedUpdateAction" } } }),
        }),
    },
})

M.CompleteMigrationInput = schema.new({
    id = id.from(_N, "CompleteMigrationMessage"),
    type = "structure",
    members = {
        ReplicationGroupId = schema.new({
            id = id.from(_N, "CompleteMigrationInput", "ReplicationGroupId"),
            type = "string",
            name = "ReplicationGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Force = schema.new({
            id = id.from(_N, "CompleteMigrationInput", "Force"),
            type = "boolean",
            name = "Force",
            target_id = prelude.Boolean.id,
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
        }),
    },
})

M.GlobalReplicationGroupInfo = schema.new({
    id = id.from(_N, "GlobalReplicationGroupInfo"),
    type = "structure",
    members = {
        GlobalReplicationGroupId = schema.new({
            id = id.from(_N, "GlobalReplicationGroupInfo", "GlobalReplicationGroupId"),
            type = "string",
            name = "GlobalReplicationGroupId",
            target_id = prelude.String.id,
        }),
        GlobalReplicationGroupMemberRole = schema.new({
            id = id.from(_N, "GlobalReplicationGroupInfo", "GlobalReplicationGroupMemberRole"),
            type = "string",
            name = "GlobalReplicationGroupMemberRole",
            target_id = prelude.String.id,
        }),
    },
})

M.CloudWatchLogsDestinationDetails = schema.new({
    id = id.from(_N, "CloudWatchLogsDestinationDetails"),
    type = "structure",
    members = {
        LogGroup = schema.new({
            id = id.from(_N, "CloudWatchLogsDestinationDetails", "LogGroup"),
            type = "string",
            name = "LogGroup",
            target_id = prelude.String.id,
        }),
    },
})

M.KinesisFirehoseDestinationDetails = schema.new({
    id = id.from(_N, "KinesisFirehoseDestinationDetails"),
    type = "structure",
    members = {
        DeliveryStream = schema.new({
            id = id.from(_N, "KinesisFirehoseDestinationDetails", "DeliveryStream"),
            type = "string",
            name = "DeliveryStream",
            target_id = prelude.String.id,
        }),
    },
})

M.DestinationDetails = schema.new({
    id = id.from(_N, "DestinationDetails"),
    type = "structure",
    members = {
        CloudWatchLogsDetails = schema.new({
            id = id.from(_N, "DestinationDetails", "CloudWatchLogsDetails"),
            type = "structure",
            name = "CloudWatchLogsDetails",
            target_id = id.from(_N, "CloudWatchLogsDestinationDetails"),
            target = M.CloudWatchLogsDestinationDetails,
        }),
        KinesisFirehoseDetails = schema.new({
            id = id.from(_N, "DestinationDetails", "KinesisFirehoseDetails"),
            type = "structure",
            name = "KinesisFirehoseDetails",
            target_id = id.from(_N, "KinesisFirehoseDestinationDetails"),
            target = M.KinesisFirehoseDestinationDetails,
        }),
    },
})

M.LogDeliveryConfiguration = schema.new({
    id = id.from(_N, "LogDeliveryConfiguration"),
    type = "structure",
    members = {
        LogType = schema.new({
            id = id.from(_N, "LogDeliveryConfiguration", "LogType"),
            type = "string",
            name = "LogType",
            target_id = prelude.String.id,
        }),
        DestinationType = schema.new({
            id = id.from(_N, "LogDeliveryConfiguration", "DestinationType"),
            type = "string",
            name = "DestinationType",
            target_id = prelude.String.id,
        }),
        DestinationDetails = schema.new({
            id = id.from(_N, "LogDeliveryConfiguration", "DestinationDetails"),
            type = "structure",
            name = "DestinationDetails",
            target_id = id.from(_N, "DestinationDetails"),
            target = M.DestinationDetails,
        }),
        LogFormat = schema.new({
            id = id.from(_N, "LogDeliveryConfiguration", "LogFormat"),
            type = "string",
            name = "LogFormat",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "LogDeliveryConfiguration", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "LogDeliveryConfiguration", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.NodeGroupMember = schema.new({
    id = id.from(_N, "NodeGroupMember"),
    type = "structure",
    members = {
        CacheClusterId = schema.new({
            id = id.from(_N, "NodeGroupMember", "CacheClusterId"),
            type = "string",
            name = "CacheClusterId",
            target_id = prelude.String.id,
        }),
        CacheNodeId = schema.new({
            id = id.from(_N, "NodeGroupMember", "CacheNodeId"),
            type = "string",
            name = "CacheNodeId",
            target_id = prelude.String.id,
        }),
        ReadEndpoint = schema.new({
            id = id.from(_N, "NodeGroupMember", "ReadEndpoint"),
            type = "structure",
            name = "ReadEndpoint",
            target_id = id.from(_N, "Endpoint"),
            target = M.Endpoint,
        }),
        PreferredAvailabilityZone = schema.new({
            id = id.from(_N, "NodeGroupMember", "PreferredAvailabilityZone"),
            type = "string",
            name = "PreferredAvailabilityZone",
            target_id = prelude.String.id,
        }),
        PreferredOutpostArn = schema.new({
            id = id.from(_N, "NodeGroupMember", "PreferredOutpostArn"),
            type = "string",
            name = "PreferredOutpostArn",
            target_id = prelude.String.id,
        }),
        CurrentRole = schema.new({
            id = id.from(_N, "NodeGroupMember", "CurrentRole"),
            type = "string",
            name = "CurrentRole",
            target_id = prelude.String.id,
        }),
    },
})

M.NodeGroup = schema.new({
    id = id.from(_N, "NodeGroup"),
    type = "structure",
    members = {
        NodeGroupId = schema.new({
            id = id.from(_N, "NodeGroup", "NodeGroupId"),
            type = "string",
            name = "NodeGroupId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "NodeGroup", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        PrimaryEndpoint = schema.new({
            id = id.from(_N, "NodeGroup", "PrimaryEndpoint"),
            type = "structure",
            name = "PrimaryEndpoint",
            target_id = id.from(_N, "Endpoint"),
            target = M.Endpoint,
        }),
        ReaderEndpoint = schema.new({
            id = id.from(_N, "NodeGroup", "ReaderEndpoint"),
            type = "structure",
            name = "ReaderEndpoint",
            target_id = id.from(_N, "Endpoint"),
            target = M.Endpoint,
        }),
        Slots = schema.new({
            id = id.from(_N, "NodeGroup", "Slots"),
            type = "string",
            name = "Slots",
            target_id = prelude.String.id,
        }),
        NodeGroupMembers = schema.new({
            id = id.from(_N, "NodeGroup", "NodeGroupMembers"),
            type = "list",
            name = "NodeGroupMembers",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.NodeGroupMember, traits = { [traits.XML_NAME] = { name = "NodeGroupMember" } } }),
        }),
    },
})

M.PendingLogDeliveryConfiguration = schema.new({
    id = id.from(_N, "PendingLogDeliveryConfiguration"),
    type = "structure",
    members = {
        LogType = schema.new({
            id = id.from(_N, "PendingLogDeliveryConfiguration", "LogType"),
            type = "string",
            name = "LogType",
            target_id = prelude.String.id,
        }),
        DestinationType = schema.new({
            id = id.from(_N, "PendingLogDeliveryConfiguration", "DestinationType"),
            type = "string",
            name = "DestinationType",
            target_id = prelude.String.id,
        }),
        DestinationDetails = schema.new({
            id = id.from(_N, "PendingLogDeliveryConfiguration", "DestinationDetails"),
            type = "structure",
            name = "DestinationDetails",
            target_id = id.from(_N, "DestinationDetails"),
            target = M.DestinationDetails,
        }),
        LogFormat = schema.new({
            id = id.from(_N, "PendingLogDeliveryConfiguration", "LogFormat"),
            type = "string",
            name = "LogFormat",
            target_id = prelude.String.id,
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

M.UserGroupsUpdateStatus = schema.new({
    id = id.from(_N, "UserGroupsUpdateStatus"),
    type = "structure",
    members = {
        UserGroupIdsToAdd = schema.new({
            id = id.from(_N, "UserGroupsUpdateStatus", "UserGroupIdsToAdd"),
            type = "list",
            name = "UserGroupIdsToAdd",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        UserGroupIdsToRemove = schema.new({
            id = id.from(_N, "UserGroupsUpdateStatus", "UserGroupIdsToRemove"),
            type = "list",
            name = "UserGroupIdsToRemove",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ReplicationGroupPendingModifiedValues = schema.new({
    id = id.from(_N, "ReplicationGroupPendingModifiedValues"),
    type = "structure",
    members = {
        PrimaryClusterId = schema.new({
            id = id.from(_N, "ReplicationGroupPendingModifiedValues", "PrimaryClusterId"),
            type = "string",
            name = "PrimaryClusterId",
            target_id = prelude.String.id,
        }),
        AutomaticFailoverStatus = schema.new({
            id = id.from(_N, "ReplicationGroupPendingModifiedValues", "AutomaticFailoverStatus"),
            type = "string",
            name = "AutomaticFailoverStatus",
            target_id = prelude.String.id,
        }),
        Resharding = schema.new({
            id = id.from(_N, "ReplicationGroupPendingModifiedValues", "Resharding"),
            type = "structure",
            name = "Resharding",
            target_id = id.from(_N, "ReshardingStatus"),
            target = M.ReshardingStatus,
        }),
        AuthTokenStatus = schema.new({
            id = id.from(_N, "ReplicationGroupPendingModifiedValues", "AuthTokenStatus"),
            type = "string",
            name = "AuthTokenStatus",
            target_id = prelude.String.id,
        }),
        UserGroups = schema.new({
            id = id.from(_N, "ReplicationGroupPendingModifiedValues", "UserGroups"),
            type = "structure",
            name = "UserGroups",
            target_id = id.from(_N, "UserGroupsUpdateStatus"),
            target = M.UserGroupsUpdateStatus,
        }),
        LogDeliveryConfigurations = schema.new({
            id = id.from(_N, "ReplicationGroupPendingModifiedValues", "LogDeliveryConfigurations"),
            type = "list",
            name = "LogDeliveryConfigurations",
            target_id = prelude.Document.id,
            list_member = M.PendingLogDeliveryConfiguration,
        }),
        TransitEncryptionEnabled = schema.new({
            id = id.from(_N, "ReplicationGroupPendingModifiedValues", "TransitEncryptionEnabled"),
            type = "boolean",
            name = "TransitEncryptionEnabled",
            target_id = prelude.Boolean.id,
        }),
        TransitEncryptionMode = schema.new({
            id = id.from(_N, "ReplicationGroupPendingModifiedValues", "TransitEncryptionMode"),
            type = "string",
            name = "TransitEncryptionMode",
            target_id = prelude.String.id,
        }),
        ClusterMode = schema.new({
            id = id.from(_N, "ReplicationGroupPendingModifiedValues", "ClusterMode"),
            type = "string",
            name = "ClusterMode",
            target_id = prelude.String.id,
        }),
    },
})

M.ReplicationGroup = schema.new({
    id = id.from(_N, "ReplicationGroup"),
    type = "structure",
    members = {
        ReplicationGroupId = schema.new({
            id = id.from(_N, "ReplicationGroup", "ReplicationGroupId"),
            type = "string",
            name = "ReplicationGroupId",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ReplicationGroup", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        GlobalReplicationGroupInfo = schema.new({
            id = id.from(_N, "ReplicationGroup", "GlobalReplicationGroupInfo"),
            type = "structure",
            name = "GlobalReplicationGroupInfo",
            target_id = id.from(_N, "GlobalReplicationGroupInfo"),
            target = M.GlobalReplicationGroupInfo,
        }),
        Status = schema.new({
            id = id.from(_N, "ReplicationGroup", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        PendingModifiedValues = schema.new({
            id = id.from(_N, "ReplicationGroup", "PendingModifiedValues"),
            type = "structure",
            name = "PendingModifiedValues",
            target_id = id.from(_N, "ReplicationGroupPendingModifiedValues"),
            target = M.ReplicationGroupPendingModifiedValues,
        }),
        MemberClusters = schema.new({
            id = id.from(_N, "ReplicationGroup", "MemberClusters"),
            type = "list",
            name = "MemberClusters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "ClusterId" } } }),
        }),
        NodeGroups = schema.new({
            id = id.from(_N, "ReplicationGroup", "NodeGroups"),
            type = "list",
            name = "NodeGroups",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.NodeGroup, traits = { [traits.XML_NAME] = { name = "NodeGroup" } } }),
        }),
        SnapshottingClusterId = schema.new({
            id = id.from(_N, "ReplicationGroup", "SnapshottingClusterId"),
            type = "string",
            name = "SnapshottingClusterId",
            target_id = prelude.String.id,
        }),
        AutomaticFailover = schema.new({
            id = id.from(_N, "ReplicationGroup", "AutomaticFailover"),
            type = "string",
            name = "AutomaticFailover",
            target_id = prelude.String.id,
        }),
        MultiAZ = schema.new({
            id = id.from(_N, "ReplicationGroup", "MultiAZ"),
            type = "string",
            name = "MultiAZ",
            target_id = prelude.String.id,
        }),
        ConfigurationEndpoint = schema.new({
            id = id.from(_N, "ReplicationGroup", "ConfigurationEndpoint"),
            type = "structure",
            name = "ConfigurationEndpoint",
            target_id = id.from(_N, "Endpoint"),
            target = M.Endpoint,
        }),
        SnapshotRetentionLimit = schema.new({
            id = id.from(_N, "ReplicationGroup", "SnapshotRetentionLimit"),
            type = "integer",
            name = "SnapshotRetentionLimit",
            target_id = prelude.Integer.id,
        }),
        SnapshotWindow = schema.new({
            id = id.from(_N, "ReplicationGroup", "SnapshotWindow"),
            type = "string",
            name = "SnapshotWindow",
            target_id = prelude.String.id,
        }),
        ClusterEnabled = schema.new({
            id = id.from(_N, "ReplicationGroup", "ClusterEnabled"),
            type = "boolean",
            name = "ClusterEnabled",
            target_id = prelude.Boolean.id,
        }),
        CacheNodeType = schema.new({
            id = id.from(_N, "ReplicationGroup", "CacheNodeType"),
            type = "string",
            name = "CacheNodeType",
            target_id = prelude.String.id,
        }),
        AuthTokenEnabled = schema.new({
            id = id.from(_N, "ReplicationGroup", "AuthTokenEnabled"),
            type = "boolean",
            name = "AuthTokenEnabled",
            target_id = prelude.Boolean.id,
        }),
        AuthTokenLastModifiedDate = schema.new({
            id = id.from(_N, "ReplicationGroup", "AuthTokenLastModifiedDate"),
            type = "timestamp",
            name = "AuthTokenLastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        TransitEncryptionEnabled = schema.new({
            id = id.from(_N, "ReplicationGroup", "TransitEncryptionEnabled"),
            type = "boolean",
            name = "TransitEncryptionEnabled",
            target_id = prelude.Boolean.id,
        }),
        AtRestEncryptionEnabled = schema.new({
            id = id.from(_N, "ReplicationGroup", "AtRestEncryptionEnabled"),
            type = "boolean",
            name = "AtRestEncryptionEnabled",
            target_id = prelude.Boolean.id,
        }),
        MemberClustersOutpostArns = schema.new({
            id = id.from(_N, "ReplicationGroup", "MemberClustersOutpostArns"),
            type = "list",
            name = "MemberClustersOutpostArns",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "ReplicationGroupOutpostArn" } } }),
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "ReplicationGroup", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        ARN = schema.new({
            id = id.from(_N, "ReplicationGroup", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        UserGroupIds = schema.new({
            id = id.from(_N, "ReplicationGroup", "UserGroupIds"),
            type = "list",
            name = "UserGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        LogDeliveryConfigurations = schema.new({
            id = id.from(_N, "ReplicationGroup", "LogDeliveryConfigurations"),
            type = "list",
            name = "LogDeliveryConfigurations",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.LogDeliveryConfiguration, traits = { [traits.XML_NAME] = { name = "LogDeliveryConfiguration" } } }),
        }),
        ReplicationGroupCreateTime = schema.new({
            id = id.from(_N, "ReplicationGroup", "ReplicationGroupCreateTime"),
            type = "timestamp",
            name = "ReplicationGroupCreateTime",
            target_id = prelude.Timestamp.id,
        }),
        DataTiering = schema.new({
            id = id.from(_N, "ReplicationGroup", "DataTiering"),
            type = "string",
            name = "DataTiering",
            target_id = prelude.String.id,
        }),
        AutoMinorVersionUpgrade = schema.new({
            id = id.from(_N, "ReplicationGroup", "AutoMinorVersionUpgrade"),
            type = "boolean",
            name = "AutoMinorVersionUpgrade",
            target_id = prelude.Boolean.id,
        }),
        NetworkType = schema.new({
            id = id.from(_N, "ReplicationGroup", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
        IpDiscovery = schema.new({
            id = id.from(_N, "ReplicationGroup", "IpDiscovery"),
            type = "string",
            name = "IpDiscovery",
            target_id = prelude.String.id,
        }),
        TransitEncryptionMode = schema.new({
            id = id.from(_N, "ReplicationGroup", "TransitEncryptionMode"),
            type = "string",
            name = "TransitEncryptionMode",
            target_id = prelude.String.id,
        }),
        ClusterMode = schema.new({
            id = id.from(_N, "ReplicationGroup", "ClusterMode"),
            type = "string",
            name = "ClusterMode",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "ReplicationGroup", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
    },
})

M.CompleteMigrationOutput = schema.new({
    id = id.from(_N, "CompleteMigrationResponse"),
    type = "structure",
    members = {
        ReplicationGroup = schema.new({
            id = id.from(_N, "CompleteMigrationOutput", "ReplicationGroup"),
            type = "structure",
            name = "ReplicationGroup",
            target_id = id.from(_N, "ReplicationGroup"),
            target = M.ReplicationGroup,
        }),
    },
})

M.ReplicationGroupNotUnderMigrationFault = schema.new({
    id = id.from(_N, "ReplicationGroupNotUnderMigrationFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ReplicationGroupNotUnderMigrationFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CopyServerlessCacheSnapshotInput = schema.new({
    id = id.from(_N, "CopyServerlessCacheSnapshotRequest"),
    type = "structure",
    members = {
        SourceServerlessCacheSnapshotName = schema.new({
            id = id.from(_N, "CopyServerlessCacheSnapshotInput", "SourceServerlessCacheSnapshotName"),
            type = "string",
            name = "SourceServerlessCacheSnapshotName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetServerlessCacheSnapshotName = schema.new({
            id = id.from(_N, "CopyServerlessCacheSnapshotInput", "TargetServerlessCacheSnapshotName"),
            type = "string",
            name = "TargetServerlessCacheSnapshotName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "CopyServerlessCacheSnapshotInput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CopyServerlessCacheSnapshotInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.ServerlessCacheConfiguration = schema.new({
    id = id.from(_N, "ServerlessCacheConfiguration"),
    type = "structure",
    members = {
        ServerlessCacheName = schema.new({
            id = id.from(_N, "ServerlessCacheConfiguration", "ServerlessCacheName"),
            type = "string",
            name = "ServerlessCacheName",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "ServerlessCacheConfiguration", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        MajorEngineVersion = schema.new({
            id = id.from(_N, "ServerlessCacheConfiguration", "MajorEngineVersion"),
            type = "string",
            name = "MajorEngineVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.ServerlessCacheSnapshot = schema.new({
    id = id.from(_N, "ServerlessCacheSnapshot"),
    type = "structure",
    members = {
        ServerlessCacheSnapshotName = schema.new({
            id = id.from(_N, "ServerlessCacheSnapshot", "ServerlessCacheSnapshotName"),
            type = "string",
            name = "ServerlessCacheSnapshotName",
            target_id = prelude.String.id,
        }),
        ARN = schema.new({
            id = id.from(_N, "ServerlessCacheSnapshot", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "ServerlessCacheSnapshot", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        SnapshotType = schema.new({
            id = id.from(_N, "ServerlessCacheSnapshot", "SnapshotType"),
            type = "string",
            name = "SnapshotType",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ServerlessCacheSnapshot", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        CreateTime = schema.new({
            id = id.from(_N, "ServerlessCacheSnapshot", "CreateTime"),
            type = "timestamp",
            name = "CreateTime",
            target_id = prelude.Timestamp.id,
        }),
        ExpiryTime = schema.new({
            id = id.from(_N, "ServerlessCacheSnapshot", "ExpiryTime"),
            type = "timestamp",
            name = "ExpiryTime",
            target_id = prelude.Timestamp.id,
        }),
        BytesUsedForCache = schema.new({
            id = id.from(_N, "ServerlessCacheSnapshot", "BytesUsedForCache"),
            type = "string",
            name = "BytesUsedForCache",
            target_id = prelude.String.id,
        }),
        ServerlessCacheConfiguration = schema.new({
            id = id.from(_N, "ServerlessCacheSnapshot", "ServerlessCacheConfiguration"),
            type = "structure",
            name = "ServerlessCacheConfiguration",
            target_id = id.from(_N, "ServerlessCacheConfiguration"),
            target = M.ServerlessCacheConfiguration,
        }),
    },
})

M.CopyServerlessCacheSnapshotOutput = schema.new({
    id = id.from(_N, "CopyServerlessCacheSnapshotResponse"),
    type = "structure",
    members = {
        ServerlessCacheSnapshot = schema.new({
            id = id.from(_N, "CopyServerlessCacheSnapshotOutput", "ServerlessCacheSnapshot"),
            type = "structure",
            name = "ServerlessCacheSnapshot",
            target_id = id.from(_N, "ServerlessCacheSnapshot"),
            target = M.ServerlessCacheSnapshot,
        }),
    },
})

M.ServerlessCacheSnapshotAlreadyExistsFault = schema.new({
    id = id.from(_N, "ServerlessCacheSnapshotAlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServerlessCacheSnapshotAlreadyExistsFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServerlessCacheSnapshotQuotaExceededFault = schema.new({
    id = id.from(_N, "ServerlessCacheSnapshotQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServerlessCacheSnapshotQuotaExceededFault", "message"),
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

M.CopySnapshotInput = schema.new({
    id = id.from(_N, "CopySnapshotMessage"),
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

M.NodeGroupConfiguration = schema.new({
    id = id.from(_N, "NodeGroupConfiguration"),
    type = "structure",
    members = {
        NodeGroupId = schema.new({
            id = id.from(_N, "NodeGroupConfiguration", "NodeGroupId"),
            type = "string",
            name = "NodeGroupId",
            target_id = prelude.String.id,
        }),
        Slots = schema.new({
            id = id.from(_N, "NodeGroupConfiguration", "Slots"),
            type = "string",
            name = "Slots",
            target_id = prelude.String.id,
        }),
        ReplicaCount = schema.new({
            id = id.from(_N, "NodeGroupConfiguration", "ReplicaCount"),
            type = "integer",
            name = "ReplicaCount",
            target_id = prelude.Integer.id,
        }),
        PrimaryAvailabilityZone = schema.new({
            id = id.from(_N, "NodeGroupConfiguration", "PrimaryAvailabilityZone"),
            type = "string",
            name = "PrimaryAvailabilityZone",
            target_id = prelude.String.id,
        }),
        ReplicaAvailabilityZones = schema.new({
            id = id.from(_N, "NodeGroupConfiguration", "ReplicaAvailabilityZones"),
            type = "list",
            name = "ReplicaAvailabilityZones",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "AvailabilityZone" } } }),
        }),
        PrimaryOutpostArn = schema.new({
            id = id.from(_N, "NodeGroupConfiguration", "PrimaryOutpostArn"),
            type = "string",
            name = "PrimaryOutpostArn",
            target_id = prelude.String.id,
        }),
        ReplicaOutpostArns = schema.new({
            id = id.from(_N, "NodeGroupConfiguration", "ReplicaOutpostArns"),
            type = "list",
            name = "ReplicaOutpostArns",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "OutpostArn" } } }),
        }),
    },
})

M.NodeSnapshot = schema.new({
    id = id.from(_N, "NodeSnapshot"),
    type = "structure",
    members = {
        CacheClusterId = schema.new({
            id = id.from(_N, "NodeSnapshot", "CacheClusterId"),
            type = "string",
            name = "CacheClusterId",
            target_id = prelude.String.id,
        }),
        NodeGroupId = schema.new({
            id = id.from(_N, "NodeSnapshot", "NodeGroupId"),
            type = "string",
            name = "NodeGroupId",
            target_id = prelude.String.id,
        }),
        CacheNodeId = schema.new({
            id = id.from(_N, "NodeSnapshot", "CacheNodeId"),
            type = "string",
            name = "CacheNodeId",
            target_id = prelude.String.id,
        }),
        NodeGroupConfiguration = schema.new({
            id = id.from(_N, "NodeSnapshot", "NodeGroupConfiguration"),
            type = "structure",
            name = "NodeGroupConfiguration",
            target_id = id.from(_N, "NodeGroupConfiguration"),
            target = M.NodeGroupConfiguration,
        }),
        CacheSize = schema.new({
            id = id.from(_N, "NodeSnapshot", "CacheSize"),
            type = "string",
            name = "CacheSize",
            target_id = prelude.String.id,
        }),
        CacheNodeCreateTime = schema.new({
            id = id.from(_N, "NodeSnapshot", "CacheNodeCreateTime"),
            type = "timestamp",
            name = "CacheNodeCreateTime",
            target_id = prelude.Timestamp.id,
        }),
        SnapshotCreateTime = schema.new({
            id = id.from(_N, "NodeSnapshot", "SnapshotCreateTime"),
            type = "timestamp",
            name = "SnapshotCreateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.Snapshot = schema.new({
    id = id.from(_N, "Snapshot"),
    type = "structure",
    members = {
        SnapshotName = schema.new({
            id = id.from(_N, "Snapshot", "SnapshotName"),
            type = "string",
            name = "SnapshotName",
            target_id = prelude.String.id,
        }),
        ReplicationGroupId = schema.new({
            id = id.from(_N, "Snapshot", "ReplicationGroupId"),
            type = "string",
            name = "ReplicationGroupId",
            target_id = prelude.String.id,
        }),
        ReplicationGroupDescription = schema.new({
            id = id.from(_N, "Snapshot", "ReplicationGroupDescription"),
            type = "string",
            name = "ReplicationGroupDescription",
            target_id = prelude.String.id,
        }),
        CacheClusterId = schema.new({
            id = id.from(_N, "Snapshot", "CacheClusterId"),
            type = "string",
            name = "CacheClusterId",
            target_id = prelude.String.id,
        }),
        SnapshotStatus = schema.new({
            id = id.from(_N, "Snapshot", "SnapshotStatus"),
            type = "string",
            name = "SnapshotStatus",
            target_id = prelude.String.id,
        }),
        SnapshotSource = schema.new({
            id = id.from(_N, "Snapshot", "SnapshotSource"),
            type = "string",
            name = "SnapshotSource",
            target_id = prelude.String.id,
        }),
        CacheNodeType = schema.new({
            id = id.from(_N, "Snapshot", "CacheNodeType"),
            type = "string",
            name = "CacheNodeType",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "Snapshot", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "Snapshot", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        NumCacheNodes = schema.new({
            id = id.from(_N, "Snapshot", "NumCacheNodes"),
            type = "integer",
            name = "NumCacheNodes",
            target_id = prelude.Integer.id,
        }),
        PreferredAvailabilityZone = schema.new({
            id = id.from(_N, "Snapshot", "PreferredAvailabilityZone"),
            type = "string",
            name = "PreferredAvailabilityZone",
            target_id = prelude.String.id,
        }),
        PreferredOutpostArn = schema.new({
            id = id.from(_N, "Snapshot", "PreferredOutpostArn"),
            type = "string",
            name = "PreferredOutpostArn",
            target_id = prelude.String.id,
        }),
        CacheClusterCreateTime = schema.new({
            id = id.from(_N, "Snapshot", "CacheClusterCreateTime"),
            type = "timestamp",
            name = "CacheClusterCreateTime",
            target_id = prelude.Timestamp.id,
        }),
        PreferredMaintenanceWindow = schema.new({
            id = id.from(_N, "Snapshot", "PreferredMaintenanceWindow"),
            type = "string",
            name = "PreferredMaintenanceWindow",
            target_id = prelude.String.id,
        }),
        TopicArn = schema.new({
            id = id.from(_N, "Snapshot", "TopicArn"),
            type = "string",
            name = "TopicArn",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "Snapshot", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        CacheParameterGroupName = schema.new({
            id = id.from(_N, "Snapshot", "CacheParameterGroupName"),
            type = "string",
            name = "CacheParameterGroupName",
            target_id = prelude.String.id,
        }),
        CacheSubnetGroupName = schema.new({
            id = id.from(_N, "Snapshot", "CacheSubnetGroupName"),
            type = "string",
            name = "CacheSubnetGroupName",
            target_id = prelude.String.id,
        }),
        VpcId = schema.new({
            id = id.from(_N, "Snapshot", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
        AutoMinorVersionUpgrade = schema.new({
            id = id.from(_N, "Snapshot", "AutoMinorVersionUpgrade"),
            type = "boolean",
            name = "AutoMinorVersionUpgrade",
            target_id = prelude.Boolean.id,
        }),
        SnapshotRetentionLimit = schema.new({
            id = id.from(_N, "Snapshot", "SnapshotRetentionLimit"),
            type = "integer",
            name = "SnapshotRetentionLimit",
            target_id = prelude.Integer.id,
        }),
        SnapshotWindow = schema.new({
            id = id.from(_N, "Snapshot", "SnapshotWindow"),
            type = "string",
            name = "SnapshotWindow",
            target_id = prelude.String.id,
        }),
        NumNodeGroups = schema.new({
            id = id.from(_N, "Snapshot", "NumNodeGroups"),
            type = "integer",
            name = "NumNodeGroups",
            target_id = prelude.Integer.id,
        }),
        AutomaticFailover = schema.new({
            id = id.from(_N, "Snapshot", "AutomaticFailover"),
            type = "string",
            name = "AutomaticFailover",
            target_id = prelude.String.id,
        }),
        NodeSnapshots = schema.new({
            id = id.from(_N, "Snapshot", "NodeSnapshots"),
            type = "list",
            name = "NodeSnapshots",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.NodeSnapshot, traits = { [traits.XML_NAME] = { name = "NodeSnapshot" } } }),
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
        DataTiering = schema.new({
            id = id.from(_N, "Snapshot", "DataTiering"),
            type = "string",
            name = "DataTiering",
            target_id = prelude.String.id,
        }),
    },
})

M.CopySnapshotOutput = schema.new({
    id = id.from(_N, "CopySnapshotResult"),
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

M.CacheClusterAlreadyExistsFault = schema.new({
    id = id.from(_N, "CacheClusterAlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CacheClusterAlreadyExistsFault", "message"),
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

M.LogDeliveryConfigurationRequest = schema.new({
    id = id.from(_N, "LogDeliveryConfigurationRequest"),
    type = "structure",
    members = {
        LogType = schema.new({
            id = id.from(_N, "LogDeliveryConfigurationRequest", "LogType"),
            type = "string",
            name = "LogType",
            target_id = prelude.String.id,
        }),
        DestinationType = schema.new({
            id = id.from(_N, "LogDeliveryConfigurationRequest", "DestinationType"),
            type = "string",
            name = "DestinationType",
            target_id = prelude.String.id,
        }),
        DestinationDetails = schema.new({
            id = id.from(_N, "LogDeliveryConfigurationRequest", "DestinationDetails"),
            type = "structure",
            name = "DestinationDetails",
            target_id = id.from(_N, "DestinationDetails"),
            target = M.DestinationDetails,
        }),
        LogFormat = schema.new({
            id = id.from(_N, "LogDeliveryConfigurationRequest", "LogFormat"),
            type = "string",
            name = "LogFormat",
            target_id = prelude.String.id,
        }),
        Enabled = schema.new({
            id = id.from(_N, "LogDeliveryConfigurationRequest", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateCacheClusterInput = schema.new({
    id = id.from(_N, "CreateCacheClusterMessage"),
    type = "structure",
    members = {
        CacheClusterId = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "CacheClusterId"),
            type = "string",
            name = "CacheClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReplicationGroupId = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "ReplicationGroupId"),
            type = "string",
            name = "ReplicationGroupId",
            target_id = prelude.String.id,
        }),
        AZMode = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "AZMode"),
            type = "string",
            name = "AZMode",
            target_id = prelude.String.id,
        }),
        PreferredAvailabilityZone = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "PreferredAvailabilityZone"),
            type = "string",
            name = "PreferredAvailabilityZone",
            target_id = prelude.String.id,
        }),
        PreferredAvailabilityZones = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "PreferredAvailabilityZones"),
            type = "list",
            name = "PreferredAvailabilityZones",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "PreferredAvailabilityZone" } } }),
        }),
        NumCacheNodes = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "NumCacheNodes"),
            type = "integer",
            name = "NumCacheNodes",
            target_id = prelude.Integer.id,
        }),
        CacheNodeType = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "CacheNodeType"),
            type = "string",
            name = "CacheNodeType",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        CacheParameterGroupName = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "CacheParameterGroupName"),
            type = "string",
            name = "CacheParameterGroupName",
            target_id = prelude.String.id,
        }),
        CacheSubnetGroupName = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "CacheSubnetGroupName"),
            type = "string",
            name = "CacheSubnetGroupName",
            target_id = prelude.String.id,
        }),
        CacheSecurityGroupNames = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "CacheSecurityGroupNames"),
            type = "list",
            name = "CacheSecurityGroupNames",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "CacheSecurityGroupName" } } }),
        }),
        SecurityGroupIds = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "SecurityGroupIds"),
            type = "list",
            name = "SecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SecurityGroupId" } } }),
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
        SnapshotArns = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "SnapshotArns"),
            type = "list",
            name = "SnapshotArns",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SnapshotArn" } } }),
        }),
        SnapshotName = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "SnapshotName"),
            type = "string",
            name = "SnapshotName",
            target_id = prelude.String.id,
        }),
        PreferredMaintenanceWindow = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "PreferredMaintenanceWindow"),
            type = "string",
            name = "PreferredMaintenanceWindow",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        NotificationTopicArn = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "NotificationTopicArn"),
            type = "string",
            name = "NotificationTopicArn",
            target_id = prelude.String.id,
        }),
        AutoMinorVersionUpgrade = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "AutoMinorVersionUpgrade"),
            type = "boolean",
            name = "AutoMinorVersionUpgrade",
            target_id = prelude.Boolean.id,
        }),
        SnapshotRetentionLimit = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "SnapshotRetentionLimit"),
            type = "integer",
            name = "SnapshotRetentionLimit",
            target_id = prelude.Integer.id,
        }),
        SnapshotWindow = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "SnapshotWindow"),
            type = "string",
            name = "SnapshotWindow",
            target_id = prelude.String.id,
        }),
        AuthToken = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "AuthToken"),
            type = "string",
            name = "AuthToken",
            target_id = prelude.String.id,
        }),
        OutpostMode = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "OutpostMode"),
            type = "string",
            name = "OutpostMode",
            target_id = prelude.String.id,
        }),
        PreferredOutpostArn = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "PreferredOutpostArn"),
            type = "string",
            name = "PreferredOutpostArn",
            target_id = prelude.String.id,
        }),
        PreferredOutpostArns = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "PreferredOutpostArns"),
            type = "list",
            name = "PreferredOutpostArns",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "PreferredOutpostArn" } } }),
        }),
        LogDeliveryConfigurations = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "LogDeliveryConfigurations"),
            type = "list",
            name = "LogDeliveryConfigurations",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.LogDeliveryConfigurationRequest, traits = { [traits.XML_NAME] = { name = "LogDeliveryConfigurationRequest" } } }),
        }),
        TransitEncryptionEnabled = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "TransitEncryptionEnabled"),
            type = "boolean",
            name = "TransitEncryptionEnabled",
            target_id = prelude.Boolean.id,
        }),
        NetworkType = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
        IpDiscovery = schema.new({
            id = id.from(_N, "CreateCacheClusterInput", "IpDiscovery"),
            type = "string",
            name = "IpDiscovery",
            target_id = prelude.String.id,
        }),
    },
})

M.CacheNode = schema.new({
    id = id.from(_N, "CacheNode"),
    type = "structure",
    members = {
        CacheNodeId = schema.new({
            id = id.from(_N, "CacheNode", "CacheNodeId"),
            type = "string",
            name = "CacheNodeId",
            target_id = prelude.String.id,
        }),
        CacheNodeStatus = schema.new({
            id = id.from(_N, "CacheNode", "CacheNodeStatus"),
            type = "string",
            name = "CacheNodeStatus",
            target_id = prelude.String.id,
        }),
        CacheNodeCreateTime = schema.new({
            id = id.from(_N, "CacheNode", "CacheNodeCreateTime"),
            type = "timestamp",
            name = "CacheNodeCreateTime",
            target_id = prelude.Timestamp.id,
        }),
        Endpoint = schema.new({
            id = id.from(_N, "CacheNode", "Endpoint"),
            type = "structure",
            name = "Endpoint",
            target_id = id.from(_N, "Endpoint"),
            target = M.Endpoint,
        }),
        ParameterGroupStatus = schema.new({
            id = id.from(_N, "CacheNode", "ParameterGroupStatus"),
            type = "string",
            name = "ParameterGroupStatus",
            target_id = prelude.String.id,
        }),
        SourceCacheNodeId = schema.new({
            id = id.from(_N, "CacheNode", "SourceCacheNodeId"),
            type = "string",
            name = "SourceCacheNodeId",
            target_id = prelude.String.id,
        }),
        CustomerAvailabilityZone = schema.new({
            id = id.from(_N, "CacheNode", "CustomerAvailabilityZone"),
            type = "string",
            name = "CustomerAvailabilityZone",
            target_id = prelude.String.id,
        }),
        CustomerOutpostArn = schema.new({
            id = id.from(_N, "CacheNode", "CustomerOutpostArn"),
            type = "string",
            name = "CustomerOutpostArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CacheParameterGroupStatus = schema.new({
    id = id.from(_N, "CacheParameterGroupStatus"),
    type = "structure",
    members = {
        CacheParameterGroupName = schema.new({
            id = id.from(_N, "CacheParameterGroupStatus", "CacheParameterGroupName"),
            type = "string",
            name = "CacheParameterGroupName",
            target_id = prelude.String.id,
        }),
        ParameterApplyStatus = schema.new({
            id = id.from(_N, "CacheParameterGroupStatus", "ParameterApplyStatus"),
            type = "string",
            name = "ParameterApplyStatus",
            target_id = prelude.String.id,
        }),
        CacheNodeIdsToReboot = schema.new({
            id = id.from(_N, "CacheParameterGroupStatus", "CacheNodeIdsToReboot"),
            type = "list",
            name = "CacheNodeIdsToReboot",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "CacheNodeId" } } }),
        }),
    },
})

M.CacheSecurityGroupMembership = schema.new({
    id = id.from(_N, "CacheSecurityGroupMembership"),
    type = "structure",
    members = {
        CacheSecurityGroupName = schema.new({
            id = id.from(_N, "CacheSecurityGroupMembership", "CacheSecurityGroupName"),
            type = "string",
            name = "CacheSecurityGroupName",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "CacheSecurityGroupMembership", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.NotificationConfiguration = schema.new({
    id = id.from(_N, "NotificationConfiguration"),
    type = "structure",
    members = {
        TopicArn = schema.new({
            id = id.from(_N, "NotificationConfiguration", "TopicArn"),
            type = "string",
            name = "TopicArn",
            target_id = prelude.String.id,
        }),
        TopicStatus = schema.new({
            id = id.from(_N, "NotificationConfiguration", "TopicStatus"),
            type = "string",
            name = "TopicStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ScaleConfig = schema.new({
    id = id.from(_N, "ScaleConfig"),
    type = "structure",
    members = {
        ScalePercentage = schema.new({
            id = id.from(_N, "ScaleConfig", "ScalePercentage"),
            type = "integer",
            name = "ScalePercentage",
            target_id = prelude.Integer.id,
        }),
        ScaleIntervalMinutes = schema.new({
            id = id.from(_N, "ScaleConfig", "ScaleIntervalMinutes"),
            type = "integer",
            name = "ScaleIntervalMinutes",
            target_id = prelude.Integer.id,
        }),
    },
})

M.PendingModifiedValues = schema.new({
    id = id.from(_N, "PendingModifiedValues"),
    type = "structure",
    members = {
        NumCacheNodes = schema.new({
            id = id.from(_N, "PendingModifiedValues", "NumCacheNodes"),
            type = "integer",
            name = "NumCacheNodes",
            target_id = prelude.Integer.id,
        }),
        CacheNodeIdsToRemove = schema.new({
            id = id.from(_N, "PendingModifiedValues", "CacheNodeIdsToRemove"),
            type = "list",
            name = "CacheNodeIdsToRemove",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "CacheNodeId" } } }),
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "PendingModifiedValues", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        CacheNodeType = schema.new({
            id = id.from(_N, "PendingModifiedValues", "CacheNodeType"),
            type = "string",
            name = "CacheNodeType",
            target_id = prelude.String.id,
        }),
        AuthTokenStatus = schema.new({
            id = id.from(_N, "PendingModifiedValues", "AuthTokenStatus"),
            type = "string",
            name = "AuthTokenStatus",
            target_id = prelude.String.id,
        }),
        LogDeliveryConfigurations = schema.new({
            id = id.from(_N, "PendingModifiedValues", "LogDeliveryConfigurations"),
            type = "list",
            name = "LogDeliveryConfigurations",
            target_id = prelude.Document.id,
            list_member = M.PendingLogDeliveryConfiguration,
        }),
        TransitEncryptionEnabled = schema.new({
            id = id.from(_N, "PendingModifiedValues", "TransitEncryptionEnabled"),
            type = "boolean",
            name = "TransitEncryptionEnabled",
            target_id = prelude.Boolean.id,
        }),
        TransitEncryptionMode = schema.new({
            id = id.from(_N, "PendingModifiedValues", "TransitEncryptionMode"),
            type = "string",
            name = "TransitEncryptionMode",
            target_id = prelude.String.id,
        }),
        ScaleConfig = schema.new({
            id = id.from(_N, "PendingModifiedValues", "ScaleConfig"),
            type = "structure",
            name = "ScaleConfig",
            target_id = id.from(_N, "ScaleConfig"),
            target = M.ScaleConfig,
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

M.CacheCluster = schema.new({
    id = id.from(_N, "CacheCluster"),
    type = "structure",
    members = {
        CacheClusterId = schema.new({
            id = id.from(_N, "CacheCluster", "CacheClusterId"),
            type = "string",
            name = "CacheClusterId",
            target_id = prelude.String.id,
        }),
        ConfigurationEndpoint = schema.new({
            id = id.from(_N, "CacheCluster", "ConfigurationEndpoint"),
            type = "structure",
            name = "ConfigurationEndpoint",
            target_id = id.from(_N, "Endpoint"),
            target = M.Endpoint,
        }),
        ClientDownloadLandingPage = schema.new({
            id = id.from(_N, "CacheCluster", "ClientDownloadLandingPage"),
            type = "string",
            name = "ClientDownloadLandingPage",
            target_id = prelude.String.id,
        }),
        CacheNodeType = schema.new({
            id = id.from(_N, "CacheCluster", "CacheNodeType"),
            type = "string",
            name = "CacheNodeType",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "CacheCluster", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "CacheCluster", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        CacheClusterStatus = schema.new({
            id = id.from(_N, "CacheCluster", "CacheClusterStatus"),
            type = "string",
            name = "CacheClusterStatus",
            target_id = prelude.String.id,
        }),
        NumCacheNodes = schema.new({
            id = id.from(_N, "CacheCluster", "NumCacheNodes"),
            type = "integer",
            name = "NumCacheNodes",
            target_id = prelude.Integer.id,
        }),
        PreferredAvailabilityZone = schema.new({
            id = id.from(_N, "CacheCluster", "PreferredAvailabilityZone"),
            type = "string",
            name = "PreferredAvailabilityZone",
            target_id = prelude.String.id,
        }),
        PreferredOutpostArn = schema.new({
            id = id.from(_N, "CacheCluster", "PreferredOutpostArn"),
            type = "string",
            name = "PreferredOutpostArn",
            target_id = prelude.String.id,
        }),
        CacheClusterCreateTime = schema.new({
            id = id.from(_N, "CacheCluster", "CacheClusterCreateTime"),
            type = "timestamp",
            name = "CacheClusterCreateTime",
            target_id = prelude.Timestamp.id,
        }),
        PreferredMaintenanceWindow = schema.new({
            id = id.from(_N, "CacheCluster", "PreferredMaintenanceWindow"),
            type = "string",
            name = "PreferredMaintenanceWindow",
            target_id = prelude.String.id,
        }),
        PendingModifiedValues = schema.new({
            id = id.from(_N, "CacheCluster", "PendingModifiedValues"),
            type = "structure",
            name = "PendingModifiedValues",
            target_id = id.from(_N, "PendingModifiedValues"),
            target = M.PendingModifiedValues,
        }),
        NotificationConfiguration = schema.new({
            id = id.from(_N, "CacheCluster", "NotificationConfiguration"),
            type = "structure",
            name = "NotificationConfiguration",
            target_id = id.from(_N, "NotificationConfiguration"),
            target = M.NotificationConfiguration,
        }),
        CacheSecurityGroups = schema.new({
            id = id.from(_N, "CacheCluster", "CacheSecurityGroups"),
            type = "list",
            name = "CacheSecurityGroups",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.CacheSecurityGroupMembership, traits = { [traits.XML_NAME] = { name = "CacheSecurityGroup" } } }),
        }),
        CacheParameterGroup = schema.new({
            id = id.from(_N, "CacheCluster", "CacheParameterGroup"),
            type = "structure",
            name = "CacheParameterGroup",
            target_id = id.from(_N, "CacheParameterGroupStatus"),
            target = M.CacheParameterGroupStatus,
        }),
        CacheSubnetGroupName = schema.new({
            id = id.from(_N, "CacheCluster", "CacheSubnetGroupName"),
            type = "string",
            name = "CacheSubnetGroupName",
            target_id = prelude.String.id,
        }),
        CacheNodes = schema.new({
            id = id.from(_N, "CacheCluster", "CacheNodes"),
            type = "list",
            name = "CacheNodes",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.CacheNode, traits = { [traits.XML_NAME] = { name = "CacheNode" } } }),
        }),
        AutoMinorVersionUpgrade = schema.new({
            id = id.from(_N, "CacheCluster", "AutoMinorVersionUpgrade"),
            type = "boolean",
            name = "AutoMinorVersionUpgrade",
            target_id = prelude.Boolean.id,
        }),
        SecurityGroups = schema.new({
            id = id.from(_N, "CacheCluster", "SecurityGroups"),
            type = "list",
            name = "SecurityGroups",
            target_id = prelude.Document.id,
            list_member = M.SecurityGroupMembership,
        }),
        ReplicationGroupId = schema.new({
            id = id.from(_N, "CacheCluster", "ReplicationGroupId"),
            type = "string",
            name = "ReplicationGroupId",
            target_id = prelude.String.id,
        }),
        SnapshotRetentionLimit = schema.new({
            id = id.from(_N, "CacheCluster", "SnapshotRetentionLimit"),
            type = "integer",
            name = "SnapshotRetentionLimit",
            target_id = prelude.Integer.id,
        }),
        SnapshotWindow = schema.new({
            id = id.from(_N, "CacheCluster", "SnapshotWindow"),
            type = "string",
            name = "SnapshotWindow",
            target_id = prelude.String.id,
        }),
        AuthTokenEnabled = schema.new({
            id = id.from(_N, "CacheCluster", "AuthTokenEnabled"),
            type = "boolean",
            name = "AuthTokenEnabled",
            target_id = prelude.Boolean.id,
        }),
        AuthTokenLastModifiedDate = schema.new({
            id = id.from(_N, "CacheCluster", "AuthTokenLastModifiedDate"),
            type = "timestamp",
            name = "AuthTokenLastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        TransitEncryptionEnabled = schema.new({
            id = id.from(_N, "CacheCluster", "TransitEncryptionEnabled"),
            type = "boolean",
            name = "TransitEncryptionEnabled",
            target_id = prelude.Boolean.id,
        }),
        AtRestEncryptionEnabled = schema.new({
            id = id.from(_N, "CacheCluster", "AtRestEncryptionEnabled"),
            type = "boolean",
            name = "AtRestEncryptionEnabled",
            target_id = prelude.Boolean.id,
        }),
        ARN = schema.new({
            id = id.from(_N, "CacheCluster", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        ReplicationGroupLogDeliveryEnabled = schema.new({
            id = id.from(_N, "CacheCluster", "ReplicationGroupLogDeliveryEnabled"),
            type = "boolean",
            name = "ReplicationGroupLogDeliveryEnabled",
            target_id = prelude.Boolean.id,
        }),
        LogDeliveryConfigurations = schema.new({
            id = id.from(_N, "CacheCluster", "LogDeliveryConfigurations"),
            type = "list",
            name = "LogDeliveryConfigurations",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.LogDeliveryConfiguration, traits = { [traits.XML_NAME] = { name = "LogDeliveryConfiguration" } } }),
        }),
        NetworkType = schema.new({
            id = id.from(_N, "CacheCluster", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
        IpDiscovery = schema.new({
            id = id.from(_N, "CacheCluster", "IpDiscovery"),
            type = "string",
            name = "IpDiscovery",
            target_id = prelude.String.id,
        }),
        TransitEncryptionMode = schema.new({
            id = id.from(_N, "CacheCluster", "TransitEncryptionMode"),
            type = "string",
            name = "TransitEncryptionMode",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateCacheClusterOutput = schema.new({
    id = id.from(_N, "CreateCacheClusterResult"),
    type = "structure",
    members = {
        CacheCluster = schema.new({
            id = id.from(_N, "CreateCacheClusterOutput", "CacheCluster"),
            type = "structure",
            name = "CacheCluster",
            target_id = id.from(_N, "CacheCluster"),
            target = M.CacheCluster,
        }),
    },
})

M.InsufficientCacheClusterCapacityFault = schema.new({
    id = id.from(_N, "InsufficientCacheClusterCapacityFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InsufficientCacheClusterCapacityFault", "message"),
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

M.CacheParameterGroupAlreadyExistsFault = schema.new({
    id = id.from(_N, "CacheParameterGroupAlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CacheParameterGroupAlreadyExistsFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CacheParameterGroupQuotaExceededFault = schema.new({
    id = id.from(_N, "CacheParameterGroupQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CacheParameterGroupQuotaExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateCacheParameterGroupInput = schema.new({
    id = id.from(_N, "CreateCacheParameterGroupMessage"),
    type = "structure",
    members = {
        CacheParameterGroupName = schema.new({
            id = id.from(_N, "CreateCacheParameterGroupInput", "CacheParameterGroupName"),
            type = "string",
            name = "CacheParameterGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CacheParameterGroupFamily = schema.new({
            id = id.from(_N, "CreateCacheParameterGroupInput", "CacheParameterGroupFamily"),
            type = "string",
            name = "CacheParameterGroupFamily",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateCacheParameterGroupInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateCacheParameterGroupInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.CacheParameterGroup = schema.new({
    id = id.from(_N, "CacheParameterGroup"),
    type = "structure",
    members = {
        CacheParameterGroupName = schema.new({
            id = id.from(_N, "CacheParameterGroup", "CacheParameterGroupName"),
            type = "string",
            name = "CacheParameterGroupName",
            target_id = prelude.String.id,
        }),
        CacheParameterGroupFamily = schema.new({
            id = id.from(_N, "CacheParameterGroup", "CacheParameterGroupFamily"),
            type = "string",
            name = "CacheParameterGroupFamily",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CacheParameterGroup", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        IsGlobal = schema.new({
            id = id.from(_N, "CacheParameterGroup", "IsGlobal"),
            type = "boolean",
            name = "IsGlobal",
            target_id = prelude.Boolean.id,
        }),
        ARN = schema.new({
            id = id.from(_N, "CacheParameterGroup", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateCacheParameterGroupOutput = schema.new({
    id = id.from(_N, "CreateCacheParameterGroupResult"),
    type = "structure",
    members = {
        CacheParameterGroup = schema.new({
            id = id.from(_N, "CreateCacheParameterGroupOutput", "CacheParameterGroup"),
            type = "structure",
            name = "CacheParameterGroup",
            target_id = id.from(_N, "CacheParameterGroup"),
            target = M.CacheParameterGroup,
        }),
    },
})

M.InvalidCacheParameterGroupStateFault = schema.new({
    id = id.from(_N, "InvalidCacheParameterGroupStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidCacheParameterGroupStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CacheSecurityGroupAlreadyExistsFault = schema.new({
    id = id.from(_N, "CacheSecurityGroupAlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CacheSecurityGroupAlreadyExistsFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CacheSecurityGroupQuotaExceededFault = schema.new({
    id = id.from(_N, "CacheSecurityGroupQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CacheSecurityGroupQuotaExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateCacheSecurityGroupInput = schema.new({
    id = id.from(_N, "CreateCacheSecurityGroupMessage"),
    type = "structure",
    members = {
        CacheSecurityGroupName = schema.new({
            id = id.from(_N, "CreateCacheSecurityGroupInput", "CacheSecurityGroupName"),
            type = "string",
            name = "CacheSecurityGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateCacheSecurityGroupInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateCacheSecurityGroupInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.CreateCacheSecurityGroupOutput = schema.new({
    id = id.from(_N, "CreateCacheSecurityGroupResult"),
    type = "structure",
    members = {
        CacheSecurityGroup = schema.new({
            id = id.from(_N, "CreateCacheSecurityGroupOutput", "CacheSecurityGroup"),
            type = "structure",
            name = "CacheSecurityGroup",
            target_id = id.from(_N, "CacheSecurityGroup"),
            target = M.CacheSecurityGroup,
        }),
    },
})

M.CacheSubnetGroupAlreadyExistsFault = schema.new({
    id = id.from(_N, "CacheSubnetGroupAlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CacheSubnetGroupAlreadyExistsFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CacheSubnetGroupQuotaExceededFault = schema.new({
    id = id.from(_N, "CacheSubnetGroupQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CacheSubnetGroupQuotaExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CacheSubnetQuotaExceededFault = schema.new({
    id = id.from(_N, "CacheSubnetQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CacheSubnetQuotaExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateCacheSubnetGroupInput = schema.new({
    id = id.from(_N, "CreateCacheSubnetGroupMessage"),
    type = "structure",
    members = {
        CacheSubnetGroupName = schema.new({
            id = id.from(_N, "CreateCacheSubnetGroupInput", "CacheSubnetGroupName"),
            type = "string",
            name = "CacheSubnetGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CacheSubnetGroupDescription = schema.new({
            id = id.from(_N, "CreateCacheSubnetGroupInput", "CacheSubnetGroupDescription"),
            type = "string",
            name = "CacheSubnetGroupDescription",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SubnetIds = schema.new({
            id = id.from(_N, "CreateCacheSubnetGroupInput", "SubnetIds"),
            type = "list",
            name = "SubnetIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SubnetIdentifier" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateCacheSubnetGroupInput", "Tags"),
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

M.SubnetOutpost = schema.new({
    id = id.from(_N, "SubnetOutpost"),
    type = "structure",
    members = {
        SubnetOutpostArn = schema.new({
            id = id.from(_N, "SubnetOutpost", "SubnetOutpostArn"),
            type = "string",
            name = "SubnetOutpostArn",
            target_id = prelude.String.id,
        }),
    },
})

M.Subnet = schema.new({
    id = id.from(_N, "Subnet"),
    type = "structure",
    members = {
        SubnetIdentifier = schema.new({
            id = id.from(_N, "Subnet", "SubnetIdentifier"),
            type = "string",
            name = "SubnetIdentifier",
            target_id = prelude.String.id,
        }),
        SubnetAvailabilityZone = schema.new({
            id = id.from(_N, "Subnet", "SubnetAvailabilityZone"),
            type = "structure",
            name = "SubnetAvailabilityZone",
            target_id = id.from(_N, "AvailabilityZone"),
            target = M.AvailabilityZone,
        }),
        SubnetOutpost = schema.new({
            id = id.from(_N, "Subnet", "SubnetOutpost"),
            type = "structure",
            name = "SubnetOutpost",
            target_id = id.from(_N, "SubnetOutpost"),
            target = M.SubnetOutpost,
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

M.CacheSubnetGroup = schema.new({
    id = id.from(_N, "CacheSubnetGroup"),
    type = "structure",
    members = {
        CacheSubnetGroupName = schema.new({
            id = id.from(_N, "CacheSubnetGroup", "CacheSubnetGroupName"),
            type = "string",
            name = "CacheSubnetGroupName",
            target_id = prelude.String.id,
        }),
        CacheSubnetGroupDescription = schema.new({
            id = id.from(_N, "CacheSubnetGroup", "CacheSubnetGroupDescription"),
            type = "string",
            name = "CacheSubnetGroupDescription",
            target_id = prelude.String.id,
        }),
        VpcId = schema.new({
            id = id.from(_N, "CacheSubnetGroup", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
        Subnets = schema.new({
            id = id.from(_N, "CacheSubnetGroup", "Subnets"),
            type = "list",
            name = "Subnets",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Subnet, traits = { [traits.XML_NAME] = { name = "Subnet" } } }),
        }),
        ARN = schema.new({
            id = id.from(_N, "CacheSubnetGroup", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        SupportedNetworkTypes = schema.new({
            id = id.from(_N, "CacheSubnetGroup", "SupportedNetworkTypes"),
            type = "list",
            name = "SupportedNetworkTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateCacheSubnetGroupOutput = schema.new({
    id = id.from(_N, "CreateCacheSubnetGroupResult"),
    type = "structure",
    members = {
        CacheSubnetGroup = schema.new({
            id = id.from(_N, "CreateCacheSubnetGroupOutput", "CacheSubnetGroup"),
            type = "structure",
            name = "CacheSubnetGroup",
            target_id = id.from(_N, "CacheSubnetGroup"),
            target = M.CacheSubnetGroup,
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

M.CreateGlobalReplicationGroupInput = schema.new({
    id = id.from(_N, "CreateGlobalReplicationGroupMessage"),
    type = "structure",
    members = {
        GlobalReplicationGroupIdSuffix = schema.new({
            id = id.from(_N, "CreateGlobalReplicationGroupInput", "GlobalReplicationGroupIdSuffix"),
            type = "string",
            name = "GlobalReplicationGroupIdSuffix",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GlobalReplicationGroupDescription = schema.new({
            id = id.from(_N, "CreateGlobalReplicationGroupInput", "GlobalReplicationGroupDescription"),
            type = "string",
            name = "GlobalReplicationGroupDescription",
            target_id = prelude.String.id,
        }),
        PrimaryReplicationGroupId = schema.new({
            id = id.from(_N, "CreateGlobalReplicationGroupInput", "PrimaryReplicationGroupId"),
            type = "string",
            name = "PrimaryReplicationGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GlobalNodeGroup = schema.new({
    id = id.from(_N, "GlobalNodeGroup"),
    type = "structure",
    members = {
        GlobalNodeGroupId = schema.new({
            id = id.from(_N, "GlobalNodeGroup", "GlobalNodeGroupId"),
            type = "string",
            name = "GlobalNodeGroupId",
            target_id = prelude.String.id,
        }),
        Slots = schema.new({
            id = id.from(_N, "GlobalNodeGroup", "Slots"),
            type = "string",
            name = "Slots",
            target_id = prelude.String.id,
        }),
    },
})

M.GlobalReplicationGroupMember = schema.new({
    id = id.from(_N, "GlobalReplicationGroupMember"),
    type = "structure",
    members = {
        ReplicationGroupId = schema.new({
            id = id.from(_N, "GlobalReplicationGroupMember", "ReplicationGroupId"),
            type = "string",
            name = "ReplicationGroupId",
            target_id = prelude.String.id,
        }),
        ReplicationGroupRegion = schema.new({
            id = id.from(_N, "GlobalReplicationGroupMember", "ReplicationGroupRegion"),
            type = "string",
            name = "ReplicationGroupRegion",
            target_id = prelude.String.id,
        }),
        Role = schema.new({
            id = id.from(_N, "GlobalReplicationGroupMember", "Role"),
            type = "string",
            name = "Role",
            target_id = prelude.String.id,
        }),
        AutomaticFailover = schema.new({
            id = id.from(_N, "GlobalReplicationGroupMember", "AutomaticFailover"),
            type = "string",
            name = "AutomaticFailover",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "GlobalReplicationGroupMember", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.GlobalReplicationGroup = schema.new({
    id = id.from(_N, "GlobalReplicationGroup"),
    type = "structure",
    members = {
        GlobalReplicationGroupId = schema.new({
            id = id.from(_N, "GlobalReplicationGroup", "GlobalReplicationGroupId"),
            type = "string",
            name = "GlobalReplicationGroupId",
            target_id = prelude.String.id,
        }),
        GlobalReplicationGroupDescription = schema.new({
            id = id.from(_N, "GlobalReplicationGroup", "GlobalReplicationGroupDescription"),
            type = "string",
            name = "GlobalReplicationGroupDescription",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "GlobalReplicationGroup", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        CacheNodeType = schema.new({
            id = id.from(_N, "GlobalReplicationGroup", "CacheNodeType"),
            type = "string",
            name = "CacheNodeType",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "GlobalReplicationGroup", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "GlobalReplicationGroup", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        Members = schema.new({
            id = id.from(_N, "GlobalReplicationGroup", "Members"),
            type = "list",
            name = "Members",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.GlobalReplicationGroupMember, traits = { [traits.XML_NAME] = { name = "GlobalReplicationGroupMember" } } }),
        }),
        ClusterEnabled = schema.new({
            id = id.from(_N, "GlobalReplicationGroup", "ClusterEnabled"),
            type = "boolean",
            name = "ClusterEnabled",
            target_id = prelude.Boolean.id,
        }),
        GlobalNodeGroups = schema.new({
            id = id.from(_N, "GlobalReplicationGroup", "GlobalNodeGroups"),
            type = "list",
            name = "GlobalNodeGroups",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.GlobalNodeGroup, traits = { [traits.XML_NAME] = { name = "GlobalNodeGroup" } } }),
        }),
        AuthTokenEnabled = schema.new({
            id = id.from(_N, "GlobalReplicationGroup", "AuthTokenEnabled"),
            type = "boolean",
            name = "AuthTokenEnabled",
            target_id = prelude.Boolean.id,
        }),
        TransitEncryptionEnabled = schema.new({
            id = id.from(_N, "GlobalReplicationGroup", "TransitEncryptionEnabled"),
            type = "boolean",
            name = "TransitEncryptionEnabled",
            target_id = prelude.Boolean.id,
        }),
        AtRestEncryptionEnabled = schema.new({
            id = id.from(_N, "GlobalReplicationGroup", "AtRestEncryptionEnabled"),
            type = "boolean",
            name = "AtRestEncryptionEnabled",
            target_id = prelude.Boolean.id,
        }),
        ARN = schema.new({
            id = id.from(_N, "GlobalReplicationGroup", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateGlobalReplicationGroupOutput = schema.new({
    id = id.from(_N, "CreateGlobalReplicationGroupResult"),
    type = "structure",
    members = {
        GlobalReplicationGroup = schema.new({
            id = id.from(_N, "CreateGlobalReplicationGroupOutput", "GlobalReplicationGroup"),
            type = "structure",
            name = "GlobalReplicationGroup",
            target_id = id.from(_N, "GlobalReplicationGroup"),
            target = M.GlobalReplicationGroup,
        }),
    },
})

M.GlobalReplicationGroupAlreadyExistsFault = schema.new({
    id = id.from(_N, "GlobalReplicationGroupAlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "GlobalReplicationGroupAlreadyExistsFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateReplicationGroupInput = schema.new({
    id = id.from(_N, "CreateReplicationGroupMessage"),
    type = "structure",
    members = {
        ReplicationGroupId = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "ReplicationGroupId"),
            type = "string",
            name = "ReplicationGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReplicationGroupDescription = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "ReplicationGroupDescription"),
            type = "string",
            name = "ReplicationGroupDescription",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GlobalReplicationGroupId = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "GlobalReplicationGroupId"),
            type = "string",
            name = "GlobalReplicationGroupId",
            target_id = prelude.String.id,
        }),
        PrimaryClusterId = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "PrimaryClusterId"),
            type = "string",
            name = "PrimaryClusterId",
            target_id = prelude.String.id,
        }),
        AutomaticFailoverEnabled = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "AutomaticFailoverEnabled"),
            type = "boolean",
            name = "AutomaticFailoverEnabled",
            target_id = prelude.Boolean.id,
        }),
        MultiAZEnabled = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "MultiAZEnabled"),
            type = "boolean",
            name = "MultiAZEnabled",
            target_id = prelude.Boolean.id,
        }),
        NumCacheClusters = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "NumCacheClusters"),
            type = "integer",
            name = "NumCacheClusters",
            target_id = prelude.Integer.id,
        }),
        PreferredCacheClusterAZs = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "PreferredCacheClusterAZs"),
            type = "list",
            name = "PreferredCacheClusterAZs",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "AvailabilityZone" } } }),
        }),
        NumNodeGroups = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "NumNodeGroups"),
            type = "integer",
            name = "NumNodeGroups",
            target_id = prelude.Integer.id,
        }),
        ReplicasPerNodeGroup = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "ReplicasPerNodeGroup"),
            type = "integer",
            name = "ReplicasPerNodeGroup",
            target_id = prelude.Integer.id,
        }),
        NodeGroupConfiguration = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "NodeGroupConfiguration"),
            type = "list",
            name = "NodeGroupConfiguration",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.NodeGroupConfiguration, traits = { [traits.XML_NAME] = { name = "NodeGroupConfiguration" } } }),
        }),
        CacheNodeType = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "CacheNodeType"),
            type = "string",
            name = "CacheNodeType",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        CacheParameterGroupName = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "CacheParameterGroupName"),
            type = "string",
            name = "CacheParameterGroupName",
            target_id = prelude.String.id,
        }),
        CacheSubnetGroupName = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "CacheSubnetGroupName"),
            type = "string",
            name = "CacheSubnetGroupName",
            target_id = prelude.String.id,
        }),
        CacheSecurityGroupNames = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "CacheSecurityGroupNames"),
            type = "list",
            name = "CacheSecurityGroupNames",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "CacheSecurityGroupName" } } }),
        }),
        SecurityGroupIds = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "SecurityGroupIds"),
            type = "list",
            name = "SecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SecurityGroupId" } } }),
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
        SnapshotArns = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "SnapshotArns"),
            type = "list",
            name = "SnapshotArns",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SnapshotArn" } } }),
        }),
        SnapshotName = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "SnapshotName"),
            type = "string",
            name = "SnapshotName",
            target_id = prelude.String.id,
        }),
        PreferredMaintenanceWindow = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "PreferredMaintenanceWindow"),
            type = "string",
            name = "PreferredMaintenanceWindow",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        NotificationTopicArn = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "NotificationTopicArn"),
            type = "string",
            name = "NotificationTopicArn",
            target_id = prelude.String.id,
        }),
        AutoMinorVersionUpgrade = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "AutoMinorVersionUpgrade"),
            type = "boolean",
            name = "AutoMinorVersionUpgrade",
            target_id = prelude.Boolean.id,
        }),
        SnapshotRetentionLimit = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "SnapshotRetentionLimit"),
            type = "integer",
            name = "SnapshotRetentionLimit",
            target_id = prelude.Integer.id,
        }),
        SnapshotWindow = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "SnapshotWindow"),
            type = "string",
            name = "SnapshotWindow",
            target_id = prelude.String.id,
        }),
        AuthToken = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "AuthToken"),
            type = "string",
            name = "AuthToken",
            target_id = prelude.String.id,
        }),
        TransitEncryptionEnabled = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "TransitEncryptionEnabled"),
            type = "boolean",
            name = "TransitEncryptionEnabled",
            target_id = prelude.Boolean.id,
        }),
        AtRestEncryptionEnabled = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "AtRestEncryptionEnabled"),
            type = "boolean",
            name = "AtRestEncryptionEnabled",
            target_id = prelude.Boolean.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        UserGroupIds = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "UserGroupIds"),
            type = "list",
            name = "UserGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        LogDeliveryConfigurations = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "LogDeliveryConfigurations"),
            type = "list",
            name = "LogDeliveryConfigurations",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.LogDeliveryConfigurationRequest, traits = { [traits.XML_NAME] = { name = "LogDeliveryConfigurationRequest" } } }),
        }),
        DataTieringEnabled = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "DataTieringEnabled"),
            type = "boolean",
            name = "DataTieringEnabled",
            target_id = prelude.Boolean.id,
        }),
        NetworkType = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
        IpDiscovery = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "IpDiscovery"),
            type = "string",
            name = "IpDiscovery",
            target_id = prelude.String.id,
        }),
        TransitEncryptionMode = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "TransitEncryptionMode"),
            type = "string",
            name = "TransitEncryptionMode",
            target_id = prelude.String.id,
        }),
        ClusterMode = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "ClusterMode"),
            type = "string",
            name = "ClusterMode",
            target_id = prelude.String.id,
        }),
        ServerlessCacheSnapshotName = schema.new({
            id = id.from(_N, "CreateReplicationGroupInput", "ServerlessCacheSnapshotName"),
            type = "string",
            name = "ServerlessCacheSnapshotName",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateReplicationGroupOutput = schema.new({
    id = id.from(_N, "CreateReplicationGroupResult"),
    type = "structure",
    members = {
        ReplicationGroup = schema.new({
            id = id.from(_N, "CreateReplicationGroupOutput", "ReplicationGroup"),
            type = "structure",
            name = "ReplicationGroup",
            target_id = id.from(_N, "ReplicationGroup"),
            target = M.ReplicationGroup,
        }),
    },
})

M.GlobalReplicationGroupNotFoundFault = schema.new({
    id = id.from(_N, "GlobalReplicationGroupNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "GlobalReplicationGroupNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidCacheClusterStateFault = schema.new({
    id = id.from(_N, "InvalidCacheClusterStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidCacheClusterStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidGlobalReplicationGroupStateFault = schema.new({
    id = id.from(_N, "InvalidGlobalReplicationGroupStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidGlobalReplicationGroupStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidUserGroupStateFault = schema.new({
    id = id.from(_N, "InvalidUserGroupStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidUserGroupStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.NodeGroupsPerReplicationGroupQuotaExceededFault = schema.new({
    id = id.from(_N, "NodeGroupsPerReplicationGroupQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NodeGroupsPerReplicationGroupQuotaExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ReplicationGroupAlreadyExistsFault = schema.new({
    id = id.from(_N, "ReplicationGroupAlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ReplicationGroupAlreadyExistsFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DataStorage = schema.new({
    id = id.from(_N, "DataStorage"),
    type = "structure",
    members = {
        Maximum = schema.new({
            id = id.from(_N, "DataStorage", "Maximum"),
            type = "integer",
            name = "Maximum",
            target_id = prelude.Integer.id,
        }),
        Minimum = schema.new({
            id = id.from(_N, "DataStorage", "Minimum"),
            type = "integer",
            name = "Minimum",
            target_id = prelude.Integer.id,
        }),
        Unit = schema.new({
            id = id.from(_N, "DataStorage", "Unit"),
            type = "string",
            name = "Unit",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ECPUPerSecond = schema.new({
    id = id.from(_N, "ECPUPerSecond"),
    type = "structure",
    members = {
        Maximum = schema.new({
            id = id.from(_N, "ECPUPerSecond", "Maximum"),
            type = "integer",
            name = "Maximum",
            target_id = prelude.Integer.id,
        }),
        Minimum = schema.new({
            id = id.from(_N, "ECPUPerSecond", "Minimum"),
            type = "integer",
            name = "Minimum",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CacheUsageLimits = schema.new({
    id = id.from(_N, "CacheUsageLimits"),
    type = "structure",
    members = {
        DataStorage = schema.new({
            id = id.from(_N, "CacheUsageLimits", "DataStorage"),
            type = "structure",
            name = "DataStorage",
            target_id = id.from(_N, "DataStorage"),
            target = M.DataStorage,
        }),
        ECPUPerSecond = schema.new({
            id = id.from(_N, "CacheUsageLimits", "ECPUPerSecond"),
            type = "structure",
            name = "ECPUPerSecond",
            target_id = id.from(_N, "ECPUPerSecond"),
            target = M.ECPUPerSecond,
        }),
    },
})

M.CreateServerlessCacheInput = schema.new({
    id = id.from(_N, "CreateServerlessCacheRequest"),
    type = "structure",
    members = {
        ServerlessCacheName = schema.new({
            id = id.from(_N, "CreateServerlessCacheInput", "ServerlessCacheName"),
            type = "string",
            name = "ServerlessCacheName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateServerlessCacheInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "CreateServerlessCacheInput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MajorEngineVersion = schema.new({
            id = id.from(_N, "CreateServerlessCacheInput", "MajorEngineVersion"),
            type = "string",
            name = "MajorEngineVersion",
            target_id = prelude.String.id,
        }),
        CacheUsageLimits = schema.new({
            id = id.from(_N, "CreateServerlessCacheInput", "CacheUsageLimits"),
            type = "structure",
            name = "CacheUsageLimits",
            target_id = id.from(_N, "CacheUsageLimits"),
            target = M.CacheUsageLimits,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "CreateServerlessCacheInput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        SecurityGroupIds = schema.new({
            id = id.from(_N, "CreateServerlessCacheInput", "SecurityGroupIds"),
            type = "list",
            name = "SecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SecurityGroupId" } } }),
        }),
        SnapshotArnsToRestore = schema.new({
            id = id.from(_N, "CreateServerlessCacheInput", "SnapshotArnsToRestore"),
            type = "list",
            name = "SnapshotArnsToRestore",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SnapshotArn" } } }),
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateServerlessCacheInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
        UserGroupId = schema.new({
            id = id.from(_N, "CreateServerlessCacheInput", "UserGroupId"),
            type = "string",
            name = "UserGroupId",
            target_id = prelude.String.id,
        }),
        SubnetIds = schema.new({
            id = id.from(_N, "CreateServerlessCacheInput", "SubnetIds"),
            type = "list",
            name = "SubnetIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SubnetId" } } }),
        }),
        SnapshotRetentionLimit = schema.new({
            id = id.from(_N, "CreateServerlessCacheInput", "SnapshotRetentionLimit"),
            type = "integer",
            name = "SnapshotRetentionLimit",
            target_id = prelude.Integer.id,
        }),
        DailySnapshotTime = schema.new({
            id = id.from(_N, "CreateServerlessCacheInput", "DailySnapshotTime"),
            type = "string",
            name = "DailySnapshotTime",
            target_id = prelude.String.id,
        }),
        NetworkType = schema.new({
            id = id.from(_N, "CreateServerlessCacheInput", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
    },
})

M.ServerlessCache = schema.new({
    id = id.from(_N, "ServerlessCache"),
    type = "structure",
    members = {
        ServerlessCacheName = schema.new({
            id = id.from(_N, "ServerlessCache", "ServerlessCacheName"),
            type = "string",
            name = "ServerlessCacheName",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ServerlessCache", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CreateTime = schema.new({
            id = id.from(_N, "ServerlessCache", "CreateTime"),
            type = "timestamp",
            name = "CreateTime",
            target_id = prelude.Timestamp.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ServerlessCache", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "ServerlessCache", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        MajorEngineVersion = schema.new({
            id = id.from(_N, "ServerlessCache", "MajorEngineVersion"),
            type = "string",
            name = "MajorEngineVersion",
            target_id = prelude.String.id,
        }),
        FullEngineVersion = schema.new({
            id = id.from(_N, "ServerlessCache", "FullEngineVersion"),
            type = "string",
            name = "FullEngineVersion",
            target_id = prelude.String.id,
        }),
        CacheUsageLimits = schema.new({
            id = id.from(_N, "ServerlessCache", "CacheUsageLimits"),
            type = "structure",
            name = "CacheUsageLimits",
            target_id = id.from(_N, "CacheUsageLimits"),
            target = M.CacheUsageLimits,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "ServerlessCache", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        SecurityGroupIds = schema.new({
            id = id.from(_N, "ServerlessCache", "SecurityGroupIds"),
            type = "list",
            name = "SecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SecurityGroupId" } } }),
        }),
        Endpoint = schema.new({
            id = id.from(_N, "ServerlessCache", "Endpoint"),
            type = "structure",
            name = "Endpoint",
            target_id = id.from(_N, "Endpoint"),
            target = M.Endpoint,
        }),
        ReaderEndpoint = schema.new({
            id = id.from(_N, "ServerlessCache", "ReaderEndpoint"),
            type = "structure",
            name = "ReaderEndpoint",
            target_id = id.from(_N, "Endpoint"),
            target = M.Endpoint,
        }),
        ARN = schema.new({
            id = id.from(_N, "ServerlessCache", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        UserGroupId = schema.new({
            id = id.from(_N, "ServerlessCache", "UserGroupId"),
            type = "string",
            name = "UserGroupId",
            target_id = prelude.String.id,
        }),
        SubnetIds = schema.new({
            id = id.from(_N, "ServerlessCache", "SubnetIds"),
            type = "list",
            name = "SubnetIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SubnetId" } } }),
        }),
        SnapshotRetentionLimit = schema.new({
            id = id.from(_N, "ServerlessCache", "SnapshotRetentionLimit"),
            type = "integer",
            name = "SnapshotRetentionLimit",
            target_id = prelude.Integer.id,
        }),
        DailySnapshotTime = schema.new({
            id = id.from(_N, "ServerlessCache", "DailySnapshotTime"),
            type = "string",
            name = "DailySnapshotTime",
            target_id = prelude.String.id,
        }),
        NetworkType = schema.new({
            id = id.from(_N, "ServerlessCache", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateServerlessCacheOutput = schema.new({
    id = id.from(_N, "CreateServerlessCacheResponse"),
    type = "structure",
    members = {
        ServerlessCache = schema.new({
            id = id.from(_N, "CreateServerlessCacheOutput", "ServerlessCache"),
            type = "structure",
            name = "ServerlessCache",
            target_id = id.from(_N, "ServerlessCache"),
            target = M.ServerlessCache,
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

M.ServerlessCacheAlreadyExistsFault = schema.new({
    id = id.from(_N, "ServerlessCacheAlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServerlessCacheAlreadyExistsFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServerlessCacheQuotaForCustomerExceededFault = schema.new({
    id = id.from(_N, "ServerlessCacheQuotaForCustomerExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServerlessCacheQuotaForCustomerExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateServerlessCacheSnapshotInput = schema.new({
    id = id.from(_N, "CreateServerlessCacheSnapshotRequest"),
    type = "structure",
    members = {
        ServerlessCacheSnapshotName = schema.new({
            id = id.from(_N, "CreateServerlessCacheSnapshotInput", "ServerlessCacheSnapshotName"),
            type = "string",
            name = "ServerlessCacheSnapshotName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServerlessCacheName = schema.new({
            id = id.from(_N, "CreateServerlessCacheSnapshotInput", "ServerlessCacheName"),
            type = "string",
            name = "ServerlessCacheName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "CreateServerlessCacheSnapshotInput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateServerlessCacheSnapshotInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.CreateServerlessCacheSnapshotOutput = schema.new({
    id = id.from(_N, "CreateServerlessCacheSnapshotResponse"),
    type = "structure",
    members = {
        ServerlessCacheSnapshot = schema.new({
            id = id.from(_N, "CreateServerlessCacheSnapshotOutput", "ServerlessCacheSnapshot"),
            type = "structure",
            name = "ServerlessCacheSnapshot",
            target_id = id.from(_N, "ServerlessCacheSnapshot"),
            target = M.ServerlessCacheSnapshot,
        }),
    },
})

M.CreateSnapshotInput = schema.new({
    id = id.from(_N, "CreateSnapshotMessage"),
    type = "structure",
    members = {
        ReplicationGroupId = schema.new({
            id = id.from(_N, "CreateSnapshotInput", "ReplicationGroupId"),
            type = "string",
            name = "ReplicationGroupId",
            target_id = prelude.String.id,
        }),
        CacheClusterId = schema.new({
            id = id.from(_N, "CreateSnapshotInput", "CacheClusterId"),
            type = "string",
            name = "CacheClusterId",
            target_id = prelude.String.id,
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
    id = id.from(_N, "CreateSnapshotResult"),
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

M.SnapshotFeatureNotSupportedFault = schema.new({
    id = id.from(_N, "SnapshotFeatureNotSupportedFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SnapshotFeatureNotSupportedFault", "message"),
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
    id = id.from(_N, "CreateUserMessage"),
    type = "structure",
    members = {
        UserId = schema.new({
            id = id.from(_N, "CreateUserInput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserName = schema.new({
            id = id.from(_N, "CreateUserInput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Engine = schema.new({
            id = id.from(_N, "CreateUserInput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Passwords = schema.new({
            id = id.from(_N, "CreateUserInput", "Passwords"),
            type = "list",
            name = "Passwords",
            target_id = prelude.Document.id,
            list_member = prelude.String,
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
        NoPasswordRequired = schema.new({
            id = id.from(_N, "CreateUserInput", "NoPasswordRequired"),
            type = "boolean",
            name = "NoPasswordRequired",
            target_id = prelude.Boolean.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateUserInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
        AuthenticationMode = schema.new({
            id = id.from(_N, "CreateUserInput", "AuthenticationMode"),
            type = "structure",
            name = "AuthenticationMode",
            target_id = id.from(_N, "AuthenticationMode"),
            target = M.AuthenticationMode,
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

M.CreateUserOutput = schema.new({
    id = id.from(_N, "User"),
    type = "structure",
    members = {
        UserId = schema.new({
            id = id.from(_N, "CreateUserOutput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
        }),
        UserName = schema.new({
            id = id.from(_N, "CreateUserOutput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "CreateUserOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "CreateUserOutput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        MinimumEngineVersion = schema.new({
            id = id.from(_N, "CreateUserOutput", "MinimumEngineVersion"),
            type = "string",
            name = "MinimumEngineVersion",
            target_id = prelude.String.id,
        }),
        AccessString = schema.new({
            id = id.from(_N, "CreateUserOutput", "AccessString"),
            type = "string",
            name = "AccessString",
            target_id = prelude.String.id,
        }),
        UserGroupIds = schema.new({
            id = id.from(_N, "CreateUserOutput", "UserGroupIds"),
            type = "list",
            name = "UserGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Authentication = schema.new({
            id = id.from(_N, "CreateUserOutput", "Authentication"),
            type = "structure",
            name = "Authentication",
            target_id = id.from(_N, "Authentication"),
            target = M.Authentication,
        }),
        ARN = schema.new({
            id = id.from(_N, "CreateUserOutput", "ARN"),
            type = "string",
            name = "ARN",
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

M.CreateUserGroupInput = schema.new({
    id = id.from(_N, "CreateUserGroupMessage"),
    type = "structure",
    members = {
        UserGroupId = schema.new({
            id = id.from(_N, "CreateUserGroupInput", "UserGroupId"),
            type = "string",
            name = "UserGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Engine = schema.new({
            id = id.from(_N, "CreateUserGroupInput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserIds = schema.new({
            id = id.from(_N, "CreateUserGroupInput", "UserIds"),
            type = "list",
            name = "UserIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateUserGroupInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.UserGroupPendingChanges = schema.new({
    id = id.from(_N, "UserGroupPendingChanges"),
    type = "structure",
    members = {
        UserIdsToRemove = schema.new({
            id = id.from(_N, "UserGroupPendingChanges", "UserIdsToRemove"),
            type = "list",
            name = "UserIdsToRemove",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        UserIdsToAdd = schema.new({
            id = id.from(_N, "UserGroupPendingChanges", "UserIdsToAdd"),
            type = "list",
            name = "UserIdsToAdd",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateUserGroupOutput = schema.new({
    id = id.from(_N, "UserGroup"),
    type = "structure",
    members = {
        UserGroupId = schema.new({
            id = id.from(_N, "CreateUserGroupOutput", "UserGroupId"),
            type = "string",
            name = "UserGroupId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "CreateUserGroupOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "CreateUserGroupOutput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        UserIds = schema.new({
            id = id.from(_N, "CreateUserGroupOutput", "UserIds"),
            type = "list",
            name = "UserIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MinimumEngineVersion = schema.new({
            id = id.from(_N, "CreateUserGroupOutput", "MinimumEngineVersion"),
            type = "string",
            name = "MinimumEngineVersion",
            target_id = prelude.String.id,
        }),
        PendingChanges = schema.new({
            id = id.from(_N, "CreateUserGroupOutput", "PendingChanges"),
            type = "structure",
            name = "PendingChanges",
            target_id = id.from(_N, "UserGroupPendingChanges"),
            target = M.UserGroupPendingChanges,
        }),
        ReplicationGroups = schema.new({
            id = id.from(_N, "CreateUserGroupOutput", "ReplicationGroups"),
            type = "list",
            name = "ReplicationGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ServerlessCaches = schema.new({
            id = id.from(_N, "CreateUserGroupOutput", "ServerlessCaches"),
            type = "list",
            name = "ServerlessCaches",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ARN = schema.new({
            id = id.from(_N, "CreateUserGroupOutput", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
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

M.UserGroupAlreadyExistsFault = schema.new({
    id = id.from(_N, "UserGroupAlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "UserGroupAlreadyExistsFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UserGroupQuotaExceededFault = schema.new({
    id = id.from(_N, "UserGroupQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "UserGroupQuotaExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DecreaseNodeGroupsInGlobalReplicationGroupInput = schema.new({
    id = id.from(_N, "DecreaseNodeGroupsInGlobalReplicationGroupMessage"),
    type = "structure",
    members = {
        GlobalReplicationGroupId = schema.new({
            id = id.from(_N, "DecreaseNodeGroupsInGlobalReplicationGroupInput", "GlobalReplicationGroupId"),
            type = "string",
            name = "GlobalReplicationGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NodeGroupCount = schema.new({
            id = id.from(_N, "DecreaseNodeGroupsInGlobalReplicationGroupInput", "NodeGroupCount"),
            type = "integer",
            name = "NodeGroupCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GlobalNodeGroupsToRemove = schema.new({
            id = id.from(_N, "DecreaseNodeGroupsInGlobalReplicationGroupInput", "GlobalNodeGroupsToRemove"),
            type = "list",
            name = "GlobalNodeGroupsToRemove",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "GlobalNodeGroupId" } } }),
        }),
        GlobalNodeGroupsToRetain = schema.new({
            id = id.from(_N, "DecreaseNodeGroupsInGlobalReplicationGroupInput", "GlobalNodeGroupsToRetain"),
            type = "list",
            name = "GlobalNodeGroupsToRetain",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "GlobalNodeGroupId" } } }),
        }),
        ApplyImmediately = schema.new({
            id = id.from(_N, "DecreaseNodeGroupsInGlobalReplicationGroupInput", "ApplyImmediately"),
            type = "boolean",
            name = "ApplyImmediately",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DecreaseNodeGroupsInGlobalReplicationGroupOutput = schema.new({
    id = id.from(_N, "DecreaseNodeGroupsInGlobalReplicationGroupResult"),
    type = "structure",
    members = {
        GlobalReplicationGroup = schema.new({
            id = id.from(_N, "DecreaseNodeGroupsInGlobalReplicationGroupOutput", "GlobalReplicationGroup"),
            type = "structure",
            name = "GlobalReplicationGroup",
            target_id = id.from(_N, "GlobalReplicationGroup"),
            target = M.GlobalReplicationGroup,
        }),
    },
})

M.ConfigureShard = schema.new({
    id = id.from(_N, "ConfigureShard"),
    type = "structure",
    members = {
        NodeGroupId = schema.new({
            id = id.from(_N, "ConfigureShard", "NodeGroupId"),
            type = "string",
            name = "NodeGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NewReplicaCount = schema.new({
            id = id.from(_N, "ConfigureShard", "NewReplicaCount"),
            type = "integer",
            name = "NewReplicaCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PreferredAvailabilityZones = schema.new({
            id = id.from(_N, "ConfigureShard", "PreferredAvailabilityZones"),
            type = "list",
            name = "PreferredAvailabilityZones",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "PreferredAvailabilityZone" } } }),
        }),
        PreferredOutpostArns = schema.new({
            id = id.from(_N, "ConfigureShard", "PreferredOutpostArns"),
            type = "list",
            name = "PreferredOutpostArns",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "PreferredOutpostArn" } } }),
        }),
    },
})

M.DecreaseReplicaCountInput = schema.new({
    id = id.from(_N, "DecreaseReplicaCountMessage"),
    type = "structure",
    members = {
        ReplicationGroupId = schema.new({
            id = id.from(_N, "DecreaseReplicaCountInput", "ReplicationGroupId"),
            type = "string",
            name = "ReplicationGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NewReplicaCount = schema.new({
            id = id.from(_N, "DecreaseReplicaCountInput", "NewReplicaCount"),
            type = "integer",
            name = "NewReplicaCount",
            target_id = prelude.Integer.id,
        }),
        ReplicaConfiguration = schema.new({
            id = id.from(_N, "DecreaseReplicaCountInput", "ReplicaConfiguration"),
            type = "list",
            name = "ReplicaConfiguration",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ConfigureShard, traits = { [traits.XML_NAME] = { name = "ConfigureShard" } } }),
        }),
        ReplicasToRemove = schema.new({
            id = id.from(_N, "DecreaseReplicaCountInput", "ReplicasToRemove"),
            type = "list",
            name = "ReplicasToRemove",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ApplyImmediately = schema.new({
            id = id.from(_N, "DecreaseReplicaCountInput", "ApplyImmediately"),
            type = "boolean",
            name = "ApplyImmediately",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DecreaseReplicaCountOutput = schema.new({
    id = id.from(_N, "DecreaseReplicaCountResult"),
    type = "structure",
    members = {
        ReplicationGroup = schema.new({
            id = id.from(_N, "DecreaseReplicaCountOutput", "ReplicationGroup"),
            type = "structure",
            name = "ReplicationGroup",
            target_id = id.from(_N, "ReplicationGroup"),
            target = M.ReplicationGroup,
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

M.DeleteCacheClusterInput = schema.new({
    id = id.from(_N, "DeleteCacheClusterMessage"),
    type = "structure",
    members = {
        CacheClusterId = schema.new({
            id = id.from(_N, "DeleteCacheClusterInput", "CacheClusterId"),
            type = "string",
            name = "CacheClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FinalSnapshotIdentifier = schema.new({
            id = id.from(_N, "DeleteCacheClusterInput", "FinalSnapshotIdentifier"),
            type = "string",
            name = "FinalSnapshotIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteCacheClusterOutput = schema.new({
    id = id.from(_N, "DeleteCacheClusterResult"),
    type = "structure",
    members = {
        CacheCluster = schema.new({
            id = id.from(_N, "DeleteCacheClusterOutput", "CacheCluster"),
            type = "structure",
            name = "CacheCluster",
            target_id = id.from(_N, "CacheCluster"),
            target = M.CacheCluster,
        }),
    },
})

M.DeleteCacheParameterGroupInput = schema.new({
    id = id.from(_N, "DeleteCacheParameterGroupMessage"),
    type = "structure",
    members = {
        CacheParameterGroupName = schema.new({
            id = id.from(_N, "DeleteCacheParameterGroupInput", "CacheParameterGroupName"),
            type = "string",
            name = "CacheParameterGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteCacheParameterGroupOutput = prelude.Unit

M.DeleteCacheSecurityGroupInput = schema.new({
    id = id.from(_N, "DeleteCacheSecurityGroupMessage"),
    type = "structure",
    members = {
        CacheSecurityGroupName = schema.new({
            id = id.from(_N, "DeleteCacheSecurityGroupInput", "CacheSecurityGroupName"),
            type = "string",
            name = "CacheSecurityGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteCacheSecurityGroupOutput = prelude.Unit

M.CacheSubnetGroupInUse = schema.new({
    id = id.from(_N, "CacheSubnetGroupInUse"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CacheSubnetGroupInUse", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteCacheSubnetGroupInput = schema.new({
    id = id.from(_N, "DeleteCacheSubnetGroupMessage"),
    type = "structure",
    members = {
        CacheSubnetGroupName = schema.new({
            id = id.from(_N, "DeleteCacheSubnetGroupInput", "CacheSubnetGroupName"),
            type = "string",
            name = "CacheSubnetGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteCacheSubnetGroupOutput = prelude.Unit

M.DeleteGlobalReplicationGroupInput = schema.new({
    id = id.from(_N, "DeleteGlobalReplicationGroupMessage"),
    type = "structure",
    members = {
        GlobalReplicationGroupId = schema.new({
            id = id.from(_N, "DeleteGlobalReplicationGroupInput", "GlobalReplicationGroupId"),
            type = "string",
            name = "GlobalReplicationGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RetainPrimaryReplicationGroup = schema.new({
            id = id.from(_N, "DeleteGlobalReplicationGroupInput", "RetainPrimaryReplicationGroup"),
            type = "boolean",
            name = "RetainPrimaryReplicationGroup",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteGlobalReplicationGroupOutput = schema.new({
    id = id.from(_N, "DeleteGlobalReplicationGroupResult"),
    type = "structure",
    members = {
        GlobalReplicationGroup = schema.new({
            id = id.from(_N, "DeleteGlobalReplicationGroupOutput", "GlobalReplicationGroup"),
            type = "structure",
            name = "GlobalReplicationGroup",
            target_id = id.from(_N, "GlobalReplicationGroup"),
            target = M.GlobalReplicationGroup,
        }),
    },
})

M.DeleteReplicationGroupInput = schema.new({
    id = id.from(_N, "DeleteReplicationGroupMessage"),
    type = "structure",
    members = {
        ReplicationGroupId = schema.new({
            id = id.from(_N, "DeleteReplicationGroupInput", "ReplicationGroupId"),
            type = "string",
            name = "ReplicationGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RetainPrimaryCluster = schema.new({
            id = id.from(_N, "DeleteReplicationGroupInput", "RetainPrimaryCluster"),
            type = "boolean",
            name = "RetainPrimaryCluster",
            target_id = prelude.Boolean.id,
        }),
        FinalSnapshotIdentifier = schema.new({
            id = id.from(_N, "DeleteReplicationGroupInput", "FinalSnapshotIdentifier"),
            type = "string",
            name = "FinalSnapshotIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteReplicationGroupOutput = schema.new({
    id = id.from(_N, "DeleteReplicationGroupResult"),
    type = "structure",
    members = {
        ReplicationGroup = schema.new({
            id = id.from(_N, "DeleteReplicationGroupOutput", "ReplicationGroup"),
            type = "structure",
            name = "ReplicationGroup",
            target_id = id.from(_N, "ReplicationGroup"),
            target = M.ReplicationGroup,
        }),
    },
})

M.DeleteServerlessCacheInput = schema.new({
    id = id.from(_N, "DeleteServerlessCacheRequest"),
    type = "structure",
    members = {
        ServerlessCacheName = schema.new({
            id = id.from(_N, "DeleteServerlessCacheInput", "ServerlessCacheName"),
            type = "string",
            name = "ServerlessCacheName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FinalSnapshotName = schema.new({
            id = id.from(_N, "DeleteServerlessCacheInput", "FinalSnapshotName"),
            type = "string",
            name = "FinalSnapshotName",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteServerlessCacheOutput = schema.new({
    id = id.from(_N, "DeleteServerlessCacheResponse"),
    type = "structure",
    members = {
        ServerlessCache = schema.new({
            id = id.from(_N, "DeleteServerlessCacheOutput", "ServerlessCache"),
            type = "structure",
            name = "ServerlessCache",
            target_id = id.from(_N, "ServerlessCache"),
            target = M.ServerlessCache,
        }),
    },
})

M.DeleteServerlessCacheSnapshotInput = schema.new({
    id = id.from(_N, "DeleteServerlessCacheSnapshotRequest"),
    type = "structure",
    members = {
        ServerlessCacheSnapshotName = schema.new({
            id = id.from(_N, "DeleteServerlessCacheSnapshotInput", "ServerlessCacheSnapshotName"),
            type = "string",
            name = "ServerlessCacheSnapshotName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteServerlessCacheSnapshotOutput = schema.new({
    id = id.from(_N, "DeleteServerlessCacheSnapshotResponse"),
    type = "structure",
    members = {
        ServerlessCacheSnapshot = schema.new({
            id = id.from(_N, "DeleteServerlessCacheSnapshotOutput", "ServerlessCacheSnapshot"),
            type = "structure",
            name = "ServerlessCacheSnapshot",
            target_id = id.from(_N, "ServerlessCacheSnapshot"),
            target = M.ServerlessCacheSnapshot,
        }),
    },
})

M.DeleteSnapshotInput = schema.new({
    id = id.from(_N, "DeleteSnapshotMessage"),
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
    id = id.from(_N, "DeleteSnapshotResult"),
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

M.DefaultUserAssociatedToUserGroupFault = schema.new({
    id = id.from(_N, "DefaultUserAssociatedToUserGroupFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DefaultUserAssociatedToUserGroupFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteUserInput = schema.new({
    id = id.from(_N, "DeleteUserMessage"),
    type = "structure",
    members = {
        UserId = schema.new({
            id = id.from(_N, "DeleteUserInput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteUserOutput = schema.new({
    id = id.from(_N, "User"),
    type = "structure",
    members = {
        UserId = schema.new({
            id = id.from(_N, "DeleteUserOutput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
        }),
        UserName = schema.new({
            id = id.from(_N, "DeleteUserOutput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DeleteUserOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "DeleteUserOutput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        MinimumEngineVersion = schema.new({
            id = id.from(_N, "DeleteUserOutput", "MinimumEngineVersion"),
            type = "string",
            name = "MinimumEngineVersion",
            target_id = prelude.String.id,
        }),
        AccessString = schema.new({
            id = id.from(_N, "DeleteUserOutput", "AccessString"),
            type = "string",
            name = "AccessString",
            target_id = prelude.String.id,
        }),
        UserGroupIds = schema.new({
            id = id.from(_N, "DeleteUserOutput", "UserGroupIds"),
            type = "list",
            name = "UserGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Authentication = schema.new({
            id = id.from(_N, "DeleteUserOutput", "Authentication"),
            type = "structure",
            name = "Authentication",
            target_id = id.from(_N, "Authentication"),
            target = M.Authentication,
        }),
        ARN = schema.new({
            id = id.from(_N, "DeleteUserOutput", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
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

M.DeleteUserGroupInput = schema.new({
    id = id.from(_N, "DeleteUserGroupMessage"),
    type = "structure",
    members = {
        UserGroupId = schema.new({
            id = id.from(_N, "DeleteUserGroupInput", "UserGroupId"),
            type = "string",
            name = "UserGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteUserGroupOutput = schema.new({
    id = id.from(_N, "UserGroup"),
    type = "structure",
    members = {
        UserGroupId = schema.new({
            id = id.from(_N, "DeleteUserGroupOutput", "UserGroupId"),
            type = "string",
            name = "UserGroupId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DeleteUserGroupOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "DeleteUserGroupOutput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        UserIds = schema.new({
            id = id.from(_N, "DeleteUserGroupOutput", "UserIds"),
            type = "list",
            name = "UserIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MinimumEngineVersion = schema.new({
            id = id.from(_N, "DeleteUserGroupOutput", "MinimumEngineVersion"),
            type = "string",
            name = "MinimumEngineVersion",
            target_id = prelude.String.id,
        }),
        PendingChanges = schema.new({
            id = id.from(_N, "DeleteUserGroupOutput", "PendingChanges"),
            type = "structure",
            name = "PendingChanges",
            target_id = id.from(_N, "UserGroupPendingChanges"),
            target = M.UserGroupPendingChanges,
        }),
        ReplicationGroups = schema.new({
            id = id.from(_N, "DeleteUserGroupOutput", "ReplicationGroups"),
            type = "list",
            name = "ReplicationGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ServerlessCaches = schema.new({
            id = id.from(_N, "DeleteUserGroupOutput", "ServerlessCaches"),
            type = "list",
            name = "ServerlessCaches",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ARN = schema.new({
            id = id.from(_N, "DeleteUserGroupOutput", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeCacheClustersInput = schema.new({
    id = id.from(_N, "DescribeCacheClustersMessage"),
    type = "structure",
    members = {
        CacheClusterId = schema.new({
            id = id.from(_N, "DescribeCacheClustersInput", "CacheClusterId"),
            type = "string",
            name = "CacheClusterId",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeCacheClustersInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeCacheClustersInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        ShowCacheNodeInfo = schema.new({
            id = id.from(_N, "DescribeCacheClustersInput", "ShowCacheNodeInfo"),
            type = "boolean",
            name = "ShowCacheNodeInfo",
            target_id = prelude.Boolean.id,
        }),
        ShowCacheClustersNotInReplicationGroups = schema.new({
            id = id.from(_N, "DescribeCacheClustersInput", "ShowCacheClustersNotInReplicationGroups"),
            type = "boolean",
            name = "ShowCacheClustersNotInReplicationGroups",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DescribeCacheClustersOutput = schema.new({
    id = id.from(_N, "CacheClusterMessage"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeCacheClustersOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        CacheClusters = schema.new({
            id = id.from(_N, "DescribeCacheClustersOutput", "CacheClusters"),
            type = "list",
            name = "CacheClusters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.CacheCluster, traits = { [traits.XML_NAME] = { name = "CacheCluster" } } }),
        }),
    },
})

M.DescribeCacheEngineVersionsInput = schema.new({
    id = id.from(_N, "DescribeCacheEngineVersionsMessage"),
    type = "structure",
    members = {
        Engine = schema.new({
            id = id.from(_N, "DescribeCacheEngineVersionsInput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "DescribeCacheEngineVersionsInput", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        CacheParameterGroupFamily = schema.new({
            id = id.from(_N, "DescribeCacheEngineVersionsInput", "CacheParameterGroupFamily"),
            type = "string",
            name = "CacheParameterGroupFamily",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeCacheEngineVersionsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeCacheEngineVersionsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        DefaultOnly = schema.new({
            id = id.from(_N, "DescribeCacheEngineVersionsInput", "DefaultOnly"),
            type = "boolean",
            name = "DefaultOnly",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CacheEngineVersion = schema.new({
    id = id.from(_N, "CacheEngineVersion"),
    type = "structure",
    members = {
        Engine = schema.new({
            id = id.from(_N, "CacheEngineVersion", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "CacheEngineVersion", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        CacheParameterGroupFamily = schema.new({
            id = id.from(_N, "CacheEngineVersion", "CacheParameterGroupFamily"),
            type = "string",
            name = "CacheParameterGroupFamily",
            target_id = prelude.String.id,
        }),
        CacheEngineDescription = schema.new({
            id = id.from(_N, "CacheEngineVersion", "CacheEngineDescription"),
            type = "string",
            name = "CacheEngineDescription",
            target_id = prelude.String.id,
        }),
        CacheEngineVersionDescription = schema.new({
            id = id.from(_N, "CacheEngineVersion", "CacheEngineVersionDescription"),
            type = "string",
            name = "CacheEngineVersionDescription",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeCacheEngineVersionsOutput = schema.new({
    id = id.from(_N, "CacheEngineVersionMessage"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeCacheEngineVersionsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        CacheEngineVersions = schema.new({
            id = id.from(_N, "DescribeCacheEngineVersionsOutput", "CacheEngineVersions"),
            type = "list",
            name = "CacheEngineVersions",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.CacheEngineVersion, traits = { [traits.XML_NAME] = { name = "CacheEngineVersion" } } }),
        }),
    },
})

M.DescribeCacheParameterGroupsInput = schema.new({
    id = id.from(_N, "DescribeCacheParameterGroupsMessage"),
    type = "structure",
    members = {
        CacheParameterGroupName = schema.new({
            id = id.from(_N, "DescribeCacheParameterGroupsInput", "CacheParameterGroupName"),
            type = "string",
            name = "CacheParameterGroupName",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeCacheParameterGroupsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeCacheParameterGroupsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeCacheParameterGroupsOutput = schema.new({
    id = id.from(_N, "CacheParameterGroupsMessage"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeCacheParameterGroupsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        CacheParameterGroups = schema.new({
            id = id.from(_N, "DescribeCacheParameterGroupsOutput", "CacheParameterGroups"),
            type = "list",
            name = "CacheParameterGroups",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.CacheParameterGroup, traits = { [traits.XML_NAME] = { name = "CacheParameterGroup" } } }),
        }),
    },
})

M.DescribeCacheParametersInput = schema.new({
    id = id.from(_N, "DescribeCacheParametersMessage"),
    type = "structure",
    members = {
        CacheParameterGroupName = schema.new({
            id = id.from(_N, "DescribeCacheParametersInput", "CacheParameterGroupName"),
            type = "string",
            name = "CacheParameterGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Source = schema.new({
            id = id.from(_N, "DescribeCacheParametersInput", "Source"),
            type = "string",
            name = "Source",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeCacheParametersInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeCacheParametersInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.CacheNodeTypeSpecificValue = schema.new({
    id = id.from(_N, "CacheNodeTypeSpecificValue"),
    type = "structure",
    members = {
        CacheNodeType = schema.new({
            id = id.from(_N, "CacheNodeTypeSpecificValue", "CacheNodeType"),
            type = "string",
            name = "CacheNodeType",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "CacheNodeTypeSpecificValue", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.CacheNodeTypeSpecificParameter = schema.new({
    id = id.from(_N, "CacheNodeTypeSpecificParameter"),
    type = "structure",
    members = {
        ParameterName = schema.new({
            id = id.from(_N, "CacheNodeTypeSpecificParameter", "ParameterName"),
            type = "string",
            name = "ParameterName",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CacheNodeTypeSpecificParameter", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Source = schema.new({
            id = id.from(_N, "CacheNodeTypeSpecificParameter", "Source"),
            type = "string",
            name = "Source",
            target_id = prelude.String.id,
        }),
        DataType = schema.new({
            id = id.from(_N, "CacheNodeTypeSpecificParameter", "DataType"),
            type = "string",
            name = "DataType",
            target_id = prelude.String.id,
        }),
        AllowedValues = schema.new({
            id = id.from(_N, "CacheNodeTypeSpecificParameter", "AllowedValues"),
            type = "string",
            name = "AllowedValues",
            target_id = prelude.String.id,
        }),
        IsModifiable = schema.new({
            id = id.from(_N, "CacheNodeTypeSpecificParameter", "IsModifiable"),
            type = "boolean",
            name = "IsModifiable",
            target_id = prelude.Boolean.id,
        }),
        MinimumEngineVersion = schema.new({
            id = id.from(_N, "CacheNodeTypeSpecificParameter", "MinimumEngineVersion"),
            type = "string",
            name = "MinimumEngineVersion",
            target_id = prelude.String.id,
        }),
        CacheNodeTypeSpecificValues = schema.new({
            id = id.from(_N, "CacheNodeTypeSpecificParameter", "CacheNodeTypeSpecificValues"),
            type = "list",
            name = "CacheNodeTypeSpecificValues",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.CacheNodeTypeSpecificValue, traits = { [traits.XML_NAME] = { name = "CacheNodeTypeSpecificValue" } } }),
        }),
        ChangeType = schema.new({
            id = id.from(_N, "CacheNodeTypeSpecificParameter", "ChangeType"),
            type = "string",
            name = "ChangeType",
            target_id = prelude.String.id,
        }),
    },
})

M.Parameter = schema.new({
    id = id.from(_N, "Parameter"),
    type = "structure",
    members = {
        ParameterName = schema.new({
            id = id.from(_N, "Parameter", "ParameterName"),
            type = "string",
            name = "ParameterName",
            target_id = prelude.String.id,
        }),
        ParameterValue = schema.new({
            id = id.from(_N, "Parameter", "ParameterValue"),
            type = "string",
            name = "ParameterValue",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "Parameter", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Source = schema.new({
            id = id.from(_N, "Parameter", "Source"),
            type = "string",
            name = "Source",
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
        IsModifiable = schema.new({
            id = id.from(_N, "Parameter", "IsModifiable"),
            type = "boolean",
            name = "IsModifiable",
            target_id = prelude.Boolean.id,
        }),
        MinimumEngineVersion = schema.new({
            id = id.from(_N, "Parameter", "MinimumEngineVersion"),
            type = "string",
            name = "MinimumEngineVersion",
            target_id = prelude.String.id,
        }),
        ChangeType = schema.new({
            id = id.from(_N, "Parameter", "ChangeType"),
            type = "string",
            name = "ChangeType",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeCacheParametersOutput = schema.new({
    id = id.from(_N, "CacheParameterGroupDetails"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeCacheParametersOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Parameters = schema.new({
            id = id.from(_N, "DescribeCacheParametersOutput", "Parameters"),
            type = "list",
            name = "Parameters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Parameter, traits = { [traits.XML_NAME] = { name = "Parameter" } } }),
        }),
        CacheNodeTypeSpecificParameters = schema.new({
            id = id.from(_N, "DescribeCacheParametersOutput", "CacheNodeTypeSpecificParameters"),
            type = "list",
            name = "CacheNodeTypeSpecificParameters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.CacheNodeTypeSpecificParameter, traits = { [traits.XML_NAME] = { name = "CacheNodeTypeSpecificParameter" } } }),
        }),
    },
})

M.DescribeCacheSecurityGroupsInput = schema.new({
    id = id.from(_N, "DescribeCacheSecurityGroupsMessage"),
    type = "structure",
    members = {
        CacheSecurityGroupName = schema.new({
            id = id.from(_N, "DescribeCacheSecurityGroupsInput", "CacheSecurityGroupName"),
            type = "string",
            name = "CacheSecurityGroupName",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeCacheSecurityGroupsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeCacheSecurityGroupsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeCacheSecurityGroupsOutput = schema.new({
    id = id.from(_N, "CacheSecurityGroupMessage"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeCacheSecurityGroupsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        CacheSecurityGroups = schema.new({
            id = id.from(_N, "DescribeCacheSecurityGroupsOutput", "CacheSecurityGroups"),
            type = "list",
            name = "CacheSecurityGroups",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.CacheSecurityGroup, traits = { [traits.XML_NAME] = { name = "CacheSecurityGroup" } } }),
        }),
    },
})

M.DescribeCacheSubnetGroupsInput = schema.new({
    id = id.from(_N, "DescribeCacheSubnetGroupsMessage"),
    type = "structure",
    members = {
        CacheSubnetGroupName = schema.new({
            id = id.from(_N, "DescribeCacheSubnetGroupsInput", "CacheSubnetGroupName"),
            type = "string",
            name = "CacheSubnetGroupName",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeCacheSubnetGroupsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeCacheSubnetGroupsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeCacheSubnetGroupsOutput = schema.new({
    id = id.from(_N, "CacheSubnetGroupMessage"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeCacheSubnetGroupsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        CacheSubnetGroups = schema.new({
            id = id.from(_N, "DescribeCacheSubnetGroupsOutput", "CacheSubnetGroups"),
            type = "list",
            name = "CacheSubnetGroups",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.CacheSubnetGroup, traits = { [traits.XML_NAME] = { name = "CacheSubnetGroup" } } }),
        }),
    },
})

M.DescribeEngineDefaultParametersInput = schema.new({
    id = id.from(_N, "DescribeEngineDefaultParametersMessage"),
    type = "structure",
    members = {
        CacheParameterGroupFamily = schema.new({
            id = id.from(_N, "DescribeEngineDefaultParametersInput", "CacheParameterGroupFamily"),
            type = "string",
            name = "CacheParameterGroupFamily",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeEngineDefaultParametersInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeEngineDefaultParametersInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.EngineDefaults = schema.new({
    id = id.from(_N, "EngineDefaults"),
    type = "structure",
    members = {
        CacheParameterGroupFamily = schema.new({
            id = id.from(_N, "EngineDefaults", "CacheParameterGroupFamily"),
            type = "string",
            name = "CacheParameterGroupFamily",
            target_id = prelude.String.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "EngineDefaults", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Parameters = schema.new({
            id = id.from(_N, "EngineDefaults", "Parameters"),
            type = "list",
            name = "Parameters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Parameter, traits = { [traits.XML_NAME] = { name = "Parameter" } } }),
        }),
        CacheNodeTypeSpecificParameters = schema.new({
            id = id.from(_N, "EngineDefaults", "CacheNodeTypeSpecificParameters"),
            type = "list",
            name = "CacheNodeTypeSpecificParameters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.CacheNodeTypeSpecificParameter, traits = { [traits.XML_NAME] = { name = "CacheNodeTypeSpecificParameter" } } }),
        }),
    },
})

M.DescribeEngineDefaultParametersOutput = schema.new({
    id = id.from(_N, "DescribeEngineDefaultParametersResult"),
    type = "structure",
    members = {
        EngineDefaults = schema.new({
            id = id.from(_N, "DescribeEngineDefaultParametersOutput", "EngineDefaults"),
            type = "structure",
            name = "EngineDefaults",
            target_id = id.from(_N, "EngineDefaults"),
            target = M.EngineDefaults,
        }),
    },
})

M.DescribeEventsInput = schema.new({
    id = id.from(_N, "DescribeEventsMessage"),
    type = "structure",
    members = {
        SourceIdentifier = schema.new({
            id = id.from(_N, "DescribeEventsInput", "SourceIdentifier"),
            type = "string",
            name = "SourceIdentifier",
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
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeEventsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeEventsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.Event = schema.new({
    id = id.from(_N, "Event"),
    type = "structure",
    members = {
        SourceIdentifier = schema.new({
            id = id.from(_N, "Event", "SourceIdentifier"),
            type = "string",
            name = "SourceIdentifier",
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
    id = id.from(_N, "EventsMessage"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeEventsOutput", "Marker"),
            type = "string",
            name = "Marker",
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

M.DescribeGlobalReplicationGroupsInput = schema.new({
    id = id.from(_N, "DescribeGlobalReplicationGroupsMessage"),
    type = "structure",
    members = {
        GlobalReplicationGroupId = schema.new({
            id = id.from(_N, "DescribeGlobalReplicationGroupsInput", "GlobalReplicationGroupId"),
            type = "string",
            name = "GlobalReplicationGroupId",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeGlobalReplicationGroupsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeGlobalReplicationGroupsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        ShowMemberInfo = schema.new({
            id = id.from(_N, "DescribeGlobalReplicationGroupsInput", "ShowMemberInfo"),
            type = "boolean",
            name = "ShowMemberInfo",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DescribeGlobalReplicationGroupsOutput = schema.new({
    id = id.from(_N, "DescribeGlobalReplicationGroupsResult"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeGlobalReplicationGroupsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        GlobalReplicationGroups = schema.new({
            id = id.from(_N, "DescribeGlobalReplicationGroupsOutput", "GlobalReplicationGroups"),
            type = "list",
            name = "GlobalReplicationGroups",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.GlobalReplicationGroup, traits = { [traits.XML_NAME] = { name = "GlobalReplicationGroup" } } }),
        }),
    },
})

M.DescribeReplicationGroupsInput = schema.new({
    id = id.from(_N, "DescribeReplicationGroupsMessage"),
    type = "structure",
    members = {
        ReplicationGroupId = schema.new({
            id = id.from(_N, "DescribeReplicationGroupsInput", "ReplicationGroupId"),
            type = "string",
            name = "ReplicationGroupId",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeReplicationGroupsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeReplicationGroupsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeReplicationGroupsOutput = schema.new({
    id = id.from(_N, "ReplicationGroupMessage"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeReplicationGroupsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        ReplicationGroups = schema.new({
            id = id.from(_N, "DescribeReplicationGroupsOutput", "ReplicationGroups"),
            type = "list",
            name = "ReplicationGroups",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ReplicationGroup, traits = { [traits.XML_NAME] = { name = "ReplicationGroup" } } }),
        }),
    },
})

M.DescribeReservedCacheNodesInput = schema.new({
    id = id.from(_N, "DescribeReservedCacheNodesMessage"),
    type = "structure",
    members = {
        ReservedCacheNodeId = schema.new({
            id = id.from(_N, "DescribeReservedCacheNodesInput", "ReservedCacheNodeId"),
            type = "string",
            name = "ReservedCacheNodeId",
            target_id = prelude.String.id,
        }),
        ReservedCacheNodesOfferingId = schema.new({
            id = id.from(_N, "DescribeReservedCacheNodesInput", "ReservedCacheNodesOfferingId"),
            type = "string",
            name = "ReservedCacheNodesOfferingId",
            target_id = prelude.String.id,
        }),
        CacheNodeType = schema.new({
            id = id.from(_N, "DescribeReservedCacheNodesInput", "CacheNodeType"),
            type = "string",
            name = "CacheNodeType",
            target_id = prelude.String.id,
        }),
        Duration = schema.new({
            id = id.from(_N, "DescribeReservedCacheNodesInput", "Duration"),
            type = "string",
            name = "Duration",
            target_id = prelude.String.id,
        }),
        ProductDescription = schema.new({
            id = id.from(_N, "DescribeReservedCacheNodesInput", "ProductDescription"),
            type = "string",
            name = "ProductDescription",
            target_id = prelude.String.id,
        }),
        OfferingType = schema.new({
            id = id.from(_N, "DescribeReservedCacheNodesInput", "OfferingType"),
            type = "string",
            name = "OfferingType",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeReservedCacheNodesInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeReservedCacheNodesInput", "Marker"),
            type = "string",
            name = "Marker",
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
        }),
        RecurringChargeFrequency = schema.new({
            id = id.from(_N, "RecurringCharge", "RecurringChargeFrequency"),
            type = "string",
            name = "RecurringChargeFrequency",
            target_id = prelude.String.id,
        }),
    },
})

M.ReservedCacheNode = schema.new({
    id = id.from(_N, "ReservedCacheNode"),
    type = "structure",
    members = {
        ReservedCacheNodeId = schema.new({
            id = id.from(_N, "ReservedCacheNode", "ReservedCacheNodeId"),
            type = "string",
            name = "ReservedCacheNodeId",
            target_id = prelude.String.id,
        }),
        ReservedCacheNodesOfferingId = schema.new({
            id = id.from(_N, "ReservedCacheNode", "ReservedCacheNodesOfferingId"),
            type = "string",
            name = "ReservedCacheNodesOfferingId",
            target_id = prelude.String.id,
        }),
        CacheNodeType = schema.new({
            id = id.from(_N, "ReservedCacheNode", "CacheNodeType"),
            type = "string",
            name = "CacheNodeType",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "ReservedCacheNode", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        Duration = schema.new({
            id = id.from(_N, "ReservedCacheNode", "Duration"),
            type = "integer",
            name = "Duration",
            target_id = prelude.Integer.id,
        }),
        FixedPrice = schema.new({
            id = id.from(_N, "ReservedCacheNode", "FixedPrice"),
            type = "double",
            name = "FixedPrice",
            target_id = prelude.Double.id,
        }),
        UsagePrice = schema.new({
            id = id.from(_N, "ReservedCacheNode", "UsagePrice"),
            type = "double",
            name = "UsagePrice",
            target_id = prelude.Double.id,
        }),
        CacheNodeCount = schema.new({
            id = id.from(_N, "ReservedCacheNode", "CacheNodeCount"),
            type = "integer",
            name = "CacheNodeCount",
            target_id = prelude.Integer.id,
        }),
        ProductDescription = schema.new({
            id = id.from(_N, "ReservedCacheNode", "ProductDescription"),
            type = "string",
            name = "ProductDescription",
            target_id = prelude.String.id,
        }),
        OfferingType = schema.new({
            id = id.from(_N, "ReservedCacheNode", "OfferingType"),
            type = "string",
            name = "OfferingType",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "ReservedCacheNode", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        RecurringCharges = schema.new({
            id = id.from(_N, "ReservedCacheNode", "RecurringCharges"),
            type = "list",
            name = "RecurringCharges",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.RecurringCharge, traits = { [traits.XML_NAME] = { name = "RecurringCharge" } } }),
        }),
        ReservationARN = schema.new({
            id = id.from(_N, "ReservedCacheNode", "ReservationARN"),
            type = "string",
            name = "ReservationARN",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeReservedCacheNodesOutput = schema.new({
    id = id.from(_N, "ReservedCacheNodeMessage"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeReservedCacheNodesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        ReservedCacheNodes = schema.new({
            id = id.from(_N, "DescribeReservedCacheNodesOutput", "ReservedCacheNodes"),
            type = "list",
            name = "ReservedCacheNodes",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ReservedCacheNode, traits = { [traits.XML_NAME] = { name = "ReservedCacheNode" } } }),
        }),
    },
})

M.DescribeReservedCacheNodesOfferingsInput = schema.new({
    id = id.from(_N, "DescribeReservedCacheNodesOfferingsMessage"),
    type = "structure",
    members = {
        ReservedCacheNodesOfferingId = schema.new({
            id = id.from(_N, "DescribeReservedCacheNodesOfferingsInput", "ReservedCacheNodesOfferingId"),
            type = "string",
            name = "ReservedCacheNodesOfferingId",
            target_id = prelude.String.id,
        }),
        CacheNodeType = schema.new({
            id = id.from(_N, "DescribeReservedCacheNodesOfferingsInput", "CacheNodeType"),
            type = "string",
            name = "CacheNodeType",
            target_id = prelude.String.id,
        }),
        Duration = schema.new({
            id = id.from(_N, "DescribeReservedCacheNodesOfferingsInput", "Duration"),
            type = "string",
            name = "Duration",
            target_id = prelude.String.id,
        }),
        ProductDescription = schema.new({
            id = id.from(_N, "DescribeReservedCacheNodesOfferingsInput", "ProductDescription"),
            type = "string",
            name = "ProductDescription",
            target_id = prelude.String.id,
        }),
        OfferingType = schema.new({
            id = id.from(_N, "DescribeReservedCacheNodesOfferingsInput", "OfferingType"),
            type = "string",
            name = "OfferingType",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeReservedCacheNodesOfferingsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeReservedCacheNodesOfferingsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ReservedCacheNodesOffering = schema.new({
    id = id.from(_N, "ReservedCacheNodesOffering"),
    type = "structure",
    members = {
        ReservedCacheNodesOfferingId = schema.new({
            id = id.from(_N, "ReservedCacheNodesOffering", "ReservedCacheNodesOfferingId"),
            type = "string",
            name = "ReservedCacheNodesOfferingId",
            target_id = prelude.String.id,
        }),
        CacheNodeType = schema.new({
            id = id.from(_N, "ReservedCacheNodesOffering", "CacheNodeType"),
            type = "string",
            name = "CacheNodeType",
            target_id = prelude.String.id,
        }),
        Duration = schema.new({
            id = id.from(_N, "ReservedCacheNodesOffering", "Duration"),
            type = "integer",
            name = "Duration",
            target_id = prelude.Integer.id,
        }),
        FixedPrice = schema.new({
            id = id.from(_N, "ReservedCacheNodesOffering", "FixedPrice"),
            type = "double",
            name = "FixedPrice",
            target_id = prelude.Double.id,
        }),
        UsagePrice = schema.new({
            id = id.from(_N, "ReservedCacheNodesOffering", "UsagePrice"),
            type = "double",
            name = "UsagePrice",
            target_id = prelude.Double.id,
        }),
        ProductDescription = schema.new({
            id = id.from(_N, "ReservedCacheNodesOffering", "ProductDescription"),
            type = "string",
            name = "ProductDescription",
            target_id = prelude.String.id,
        }),
        OfferingType = schema.new({
            id = id.from(_N, "ReservedCacheNodesOffering", "OfferingType"),
            type = "string",
            name = "OfferingType",
            target_id = prelude.String.id,
        }),
        RecurringCharges = schema.new({
            id = id.from(_N, "ReservedCacheNodesOffering", "RecurringCharges"),
            type = "list",
            name = "RecurringCharges",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.RecurringCharge, traits = { [traits.XML_NAME] = { name = "RecurringCharge" } } }),
        }),
    },
})

M.DescribeReservedCacheNodesOfferingsOutput = schema.new({
    id = id.from(_N, "ReservedCacheNodesOfferingMessage"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeReservedCacheNodesOfferingsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        ReservedCacheNodesOfferings = schema.new({
            id = id.from(_N, "DescribeReservedCacheNodesOfferingsOutput", "ReservedCacheNodesOfferings"),
            type = "list",
            name = "ReservedCacheNodesOfferings",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ReservedCacheNodesOffering, traits = { [traits.XML_NAME] = { name = "ReservedCacheNodesOffering" } } }),
        }),
    },
})

M.ReservedCacheNodesOfferingNotFoundFault = schema.new({
    id = id.from(_N, "ReservedCacheNodesOfferingNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ReservedCacheNodesOfferingNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeServerlessCachesInput = schema.new({
    id = id.from(_N, "DescribeServerlessCachesRequest"),
    type = "structure",
    members = {
        ServerlessCacheName = schema.new({
            id = id.from(_N, "DescribeServerlessCachesInput", "ServerlessCacheName"),
            type = "string",
            name = "ServerlessCacheName",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeServerlessCachesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeServerlessCachesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeServerlessCachesOutput = schema.new({
    id = id.from(_N, "DescribeServerlessCachesResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeServerlessCachesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        ServerlessCaches = schema.new({
            id = id.from(_N, "DescribeServerlessCachesOutput", "ServerlessCaches"),
            type = "list",
            name = "ServerlessCaches",
            target_id = prelude.Document.id,
            list_member = M.ServerlessCache,
        }),
    },
})

M.DescribeServerlessCacheSnapshotsInput = schema.new({
    id = id.from(_N, "DescribeServerlessCacheSnapshotsRequest"),
    type = "structure",
    members = {
        ServerlessCacheName = schema.new({
            id = id.from(_N, "DescribeServerlessCacheSnapshotsInput", "ServerlessCacheName"),
            type = "string",
            name = "ServerlessCacheName",
            target_id = prelude.String.id,
        }),
        ServerlessCacheSnapshotName = schema.new({
            id = id.from(_N, "DescribeServerlessCacheSnapshotsInput", "ServerlessCacheSnapshotName"),
            type = "string",
            name = "ServerlessCacheSnapshotName",
            target_id = prelude.String.id,
        }),
        SnapshotType = schema.new({
            id = id.from(_N, "DescribeServerlessCacheSnapshotsInput", "SnapshotType"),
            type = "string",
            name = "SnapshotType",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeServerlessCacheSnapshotsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeServerlessCacheSnapshotsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DescribeServerlessCacheSnapshotsOutput = schema.new({
    id = id.from(_N, "DescribeServerlessCacheSnapshotsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeServerlessCacheSnapshotsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        ServerlessCacheSnapshots = schema.new({
            id = id.from(_N, "DescribeServerlessCacheSnapshotsOutput", "ServerlessCacheSnapshots"),
            type = "list",
            name = "ServerlessCacheSnapshots",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ServerlessCacheSnapshot, traits = { [traits.XML_NAME] = { name = "ServerlessCacheSnapshot" } } }),
        }),
    },
})

M.DescribeServiceUpdatesInput = schema.new({
    id = id.from(_N, "DescribeServiceUpdatesMessage"),
    type = "structure",
    members = {
        ServiceUpdateName = schema.new({
            id = id.from(_N, "DescribeServiceUpdatesInput", "ServiceUpdateName"),
            type = "string",
            name = "ServiceUpdateName",
            target_id = prelude.String.id,
        }),
        ServiceUpdateStatus = schema.new({
            id = id.from(_N, "DescribeServiceUpdatesInput", "ServiceUpdateStatus"),
            type = "list",
            name = "ServiceUpdateStatus",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeServiceUpdatesInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeServiceUpdatesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceUpdate = schema.new({
    id = id.from(_N, "ServiceUpdate"),
    type = "structure",
    members = {
        ServiceUpdateName = schema.new({
            id = id.from(_N, "ServiceUpdate", "ServiceUpdateName"),
            type = "string",
            name = "ServiceUpdateName",
            target_id = prelude.String.id,
        }),
        ServiceUpdateReleaseDate = schema.new({
            id = id.from(_N, "ServiceUpdate", "ServiceUpdateReleaseDate"),
            type = "timestamp",
            name = "ServiceUpdateReleaseDate",
            target_id = prelude.Timestamp.id,
        }),
        ServiceUpdateEndDate = schema.new({
            id = id.from(_N, "ServiceUpdate", "ServiceUpdateEndDate"),
            type = "timestamp",
            name = "ServiceUpdateEndDate",
            target_id = prelude.Timestamp.id,
        }),
        ServiceUpdateSeverity = schema.new({
            id = id.from(_N, "ServiceUpdate", "ServiceUpdateSeverity"),
            type = "string",
            name = "ServiceUpdateSeverity",
            target_id = prelude.String.id,
        }),
        ServiceUpdateRecommendedApplyByDate = schema.new({
            id = id.from(_N, "ServiceUpdate", "ServiceUpdateRecommendedApplyByDate"),
            type = "timestamp",
            name = "ServiceUpdateRecommendedApplyByDate",
            target_id = prelude.Timestamp.id,
        }),
        ServiceUpdateStatus = schema.new({
            id = id.from(_N, "ServiceUpdate", "ServiceUpdateStatus"),
            type = "string",
            name = "ServiceUpdateStatus",
            target_id = prelude.String.id,
        }),
        ServiceUpdateDescription = schema.new({
            id = id.from(_N, "ServiceUpdate", "ServiceUpdateDescription"),
            type = "string",
            name = "ServiceUpdateDescription",
            target_id = prelude.String.id,
        }),
        ServiceUpdateType = schema.new({
            id = id.from(_N, "ServiceUpdate", "ServiceUpdateType"),
            type = "string",
            name = "ServiceUpdateType",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "ServiceUpdate", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "ServiceUpdate", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        AutoUpdateAfterRecommendedApplyByDate = schema.new({
            id = id.from(_N, "ServiceUpdate", "AutoUpdateAfterRecommendedApplyByDate"),
            type = "boolean",
            name = "AutoUpdateAfterRecommendedApplyByDate",
            target_id = prelude.Boolean.id,
        }),
        EstimatedUpdateTime = schema.new({
            id = id.from(_N, "ServiceUpdate", "EstimatedUpdateTime"),
            type = "string",
            name = "EstimatedUpdateTime",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeServiceUpdatesOutput = schema.new({
    id = id.from(_N, "ServiceUpdatesMessage"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeServiceUpdatesOutput", "Marker"),
            type = "string",
            name = "Marker",
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
    id = id.from(_N, "DescribeSnapshotsMessage"),
    type = "structure",
    members = {
        ReplicationGroupId = schema.new({
            id = id.from(_N, "DescribeSnapshotsInput", "ReplicationGroupId"),
            type = "string",
            name = "ReplicationGroupId",
            target_id = prelude.String.id,
        }),
        CacheClusterId = schema.new({
            id = id.from(_N, "DescribeSnapshotsInput", "CacheClusterId"),
            type = "string",
            name = "CacheClusterId",
            target_id = prelude.String.id,
        }),
        SnapshotName = schema.new({
            id = id.from(_N, "DescribeSnapshotsInput", "SnapshotName"),
            type = "string",
            name = "SnapshotName",
            target_id = prelude.String.id,
        }),
        SnapshotSource = schema.new({
            id = id.from(_N, "DescribeSnapshotsInput", "SnapshotSource"),
            type = "string",
            name = "SnapshotSource",
            target_id = prelude.String.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeSnapshotsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeSnapshotsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        ShowNodeGroupConfig = schema.new({
            id = id.from(_N, "DescribeSnapshotsInput", "ShowNodeGroupConfig"),
            type = "boolean",
            name = "ShowNodeGroupConfig",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DescribeSnapshotsOutput = schema.new({
    id = id.from(_N, "DescribeSnapshotsListMessage"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeSnapshotsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Snapshots = schema.new({
            id = id.from(_N, "DescribeSnapshotsOutput", "Snapshots"),
            type = "list",
            name = "Snapshots",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Snapshot, traits = { [traits.XML_NAME] = { name = "Snapshot" } } }),
        }),
    },
})

M.TimeRangeFilter = schema.new({
    id = id.from(_N, "TimeRangeFilter"),
    type = "structure",
    members = {
        StartTime = schema.new({
            id = id.from(_N, "TimeRangeFilter", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "TimeRangeFilter", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeUpdateActionsInput = schema.new({
    id = id.from(_N, "DescribeUpdateActionsMessage"),
    type = "structure",
    members = {
        ServiceUpdateName = schema.new({
            id = id.from(_N, "DescribeUpdateActionsInput", "ServiceUpdateName"),
            type = "string",
            name = "ServiceUpdateName",
            target_id = prelude.String.id,
        }),
        ReplicationGroupIds = schema.new({
            id = id.from(_N, "DescribeUpdateActionsInput", "ReplicationGroupIds"),
            type = "list",
            name = "ReplicationGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CacheClusterIds = schema.new({
            id = id.from(_N, "DescribeUpdateActionsInput", "CacheClusterIds"),
            type = "list",
            name = "CacheClusterIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Engine = schema.new({
            id = id.from(_N, "DescribeUpdateActionsInput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        ServiceUpdateStatus = schema.new({
            id = id.from(_N, "DescribeUpdateActionsInput", "ServiceUpdateStatus"),
            type = "list",
            name = "ServiceUpdateStatus",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ServiceUpdateTimeRange = schema.new({
            id = id.from(_N, "DescribeUpdateActionsInput", "ServiceUpdateTimeRange"),
            type = "structure",
            name = "ServiceUpdateTimeRange",
            target_id = id.from(_N, "TimeRangeFilter"),
            target = M.TimeRangeFilter,
        }),
        UpdateActionStatus = schema.new({
            id = id.from(_N, "DescribeUpdateActionsInput", "UpdateActionStatus"),
            type = "list",
            name = "UpdateActionStatus",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ShowNodeLevelUpdateStatus = schema.new({
            id = id.from(_N, "DescribeUpdateActionsInput", "ShowNodeLevelUpdateStatus"),
            type = "boolean",
            name = "ShowNodeLevelUpdateStatus",
            target_id = prelude.Boolean.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeUpdateActionsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeUpdateActionsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.CacheNodeUpdateStatus = schema.new({
    id = id.from(_N, "CacheNodeUpdateStatus"),
    type = "structure",
    members = {
        CacheNodeId = schema.new({
            id = id.from(_N, "CacheNodeUpdateStatus", "CacheNodeId"),
            type = "string",
            name = "CacheNodeId",
            target_id = prelude.String.id,
        }),
        NodeUpdateStatus = schema.new({
            id = id.from(_N, "CacheNodeUpdateStatus", "NodeUpdateStatus"),
            type = "string",
            name = "NodeUpdateStatus",
            target_id = prelude.String.id,
        }),
        NodeDeletionDate = schema.new({
            id = id.from(_N, "CacheNodeUpdateStatus", "NodeDeletionDate"),
            type = "timestamp",
            name = "NodeDeletionDate",
            target_id = prelude.Timestamp.id,
        }),
        NodeUpdateStartDate = schema.new({
            id = id.from(_N, "CacheNodeUpdateStatus", "NodeUpdateStartDate"),
            type = "timestamp",
            name = "NodeUpdateStartDate",
            target_id = prelude.Timestamp.id,
        }),
        NodeUpdateEndDate = schema.new({
            id = id.from(_N, "CacheNodeUpdateStatus", "NodeUpdateEndDate"),
            type = "timestamp",
            name = "NodeUpdateEndDate",
            target_id = prelude.Timestamp.id,
        }),
        NodeUpdateInitiatedBy = schema.new({
            id = id.from(_N, "CacheNodeUpdateStatus", "NodeUpdateInitiatedBy"),
            type = "string",
            name = "NodeUpdateInitiatedBy",
            target_id = prelude.String.id,
        }),
        NodeUpdateInitiatedDate = schema.new({
            id = id.from(_N, "CacheNodeUpdateStatus", "NodeUpdateInitiatedDate"),
            type = "timestamp",
            name = "NodeUpdateInitiatedDate",
            target_id = prelude.Timestamp.id,
        }),
        NodeUpdateStatusModifiedDate = schema.new({
            id = id.from(_N, "CacheNodeUpdateStatus", "NodeUpdateStatusModifiedDate"),
            type = "timestamp",
            name = "NodeUpdateStatusModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.NodeGroupMemberUpdateStatus = schema.new({
    id = id.from(_N, "NodeGroupMemberUpdateStatus"),
    type = "structure",
    members = {
        CacheClusterId = schema.new({
            id = id.from(_N, "NodeGroupMemberUpdateStatus", "CacheClusterId"),
            type = "string",
            name = "CacheClusterId",
            target_id = prelude.String.id,
        }),
        CacheNodeId = schema.new({
            id = id.from(_N, "NodeGroupMemberUpdateStatus", "CacheNodeId"),
            type = "string",
            name = "CacheNodeId",
            target_id = prelude.String.id,
        }),
        NodeUpdateStatus = schema.new({
            id = id.from(_N, "NodeGroupMemberUpdateStatus", "NodeUpdateStatus"),
            type = "string",
            name = "NodeUpdateStatus",
            target_id = prelude.String.id,
        }),
        NodeDeletionDate = schema.new({
            id = id.from(_N, "NodeGroupMemberUpdateStatus", "NodeDeletionDate"),
            type = "timestamp",
            name = "NodeDeletionDate",
            target_id = prelude.Timestamp.id,
        }),
        NodeUpdateStartDate = schema.new({
            id = id.from(_N, "NodeGroupMemberUpdateStatus", "NodeUpdateStartDate"),
            type = "timestamp",
            name = "NodeUpdateStartDate",
            target_id = prelude.Timestamp.id,
        }),
        NodeUpdateEndDate = schema.new({
            id = id.from(_N, "NodeGroupMemberUpdateStatus", "NodeUpdateEndDate"),
            type = "timestamp",
            name = "NodeUpdateEndDate",
            target_id = prelude.Timestamp.id,
        }),
        NodeUpdateInitiatedBy = schema.new({
            id = id.from(_N, "NodeGroupMemberUpdateStatus", "NodeUpdateInitiatedBy"),
            type = "string",
            name = "NodeUpdateInitiatedBy",
            target_id = prelude.String.id,
        }),
        NodeUpdateInitiatedDate = schema.new({
            id = id.from(_N, "NodeGroupMemberUpdateStatus", "NodeUpdateInitiatedDate"),
            type = "timestamp",
            name = "NodeUpdateInitiatedDate",
            target_id = prelude.Timestamp.id,
        }),
        NodeUpdateStatusModifiedDate = schema.new({
            id = id.from(_N, "NodeGroupMemberUpdateStatus", "NodeUpdateStatusModifiedDate"),
            type = "timestamp",
            name = "NodeUpdateStatusModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.NodeGroupUpdateStatus = schema.new({
    id = id.from(_N, "NodeGroupUpdateStatus"),
    type = "structure",
    members = {
        NodeGroupId = schema.new({
            id = id.from(_N, "NodeGroupUpdateStatus", "NodeGroupId"),
            type = "string",
            name = "NodeGroupId",
            target_id = prelude.String.id,
        }),
        NodeGroupMemberUpdateStatus = schema.new({
            id = id.from(_N, "NodeGroupUpdateStatus", "NodeGroupMemberUpdateStatus"),
            type = "list",
            name = "NodeGroupMemberUpdateStatus",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.NodeGroupMemberUpdateStatus, traits = { [traits.XML_NAME] = { name = "NodeGroupMemberUpdateStatus" } } }),
        }),
    },
})

M.UpdateAction = schema.new({
    id = id.from(_N, "UpdateAction"),
    type = "structure",
    members = {
        ReplicationGroupId = schema.new({
            id = id.from(_N, "UpdateAction", "ReplicationGroupId"),
            type = "string",
            name = "ReplicationGroupId",
            target_id = prelude.String.id,
        }),
        CacheClusterId = schema.new({
            id = id.from(_N, "UpdateAction", "CacheClusterId"),
            type = "string",
            name = "CacheClusterId",
            target_id = prelude.String.id,
        }),
        ServiceUpdateName = schema.new({
            id = id.from(_N, "UpdateAction", "ServiceUpdateName"),
            type = "string",
            name = "ServiceUpdateName",
            target_id = prelude.String.id,
        }),
        ServiceUpdateReleaseDate = schema.new({
            id = id.from(_N, "UpdateAction", "ServiceUpdateReleaseDate"),
            type = "timestamp",
            name = "ServiceUpdateReleaseDate",
            target_id = prelude.Timestamp.id,
        }),
        ServiceUpdateSeverity = schema.new({
            id = id.from(_N, "UpdateAction", "ServiceUpdateSeverity"),
            type = "string",
            name = "ServiceUpdateSeverity",
            target_id = prelude.String.id,
        }),
        ServiceUpdateStatus = schema.new({
            id = id.from(_N, "UpdateAction", "ServiceUpdateStatus"),
            type = "string",
            name = "ServiceUpdateStatus",
            target_id = prelude.String.id,
        }),
        ServiceUpdateRecommendedApplyByDate = schema.new({
            id = id.from(_N, "UpdateAction", "ServiceUpdateRecommendedApplyByDate"),
            type = "timestamp",
            name = "ServiceUpdateRecommendedApplyByDate",
            target_id = prelude.Timestamp.id,
        }),
        ServiceUpdateType = schema.new({
            id = id.from(_N, "UpdateAction", "ServiceUpdateType"),
            type = "string",
            name = "ServiceUpdateType",
            target_id = prelude.String.id,
        }),
        UpdateActionAvailableDate = schema.new({
            id = id.from(_N, "UpdateAction", "UpdateActionAvailableDate"),
            type = "timestamp",
            name = "UpdateActionAvailableDate",
            target_id = prelude.Timestamp.id,
        }),
        UpdateActionStatus = schema.new({
            id = id.from(_N, "UpdateAction", "UpdateActionStatus"),
            type = "string",
            name = "UpdateActionStatus",
            target_id = prelude.String.id,
        }),
        NodesUpdated = schema.new({
            id = id.from(_N, "UpdateAction", "NodesUpdated"),
            type = "string",
            name = "NodesUpdated",
            target_id = prelude.String.id,
        }),
        UpdateActionStatusModifiedDate = schema.new({
            id = id.from(_N, "UpdateAction", "UpdateActionStatusModifiedDate"),
            type = "timestamp",
            name = "UpdateActionStatusModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        SlaMet = schema.new({
            id = id.from(_N, "UpdateAction", "SlaMet"),
            type = "string",
            name = "SlaMet",
            target_id = prelude.String.id,
        }),
        NodeGroupUpdateStatus = schema.new({
            id = id.from(_N, "UpdateAction", "NodeGroupUpdateStatus"),
            type = "list",
            name = "NodeGroupUpdateStatus",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.NodeGroupUpdateStatus, traits = { [traits.XML_NAME] = { name = "NodeGroupUpdateStatus" } } }),
        }),
        CacheNodeUpdateStatus = schema.new({
            id = id.from(_N, "UpdateAction", "CacheNodeUpdateStatus"),
            type = "list",
            name = "CacheNodeUpdateStatus",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.CacheNodeUpdateStatus, traits = { [traits.XML_NAME] = { name = "CacheNodeUpdateStatus" } } }),
        }),
        EstimatedUpdateTime = schema.new({
            id = id.from(_N, "UpdateAction", "EstimatedUpdateTime"),
            type = "string",
            name = "EstimatedUpdateTime",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "UpdateAction", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeUpdateActionsOutput = schema.new({
    id = id.from(_N, "UpdateActionsMessage"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeUpdateActionsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        UpdateActions = schema.new({
            id = id.from(_N, "DescribeUpdateActionsOutput", "UpdateActions"),
            type = "list",
            name = "UpdateActions",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.UpdateAction, traits = { [traits.XML_NAME] = { name = "UpdateAction" } } }),
        }),
    },
})

M.DescribeUserGroupsInput = schema.new({
    id = id.from(_N, "DescribeUserGroupsMessage"),
    type = "structure",
    members = {
        UserGroupId = schema.new({
            id = id.from(_N, "DescribeUserGroupsInput", "UserGroupId"),
            type = "string",
            name = "UserGroupId",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeUserGroupsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeUserGroupsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.UserGroup = schema.new({
    id = id.from(_N, "UserGroup"),
    type = "structure",
    members = {
        UserGroupId = schema.new({
            id = id.from(_N, "UserGroup", "UserGroupId"),
            type = "string",
            name = "UserGroupId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "UserGroup", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "UserGroup", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        UserIds = schema.new({
            id = id.from(_N, "UserGroup", "UserIds"),
            type = "list",
            name = "UserIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MinimumEngineVersion = schema.new({
            id = id.from(_N, "UserGroup", "MinimumEngineVersion"),
            type = "string",
            name = "MinimumEngineVersion",
            target_id = prelude.String.id,
        }),
        PendingChanges = schema.new({
            id = id.from(_N, "UserGroup", "PendingChanges"),
            type = "structure",
            name = "PendingChanges",
            target_id = id.from(_N, "UserGroupPendingChanges"),
            target = M.UserGroupPendingChanges,
        }),
        ReplicationGroups = schema.new({
            id = id.from(_N, "UserGroup", "ReplicationGroups"),
            type = "list",
            name = "ReplicationGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ServerlessCaches = schema.new({
            id = id.from(_N, "UserGroup", "ServerlessCaches"),
            type = "list",
            name = "ServerlessCaches",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ARN = schema.new({
            id = id.from(_N, "UserGroup", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeUserGroupsOutput = schema.new({
    id = id.from(_N, "DescribeUserGroupsResult"),
    type = "structure",
    members = {
        UserGroups = schema.new({
            id = id.from(_N, "DescribeUserGroupsOutput", "UserGroups"),
            type = "list",
            name = "UserGroups",
            target_id = prelude.Document.id,
            list_member = M.UserGroup,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeUserGroupsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
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
    id = id.from(_N, "DescribeUsersMessage"),
    type = "structure",
    members = {
        Engine = schema.new({
            id = id.from(_N, "DescribeUsersInput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        UserId = schema.new({
            id = id.from(_N, "DescribeUsersInput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeUsersInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.Filter,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeUsersInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeUsersInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.User = schema.new({
    id = id.from(_N, "User"),
    type = "structure",
    members = {
        UserId = schema.new({
            id = id.from(_N, "User", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
        }),
        UserName = schema.new({
            id = id.from(_N, "User", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "User", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "User", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        MinimumEngineVersion = schema.new({
            id = id.from(_N, "User", "MinimumEngineVersion"),
            type = "string",
            name = "MinimumEngineVersion",
            target_id = prelude.String.id,
        }),
        AccessString = schema.new({
            id = id.from(_N, "User", "AccessString"),
            type = "string",
            name = "AccessString",
            target_id = prelude.String.id,
        }),
        UserGroupIds = schema.new({
            id = id.from(_N, "User", "UserGroupIds"),
            type = "list",
            name = "UserGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
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

M.DescribeUsersOutput = schema.new({
    id = id.from(_N, "DescribeUsersResult"),
    type = "structure",
    members = {
        Users = schema.new({
            id = id.from(_N, "DescribeUsersOutput", "Users"),
            type = "list",
            name = "Users",
            target_id = prelude.Document.id,
            list_member = M.User,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeUsersOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DisassociateGlobalReplicationGroupInput = schema.new({
    id = id.from(_N, "DisassociateGlobalReplicationGroupMessage"),
    type = "structure",
    members = {
        GlobalReplicationGroupId = schema.new({
            id = id.from(_N, "DisassociateGlobalReplicationGroupInput", "GlobalReplicationGroupId"),
            type = "string",
            name = "GlobalReplicationGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReplicationGroupId = schema.new({
            id = id.from(_N, "DisassociateGlobalReplicationGroupInput", "ReplicationGroupId"),
            type = "string",
            name = "ReplicationGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReplicationGroupRegion = schema.new({
            id = id.from(_N, "DisassociateGlobalReplicationGroupInput", "ReplicationGroupRegion"),
            type = "string",
            name = "ReplicationGroupRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateGlobalReplicationGroupOutput = schema.new({
    id = id.from(_N, "DisassociateGlobalReplicationGroupResult"),
    type = "structure",
    members = {
        GlobalReplicationGroup = schema.new({
            id = id.from(_N, "DisassociateGlobalReplicationGroupOutput", "GlobalReplicationGroup"),
            type = "structure",
            name = "GlobalReplicationGroup",
            target_id = id.from(_N, "GlobalReplicationGroup"),
            target = M.GlobalReplicationGroup,
        }),
    },
})

M.ExportServerlessCacheSnapshotInput = schema.new({
    id = id.from(_N, "ExportServerlessCacheSnapshotRequest"),
    type = "structure",
    members = {
        ServerlessCacheSnapshotName = schema.new({
            id = id.from(_N, "ExportServerlessCacheSnapshotInput", "ServerlessCacheSnapshotName"),
            type = "string",
            name = "ServerlessCacheSnapshotName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        S3BucketName = schema.new({
            id = id.from(_N, "ExportServerlessCacheSnapshotInput", "S3BucketName"),
            type = "string",
            name = "S3BucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ExportServerlessCacheSnapshotOutput = schema.new({
    id = id.from(_N, "ExportServerlessCacheSnapshotResponse"),
    type = "structure",
    members = {
        ServerlessCacheSnapshot = schema.new({
            id = id.from(_N, "ExportServerlessCacheSnapshotOutput", "ServerlessCacheSnapshot"),
            type = "structure",
            name = "ServerlessCacheSnapshot",
            target_id = id.from(_N, "ServerlessCacheSnapshot"),
            target = M.ServerlessCacheSnapshot,
        }),
    },
})

M.FailoverGlobalReplicationGroupInput = schema.new({
    id = id.from(_N, "FailoverGlobalReplicationGroupMessage"),
    type = "structure",
    members = {
        GlobalReplicationGroupId = schema.new({
            id = id.from(_N, "FailoverGlobalReplicationGroupInput", "GlobalReplicationGroupId"),
            type = "string",
            name = "GlobalReplicationGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrimaryRegion = schema.new({
            id = id.from(_N, "FailoverGlobalReplicationGroupInput", "PrimaryRegion"),
            type = "string",
            name = "PrimaryRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrimaryReplicationGroupId = schema.new({
            id = id.from(_N, "FailoverGlobalReplicationGroupInput", "PrimaryReplicationGroupId"),
            type = "string",
            name = "PrimaryReplicationGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FailoverGlobalReplicationGroupOutput = schema.new({
    id = id.from(_N, "FailoverGlobalReplicationGroupResult"),
    type = "structure",
    members = {
        GlobalReplicationGroup = schema.new({
            id = id.from(_N, "FailoverGlobalReplicationGroupOutput", "GlobalReplicationGroup"),
            type = "structure",
            name = "GlobalReplicationGroup",
            target_id = id.from(_N, "GlobalReplicationGroup"),
            target = M.GlobalReplicationGroup,
        }),
    },
})

M.ReshardingConfiguration = schema.new({
    id = id.from(_N, "ReshardingConfiguration"),
    type = "structure",
    members = {
        NodeGroupId = schema.new({
            id = id.from(_N, "ReshardingConfiguration", "NodeGroupId"),
            type = "string",
            name = "NodeGroupId",
            target_id = prelude.String.id,
        }),
        PreferredAvailabilityZones = schema.new({
            id = id.from(_N, "ReshardingConfiguration", "PreferredAvailabilityZones"),
            type = "list",
            name = "PreferredAvailabilityZones",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "AvailabilityZone" } } }),
        }),
    },
})

M.RegionalConfiguration = schema.new({
    id = id.from(_N, "RegionalConfiguration"),
    type = "structure",
    members = {
        ReplicationGroupId = schema.new({
            id = id.from(_N, "RegionalConfiguration", "ReplicationGroupId"),
            type = "string",
            name = "ReplicationGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReplicationGroupRegion = schema.new({
            id = id.from(_N, "RegionalConfiguration", "ReplicationGroupRegion"),
            type = "string",
            name = "ReplicationGroupRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReshardingConfiguration = schema.new({
            id = id.from(_N, "RegionalConfiguration", "ReshardingConfiguration"),
            type = "list",
            name = "ReshardingConfiguration",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ReshardingConfiguration, traits = { [traits.XML_NAME] = { name = "ReshardingConfiguration" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IncreaseNodeGroupsInGlobalReplicationGroupInput = schema.new({
    id = id.from(_N, "IncreaseNodeGroupsInGlobalReplicationGroupMessage"),
    type = "structure",
    members = {
        GlobalReplicationGroupId = schema.new({
            id = id.from(_N, "IncreaseNodeGroupsInGlobalReplicationGroupInput", "GlobalReplicationGroupId"),
            type = "string",
            name = "GlobalReplicationGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NodeGroupCount = schema.new({
            id = id.from(_N, "IncreaseNodeGroupsInGlobalReplicationGroupInput", "NodeGroupCount"),
            type = "integer",
            name = "NodeGroupCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegionalConfigurations = schema.new({
            id = id.from(_N, "IncreaseNodeGroupsInGlobalReplicationGroupInput", "RegionalConfigurations"),
            type = "list",
            name = "RegionalConfigurations",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.RegionalConfiguration, traits = { [traits.XML_NAME] = { name = "RegionalConfiguration" } } }),
        }),
        ApplyImmediately = schema.new({
            id = id.from(_N, "IncreaseNodeGroupsInGlobalReplicationGroupInput", "ApplyImmediately"),
            type = "boolean",
            name = "ApplyImmediately",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IncreaseNodeGroupsInGlobalReplicationGroupOutput = schema.new({
    id = id.from(_N, "IncreaseNodeGroupsInGlobalReplicationGroupResult"),
    type = "structure",
    members = {
        GlobalReplicationGroup = schema.new({
            id = id.from(_N, "IncreaseNodeGroupsInGlobalReplicationGroupOutput", "GlobalReplicationGroup"),
            type = "structure",
            name = "GlobalReplicationGroup",
            target_id = id.from(_N, "GlobalReplicationGroup"),
            target = M.GlobalReplicationGroup,
        }),
    },
})

M.IncreaseReplicaCountInput = schema.new({
    id = id.from(_N, "IncreaseReplicaCountMessage"),
    type = "structure",
    members = {
        ReplicationGroupId = schema.new({
            id = id.from(_N, "IncreaseReplicaCountInput", "ReplicationGroupId"),
            type = "string",
            name = "ReplicationGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NewReplicaCount = schema.new({
            id = id.from(_N, "IncreaseReplicaCountInput", "NewReplicaCount"),
            type = "integer",
            name = "NewReplicaCount",
            target_id = prelude.Integer.id,
        }),
        ReplicaConfiguration = schema.new({
            id = id.from(_N, "IncreaseReplicaCountInput", "ReplicaConfiguration"),
            type = "list",
            name = "ReplicaConfiguration",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ConfigureShard, traits = { [traits.XML_NAME] = { name = "ConfigureShard" } } }),
        }),
        ApplyImmediately = schema.new({
            id = id.from(_N, "IncreaseReplicaCountInput", "ApplyImmediately"),
            type = "boolean",
            name = "ApplyImmediately",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IncreaseReplicaCountOutput = schema.new({
    id = id.from(_N, "IncreaseReplicaCountResult"),
    type = "structure",
    members = {
        ReplicationGroup = schema.new({
            id = id.from(_N, "IncreaseReplicaCountOutput", "ReplicationGroup"),
            type = "structure",
            name = "ReplicationGroup",
            target_id = id.from(_N, "ReplicationGroup"),
            target = M.ReplicationGroup,
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

M.ListAllowedNodeTypeModificationsInput = schema.new({
    id = id.from(_N, "ListAllowedNodeTypeModificationsMessage"),
    type = "structure",
    members = {
        CacheClusterId = schema.new({
            id = id.from(_N, "ListAllowedNodeTypeModificationsInput", "CacheClusterId"),
            type = "string",
            name = "CacheClusterId",
            target_id = prelude.String.id,
        }),
        ReplicationGroupId = schema.new({
            id = id.from(_N, "ListAllowedNodeTypeModificationsInput", "ReplicationGroupId"),
            type = "string",
            name = "ReplicationGroupId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAllowedNodeTypeModificationsOutput = schema.new({
    id = id.from(_N, "AllowedNodeTypeModificationsMessage"),
    type = "structure",
    members = {
        ScaleUpModifications = schema.new({
            id = id.from(_N, "ListAllowedNodeTypeModificationsOutput", "ScaleUpModifications"),
            type = "list",
            name = "ScaleUpModifications",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ScaleDownModifications = schema.new({
            id = id.from(_N, "ListAllowedNodeTypeModificationsOutput", "ScaleDownModifications"),
            type = "list",
            name = "ScaleDownModifications",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceMessage"),
    type = "structure",
    members = {
        ResourceName = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceName"),
            type = "string",
            name = "ResourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "TagListMessage"),
    type = "structure",
    members = {
        TagList = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "TagList"),
            type = "list",
            name = "TagList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.ModifyCacheClusterInput = schema.new({
    id = id.from(_N, "ModifyCacheClusterMessage"),
    type = "structure",
    members = {
        CacheClusterId = schema.new({
            id = id.from(_N, "ModifyCacheClusterInput", "CacheClusterId"),
            type = "string",
            name = "CacheClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NumCacheNodes = schema.new({
            id = id.from(_N, "ModifyCacheClusterInput", "NumCacheNodes"),
            type = "integer",
            name = "NumCacheNodes",
            target_id = prelude.Integer.id,
        }),
        CacheNodeIdsToRemove = schema.new({
            id = id.from(_N, "ModifyCacheClusterInput", "CacheNodeIdsToRemove"),
            type = "list",
            name = "CacheNodeIdsToRemove",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "CacheNodeId" } } }),
        }),
        AZMode = schema.new({
            id = id.from(_N, "ModifyCacheClusterInput", "AZMode"),
            type = "string",
            name = "AZMode",
            target_id = prelude.String.id,
        }),
        NewAvailabilityZones = schema.new({
            id = id.from(_N, "ModifyCacheClusterInput", "NewAvailabilityZones"),
            type = "list",
            name = "NewAvailabilityZones",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "PreferredAvailabilityZone" } } }),
        }),
        CacheSecurityGroupNames = schema.new({
            id = id.from(_N, "ModifyCacheClusterInput", "CacheSecurityGroupNames"),
            type = "list",
            name = "CacheSecurityGroupNames",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "CacheSecurityGroupName" } } }),
        }),
        SecurityGroupIds = schema.new({
            id = id.from(_N, "ModifyCacheClusterInput", "SecurityGroupIds"),
            type = "list",
            name = "SecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SecurityGroupId" } } }),
        }),
        PreferredMaintenanceWindow = schema.new({
            id = id.from(_N, "ModifyCacheClusterInput", "PreferredMaintenanceWindow"),
            type = "string",
            name = "PreferredMaintenanceWindow",
            target_id = prelude.String.id,
        }),
        NotificationTopicArn = schema.new({
            id = id.from(_N, "ModifyCacheClusterInput", "NotificationTopicArn"),
            type = "string",
            name = "NotificationTopicArn",
            target_id = prelude.String.id,
        }),
        CacheParameterGroupName = schema.new({
            id = id.from(_N, "ModifyCacheClusterInput", "CacheParameterGroupName"),
            type = "string",
            name = "CacheParameterGroupName",
            target_id = prelude.String.id,
        }),
        NotificationTopicStatus = schema.new({
            id = id.from(_N, "ModifyCacheClusterInput", "NotificationTopicStatus"),
            type = "string",
            name = "NotificationTopicStatus",
            target_id = prelude.String.id,
        }),
        ApplyImmediately = schema.new({
            id = id.from(_N, "ModifyCacheClusterInput", "ApplyImmediately"),
            type = "boolean",
            name = "ApplyImmediately",
            target_id = prelude.Boolean.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "ModifyCacheClusterInput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "ModifyCacheClusterInput", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        AutoMinorVersionUpgrade = schema.new({
            id = id.from(_N, "ModifyCacheClusterInput", "AutoMinorVersionUpgrade"),
            type = "boolean",
            name = "AutoMinorVersionUpgrade",
            target_id = prelude.Boolean.id,
        }),
        SnapshotRetentionLimit = schema.new({
            id = id.from(_N, "ModifyCacheClusterInput", "SnapshotRetentionLimit"),
            type = "integer",
            name = "SnapshotRetentionLimit",
            target_id = prelude.Integer.id,
        }),
        SnapshotWindow = schema.new({
            id = id.from(_N, "ModifyCacheClusterInput", "SnapshotWindow"),
            type = "string",
            name = "SnapshotWindow",
            target_id = prelude.String.id,
        }),
        CacheNodeType = schema.new({
            id = id.from(_N, "ModifyCacheClusterInput", "CacheNodeType"),
            type = "string",
            name = "CacheNodeType",
            target_id = prelude.String.id,
        }),
        AuthToken = schema.new({
            id = id.from(_N, "ModifyCacheClusterInput", "AuthToken"),
            type = "string",
            name = "AuthToken",
            target_id = prelude.String.id,
        }),
        AuthTokenUpdateStrategy = schema.new({
            id = id.from(_N, "ModifyCacheClusterInput", "AuthTokenUpdateStrategy"),
            type = "string",
            name = "AuthTokenUpdateStrategy",
            target_id = prelude.String.id,
        }),
        LogDeliveryConfigurations = schema.new({
            id = id.from(_N, "ModifyCacheClusterInput", "LogDeliveryConfigurations"),
            type = "list",
            name = "LogDeliveryConfigurations",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.LogDeliveryConfigurationRequest, traits = { [traits.XML_NAME] = { name = "LogDeliveryConfigurationRequest" } } }),
        }),
        IpDiscovery = schema.new({
            id = id.from(_N, "ModifyCacheClusterInput", "IpDiscovery"),
            type = "string",
            name = "IpDiscovery",
            target_id = prelude.String.id,
        }),
        ScaleConfig = schema.new({
            id = id.from(_N, "ModifyCacheClusterInput", "ScaleConfig"),
            type = "structure",
            name = "ScaleConfig",
            target_id = id.from(_N, "ScaleConfig"),
            target = M.ScaleConfig,
        }),
    },
})

M.ModifyCacheClusterOutput = schema.new({
    id = id.from(_N, "ModifyCacheClusterResult"),
    type = "structure",
    members = {
        CacheCluster = schema.new({
            id = id.from(_N, "ModifyCacheClusterOutput", "CacheCluster"),
            type = "structure",
            name = "CacheCluster",
            target_id = id.from(_N, "CacheCluster"),
            target = M.CacheCluster,
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

M.ModifyCacheParameterGroupInput = schema.new({
    id = id.from(_N, "ModifyCacheParameterGroupMessage"),
    type = "structure",
    members = {
        CacheParameterGroupName = schema.new({
            id = id.from(_N, "ModifyCacheParameterGroupInput", "CacheParameterGroupName"),
            type = "string",
            name = "CacheParameterGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ParameterNameValues = schema.new({
            id = id.from(_N, "ModifyCacheParameterGroupInput", "ParameterNameValues"),
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

M.ModifyCacheParameterGroupOutput = schema.new({
    id = id.from(_N, "CacheParameterGroupNameMessage"),
    type = "structure",
    members = {
        CacheParameterGroupName = schema.new({
            id = id.from(_N, "ModifyCacheParameterGroupOutput", "CacheParameterGroupName"),
            type = "string",
            name = "CacheParameterGroupName",
            target_id = prelude.String.id,
        }),
    },
})

M.ModifyCacheSubnetGroupInput = schema.new({
    id = id.from(_N, "ModifyCacheSubnetGroupMessage"),
    type = "structure",
    members = {
        CacheSubnetGroupName = schema.new({
            id = id.from(_N, "ModifyCacheSubnetGroupInput", "CacheSubnetGroupName"),
            type = "string",
            name = "CacheSubnetGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CacheSubnetGroupDescription = schema.new({
            id = id.from(_N, "ModifyCacheSubnetGroupInput", "CacheSubnetGroupDescription"),
            type = "string",
            name = "CacheSubnetGroupDescription",
            target_id = prelude.String.id,
        }),
        SubnetIds = schema.new({
            id = id.from(_N, "ModifyCacheSubnetGroupInput", "SubnetIds"),
            type = "list",
            name = "SubnetIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SubnetIdentifier" } } }),
        }),
    },
})

M.ModifyCacheSubnetGroupOutput = schema.new({
    id = id.from(_N, "ModifyCacheSubnetGroupResult"),
    type = "structure",
    members = {
        CacheSubnetGroup = schema.new({
            id = id.from(_N, "ModifyCacheSubnetGroupOutput", "CacheSubnetGroup"),
            type = "structure",
            name = "CacheSubnetGroup",
            target_id = id.from(_N, "CacheSubnetGroup"),
            target = M.CacheSubnetGroup,
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

M.ModifyGlobalReplicationGroupInput = schema.new({
    id = id.from(_N, "ModifyGlobalReplicationGroupMessage"),
    type = "structure",
    members = {
        GlobalReplicationGroupId = schema.new({
            id = id.from(_N, "ModifyGlobalReplicationGroupInput", "GlobalReplicationGroupId"),
            type = "string",
            name = "GlobalReplicationGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ApplyImmediately = schema.new({
            id = id.from(_N, "ModifyGlobalReplicationGroupInput", "ApplyImmediately"),
            type = "boolean",
            name = "ApplyImmediately",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CacheNodeType = schema.new({
            id = id.from(_N, "ModifyGlobalReplicationGroupInput", "CacheNodeType"),
            type = "string",
            name = "CacheNodeType",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "ModifyGlobalReplicationGroupInput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "ModifyGlobalReplicationGroupInput", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        CacheParameterGroupName = schema.new({
            id = id.from(_N, "ModifyGlobalReplicationGroupInput", "CacheParameterGroupName"),
            type = "string",
            name = "CacheParameterGroupName",
            target_id = prelude.String.id,
        }),
        GlobalReplicationGroupDescription = schema.new({
            id = id.from(_N, "ModifyGlobalReplicationGroupInput", "GlobalReplicationGroupDescription"),
            type = "string",
            name = "GlobalReplicationGroupDescription",
            target_id = prelude.String.id,
        }),
        AutomaticFailoverEnabled = schema.new({
            id = id.from(_N, "ModifyGlobalReplicationGroupInput", "AutomaticFailoverEnabled"),
            type = "boolean",
            name = "AutomaticFailoverEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ModifyGlobalReplicationGroupOutput = schema.new({
    id = id.from(_N, "ModifyGlobalReplicationGroupResult"),
    type = "structure",
    members = {
        GlobalReplicationGroup = schema.new({
            id = id.from(_N, "ModifyGlobalReplicationGroupOutput", "GlobalReplicationGroup"),
            type = "structure",
            name = "GlobalReplicationGroup",
            target_id = id.from(_N, "GlobalReplicationGroup"),
            target = M.GlobalReplicationGroup,
        }),
    },
})

M.ModifyReplicationGroupInput = schema.new({
    id = id.from(_N, "ModifyReplicationGroupMessage"),
    type = "structure",
    members = {
        ReplicationGroupId = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "ReplicationGroupId"),
            type = "string",
            name = "ReplicationGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReplicationGroupDescription = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "ReplicationGroupDescription"),
            type = "string",
            name = "ReplicationGroupDescription",
            target_id = prelude.String.id,
        }),
        PrimaryClusterId = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "PrimaryClusterId"),
            type = "string",
            name = "PrimaryClusterId",
            target_id = prelude.String.id,
        }),
        SnapshottingClusterId = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "SnapshottingClusterId"),
            type = "string",
            name = "SnapshottingClusterId",
            target_id = prelude.String.id,
        }),
        AutomaticFailoverEnabled = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "AutomaticFailoverEnabled"),
            type = "boolean",
            name = "AutomaticFailoverEnabled",
            target_id = prelude.Boolean.id,
        }),
        MultiAZEnabled = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "MultiAZEnabled"),
            type = "boolean",
            name = "MultiAZEnabled",
            target_id = prelude.Boolean.id,
        }),
        NodeGroupId = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "NodeGroupId"),
            type = "string",
            name = "NodeGroupId",
            target_id = prelude.String.id,
        }),
        CacheSecurityGroupNames = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "CacheSecurityGroupNames"),
            type = "list",
            name = "CacheSecurityGroupNames",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "CacheSecurityGroupName" } } }),
        }),
        SecurityGroupIds = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "SecurityGroupIds"),
            type = "list",
            name = "SecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SecurityGroupId" } } }),
        }),
        PreferredMaintenanceWindow = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "PreferredMaintenanceWindow"),
            type = "string",
            name = "PreferredMaintenanceWindow",
            target_id = prelude.String.id,
        }),
        NotificationTopicArn = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "NotificationTopicArn"),
            type = "string",
            name = "NotificationTopicArn",
            target_id = prelude.String.id,
        }),
        CacheParameterGroupName = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "CacheParameterGroupName"),
            type = "string",
            name = "CacheParameterGroupName",
            target_id = prelude.String.id,
        }),
        NotificationTopicStatus = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "NotificationTopicStatus"),
            type = "string",
            name = "NotificationTopicStatus",
            target_id = prelude.String.id,
        }),
        ApplyImmediately = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "ApplyImmediately"),
            type = "boolean",
            name = "ApplyImmediately",
            target_id = prelude.Boolean.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        AutoMinorVersionUpgrade = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "AutoMinorVersionUpgrade"),
            type = "boolean",
            name = "AutoMinorVersionUpgrade",
            target_id = prelude.Boolean.id,
        }),
        SnapshotRetentionLimit = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "SnapshotRetentionLimit"),
            type = "integer",
            name = "SnapshotRetentionLimit",
            target_id = prelude.Integer.id,
        }),
        SnapshotWindow = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "SnapshotWindow"),
            type = "string",
            name = "SnapshotWindow",
            target_id = prelude.String.id,
        }),
        CacheNodeType = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "CacheNodeType"),
            type = "string",
            name = "CacheNodeType",
            target_id = prelude.String.id,
        }),
        AuthToken = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "AuthToken"),
            type = "string",
            name = "AuthToken",
            target_id = prelude.String.id,
        }),
        AuthTokenUpdateStrategy = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "AuthTokenUpdateStrategy"),
            type = "string",
            name = "AuthTokenUpdateStrategy",
            target_id = prelude.String.id,
        }),
        UserGroupIdsToAdd = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "UserGroupIdsToAdd"),
            type = "list",
            name = "UserGroupIdsToAdd",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        UserGroupIdsToRemove = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "UserGroupIdsToRemove"),
            type = "list",
            name = "UserGroupIdsToRemove",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        RemoveUserGroups = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "RemoveUserGroups"),
            type = "boolean",
            name = "RemoveUserGroups",
            target_id = prelude.Boolean.id,
        }),
        LogDeliveryConfigurations = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "LogDeliveryConfigurations"),
            type = "list",
            name = "LogDeliveryConfigurations",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.LogDeliveryConfigurationRequest, traits = { [traits.XML_NAME] = { name = "LogDeliveryConfigurationRequest" } } }),
        }),
        IpDiscovery = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "IpDiscovery"),
            type = "string",
            name = "IpDiscovery",
            target_id = prelude.String.id,
        }),
        TransitEncryptionEnabled = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "TransitEncryptionEnabled"),
            type = "boolean",
            name = "TransitEncryptionEnabled",
            target_id = prelude.Boolean.id,
        }),
        TransitEncryptionMode = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "TransitEncryptionMode"),
            type = "string",
            name = "TransitEncryptionMode",
            target_id = prelude.String.id,
        }),
        ClusterMode = schema.new({
            id = id.from(_N, "ModifyReplicationGroupInput", "ClusterMode"),
            type = "string",
            name = "ClusterMode",
            target_id = prelude.String.id,
        }),
    },
})

M.ModifyReplicationGroupOutput = schema.new({
    id = id.from(_N, "ModifyReplicationGroupResult"),
    type = "structure",
    members = {
        ReplicationGroup = schema.new({
            id = id.from(_N, "ModifyReplicationGroupOutput", "ReplicationGroup"),
            type = "structure",
            name = "ReplicationGroup",
            target_id = id.from(_N, "ReplicationGroup"),
            target = M.ReplicationGroup,
        }),
    },
})

M.ModifyReplicationGroupShardConfigurationInput = schema.new({
    id = id.from(_N, "ModifyReplicationGroupShardConfigurationMessage"),
    type = "structure",
    members = {
        ReplicationGroupId = schema.new({
            id = id.from(_N, "ModifyReplicationGroupShardConfigurationInput", "ReplicationGroupId"),
            type = "string",
            name = "ReplicationGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NodeGroupCount = schema.new({
            id = id.from(_N, "ModifyReplicationGroupShardConfigurationInput", "NodeGroupCount"),
            type = "integer",
            name = "NodeGroupCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ApplyImmediately = schema.new({
            id = id.from(_N, "ModifyReplicationGroupShardConfigurationInput", "ApplyImmediately"),
            type = "boolean",
            name = "ApplyImmediately",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReshardingConfiguration = schema.new({
            id = id.from(_N, "ModifyReplicationGroupShardConfigurationInput", "ReshardingConfiguration"),
            type = "list",
            name = "ReshardingConfiguration",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ReshardingConfiguration, traits = { [traits.XML_NAME] = { name = "ReshardingConfiguration" } } }),
        }),
        NodeGroupsToRemove = schema.new({
            id = id.from(_N, "ModifyReplicationGroupShardConfigurationInput", "NodeGroupsToRemove"),
            type = "list",
            name = "NodeGroupsToRemove",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "NodeGroupToRemove" } } }),
        }),
        NodeGroupsToRetain = schema.new({
            id = id.from(_N, "ModifyReplicationGroupShardConfigurationInput", "NodeGroupsToRetain"),
            type = "list",
            name = "NodeGroupsToRetain",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "NodeGroupToRetain" } } }),
        }),
    },
})

M.ModifyReplicationGroupShardConfigurationOutput = schema.new({
    id = id.from(_N, "ModifyReplicationGroupShardConfigurationResult"),
    type = "structure",
    members = {
        ReplicationGroup = schema.new({
            id = id.from(_N, "ModifyReplicationGroupShardConfigurationOutput", "ReplicationGroup"),
            type = "structure",
            name = "ReplicationGroup",
            target_id = id.from(_N, "ReplicationGroup"),
            target = M.ReplicationGroup,
        }),
    },
})

M.ModifyServerlessCacheInput = schema.new({
    id = id.from(_N, "ModifyServerlessCacheRequest"),
    type = "structure",
    members = {
        ServerlessCacheName = schema.new({
            id = id.from(_N, "ModifyServerlessCacheInput", "ServerlessCacheName"),
            type = "string",
            name = "ServerlessCacheName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "ModifyServerlessCacheInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CacheUsageLimits = schema.new({
            id = id.from(_N, "ModifyServerlessCacheInput", "CacheUsageLimits"),
            type = "structure",
            name = "CacheUsageLimits",
            target_id = id.from(_N, "CacheUsageLimits"),
            target = M.CacheUsageLimits,
        }),
        RemoveUserGroup = schema.new({
            id = id.from(_N, "ModifyServerlessCacheInput", "RemoveUserGroup"),
            type = "boolean",
            name = "RemoveUserGroup",
            target_id = prelude.Boolean.id,
        }),
        UserGroupId = schema.new({
            id = id.from(_N, "ModifyServerlessCacheInput", "UserGroupId"),
            type = "string",
            name = "UserGroupId",
            target_id = prelude.String.id,
        }),
        SecurityGroupIds = schema.new({
            id = id.from(_N, "ModifyServerlessCacheInput", "SecurityGroupIds"),
            type = "list",
            name = "SecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SecurityGroupId" } } }),
        }),
        SnapshotRetentionLimit = schema.new({
            id = id.from(_N, "ModifyServerlessCacheInput", "SnapshotRetentionLimit"),
            type = "integer",
            name = "SnapshotRetentionLimit",
            target_id = prelude.Integer.id,
        }),
        DailySnapshotTime = schema.new({
            id = id.from(_N, "ModifyServerlessCacheInput", "DailySnapshotTime"),
            type = "string",
            name = "DailySnapshotTime",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "ModifyServerlessCacheInput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        MajorEngineVersion = schema.new({
            id = id.from(_N, "ModifyServerlessCacheInput", "MajorEngineVersion"),
            type = "string",
            name = "MajorEngineVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.ModifyServerlessCacheOutput = schema.new({
    id = id.from(_N, "ModifyServerlessCacheResponse"),
    type = "structure",
    members = {
        ServerlessCache = schema.new({
            id = id.from(_N, "ModifyServerlessCacheOutput", "ServerlessCache"),
            type = "structure",
            name = "ServerlessCache",
            target_id = id.from(_N, "ServerlessCache"),
            target = M.ServerlessCache,
        }),
    },
})

M.ModifyUserInput = schema.new({
    id = id.from(_N, "ModifyUserMessage"),
    type = "structure",
    members = {
        UserId = schema.new({
            id = id.from(_N, "ModifyUserInput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccessString = schema.new({
            id = id.from(_N, "ModifyUserInput", "AccessString"),
            type = "string",
            name = "AccessString",
            target_id = prelude.String.id,
        }),
        AppendAccessString = schema.new({
            id = id.from(_N, "ModifyUserInput", "AppendAccessString"),
            type = "string",
            name = "AppendAccessString",
            target_id = prelude.String.id,
        }),
        Passwords = schema.new({
            id = id.from(_N, "ModifyUserInput", "Passwords"),
            type = "list",
            name = "Passwords",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NoPasswordRequired = schema.new({
            id = id.from(_N, "ModifyUserInput", "NoPasswordRequired"),
            type = "boolean",
            name = "NoPasswordRequired",
            target_id = prelude.Boolean.id,
        }),
        AuthenticationMode = schema.new({
            id = id.from(_N, "ModifyUserInput", "AuthenticationMode"),
            type = "structure",
            name = "AuthenticationMode",
            target_id = id.from(_N, "AuthenticationMode"),
            target = M.AuthenticationMode,
        }),
        Engine = schema.new({
            id = id.from(_N, "ModifyUserInput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
    },
})

M.ModifyUserOutput = schema.new({
    id = id.from(_N, "User"),
    type = "structure",
    members = {
        UserId = schema.new({
            id = id.from(_N, "ModifyUserOutput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
        }),
        UserName = schema.new({
            id = id.from(_N, "ModifyUserOutput", "UserName"),
            type = "string",
            name = "UserName",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ModifyUserOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "ModifyUserOutput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        MinimumEngineVersion = schema.new({
            id = id.from(_N, "ModifyUserOutput", "MinimumEngineVersion"),
            type = "string",
            name = "MinimumEngineVersion",
            target_id = prelude.String.id,
        }),
        AccessString = schema.new({
            id = id.from(_N, "ModifyUserOutput", "AccessString"),
            type = "string",
            name = "AccessString",
            target_id = prelude.String.id,
        }),
        UserGroupIds = schema.new({
            id = id.from(_N, "ModifyUserOutput", "UserGroupIds"),
            type = "list",
            name = "UserGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Authentication = schema.new({
            id = id.from(_N, "ModifyUserOutput", "Authentication"),
            type = "structure",
            name = "Authentication",
            target_id = id.from(_N, "Authentication"),
            target = M.Authentication,
        }),
        ARN = schema.new({
            id = id.from(_N, "ModifyUserOutput", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
    },
})

M.ModifyUserGroupInput = schema.new({
    id = id.from(_N, "ModifyUserGroupMessage"),
    type = "structure",
    members = {
        UserGroupId = schema.new({
            id = id.from(_N, "ModifyUserGroupInput", "UserGroupId"),
            type = "string",
            name = "UserGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UserIdsToAdd = schema.new({
            id = id.from(_N, "ModifyUserGroupInput", "UserIdsToAdd"),
            type = "list",
            name = "UserIdsToAdd",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        UserIdsToRemove = schema.new({
            id = id.from(_N, "ModifyUserGroupInput", "UserIdsToRemove"),
            type = "list",
            name = "UserIdsToRemove",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Engine = schema.new({
            id = id.from(_N, "ModifyUserGroupInput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
    },
})

M.ModifyUserGroupOutput = schema.new({
    id = id.from(_N, "UserGroup"),
    type = "structure",
    members = {
        UserGroupId = schema.new({
            id = id.from(_N, "ModifyUserGroupOutput", "UserGroupId"),
            type = "string",
            name = "UserGroupId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ModifyUserGroupOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "ModifyUserGroupOutput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        UserIds = schema.new({
            id = id.from(_N, "ModifyUserGroupOutput", "UserIds"),
            type = "list",
            name = "UserIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MinimumEngineVersion = schema.new({
            id = id.from(_N, "ModifyUserGroupOutput", "MinimumEngineVersion"),
            type = "string",
            name = "MinimumEngineVersion",
            target_id = prelude.String.id,
        }),
        PendingChanges = schema.new({
            id = id.from(_N, "ModifyUserGroupOutput", "PendingChanges"),
            type = "structure",
            name = "PendingChanges",
            target_id = id.from(_N, "UserGroupPendingChanges"),
            target = M.UserGroupPendingChanges,
        }),
        ReplicationGroups = schema.new({
            id = id.from(_N, "ModifyUserGroupOutput", "ReplicationGroups"),
            type = "list",
            name = "ReplicationGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ServerlessCaches = schema.new({
            id = id.from(_N, "ModifyUserGroupOutput", "ServerlessCaches"),
            type = "list",
            name = "ServerlessCaches",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ARN = schema.new({
            id = id.from(_N, "ModifyUserGroupOutput", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
    },
})

M.PurchaseReservedCacheNodesOfferingInput = schema.new({
    id = id.from(_N, "PurchaseReservedCacheNodesOfferingMessage"),
    type = "structure",
    members = {
        ReservedCacheNodesOfferingId = schema.new({
            id = id.from(_N, "PurchaseReservedCacheNodesOfferingInput", "ReservedCacheNodesOfferingId"),
            type = "string",
            name = "ReservedCacheNodesOfferingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReservedCacheNodeId = schema.new({
            id = id.from(_N, "PurchaseReservedCacheNodesOfferingInput", "ReservedCacheNodeId"),
            type = "string",
            name = "ReservedCacheNodeId",
            target_id = prelude.String.id,
        }),
        CacheNodeCount = schema.new({
            id = id.from(_N, "PurchaseReservedCacheNodesOfferingInput", "CacheNodeCount"),
            type = "integer",
            name = "CacheNodeCount",
            target_id = prelude.Integer.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "PurchaseReservedCacheNodesOfferingInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.PurchaseReservedCacheNodesOfferingOutput = schema.new({
    id = id.from(_N, "PurchaseReservedCacheNodesOfferingResult"),
    type = "structure",
    members = {
        ReservedCacheNode = schema.new({
            id = id.from(_N, "PurchaseReservedCacheNodesOfferingOutput", "ReservedCacheNode"),
            type = "structure",
            name = "ReservedCacheNode",
            target_id = id.from(_N, "ReservedCacheNode"),
            target = M.ReservedCacheNode,
        }),
    },
})

M.ReservedCacheNodeAlreadyExistsFault = schema.new({
    id = id.from(_N, "ReservedCacheNodeAlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ReservedCacheNodeAlreadyExistsFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ReservedCacheNodeQuotaExceededFault = schema.new({
    id = id.from(_N, "ReservedCacheNodeQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ReservedCacheNodeQuotaExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.RebalanceSlotsInGlobalReplicationGroupInput = schema.new({
    id = id.from(_N, "RebalanceSlotsInGlobalReplicationGroupMessage"),
    type = "structure",
    members = {
        GlobalReplicationGroupId = schema.new({
            id = id.from(_N, "RebalanceSlotsInGlobalReplicationGroupInput", "GlobalReplicationGroupId"),
            type = "string",
            name = "GlobalReplicationGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ApplyImmediately = schema.new({
            id = id.from(_N, "RebalanceSlotsInGlobalReplicationGroupInput", "ApplyImmediately"),
            type = "boolean",
            name = "ApplyImmediately",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RebalanceSlotsInGlobalReplicationGroupOutput = schema.new({
    id = id.from(_N, "RebalanceSlotsInGlobalReplicationGroupResult"),
    type = "structure",
    members = {
        GlobalReplicationGroup = schema.new({
            id = id.from(_N, "RebalanceSlotsInGlobalReplicationGroupOutput", "GlobalReplicationGroup"),
            type = "structure",
            name = "GlobalReplicationGroup",
            target_id = id.from(_N, "GlobalReplicationGroup"),
            target = M.GlobalReplicationGroup,
        }),
    },
})

M.RebootCacheClusterInput = schema.new({
    id = id.from(_N, "RebootCacheClusterMessage"),
    type = "structure",
    members = {
        CacheClusterId = schema.new({
            id = id.from(_N, "RebootCacheClusterInput", "CacheClusterId"),
            type = "string",
            name = "CacheClusterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CacheNodeIdsToReboot = schema.new({
            id = id.from(_N, "RebootCacheClusterInput", "CacheNodeIdsToReboot"),
            type = "list",
            name = "CacheNodeIdsToReboot",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "CacheNodeId" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RebootCacheClusterOutput = schema.new({
    id = id.from(_N, "RebootCacheClusterResult"),
    type = "structure",
    members = {
        CacheCluster = schema.new({
            id = id.from(_N, "RebootCacheClusterOutput", "CacheCluster"),
            type = "structure",
            name = "CacheCluster",
            target_id = id.from(_N, "CacheCluster"),
            target = M.CacheCluster,
        }),
    },
})

M.RemoveTagsFromResourceInput = schema.new({
    id = id.from(_N, "RemoveTagsFromResourceMessage"),
    type = "structure",
    members = {
        ResourceName = schema.new({
            id = id.from(_N, "RemoveTagsFromResourceInput", "ResourceName"),
            type = "string",
            name = "ResourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "RemoveTagsFromResourceInput", "TagKeys"),
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

M.RemoveTagsFromResourceOutput = schema.new({
    id = id.from(_N, "TagListMessage"),
    type = "structure",
    members = {
        TagList = schema.new({
            id = id.from(_N, "RemoveTagsFromResourceOutput", "TagList"),
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

M.ResetCacheParameterGroupInput = schema.new({
    id = id.from(_N, "ResetCacheParameterGroupMessage"),
    type = "structure",
    members = {
        CacheParameterGroupName = schema.new({
            id = id.from(_N, "ResetCacheParameterGroupInput", "CacheParameterGroupName"),
            type = "string",
            name = "CacheParameterGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResetAllParameters = schema.new({
            id = id.from(_N, "ResetCacheParameterGroupInput", "ResetAllParameters"),
            type = "boolean",
            name = "ResetAllParameters",
            target_id = prelude.Boolean.id,
        }),
        ParameterNameValues = schema.new({
            id = id.from(_N, "ResetCacheParameterGroupInput", "ParameterNameValues"),
            type = "list",
            name = "ParameterNameValues",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ParameterNameValue, traits = { [traits.XML_NAME] = { name = "ParameterNameValue" } } }),
        }),
    },
})

M.ResetCacheParameterGroupOutput = schema.new({
    id = id.from(_N, "CacheParameterGroupNameMessage"),
    type = "structure",
    members = {
        CacheParameterGroupName = schema.new({
            id = id.from(_N, "ResetCacheParameterGroupOutput", "CacheParameterGroupName"),
            type = "string",
            name = "CacheParameterGroupName",
            target_id = prelude.String.id,
        }),
    },
})

M.AuthorizationNotFoundFault = schema.new({
    id = id.from(_N, "AuthorizationNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AuthorizationNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.RevokeCacheSecurityGroupIngressInput = schema.new({
    id = id.from(_N, "RevokeCacheSecurityGroupIngressMessage"),
    type = "structure",
    members = {
        CacheSecurityGroupName = schema.new({
            id = id.from(_N, "RevokeCacheSecurityGroupIngressInput", "CacheSecurityGroupName"),
            type = "string",
            name = "CacheSecurityGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EC2SecurityGroupName = schema.new({
            id = id.from(_N, "RevokeCacheSecurityGroupIngressInput", "EC2SecurityGroupName"),
            type = "string",
            name = "EC2SecurityGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EC2SecurityGroupOwnerId = schema.new({
            id = id.from(_N, "RevokeCacheSecurityGroupIngressInput", "EC2SecurityGroupOwnerId"),
            type = "string",
            name = "EC2SecurityGroupOwnerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RevokeCacheSecurityGroupIngressOutput = schema.new({
    id = id.from(_N, "RevokeCacheSecurityGroupIngressResult"),
    type = "structure",
    members = {
        CacheSecurityGroup = schema.new({
            id = id.from(_N, "RevokeCacheSecurityGroupIngressOutput", "CacheSecurityGroup"),
            type = "structure",
            name = "CacheSecurityGroup",
            target_id = id.from(_N, "CacheSecurityGroup"),
            target = M.CacheSecurityGroup,
        }),
    },
})

M.ReplicationGroupAlreadyUnderMigrationFault = schema.new({
    id = id.from(_N, "ReplicationGroupAlreadyUnderMigrationFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ReplicationGroupAlreadyUnderMigrationFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CustomerNodeEndpoint = schema.new({
    id = id.from(_N, "CustomerNodeEndpoint"),
    type = "structure",
    members = {
        Address = schema.new({
            id = id.from(_N, "CustomerNodeEndpoint", "Address"),
            type = "string",
            name = "Address",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "CustomerNodeEndpoint", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
    },
})

M.StartMigrationInput = schema.new({
    id = id.from(_N, "StartMigrationMessage"),
    type = "structure",
    members = {
        ReplicationGroupId = schema.new({
            id = id.from(_N, "StartMigrationInput", "ReplicationGroupId"),
            type = "string",
            name = "ReplicationGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CustomerNodeEndpointList = schema.new({
            id = id.from(_N, "StartMigrationInput", "CustomerNodeEndpointList"),
            type = "list",
            name = "CustomerNodeEndpointList",
            target_id = prelude.Document.id,
            list_member = M.CustomerNodeEndpoint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartMigrationOutput = schema.new({
    id = id.from(_N, "StartMigrationResponse"),
    type = "structure",
    members = {
        ReplicationGroup = schema.new({
            id = id.from(_N, "StartMigrationOutput", "ReplicationGroup"),
            type = "structure",
            name = "ReplicationGroup",
            target_id = id.from(_N, "ReplicationGroup"),
            target = M.ReplicationGroup,
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

M.NodeGroupNotFoundFault = schema.new({
    id = id.from(_N, "NodeGroupNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NodeGroupNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.TestFailoverInput = schema.new({
    id = id.from(_N, "TestFailoverMessage"),
    type = "structure",
    members = {
        ReplicationGroupId = schema.new({
            id = id.from(_N, "TestFailoverInput", "ReplicationGroupId"),
            type = "string",
            name = "ReplicationGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NodeGroupId = schema.new({
            id = id.from(_N, "TestFailoverInput", "NodeGroupId"),
            type = "string",
            name = "NodeGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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

M.TestFailoverOutput = schema.new({
    id = id.from(_N, "TestFailoverResult"),
    type = "structure",
    members = {
        ReplicationGroup = schema.new({
            id = id.from(_N, "TestFailoverOutput", "ReplicationGroup"),
            type = "structure",
            name = "ReplicationGroup",
            target_id = id.from(_N, "ReplicationGroup"),
            target = M.ReplicationGroup,
        }),
    },
})

M.TestMigrationInput = schema.new({
    id = id.from(_N, "TestMigrationMessage"),
    type = "structure",
    members = {
        ReplicationGroupId = schema.new({
            id = id.from(_N, "TestMigrationInput", "ReplicationGroupId"),
            type = "string",
            name = "ReplicationGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CustomerNodeEndpointList = schema.new({
            id = id.from(_N, "TestMigrationInput", "CustomerNodeEndpointList"),
            type = "list",
            name = "CustomerNodeEndpointList",
            target_id = prelude.Document.id,
            list_member = M.CustomerNodeEndpoint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TestMigrationOutput = schema.new({
    id = id.from(_N, "TestMigrationResponse"),
    type = "structure",
    members = {
        ReplicationGroup = schema.new({
            id = id.from(_N, "TestMigrationOutput", "ReplicationGroup"),
            type = "structure",
            name = "ReplicationGroup",
            target_id = id.from(_N, "ReplicationGroup"),
            target = M.ReplicationGroup,
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
