local record BatchUpdateClusterInput
    ClusterNames: {string}
    ServiceUpdate: ServiceUpdateRequest
end

local record BatchUpdateClusterOutput
    ProcessedClusters: {Cluster}
    UnprocessedClusters: {UnprocessedCluster}
end

local record CopySnapshotInput
    SourceSnapshotName: string
    TargetSnapshotName: string
    TargetBucket: string
    KmsKeyId: string
    Tags: {Tag}
end

local record CopySnapshotOutput
    Snapshot: Snapshot
end

local record CreateACLInput
    ACLName: string
    UserNames: {string}
    Tags: {Tag}
end

local record CreateACLOutput
    ACL: ACL
end

local record CreateClusterInput
    ClusterName: string
    NodeType: string
    MultiRegionClusterName: string
    ParameterGroupName: string
    Description: string
    NumShards: number
    NumReplicasPerShard: number
    SubnetGroupName: string
    SecurityGroupIds: {string}
    MaintenanceWindow: string
    Port: number
    SnsTopicArn: string
    TLSEnabled: boolean
    KmsKeyId: string
    SnapshotArns: {string}
    SnapshotName: string
    SnapshotRetentionLimit: number
    Tags: {Tag}
    SnapshotWindow: string
    ACLName: string
    Engine: string
    EngineVersion: string
    AutoMinorVersionUpgrade: boolean
    DataTiering: boolean
    NetworkType: string
    IpDiscovery: string
end

local record CreateClusterOutput
    Cluster: Cluster
end

local record CreateMultiRegionClusterInput
    MultiRegionClusterNameSuffix: string
    Description: string
    Engine: string
    EngineVersion: string
    NodeType: string
    MultiRegionParameterGroupName: string
    NumShards: number
    TLSEnabled: boolean
    Tags: {Tag}
end

local record CreateMultiRegionClusterOutput
    MultiRegionCluster: MultiRegionCluster
end

local record CreateParameterGroupInput
    ParameterGroupName: string
    Family: string
    Description: string
    Tags: {Tag}
end

local record CreateParameterGroupOutput
    ParameterGroup: ParameterGroup
end

local record CreateSnapshotInput
    ClusterName: string
    SnapshotName: string
    KmsKeyId: string
    Tags: {Tag}
end

local record CreateSnapshotOutput
    Snapshot: Snapshot
end

local record CreateSubnetGroupInput
    SubnetGroupName: string
    Description: string
    SubnetIds: {string}
    Tags: {Tag}
end

local record CreateSubnetGroupOutput
    SubnetGroup: SubnetGroup
end

local record CreateUserInput
    UserName: string
    AuthenticationMode: AuthenticationMode
    AccessString: string
    Tags: {Tag}
end

local record CreateUserOutput
    User: User
end

local record DeleteACLInput
    ACLName: string
end

local record DeleteACLOutput
    ACL: ACL
end

local record DeleteClusterInput
    ClusterName: string
    MultiRegionClusterName: string
    FinalSnapshotName: string
end

local record DeleteClusterOutput
    Cluster: Cluster
end

local record DeleteMultiRegionClusterInput
    MultiRegionClusterName: string
end

local record DeleteMultiRegionClusterOutput
    MultiRegionCluster: MultiRegionCluster
end

local record DeleteParameterGroupInput
    ParameterGroupName: string
end

local record DeleteParameterGroupOutput
    ParameterGroup: ParameterGroup
end

local record DeleteSnapshotInput
    SnapshotName: string
end

local record DeleteSnapshotOutput
    Snapshot: Snapshot
end

local record DeleteSubnetGroupInput
    SubnetGroupName: string
end

local record DeleteSubnetGroupOutput
    SubnetGroup: SubnetGroup
end

local record DeleteUserInput
    UserName: string
end

local record DeleteUserOutput
    User: User
end

local record DescribeACLsInput
    ACLName: string
    MaxResults: number
    NextToken: string
end

local record DescribeACLsOutput
    ACLs: {ACL}
    NextToken: string
end

local record DescribeClustersInput
    ClusterName: string
    MaxResults: number
    NextToken: string
    ShowShardDetails: boolean
end

local record DescribeClustersOutput
    NextToken: string
    Clusters: {Cluster}
end

local record DescribeEngineVersionsInput
    Engine: string
    EngineVersion: string
    ParameterGroupFamily: string
    MaxResults: number
    NextToken: string
    DefaultOnly: boolean
end

local record DescribeEngineVersionsOutput
    NextToken: string
    EngineVersions: {EngineVersionInfo}
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

local record DescribeMultiRegionClustersInput
    MultiRegionClusterName: string
    MaxResults: number
    NextToken: string
    ShowClusterDetails: boolean
end

local record DescribeMultiRegionClustersOutput
    NextToken: string
    MultiRegionClusters: {MultiRegionCluster}
end

local record DescribeMultiRegionParameterGroupsInput
    MultiRegionParameterGroupName: string
    MaxResults: number
    NextToken: string
end

local record DescribeMultiRegionParameterGroupsOutput
    NextToken: string
    MultiRegionParameterGroups: {MultiRegionParameterGroup}
end

local record DescribeMultiRegionParametersInput
    MultiRegionParameterGroupName: string
    Source: string
    MaxResults: number
    NextToken: string
end

local record DescribeMultiRegionParametersOutput
    NextToken: string
    MultiRegionParameters: {MultiRegionParameter}
end

local record DescribeParameterGroupsInput
    ParameterGroupName: string
    MaxResults: number
    NextToken: string
end

local record DescribeParameterGroupsOutput
    NextToken: string
    ParameterGroups: {ParameterGroup}
end

local record DescribeParametersInput
    ParameterGroupName: string
    MaxResults: number
    NextToken: string
end

local record DescribeParametersOutput
    NextToken: string
    Parameters: {Parameter}
end

local record DescribeReservedNodesInput
    ReservationId: string
    ReservedNodesOfferingId: string
    NodeType: string
    Duration: string
    OfferingType: string
    MaxResults: number
    NextToken: string
end

local record DescribeReservedNodesOutput
    NextToken: string
    ReservedNodes: {ReservedNode}
end

local record DescribeReservedNodesOfferingsInput
    ReservedNodesOfferingId: string
    NodeType: string
    Duration: string
    OfferingType: string
    MaxResults: number
    NextToken: string
end

local record DescribeReservedNodesOfferingsOutput
    NextToken: string
    ReservedNodesOfferings: {ReservedNodesOffering}
end

local record DescribeServiceUpdatesInput
    ServiceUpdateName: string
    ClusterNames: {string}
    Status: {string}
    MaxResults: number
    NextToken: string
end

local record DescribeServiceUpdatesOutput
    NextToken: string
    ServiceUpdates: {ServiceUpdate}
end

local record DescribeSnapshotsInput
    ClusterName: string
    SnapshotName: string
    Source: string
    NextToken: string
    MaxResults: number
    ShowDetail: boolean
end

local record DescribeSnapshotsOutput
    NextToken: string
    Snapshots: {Snapshot}
end

local record DescribeSubnetGroupsInput
    SubnetGroupName: string
    MaxResults: number
    NextToken: string
end

local record DescribeSubnetGroupsOutput
    NextToken: string
    SubnetGroups: {SubnetGroup}
end

local record DescribeUsersInput
    UserName: string
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record DescribeUsersOutput
    Users: {User}
    NextToken: string
end

local record FailoverShardInput
    ClusterName: string
    ShardName: string
end

local record FailoverShardOutput
    Cluster: Cluster
end

local record ListAllowedMultiRegionClusterUpdatesInput
    MultiRegionClusterName: string
end

local record ListAllowedMultiRegionClusterUpdatesOutput
    ScaleUpNodeTypes: {string}
    ScaleDownNodeTypes: {string}
end

local record ListAllowedNodeTypeUpdatesInput
    ClusterName: string
end

local record ListAllowedNodeTypeUpdatesOutput
    ScaleUpNodeTypes: {string}
    ScaleDownNodeTypes: {string}
end

local record ListTagsInput
    ResourceArn: string
end

local record ListTagsOutput
    TagList: {Tag}
end

local record PurchaseReservedNodesOfferingInput
    ReservedNodesOfferingId: string
    ReservationId: string
    NodeCount: number
    Tags: {Tag}
end

local record PurchaseReservedNodesOfferingOutput
    ReservedNode: ReservedNode
end

local record ResetParameterGroupInput
    ParameterGroupName: string
    AllParameters: boolean
    ParameterNames: {string}
end

local record ResetParameterGroupOutput
    ParameterGroup: ParameterGroup
end

local record TagResourceInput
    ResourceArn: string
    Tags: {Tag}
end

local record TagResourceOutput
    TagList: {Tag}
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
    TagList: {Tag}
end

local record UpdateACLInput
    ACLName: string
    UserNamesToAdd: {string}
    UserNamesToRemove: {string}
end

local record UpdateACLOutput
    ACL: ACL
end

local record UpdateClusterInput
    ClusterName: string
    Description: string
    SecurityGroupIds: {string}
    MaintenanceWindow: string
    SnsTopicArn: string
    SnsTopicStatus: string
    ParameterGroupName: string
    SnapshotWindow: string
    SnapshotRetentionLimit: number
    NodeType: string
    Engine: string
    EngineVersion: string
    ReplicaConfiguration: ReplicaConfigurationRequest
    ShardConfiguration: ShardConfigurationRequest
    ACLName: string
    IpDiscovery: string
end

local record UpdateClusterOutput
    Cluster: Cluster
end

local record UpdateMultiRegionClusterInput
    MultiRegionClusterName: string
    NodeType: string
    Description: string
    EngineVersion: string
    ShardConfiguration: ShardConfigurationRequest
    MultiRegionParameterGroupName: string
    UpdateStrategy: string
end

local record UpdateMultiRegionClusterOutput
    MultiRegionCluster: MultiRegionCluster
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

local record UpdateUserInput
    UserName: string
    AuthenticationMode: AuthenticationMode
    AccessString: string
end

local record UpdateUserOutput
    User: User
end

local record InvalidParameterValueException
    message: string
end

local record ServiceUpdateNotFoundFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidSnapshotStateFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record SnapshotAlreadyExistsFault
    message: string
end

local record SnapshotNotFoundFault
    message: string
end

local record SnapshotQuotaExceededFault
    message: string
end

local record TagQuotaPerResourceExceeded
    message: string
end

local record ACLAlreadyExistsFault
    message: string
end

local record ACLQuotaExceededFault
    message: string
end

local record DefaultUserRequired
    message: string
end

local record DuplicateUserNameFault
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record TagQuotaPerResourceExceeded
    message: string
end

local record UserNotFoundFault
    message: string
end

local record ACLNotFoundFault
    message: string
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

local record InvalidACLStateFault
    message: string
end

local record InvalidCredentialsException
    message: string
end

local record InvalidMultiRegionClusterStateFault
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

local record MultiRegionClusterNotFoundFault
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

local record ShardsPerClusterQuotaExceededFault
    message: string
end

local record SubnetGroupNotFoundFault
    message: string
end

local record TagQuotaPerResourceExceeded
    message: string
end

local record ClusterQuotaForCustomerExceededFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MultiRegionClusterAlreadyExistsFault
    message: string
end

local record MultiRegionParameterGroupNotFoundFault
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

local record TagQuotaPerResourceExceeded
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

local record SnapshotAlreadyExistsFault
    message: string
end

local record SnapshotQuotaExceededFault
    message: string
end

local record TagQuotaPerResourceExceeded
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

local record TagQuotaPerResourceExceeded
    message: string
end

local record DuplicateUserNameFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record TagQuotaPerResourceExceeded
    message: string
end

local record UserAlreadyExistsFault
    message: string
end

local record UserQuotaExceededFault
    message: string
end

local record ACLNotFoundFault
    message: string
end

local record InvalidACLStateFault
    message: string
end

local record InvalidParameterValueException
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

local record SnapshotAlreadyExistsFault
    message: string
end

local record InvalidMultiRegionClusterStateFault
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MultiRegionClusterNotFoundFault
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

local record InvalidParameterValueException
    message: string
end

local record InvalidSnapshotStateFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record SnapshotNotFoundFault
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

local record InvalidParameterValueException
    message: string
end

local record InvalidUserStateFault
    message: string
end

local record UserNotFoundFault
    message: string
end

local record ACLNotFoundFault
    message: string
end

local record InvalidParameterCombinationException
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

local record ClusterNotFoundFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MultiRegionClusterNotFoundFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MultiRegionParameterGroupNotFoundFault
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

local record MultiRegionParameterGroupNotFoundFault
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

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ReservedNodeNotFoundFault
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

local record ReservedNodesOfferingNotFoundFault
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

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record SnapshotNotFoundFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record SubnetGroupNotFoundFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record UserNotFoundFault
    message: string
end

local record APICallRateForCustomerExceededFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record InvalidKMSKeyFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ShardNotFoundFault
    message: string
end

local record TestFailoverNotAvailableFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MultiRegionClusterNotFoundFault
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

local record ACLNotFoundFault
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

local record MultiRegionClusterNotFoundFault
    message: string
end

local record MultiRegionParameterGroupNotFoundFault
    message: string
end

local record ParameterGroupNotFoundFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record SnapshotNotFoundFault
    message: string
end

local record SubnetGroupNotFoundFault
    message: string
end

local record UserNotFoundFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ReservedNodeAlreadyExistsFault
    message: string
end

local record ReservedNodeQuotaExceededFault
    message: string
end

local record ReservedNodesOfferingNotFoundFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
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

local record ParameterGroupNotFoundFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record ACLNotFoundFault
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

local record InvalidParameterValueException
    message: string
end

local record MultiRegionClusterNotFoundFault
    message: string
end

local record MultiRegionParameterGroupNotFoundFault
    message: string
end

local record ParameterGroupNotFoundFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record SnapshotNotFoundFault
    message: string
end

local record SubnetGroupNotFoundFault
    message: string
end

local record TagQuotaPerResourceExceeded
    message: string
end

local record UserNotFoundFault
    message: string
end

local record ACLNotFoundFault
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

local record InvalidParameterValueException
    message: string
end

local record MultiRegionClusterNotFoundFault
    message: string
end

local record MultiRegionParameterGroupNotFoundFault
    message: string
end

local record ParameterGroupNotFoundFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record SnapshotNotFoundFault
    message: string
end

local record SubnetGroupNotFoundFault
    message: string
end

local record TagNotFoundFault
    message: string
end

local record UserNotFoundFault
    message: string
end

local record ACLNotFoundFault
    message: string
end

local record DefaultUserRequired
    message: string
end

local record DuplicateUserNameFault
    message: string
end

local record InvalidACLStateFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record UserNotFoundFault
    message: string
end

local record ACLNotFoundFault
    message: string
end

local record ClusterNotFoundFault
    message: string
end

local record ClusterQuotaForCustomerExceededFault
    message: string
end

local record InvalidACLStateFault
    message: string
end

local record InvalidClusterStateFault
    message: string
end

local record InvalidKMSKeyFault
    message: string
end

local record InvalidNodeStateFault
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

local record NoOperationFault
    message: string
end

local record ParameterGroupNotFoundFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record ShardsPerClusterQuotaExceededFault
    message: string
end

local record InvalidMultiRegionClusterStateFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MultiRegionClusterNotFoundFault
    message: string
end

local record MultiRegionParameterGroupNotFoundFault
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

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidUserStateFault
    message: string
end

local record UserNotFoundFault
    message: string
end

local type IpDiscovery = "ipv4" | "ipv6"

local type SourceType = "node" | "parameter-group" | "subnet-group" | "cluster" | "user" | "acl"

local type NetworkType = "ipv4" | "ipv6" | "dual_stack"

local type UpdateStrategy = "coordinated" | "uncoordinated"

local record M
    BatchUpdateClusterInput: BatchUpdateClusterInput
    BatchUpdateClusterOutput: BatchUpdateClusterOutput
    CopySnapshotInput: CopySnapshotInput
    CopySnapshotOutput: CopySnapshotOutput
    CreateACLInput: CreateACLInput
    CreateACLOutput: CreateACLOutput
    CreateClusterInput: CreateClusterInput
    CreateClusterOutput: CreateClusterOutput
    CreateMultiRegionClusterInput: CreateMultiRegionClusterInput
    CreateMultiRegionClusterOutput: CreateMultiRegionClusterOutput
    CreateParameterGroupInput: CreateParameterGroupInput
    CreateParameterGroupOutput: CreateParameterGroupOutput
    CreateSnapshotInput: CreateSnapshotInput
    CreateSnapshotOutput: CreateSnapshotOutput
    CreateSubnetGroupInput: CreateSubnetGroupInput
    CreateSubnetGroupOutput: CreateSubnetGroupOutput
    CreateUserInput: CreateUserInput
    CreateUserOutput: CreateUserOutput
    DeleteACLInput: DeleteACLInput
    DeleteACLOutput: DeleteACLOutput
    DeleteClusterInput: DeleteClusterInput
    DeleteClusterOutput: DeleteClusterOutput
    DeleteMultiRegionClusterInput: DeleteMultiRegionClusterInput
    DeleteMultiRegionClusterOutput: DeleteMultiRegionClusterOutput
    DeleteParameterGroupInput: DeleteParameterGroupInput
    DeleteParameterGroupOutput: DeleteParameterGroupOutput
    DeleteSnapshotInput: DeleteSnapshotInput
    DeleteSnapshotOutput: DeleteSnapshotOutput
    DeleteSubnetGroupInput: DeleteSubnetGroupInput
    DeleteSubnetGroupOutput: DeleteSubnetGroupOutput
    DeleteUserInput: DeleteUserInput
    DeleteUserOutput: DeleteUserOutput
    DescribeACLsInput: DescribeACLsInput
    DescribeACLsOutput: DescribeACLsOutput
    DescribeClustersInput: DescribeClustersInput
    DescribeClustersOutput: DescribeClustersOutput
    DescribeEngineVersionsInput: DescribeEngineVersionsInput
    DescribeEngineVersionsOutput: DescribeEngineVersionsOutput
    DescribeEventsInput: DescribeEventsInput
    DescribeEventsOutput: DescribeEventsOutput
    DescribeMultiRegionClustersInput: DescribeMultiRegionClustersInput
    DescribeMultiRegionClustersOutput: DescribeMultiRegionClustersOutput
    DescribeMultiRegionParameterGroupsInput: DescribeMultiRegionParameterGroupsInput
    DescribeMultiRegionParameterGroupsOutput: DescribeMultiRegionParameterGroupsOutput
    DescribeMultiRegionParametersInput: DescribeMultiRegionParametersInput
    DescribeMultiRegionParametersOutput: DescribeMultiRegionParametersOutput
    DescribeParameterGroupsInput: DescribeParameterGroupsInput
    DescribeParameterGroupsOutput: DescribeParameterGroupsOutput
    DescribeParametersInput: DescribeParametersInput
    DescribeParametersOutput: DescribeParametersOutput
    DescribeReservedNodesInput: DescribeReservedNodesInput
    DescribeReservedNodesOutput: DescribeReservedNodesOutput
    DescribeReservedNodesOfferingsInput: DescribeReservedNodesOfferingsInput
    DescribeReservedNodesOfferingsOutput: DescribeReservedNodesOfferingsOutput
    DescribeServiceUpdatesInput: DescribeServiceUpdatesInput
    DescribeServiceUpdatesOutput: DescribeServiceUpdatesOutput
    DescribeSnapshotsInput: DescribeSnapshotsInput
    DescribeSnapshotsOutput: DescribeSnapshotsOutput
    DescribeSubnetGroupsInput: DescribeSubnetGroupsInput
    DescribeSubnetGroupsOutput: DescribeSubnetGroupsOutput
    DescribeUsersInput: DescribeUsersInput
    DescribeUsersOutput: DescribeUsersOutput
    FailoverShardInput: FailoverShardInput
    FailoverShardOutput: FailoverShardOutput
    ListAllowedMultiRegionClusterUpdatesInput: ListAllowedMultiRegionClusterUpdatesInput
    ListAllowedMultiRegionClusterUpdatesOutput: ListAllowedMultiRegionClusterUpdatesOutput
    ListAllowedNodeTypeUpdatesInput: ListAllowedNodeTypeUpdatesInput
    ListAllowedNodeTypeUpdatesOutput: ListAllowedNodeTypeUpdatesOutput
    ListTagsInput: ListTagsInput
    ListTagsOutput: ListTagsOutput
    PurchaseReservedNodesOfferingInput: PurchaseReservedNodesOfferingInput
    PurchaseReservedNodesOfferingOutput: PurchaseReservedNodesOfferingOutput
    ResetParameterGroupInput: ResetParameterGroupInput
    ResetParameterGroupOutput: ResetParameterGroupOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateACLInput: UpdateACLInput
    UpdateACLOutput: UpdateACLOutput
    UpdateClusterInput: UpdateClusterInput
    UpdateClusterOutput: UpdateClusterOutput
    UpdateMultiRegionClusterInput: UpdateMultiRegionClusterInput
    UpdateMultiRegionClusterOutput: UpdateMultiRegionClusterOutput
    UpdateParameterGroupInput: UpdateParameterGroupInput
    UpdateParameterGroupOutput: UpdateParameterGroupOutput
    UpdateSubnetGroupInput: UpdateSubnetGroupInput
    UpdateSubnetGroupOutput: UpdateSubnetGroupOutput
    UpdateUserInput: UpdateUserInput
    UpdateUserOutput: UpdateUserOutput
end

return M
