local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.dax"

local M = {}

M.AvailabilityZoneList = schema.new({ type = "list", list_member = prelude.String })

M.SecurityGroupIdentifierList = schema.new({ type = "list", list_member = prelude.String })

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.SubnetIdentifierList = schema.new({ type = "list", list_member = prelude.String })

M.NodeIdentifierList = schema.new({ type = "list", list_member = prelude.String })

M.ClusterNameList = schema.new({ type = "list", list_member = prelude.String })

M.ClusterList = schema.new({ type = "list", list_member = M.Cluster })

M.ParameterList = schema.new({ type = "list", list_member = M.Parameter })

M.EventList = schema.new({ type = "list", list_member = M.Event })

M.ParameterGroupNameList = schema.new({ type = "list", list_member = prelude.String })

M.ParameterGroupList = schema.new({ type = "list", list_member = M.ParameterGroup })

M.SubnetGroupNameList = schema.new({ type = "list", list_member = prelude.String })

M.SubnetGroupList = schema.new({ type = "list", list_member = M.SubnetGroup })

M.KeyList = schema.new({ type = "list", list_member = prelude.String })

M.ParameterNameValueList = schema.new({ type = "list", list_member = M.ParameterNameValue })

M.NodeList = schema.new({ type = "list", list_member = M.Node })

M.SecurityGroupMembershipList = schema.new({ type = "list", list_member = M.SecurityGroupMembership })

M.SubnetList = schema.new({ type = "list", list_member = M.Subnet })

M.NetworkTypeList = schema.new({ type = "list", list_member = prelude.String })

M.NodeTypeSpecificValueList = schema.new({ type = "list", list_member = M.NodeTypeSpecificValue })

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

M.SSESpecification = schema.new({
    id = id.from(_N, "SSESpecification"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "SSESpecification", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
        Description = schema.new({
            id = id.from(_N, "CreateClusterInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        ReplicationFactor = schema.new({
            id = id.from(_N, "CreateClusterInput", "ReplicationFactor"),
            type = "integer",
            name = "ReplicationFactor",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        AvailabilityZones = schema.new({
            id = id.from(_N, "CreateClusterInput", "AvailabilityZones"),
            type = "list",
            name = "AvailabilityZones",
            target_id = prelude.Document.id,
            list_member = prelude.String,
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
            list_member = prelude.String,
        }),
        PreferredMaintenanceWindow = schema.new({
            id = id.from(_N, "CreateClusterInput", "PreferredMaintenanceWindow"),
            type = "string",
            name = "PreferredMaintenanceWindow",
            target_id = prelude.String.id,
        }),
        NotificationTopicArn = schema.new({
            id = id.from(_N, "CreateClusterInput", "NotificationTopicArn"),
            type = "string",
            name = "NotificationTopicArn",
            target_id = prelude.String.id,
        }),
        IamRoleArn = schema.new({
            id = id.from(_N, "CreateClusterInput", "IamRoleArn"),
            type = "string",
            name = "IamRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ParameterGroupName = schema.new({
            id = id.from(_N, "CreateClusterInput", "ParameterGroupName"),
            type = "string",
            name = "ParameterGroupName",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateClusterInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        SSESpecification = schema.new({
            id = id.from(_N, "CreateClusterInput", "SSESpecification"),
            type = "structure",
            name = "SSESpecification",
            target_id = id.from(_N, "SSESpecification"),
            target = M.SSESpecification,
        }),
        ClusterEndpointEncryptionType = schema.new({
            id = id.from(_N, "CreateClusterInput", "ClusterEndpointEncryptionType"),
            type = "string",
            name = "ClusterEndpointEncryptionType",
            target_id = prelude.String.id,
        }),
        NetworkType = schema.new({
            id = id.from(_N, "CreateClusterInput", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
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
        URL = schema.new({
            id = id.from(_N, "Endpoint", "URL"),
            type = "string",
            name = "URL",
            target_id = prelude.String.id,
        }),
    },
})

M.Node = schema.new({
    id = id.from(_N, "Node"),
    type = "structure",
    members = {
        NodeId = schema.new({
            id = id.from(_N, "Node", "NodeId"),
            type = "string",
            name = "NodeId",
            target_id = prelude.String.id,
        }),
        Endpoint = schema.new({
            id = id.from(_N, "Node", "Endpoint"),
            type = "structure",
            name = "Endpoint",
            target_id = id.from(_N, "Endpoint"),
            target = M.Endpoint,
        }),
        NodeCreateTime = schema.new({
            id = id.from(_N, "Node", "NodeCreateTime"),
            type = "timestamp",
            name = "NodeCreateTime",
            target_id = prelude.Timestamp.id,
        }),
        AvailabilityZone = schema.new({
            id = id.from(_N, "Node", "AvailabilityZone"),
            type = "string",
            name = "AvailabilityZone",
            target_id = prelude.String.id,
        }),
        NodeStatus = schema.new({
            id = id.from(_N, "Node", "NodeStatus"),
            type = "string",
            name = "NodeStatus",
            target_id = prelude.String.id,
        }),
        ParameterGroupStatus = schema.new({
            id = id.from(_N, "Node", "ParameterGroupStatus"),
            type = "string",
            name = "ParameterGroupStatus",
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

M.ParameterGroupStatus = schema.new({
    id = id.from(_N, "ParameterGroupStatus"),
    type = "structure",
    members = {
        ParameterGroupName = schema.new({
            id = id.from(_N, "ParameterGroupStatus", "ParameterGroupName"),
            type = "string",
            name = "ParameterGroupName",
            target_id = prelude.String.id,
        }),
        ParameterApplyStatus = schema.new({
            id = id.from(_N, "ParameterGroupStatus", "ParameterApplyStatus"),
            type = "string",
            name = "ParameterApplyStatus",
            target_id = prelude.String.id,
        }),
        NodeIdsToReboot = schema.new({
            id = id.from(_N, "ParameterGroupStatus", "NodeIdsToReboot"),
            type = "list",
            name = "NodeIdsToReboot",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.SecurityGroupMembership = schema.new({
    id = id.from(_N, "SecurityGroupMembership"),
    type = "structure",
    members = {
        SecurityGroupIdentifier = schema.new({
            id = id.from(_N, "SecurityGroupMembership", "SecurityGroupIdentifier"),
            type = "string",
            name = "SecurityGroupIdentifier",
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

M.SSEDescription = schema.new({
    id = id.from(_N, "SSEDescription"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "SSEDescription", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.Cluster = schema.new({
    id = id.from(_N, "Cluster"),
    type = "structure",
    members = {
        ClusterName = schema.new({
            id = id.from(_N, "Cluster", "ClusterName"),
            type = "string",
            name = "ClusterName",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "Cluster", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        ClusterArn = schema.new({
            id = id.from(_N, "Cluster", "ClusterArn"),
            type = "string",
            name = "ClusterArn",
            target_id = prelude.String.id,
        }),
        TotalNodes = schema.new({
            id = id.from(_N, "Cluster", "TotalNodes"),
            type = "integer",
            name = "TotalNodes",
            target_id = prelude.Integer.id,
        }),
        ActiveNodes = schema.new({
            id = id.from(_N, "Cluster", "ActiveNodes"),
            type = "integer",
            name = "ActiveNodes",
            target_id = prelude.Integer.id,
        }),
        NodeType = schema.new({
            id = id.from(_N, "Cluster", "NodeType"),
            type = "string",
            name = "NodeType",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Cluster", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        ClusterDiscoveryEndpoint = schema.new({
            id = id.from(_N, "Cluster", "ClusterDiscoveryEndpoint"),
            type = "structure",
            name = "ClusterDiscoveryEndpoint",
            target_id = id.from(_N, "Endpoint"),
            target = M.Endpoint,
        }),
        NodeIdsToRemove = schema.new({
            id = id.from(_N, "Cluster", "NodeIdsToRemove"),
            type = "list",
            name = "NodeIdsToRemove",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Nodes = schema.new({
            id = id.from(_N, "Cluster", "Nodes"),
            type = "list",
            name = "Nodes",
            target_id = prelude.Document.id,
            list_member = M.Node,
        }),
        PreferredMaintenanceWindow = schema.new({
            id = id.from(_N, "Cluster", "PreferredMaintenanceWindow"),
            type = "string",
            name = "PreferredMaintenanceWindow",
            target_id = prelude.String.id,
        }),
        NotificationConfiguration = schema.new({
            id = id.from(_N, "Cluster", "NotificationConfiguration"),
            type = "structure",
            name = "NotificationConfiguration",
            target_id = id.from(_N, "NotificationConfiguration"),
            target = M.NotificationConfiguration,
        }),
        SubnetGroup = schema.new({
            id = id.from(_N, "Cluster", "SubnetGroup"),
            type = "string",
            name = "SubnetGroup",
            target_id = prelude.String.id,
        }),
        SecurityGroups = schema.new({
            id = id.from(_N, "Cluster", "SecurityGroups"),
            type = "list",
            name = "SecurityGroups",
            target_id = prelude.Document.id,
            list_member = M.SecurityGroupMembership,
        }),
        IamRoleArn = schema.new({
            id = id.from(_N, "Cluster", "IamRoleArn"),
            type = "string",
            name = "IamRoleArn",
            target_id = prelude.String.id,
        }),
        ParameterGroup = schema.new({
            id = id.from(_N, "Cluster", "ParameterGroup"),
            type = "structure",
            name = "ParameterGroup",
            target_id = id.from(_N, "ParameterGroupStatus"),
            target = M.ParameterGroupStatus,
        }),
        SSEDescription = schema.new({
            id = id.from(_N, "Cluster", "SSEDescription"),
            type = "structure",
            name = "SSEDescription",
            target_id = id.from(_N, "SSEDescription"),
            target = M.SSEDescription,
        }),
        ClusterEndpointEncryptionType = schema.new({
            id = id.from(_N, "Cluster", "ClusterEndpointEncryptionType"),
            type = "string",
            name = "ClusterEndpointEncryptionType",
            target_id = prelude.String.id,
        }),
        NetworkType = schema.new({
            id = id.from(_N, "Cluster", "NetworkType"),
            type = "string",
            name = "NetworkType",
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

M.ServiceQuotaExceededException = schema.new({
    id = id.from(_N, "ServiceQuotaExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
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
        Description = schema.new({
            id = id.from(_N, "CreateParameterGroupInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.ParameterGroup = schema.new({
    id = id.from(_N, "ParameterGroup"),
    type = "structure",
    members = {
        ParameterGroupName = schema.new({
            id = id.from(_N, "ParameterGroup", "ParameterGroupName"),
            type = "string",
            name = "ParameterGroupName",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ParameterGroup", "Description"),
            type = "string",
            name = "Description",
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
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
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
            type = "string",
            name = "SubnetAvailabilityZone",
            target_id = prelude.String.id,
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
        SubnetGroupName = schema.new({
            id = id.from(_N, "SubnetGroup", "SubnetGroupName"),
            type = "string",
            name = "SubnetGroupName",
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
            list_member = M.Subnet,
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

M.DecreaseReplicationFactorInput = schema.new({
    id = id.from(_N, "DecreaseReplicationFactorRequest"),
    type = "structure",
    members = {
        ClusterName = schema.new({
            id = id.from(_N, "DecreaseReplicationFactorInput", "ClusterName"),
            type = "string",
            name = "ClusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NewReplicationFactor = schema.new({
            id = id.from(_N, "DecreaseReplicationFactorInput", "NewReplicationFactor"),
            type = "integer",
            name = "NewReplicationFactor",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        AvailabilityZones = schema.new({
            id = id.from(_N, "DecreaseReplicationFactorInput", "AvailabilityZones"),
            type = "list",
            name = "AvailabilityZones",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NodeIdsToRemove = schema.new({
            id = id.from(_N, "DecreaseReplicationFactorInput", "NodeIdsToRemove"),
            type = "list",
            name = "NodeIdsToRemove",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DecreaseReplicationFactorOutput = schema.new({
    id = id.from(_N, "DecreaseReplicationFactorResponse"),
    type = "structure",
    members = {
        Cluster = schema.new({
            id = id.from(_N, "DecreaseReplicationFactorOutput", "Cluster"),
            type = "structure",
            name = "Cluster",
            target_id = id.from(_N, "Cluster"),
            target = M.Cluster,
        }),
    },
})

M.NodeNotFoundFault = schema.new({
    id = id.from(_N, "NodeNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NodeNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
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
        DeletionMessage = schema.new({
            id = id.from(_N, "DeleteParameterGroupOutput", "DeletionMessage"),
            type = "string",
            name = "DeletionMessage",
            target_id = prelude.String.id,
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
        DeletionMessage = schema.new({
            id = id.from(_N, "DeleteSubnetGroupOutput", "DeletionMessage"),
            type = "string",
            name = "DeletionMessage",
            target_id = prelude.String.id,
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

M.DescribeClustersInput = schema.new({
    id = id.from(_N, "DescribeClustersRequest"),
    type = "structure",
    members = {
        ClusterNames = schema.new({
            id = id.from(_N, "DescribeClustersInput", "ClusterNames"),
            type = "list",
            name = "ClusterNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
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
            list_member = M.Cluster,
        }),
    },
})

M.DescribeDefaultParametersInput = schema.new({
    id = id.from(_N, "DescribeDefaultParametersRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "DescribeDefaultParametersInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeDefaultParametersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.NodeTypeSpecificValue = schema.new({
    id = id.from(_N, "NodeTypeSpecificValue"),
    type = "structure",
    members = {
        NodeType = schema.new({
            id = id.from(_N, "NodeTypeSpecificValue", "NodeType"),
            type = "string",
            name = "NodeType",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "NodeTypeSpecificValue", "Value"),
            type = "string",
            name = "Value",
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
        ParameterType = schema.new({
            id = id.from(_N, "Parameter", "ParameterType"),
            type = "string",
            name = "ParameterType",
            target_id = prelude.String.id,
        }),
        ParameterValue = schema.new({
            id = id.from(_N, "Parameter", "ParameterValue"),
            type = "string",
            name = "ParameterValue",
            target_id = prelude.String.id,
        }),
        NodeTypeSpecificValues = schema.new({
            id = id.from(_N, "Parameter", "NodeTypeSpecificValues"),
            type = "list",
            name = "NodeTypeSpecificValues",
            target_id = prelude.Document.id,
            list_member = M.NodeTypeSpecificValue,
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
            type = "string",
            name = "IsModifiable",
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

M.DescribeDefaultParametersOutput = schema.new({
    id = id.from(_N, "DescribeDefaultParametersResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "DescribeDefaultParametersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Parameters = schema.new({
            id = id.from(_N, "DescribeDefaultParametersOutput", "Parameters"),
            type = "list",
            name = "Parameters",
            target_id = prelude.Document.id,
            list_member = M.Parameter,
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
            list_member = M.Event,
        }),
    },
})

M.DescribeParameterGroupsInput = schema.new({
    id = id.from(_N, "DescribeParameterGroupsRequest"),
    type = "structure",
    members = {
        ParameterGroupNames = schema.new({
            id = id.from(_N, "DescribeParameterGroupsInput", "ParameterGroupNames"),
            type = "list",
            name = "ParameterGroupNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
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
            list_member = M.ParameterGroup,
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
        Source = schema.new({
            id = id.from(_N, "DescribeParametersInput", "Source"),
            type = "string",
            name = "Source",
            target_id = prelude.String.id,
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
            list_member = M.Parameter,
        }),
    },
})

M.DescribeSubnetGroupsInput = schema.new({
    id = id.from(_N, "DescribeSubnetGroupsRequest"),
    type = "structure",
    members = {
        SubnetGroupNames = schema.new({
            id = id.from(_N, "DescribeSubnetGroupsInput", "SubnetGroupNames"),
            type = "list",
            name = "SubnetGroupNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
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

M.IncreaseReplicationFactorInput = schema.new({
    id = id.from(_N, "IncreaseReplicationFactorRequest"),
    type = "structure",
    members = {
        ClusterName = schema.new({
            id = id.from(_N, "IncreaseReplicationFactorInput", "ClusterName"),
            type = "string",
            name = "ClusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NewReplicationFactor = schema.new({
            id = id.from(_N, "IncreaseReplicationFactorInput", "NewReplicationFactor"),
            type = "integer",
            name = "NewReplicationFactor",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        AvailabilityZones = schema.new({
            id = id.from(_N, "IncreaseReplicationFactorInput", "AvailabilityZones"),
            type = "list",
            name = "AvailabilityZones",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.IncreaseReplicationFactorOutput = schema.new({
    id = id.from(_N, "IncreaseReplicationFactorResponse"),
    type = "structure",
    members = {
        Cluster = schema.new({
            id = id.from(_N, "IncreaseReplicationFactorOutput", "Cluster"),
            type = "structure",
            name = "Cluster",
            target_id = id.from(_N, "Cluster"),
            target = M.Cluster,
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
        ResourceName = schema.new({
            id = id.from(_N, "ListTagsInput", "ResourceName"),
            type = "string",
            name = "ResourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTagsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsOutput = schema.new({
    id = id.from(_N, "ListTagsResponse"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListTagsOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTagsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RebootNodeInput = schema.new({
    id = id.from(_N, "RebootNodeRequest"),
    type = "structure",
    members = {
        ClusterName = schema.new({
            id = id.from(_N, "RebootNodeInput", "ClusterName"),
            type = "string",
            name = "ClusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NodeId = schema.new({
            id = id.from(_N, "RebootNodeInput", "NodeId"),
            type = "string",
            name = "NodeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RebootNodeOutput = schema.new({
    id = id.from(_N, "RebootNodeResponse"),
    type = "structure",
    members = {
        Cluster = schema.new({
            id = id.from(_N, "RebootNodeOutput", "Cluster"),
            type = "structure",
            name = "Cluster",
            target_id = id.from(_N, "Cluster"),
            target = M.Cluster,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        ResourceName = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceName"),
            type = "string",
            name = "ResourceName",
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
            list_member = M.Tag,
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
        Tags = schema.new({
            id = id.from(_N, "TagResourceOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
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
        ResourceName = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceName"),
            type = "string",
            name = "ResourceName",
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
        Tags = schema.new({
            id = id.from(_N, "UntagResourceOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
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
        PreferredMaintenanceWindow = schema.new({
            id = id.from(_N, "UpdateClusterInput", "PreferredMaintenanceWindow"),
            type = "string",
            name = "PreferredMaintenanceWindow",
            target_id = prelude.String.id,
        }),
        NotificationTopicArn = schema.new({
            id = id.from(_N, "UpdateClusterInput", "NotificationTopicArn"),
            type = "string",
            name = "NotificationTopicArn",
            target_id = prelude.String.id,
        }),
        NotificationTopicStatus = schema.new({
            id = id.from(_N, "UpdateClusterInput", "NotificationTopicStatus"),
            type = "string",
            name = "NotificationTopicStatus",
            target_id = prelude.String.id,
        }),
        ParameterGroupName = schema.new({
            id = id.from(_N, "UpdateClusterInput", "ParameterGroupName"),
            type = "string",
            name = "ParameterGroupName",
            target_id = prelude.String.id,
        }),
        SecurityGroupIds = schema.new({
            id = id.from(_N, "UpdateClusterInput", "SecurityGroupIds"),
            type = "list",
            name = "SecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
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
            list_member = M.ParameterNameValue,
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
            list_member = prelude.String,
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
