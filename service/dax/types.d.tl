local record CreateClusterInput
    ClusterName: string
    NodeType: string
    Description: string
    ReplicationFactor: number
    AvailabilityZones: {string}
    SubnetGroupName: string
    SecurityGroupIds: {string}
    PreferredMaintenanceWindow: string
    NotificationTopicArn: string
    IamRoleArn: string
    ParameterGroupName: string
    Tags: {Tag}
    SSESpecification: SSESpecification
    ClusterEndpointEncryptionType: string
    NetworkType: string
end

local record CreateClusterOutput
    Cluster: Cluster
end

local record CreateParameterGroupInput
    ParameterGroupName: string
    Description: string
end

local record CreateParameterGroupOutput
    ParameterGroup: ParameterGroup
end

local record CreateSubnetGroupInput
    SubnetGroupName: string
    Description: string
    SubnetIds: {string}
end

local record CreateSubnetGroupOutput
    SubnetGroup: SubnetGroup
end

local record DecreaseReplicationFactorInput
    ClusterName: string
    NewReplicationFactor: number
    AvailabilityZones: {string}
    NodeIdsToRemove: {string}
end

local record DecreaseReplicationFactorOutput
    Cluster: Cluster
end

local record DeleteClusterInput
    ClusterName: string
end

local record DeleteClusterOutput
    Cluster: Cluster
end

local record DeleteParameterGroupInput
    ParameterGroupName: string
end

local record DeleteParameterGroupOutput
    DeletionMessage: string
end

local record DeleteSubnetGroupInput
    SubnetGroupName: string
end

local record DeleteSubnetGroupOutput
    DeletionMessage: string
end

local record DescribeClustersInput
    ClusterNames: {string}
    MaxResults: number
    NextToken: string
end

local record DescribeClustersOutput
    NextToken: string
    Clusters: {Cluster}
end

local record DescribeDefaultParametersInput
    MaxResults: number
    NextToken: string
end

local record DescribeDefaultParametersOutput
    NextToken: string
    Parameters: {Parameter}
end

local record DescribeEventsInput
    SourceName: string
    SourceType: string
    StartTime: number
    EndTime: number
    Duration: number
    MaxResults: number
    NextToken: string
end

local record DescribeEventsOutput
    NextToken: string
    Events: {Event}
end

local record DescribeParameterGroupsInput
    ParameterGroupNames: {string}
    MaxResults: number
    NextToken: string
end

local record DescribeParameterGroupsOutput
    NextToken: string
    ParameterGroups: {ParameterGroup}
end

local record DescribeParametersInput
    ParameterGroupName: string
    Source: string
    MaxResults: number
    NextToken: string
end

local record DescribeParametersOutput
    NextToken: string
    Parameters: {Parameter}
end

local record DescribeSubnetGroupsInput
    SubnetGroupNames: {string}
    MaxResults: number
    NextToken: string
end

local record DescribeSubnetGroupsOutput
    NextToken: string
    SubnetGroups: {SubnetGroup}
end

local record IncreaseReplicationFactorInput
    ClusterName: string
    NewReplicationFactor: number
    AvailabilityZones: {string}
end

local record IncreaseReplicationFactorOutput
    Cluster: Cluster
end

local record ListTagsInput
    ResourceName: string
    NextToken: string
end

local record ListTagsOutput
    Tags: {Tag}
    NextToken: string
end

local record RebootNodeInput
    ClusterName: string
    NodeId: string
end

local record RebootNodeOutput
    Cluster: Cluster
end

local record TagResourceInput
    ResourceName: string
    Tags: {Tag}
end

local record TagResourceOutput
    Tags: {Tag}
end

local record UntagResourceInput
    ResourceName: string
    TagKeys: {string}
end

local record UntagResourceOutput
    Tags: {Tag}
end

local record UpdateClusterInput
    ClusterName: string
    Description: string
    PreferredMaintenanceWindow: string
    NotificationTopicArn: string
    NotificationTopicStatus: string
    ParameterGroupName: string
    SecurityGroupIds: {string}
end

local record UpdateClusterOutput
    Cluster: Cluster
end

local record UpdateParameterGroupInput
    ParameterGroupName: string
    ParameterNameValues: {ParameterNameValue}
end

local record UpdateParameterGroupOutput
    ParameterGroup: ParameterGroup
end

local record UpdateSubnetGroupInput
    SubnetGroupName: string
    Description: string
    SubnetIds: {string}
end

local record UpdateSubnetGroupOutput
    SubnetGroup: SubnetGroup
end

local record ClusterAlreadyExistsFault
    message: string
end

local record ClusterQuotaForCustomerExceededFault
    message: string
end

local record InsufficientClusterCapacityFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterGroupStateFault
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidVPCNetworkStateFault
    message: string
end

local record NodeQuotaForClusterExceededFault
    message: string
end

local record NodeQuotaForCustomerExceededFault
    message: string
end

local record ParameterGroupNotFoundFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record ServiceQuotaExceededException
end

local record SubnetGroupNotFoundFault
    message: string
end

local record TagQuotaPerResourceExceeded
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterGroupStateFault
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ParameterGroupAlreadyExistsFault
    message: string
end

local record ParameterGroupQuotaExceededFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record SubnetGroupAlreadyExistsFault
    message: string
end

local record SubnetGroupQuotaExceededFault
    message: string
end

local record SubnetNotAllowedFault
    message: string
end

local record SubnetQuotaExceededFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record NodeNotFoundFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterGroupStateFault
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ParameterGroupNotFoundFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record SubnetGroupInUseFault
    message: string
end

local record SubnetGroupNotFoundFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ParameterGroupNotFoundFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ParameterGroupNotFoundFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record SubnetGroupNotFoundFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InsufficientClusterCapacityFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidVPCNetworkStateFault
    message: string
end

local record NodeQuotaForClusterExceededFault
    message: string
end

local record NodeQuotaForCustomerExceededFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidARNFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record NodeNotFoundFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidARNFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record TagQuotaPerResourceExceeded
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidARNFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record TagNotFoundFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterGroupStateFault
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ParameterGroupNotFoundFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterGroupStateFault
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ParameterGroupNotFoundFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record SubnetGroupNotFoundFault
    message: string
end

local record SubnetInUse
    message: string
end

local record SubnetNotAllowedFault
    message: string
end

local record SubnetQuotaExceededFault
    message: string
end

local type ClusterEndpointEncryptionType = "NONE" | "TLS"

local type SourceType = "CLUSTER" | "PARAMETER_GROUP" | "SUBNET_GROUP"

local type NetworkType = "ipv4" | "ipv6" | "dual_stack"

local record M
    CreateClusterInput: CreateClusterInput
    CreateClusterOutput: CreateClusterOutput
    CreateParameterGroupInput: CreateParameterGroupInput
    CreateParameterGroupOutput: CreateParameterGroupOutput
    CreateSubnetGroupInput: CreateSubnetGroupInput
    CreateSubnetGroupOutput: CreateSubnetGroupOutput
    DecreaseReplicationFactorInput: DecreaseReplicationFactorInput
    DecreaseReplicationFactorOutput: DecreaseReplicationFactorOutput
    DeleteClusterInput: DeleteClusterInput
    DeleteClusterOutput: DeleteClusterOutput
    DeleteParameterGroupInput: DeleteParameterGroupInput
    DeleteParameterGroupOutput: DeleteParameterGroupOutput
    DeleteSubnetGroupInput: DeleteSubnetGroupInput
    DeleteSubnetGroupOutput: DeleteSubnetGroupOutput
    DescribeClustersInput: DescribeClustersInput
    DescribeClustersOutput: DescribeClustersOutput
    DescribeDefaultParametersInput: DescribeDefaultParametersInput
    DescribeDefaultParametersOutput: DescribeDefaultParametersOutput
    DescribeEventsInput: DescribeEventsInput
    DescribeEventsOutput: DescribeEventsOutput
    DescribeParameterGroupsInput: DescribeParameterGroupsInput
    DescribeParameterGroupsOutput: DescribeParameterGroupsOutput
    DescribeParametersInput: DescribeParametersInput
    DescribeParametersOutput: DescribeParametersOutput
    DescribeSubnetGroupsInput: DescribeSubnetGroupsInput
    DescribeSubnetGroupsOutput: DescribeSubnetGroupsOutput
    IncreaseReplicationFactorInput: IncreaseReplicationFactorInput
    IncreaseReplicationFactorOutput: IncreaseReplicationFactorOutput
    ListTagsInput: ListTagsInput
    ListTagsOutput: ListTagsOutput
    RebootNodeInput: RebootNodeInput
    RebootNodeOutput: RebootNodeOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateClusterInput: UpdateClusterInput
    UpdateClusterOutput: UpdateClusterOutput
    UpdateParameterGroupInput: UpdateParameterGroupInput
    UpdateParameterGroupOutput: UpdateParameterGroupOutput
    UpdateSubnetGroupInput: UpdateSubnetGroupInput
    UpdateSubnetGroupOutput: UpdateSubnetGroupOutput
end

return M
