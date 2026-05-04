local M = {}

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
            type = "number",
            traits = {
                required = true,
            },
        },
        AvailabilityZones = {
            type = "list",
            member_type = "string",
        },
        SubnetGroupName = {
            type = "string",
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
            member_type = "structure",
        },
        SSESpecification = {
            type = "structure",
        },
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
    members = {
        Address = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        URL = {
            type = "string",
        },
    },
}

M.Node = {
    type = "structure",
    members = {
        NodeId = {
            type = "string",
        },
        Endpoint = {
            type = "structure",
        },
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
    members = {
        ParameterGroupName = {
            type = "string",
        },
        ParameterApplyStatus = {
            type = "string",
        },
        NodeIdsToReboot = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SecurityGroupMembership = {
    type = "structure",
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
    members = {
        Status = {
            type = "string",
        },
    },
}

M.Cluster = {
    type = "structure",
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
            type = "number",
        },
        ActiveNodes = {
            type = "number",
        },
        NodeType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ClusterDiscoveryEndpoint = {
            type = "structure",
        },
        NodeIdsToRemove = {
            type = "list",
            member_type = "string",
        },
        Nodes = {
            type = "list",
            member_type = "structure",
        },
        PreferredMaintenanceWindow = {
            type = "string",
        },
        NotificationConfiguration = {
            type = "structure",
        },
        SubnetGroup = {
            type = "string",
        },
        SecurityGroups = {
            type = "list",
            member_type = "structure",
        },
        IamRoleArn = {
            type = "string",
        },
        ParameterGroup = {
            type = "structure",
        },
        SSEDescription = {
            type = "structure",
        },
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

M.InvalidClusterStateFault = {
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

M.InvalidParameterGroupStateFault = {
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

M.ParameterGroupNotFoundFault = {
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

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
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

M.TagQuotaPerResourceExceeded = {
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
        Description = {
            type = "string",
        },
    },
}

M.ParameterGroup = {
    type = "structure",
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
    members = {
        ParameterGroup = {
            type = "structure",
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
    },
}

M.Subnet = {
    type = "structure",
    members = {
        SubnetIdentifier = {
            type = "string",
        },
        SubnetAvailabilityZone = {
            type = "string",
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
            member_type = "structure",
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

M.ClusterNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DecreaseReplicationFactorInput = {
    type = "structure",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewReplicationFactor = {
            type = "number",
            traits = {
                required = true,
            },
        },
        AvailabilityZones = {
            type = "list",
            member_type = "string",
        },
        NodeIdsToRemove = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DecreaseReplicationFactorOutput = {
    type = "structure",
    members = {
        Cluster = {
            type = "structure",
        },
    },
}

M.NodeNotFoundFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
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
        DeletionMessage = {
            type = "string",
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
        DeletionMessage = {
            type = "string",
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

M.DescribeClustersInput = {
    type = "structure",
    members = {
        ClusterNames = {
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

M.DescribeDefaultParametersInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
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
            member_type = "structure",
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

M.SourceType = {
    CLUSTER = "CLUSTER",
    PARAMETER_GROUP = "PARAMETER_GROUP",
    SUBNET_GROUP = "SUBNET_GROUP",
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

M.DescribeParameterGroupsInput = {
    type = "structure",
    members = {
        ParameterGroupNames = {
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

M.DescribeSubnetGroupsInput = {
    type = "structure",
    members = {
        SubnetGroupNames = {
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

M.IncreaseReplicationFactorInput = {
    type = "structure",
    members = {
        ClusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewReplicationFactor = {
            type = "number",
            traits = {
                required = true,
            },
        },
        AvailabilityZones = {
            type = "list",
            member_type = "string",
        },
    },
}

M.IncreaseReplicationFactorOutput = {
    type = "structure",
    members = {
        Cluster = {
            type = "structure",
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
    members = {
        Tags = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RebootNodeInput = {
    type = "structure",
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
    members = {
        Cluster = {
            type = "structure",
        },
    },
}

M.TagResourceInput = {
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

M.TagResourceOutput = {
    type = "structure",
    members = {
        Tags = {
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

M.UntagResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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

return M
