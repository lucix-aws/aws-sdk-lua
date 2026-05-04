local M = {}

M.ClusterAlreadyExistsFault = {
    type = "structure",
    id = "ClusterAlreadyExistsFault",
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

M.ClusterEndpointEncryptionType = {
    NONE = "NONE",
    TLS = "TLS",
}

M.NetworkType = {
    IPV4 = "ipv4",
    IPV6 = "ipv6",
    DUAL_STACK = "dual_stack",
}

M.SSESpecification = {
    type = "structure",
    id = "SSESpecification",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
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

M.CreateClusterInput = {
    type = "structure",
    id = "CreateClusterInput",
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
        Description = {
            type = "string",
        },
        ReplicationFactor = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        SubnetGroupName = {
            type = "string",
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
        IamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParameterGroupName = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        SSESpecification = M.SSESpecification,
        ClusterEndpointEncryptionType = {
            type = "string",
        },
        NetworkType = {
            type = "string",
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
            traits = {
                default = 0,
            },
        },
        URL = {
            type = "string",
        },
    },
}

M.Node = {
    type = "structure",
    id = "Node",
    members = {
        NodeId = {
            type = "string",
        },
        Endpoint = M.Endpoint,
        NodeCreateTime = {
            type = "timestamp",
        },
        AvailabilityZone = {
            type = "string",
        },
        NodeStatus = {
            type = "string",
        },
        ParameterGroupStatus = {
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

M.ParameterGroupStatus = {
    type = "structure",
    id = "ParameterGroupStatus",
    members = {
        ParameterGroupName = {
            type = "string",
        },
        ParameterApplyStatus = {
            type = "string",
        },
        NodeIdsToReboot = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SecurityGroupMembership = {
    type = "structure",
    id = "SecurityGroupMembership",
    members = {
        SecurityGroupIdentifier = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.SSEStatus = {
    ENABLING = "ENABLING",
    ENABLED = "ENABLED",
    DISABLING = "DISABLING",
    DISABLED = "DISABLED",
}

M.SSEDescription = {
    type = "structure",
    id = "SSEDescription",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.Cluster = {
    type = "structure",
    id = "Cluster",
    members = {
        ClusterName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ClusterArn = {
            type = "string",
        },
        TotalNodes = {
            type = "integer",
        },
        ActiveNodes = {
            type = "integer",
        },
        NodeType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ClusterDiscoveryEndpoint = M.Endpoint,
        NodeIdsToRemove = {
            type = "list",
            member = { type = "string" },
        },
        Nodes = {
            type = "list",
            member = M.Node,
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        NotificationConfiguration = M.NotificationConfiguration,
        SubnetGroup = {
            type = "string",
        },
        SecurityGroups = {
            type = "list",
            member = M.SecurityGroupMembership,
        },
        IamRoleArn = {
            type = "string",
        },
        ParameterGroup = M.ParameterGroupStatus,
        SSEDescription = M.SSEDescription,
        ClusterEndpointEncryptionType = {
            type = "string",
        },
        NetworkType = {
            type = "string",
        },
    },
}

M.CreateClusterOutput = {
    type = "structure",
    id = "CreateClusterOutput",
    members = {
        Cluster = M.Cluster,
    },
}

M.InsufficientClusterCapacityFault = {
    type = "structure",
    id = "InsufficientClusterCapacityFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidClusterStateFault = {
    type = "structure",
    id = "InvalidClusterStateFault",
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

M.InvalidParameterGroupStateFault = {
    type = "structure",
    id = "InvalidParameterGroupStateFault",
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

M.ParameterGroupNotFoundFault = {
    type = "structure",
    id = "ParameterGroupNotFoundFault",
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

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
}

M.SubnetGroupNotFoundFault = {
    type = "structure",
    id = "SubnetGroupNotFoundFault",
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

M.CreateParameterGroupInput = {
    type = "structure",
    id = "CreateParameterGroupInput",
    members = {
        ParameterGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
    },
}

M.ParameterGroup = {
    type = "structure",
    id = "ParameterGroup",
    members = {
        ParameterGroupName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.CreateParameterGroupOutput = {
    type = "structure",
    id = "CreateParameterGroupOutput",
    members = {
        ParameterGroup = M.ParameterGroup,
    },
}

M.ParameterGroupAlreadyExistsFault = {
    type = "structure",
    id = "ParameterGroupAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ParameterGroupQuotaExceededFault = {
    type = "structure",
    id = "ParameterGroupQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateSubnetGroupInput = {
    type = "structure",
    id = "CreateSubnetGroupInput",
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
    },
}

M.Subnet = {
    type = "structure",
    id = "Subnet",
    members = {
        SubnetIdentifier = {
            type = "string",
        },
        SubnetAvailabilityZone = {
            type = "string",
        },
        SupportedNetworkTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SubnetGroup = {
    type = "structure",
    id = "SubnetGroup",
    members = {
        SubnetGroupName = {
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
        SupportedNetworkTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateSubnetGroupOutput = {
    type = "structure",
    id = "CreateSubnetGroupOutput",
    members = {
        SubnetGroup = M.SubnetGroup,
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

M.SubnetGroupAlreadyExistsFault = {
    type = "structure",
    id = "SubnetGroupAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SubnetGroupQuotaExceededFault = {
    type = "structure",
    id = "SubnetGroupQuotaExceededFault",
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

M.SubnetQuotaExceededFault = {
    type = "structure",
    id = "SubnetQuotaExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClusterNotFoundFault = {
    type = "structure",
    id = "ClusterNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DecreaseReplicationFactorInput = {
    type = "structure",
    id = "DecreaseReplicationFactorInput",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewReplicationFactor = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        NodeIdsToRemove = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DecreaseReplicationFactorOutput = {
    type = "structure",
    id = "DecreaseReplicationFactorOutput",
    members = {
        Cluster = M.Cluster,
    },
}

M.NodeNotFoundFault = {
    type = "structure",
    id = "NodeNotFoundFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteClusterInput = {
    type = "structure",
    id = "DeleteClusterInput",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteClusterOutput = {
    type = "structure",
    id = "DeleteClusterOutput",
    members = {
        Cluster = M.Cluster,
    },
}

M.DeleteParameterGroupInput = {
    type = "structure",
    id = "DeleteParameterGroupInput",
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
    id = "DeleteParameterGroupOutput",
    members = {
        DeletionMessage = {
            type = "string",
        },
    },
}

M.DeleteSubnetGroupInput = {
    type = "structure",
    id = "DeleteSubnetGroupInput",
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
    id = "DeleteSubnetGroupOutput",
    members = {
        DeletionMessage = {
            type = "string",
        },
    },
}

M.SubnetGroupInUseFault = {
    type = "structure",
    id = "SubnetGroupInUseFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeClustersInput = {
    type = "structure",
    id = "DescribeClustersInput",
    members = {
        ClusterNames = {
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

M.DescribeClustersOutput = {
    type = "structure",
    id = "DescribeClustersOutput",
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

M.DescribeDefaultParametersInput = {
    type = "structure",
    id = "DescribeDefaultParametersInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ChangeType = {
    IMMEDIATE = "IMMEDIATE",
    REQUIRES_REBOOT = "REQUIRES_REBOOT",
}

M.IsModifiable = {
    TRUE = "TRUE",
    FALSE = "FALSE",
    CONDITIONAL = "CONDITIONAL",
}

M.NodeTypeSpecificValue = {
    type = "structure",
    id = "NodeTypeSpecificValue",
    members = {
        NodeType = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.ParameterType = {
    DEFAULT = "DEFAULT",
    NODE_TYPE_SPECIFIC = "NODE_TYPE_SPECIFIC",
}

M.Parameter = {
    type = "structure",
    id = "Parameter",
    members = {
        ParameterName = {
            type = "string",
        },
        ParameterType = {
            type = "string",
        },
        ParameterValue = {
            type = "string",
        },
        NodeTypeSpecificValues = {
            type = "list",
            member = M.NodeTypeSpecificValue,
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
            type = "string",
        },
        ChangeType = {
            type = "string",
        },
    },
}

M.DescribeDefaultParametersOutput = {
    type = "structure",
    id = "DescribeDefaultParametersOutput",
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

M.SourceType = {
    CLUSTER = "CLUSTER",
    PARAMETER_GROUP = "PARAMETER_GROUP",
    SUBNET_GROUP = "SUBNET_GROUP",
}

M.DescribeEventsInput = {
    type = "structure",
    id = "DescribeEventsInput",
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
    id = "Event",
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
    id = "DescribeEventsOutput",
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

M.DescribeParameterGroupsInput = {
    type = "structure",
    id = "DescribeParameterGroupsInput",
    members = {
        ParameterGroupNames = {
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

M.DescribeParameterGroupsOutput = {
    type = "structure",
    id = "DescribeParameterGroupsOutput",
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
    id = "DescribeParametersInput",
    members = {
        ParameterGroupName = {
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

M.DescribeParametersOutput = {
    type = "structure",
    id = "DescribeParametersOutput",
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

M.DescribeSubnetGroupsInput = {
    type = "structure",
    id = "DescribeSubnetGroupsInput",
    members = {
        SubnetGroupNames = {
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

M.DescribeSubnetGroupsOutput = {
    type = "structure",
    id = "DescribeSubnetGroupsOutput",
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

M.IncreaseReplicationFactorInput = {
    type = "structure",
    id = "IncreaseReplicationFactorInput",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewReplicationFactor = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.IncreaseReplicationFactorOutput = {
    type = "structure",
    id = "IncreaseReplicationFactorOutput",
    members = {
        Cluster = M.Cluster,
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

M.ListTagsInput = {
    type = "structure",
    id = "ListTagsInput",
    members = {
        ResourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsOutput = {
    type = "structure",
    id = "ListTagsOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RebootNodeInput = {
    type = "structure",
    id = "RebootNodeInput",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RebootNodeOutput = {
    type = "structure",
    id = "RebootNodeOutput",
    members = {
        Cluster = M.Cluster,
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
    members = {
        Tags = {
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

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.UpdateClusterInput = {
    type = "structure",
    id = "UpdateClusterInput",
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
        PreferredMaintenanceWindow = {
            type = "string",
        },
        NotificationTopicArn = {
            type = "string",
        },
        NotificationTopicStatus = {
            type = "string",
        },
        ParameterGroupName = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateClusterOutput = {
    type = "structure",
    id = "UpdateClusterOutput",
    members = {
        Cluster = M.Cluster,
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

M.UpdateParameterGroupInput = {
    type = "structure",
    id = "UpdateParameterGroupInput",
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
    id = "UpdateParameterGroupOutput",
    members = {
        ParameterGroup = M.ParameterGroup,
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

M.UpdateSubnetGroupInput = {
    type = "structure",
    id = "UpdateSubnetGroupInput",
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
    id = "UpdateSubnetGroupOutput",
    members = {
        SubnetGroup = M.SubnetGroup,
    },
}

return M
