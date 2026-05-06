local record AddTagsToResourceInput
    ResourceName: string
    Tags: {Tag}
end

local record AddTagsToResourceOutput
    TagList: {Tag}
end

local record AuthorizeCacheSecurityGroupIngressInput
    CacheSecurityGroupName: string
    EC2SecurityGroupName: string
    EC2SecurityGroupOwnerId: string
end

local record AuthorizeCacheSecurityGroupIngressOutput
    CacheSecurityGroup: CacheSecurityGroup
end

local record BatchApplyUpdateActionInput
    ReplicationGroupIds: {string}
    CacheClusterIds: {string}
    ServiceUpdateName: string
end

local record BatchApplyUpdateActionOutput
    ProcessedUpdateActions: {ProcessedUpdateAction}
    UnprocessedUpdateActions: {UnprocessedUpdateAction}
end

local record BatchStopUpdateActionInput
    ReplicationGroupIds: {string}
    CacheClusterIds: {string}
    ServiceUpdateName: string
end

local record BatchStopUpdateActionOutput
    ProcessedUpdateActions: {ProcessedUpdateAction}
    UnprocessedUpdateActions: {UnprocessedUpdateAction}
end

local record CompleteMigrationInput
    ReplicationGroupId: string
    Force: boolean
end

local record CompleteMigrationOutput
    ReplicationGroup: ReplicationGroup
end

local record CopyServerlessCacheSnapshotInput
    SourceServerlessCacheSnapshotName: string
    TargetServerlessCacheSnapshotName: string
    KmsKeyId: string
    Tags: {Tag}
end

local record CopyServerlessCacheSnapshotOutput
    ServerlessCacheSnapshot: ServerlessCacheSnapshot
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

local record CreateCacheClusterInput
    CacheClusterId: string
    ReplicationGroupId: string
    AZMode: string
    PreferredAvailabilityZone: string
    PreferredAvailabilityZones: {string}
    NumCacheNodes: number
    CacheNodeType: string
    Engine: string
    EngineVersion: string
    CacheParameterGroupName: string
    CacheSubnetGroupName: string
    CacheSecurityGroupNames: {string}
    SecurityGroupIds: {string}
    Tags: {Tag}
    SnapshotArns: {string}
    SnapshotName: string
    PreferredMaintenanceWindow: string
    Port: number
    NotificationTopicArn: string
    AutoMinorVersionUpgrade: boolean
    SnapshotRetentionLimit: number
    SnapshotWindow: string
    AuthToken: string
    OutpostMode: string
    PreferredOutpostArn: string
    PreferredOutpostArns: {string}
    LogDeliveryConfigurations: {LogDeliveryConfigurationRequest}
    TransitEncryptionEnabled: boolean
    NetworkType: string
    IpDiscovery: string
end

local record CreateCacheClusterOutput
    CacheCluster: CacheCluster
end

local record CreateCacheParameterGroupInput
    CacheParameterGroupName: string
    CacheParameterGroupFamily: string
    Description: string
    Tags: {Tag}
end

local record CreateCacheParameterGroupOutput
    CacheParameterGroup: CacheParameterGroup
end

local record CreateCacheSecurityGroupInput
    CacheSecurityGroupName: string
    Description: string
    Tags: {Tag}
end

local record CreateCacheSecurityGroupOutput
    CacheSecurityGroup: CacheSecurityGroup
end

local record CreateCacheSubnetGroupInput
    CacheSubnetGroupName: string
    CacheSubnetGroupDescription: string
    SubnetIds: {string}
    Tags: {Tag}
end

local record CreateCacheSubnetGroupOutput
    CacheSubnetGroup: CacheSubnetGroup
end

local record CreateGlobalReplicationGroupInput
    GlobalReplicationGroupIdSuffix: string
    GlobalReplicationGroupDescription: string
    PrimaryReplicationGroupId: string
end

local record CreateGlobalReplicationGroupOutput
    GlobalReplicationGroup: GlobalReplicationGroup
end

local record CreateReplicationGroupInput
    ReplicationGroupId: string
    ReplicationGroupDescription: string
    GlobalReplicationGroupId: string
    PrimaryClusterId: string
    AutomaticFailoverEnabled: boolean
    MultiAZEnabled: boolean
    NumCacheClusters: number
    PreferredCacheClusterAZs: {string}
    NumNodeGroups: number
    ReplicasPerNodeGroup: number
    NodeGroupConfiguration: {NodeGroupConfiguration}
    CacheNodeType: string
    Engine: string
    EngineVersion: string
    CacheParameterGroupName: string
    CacheSubnetGroupName: string
    CacheSecurityGroupNames: {string}
    SecurityGroupIds: {string}
    Tags: {Tag}
    SnapshotArns: {string}
    SnapshotName: string
    PreferredMaintenanceWindow: string
    Port: number
    NotificationTopicArn: string
    AutoMinorVersionUpgrade: boolean
    SnapshotRetentionLimit: number
    SnapshotWindow: string
    AuthToken: string
    TransitEncryptionEnabled: boolean
    AtRestEncryptionEnabled: boolean
    KmsKeyId: string
    UserGroupIds: {string}
    LogDeliveryConfigurations: {LogDeliveryConfigurationRequest}
    DataTieringEnabled: boolean
    NetworkType: string
    IpDiscovery: string
    TransitEncryptionMode: string
    ClusterMode: string
    ServerlessCacheSnapshotName: string
end

local record CreateReplicationGroupOutput
    ReplicationGroup: ReplicationGroup
end

local record CreateServerlessCacheInput
    ServerlessCacheName: string
    Description: string
    Engine: string
    MajorEngineVersion: string
    CacheUsageLimits: CacheUsageLimits
    KmsKeyId: string
    SecurityGroupIds: {string}
    SnapshotArnsToRestore: {string}
    Tags: {Tag}
    UserGroupId: string
    SubnetIds: {string}
    SnapshotRetentionLimit: number
    DailySnapshotTime: string
    NetworkType: string
end

local record CreateServerlessCacheOutput
    ServerlessCache: ServerlessCache
end

local record CreateServerlessCacheSnapshotInput
    ServerlessCacheSnapshotName: string
    ServerlessCacheName: string
    KmsKeyId: string
    Tags: {Tag}
end

local record CreateServerlessCacheSnapshotOutput
    ServerlessCacheSnapshot: ServerlessCacheSnapshot
end

local record CreateSnapshotInput
    ReplicationGroupId: string
    CacheClusterId: string
    SnapshotName: string
    KmsKeyId: string
    Tags: {Tag}
end

local record CreateSnapshotOutput
    Snapshot: Snapshot
end

local record CreateUserInput
    UserId: string
    UserName: string
    Engine: string
    Passwords: {string}
    AccessString: string
    NoPasswordRequired: boolean
    Tags: {Tag}
    AuthenticationMode: AuthenticationMode
end

local record CreateUserOutput
    UserId: string
    UserName: string
    Status: string
    Engine: string
    MinimumEngineVersion: string
    AccessString: string
    UserGroupIds: {string}
    Authentication: Authentication
    ARN: string
end

local record CreateUserGroupInput
    UserGroupId: string
    Engine: string
    UserIds: {string}
    Tags: {Tag}
end

local record CreateUserGroupOutput
    UserGroupId: string
    Status: string
    Engine: string
    UserIds: {string}
    MinimumEngineVersion: string
    PendingChanges: UserGroupPendingChanges
    ReplicationGroups: {string}
    ServerlessCaches: {string}
    ARN: string
end

local record DecreaseNodeGroupsInGlobalReplicationGroupInput
    GlobalReplicationGroupId: string
    NodeGroupCount: number
    GlobalNodeGroupsToRemove: {string}
    GlobalNodeGroupsToRetain: {string}
    ApplyImmediately: boolean
end

local record DecreaseNodeGroupsInGlobalReplicationGroupOutput
    GlobalReplicationGroup: GlobalReplicationGroup
end

local record DecreaseReplicaCountInput
    ReplicationGroupId: string
    NewReplicaCount: number
    ReplicaConfiguration: {ConfigureShard}
    ReplicasToRemove: {string}
    ApplyImmediately: boolean
end

local record DecreaseReplicaCountOutput
    ReplicationGroup: ReplicationGroup
end

local record DeleteCacheClusterInput
    CacheClusterId: string
    FinalSnapshotIdentifier: string
end

local record DeleteCacheClusterOutput
    CacheCluster: CacheCluster
end

local record DeleteCacheParameterGroupInput
    CacheParameterGroupName: string
end

local record DeleteCacheParameterGroupOutput
end

local record DeleteCacheSecurityGroupInput
    CacheSecurityGroupName: string
end

local record DeleteCacheSecurityGroupOutput
end

local record DeleteCacheSubnetGroupInput
    CacheSubnetGroupName: string
end

local record DeleteCacheSubnetGroupOutput
end

local record DeleteGlobalReplicationGroupInput
    GlobalReplicationGroupId: string
    RetainPrimaryReplicationGroup: boolean
end

local record DeleteGlobalReplicationGroupOutput
    GlobalReplicationGroup: GlobalReplicationGroup
end

local record DeleteReplicationGroupInput
    ReplicationGroupId: string
    RetainPrimaryCluster: boolean
    FinalSnapshotIdentifier: string
end

local record DeleteReplicationGroupOutput
    ReplicationGroup: ReplicationGroup
end

local record DeleteServerlessCacheInput
    ServerlessCacheName: string
    FinalSnapshotName: string
end

local record DeleteServerlessCacheOutput
    ServerlessCache: ServerlessCache
end

local record DeleteServerlessCacheSnapshotInput
    ServerlessCacheSnapshotName: string
end

local record DeleteServerlessCacheSnapshotOutput
    ServerlessCacheSnapshot: ServerlessCacheSnapshot
end

local record DeleteSnapshotInput
    SnapshotName: string
end

local record DeleteSnapshotOutput
    Snapshot: Snapshot
end

local record DeleteUserInput
    UserId: string
end

local record DeleteUserOutput
    UserId: string
    UserName: string
    Status: string
    Engine: string
    MinimumEngineVersion: string
    AccessString: string
    UserGroupIds: {string}
    Authentication: Authentication
    ARN: string
end

local record DeleteUserGroupInput
    UserGroupId: string
end

local record DeleteUserGroupOutput
    UserGroupId: string
    Status: string
    Engine: string
    UserIds: {string}
    MinimumEngineVersion: string
    PendingChanges: UserGroupPendingChanges
    ReplicationGroups: {string}
    ServerlessCaches: {string}
    ARN: string
end

local record DescribeCacheClustersInput
    CacheClusterId: string
    MaxRecords: number
    Marker: string
    ShowCacheNodeInfo: boolean
    ShowCacheClustersNotInReplicationGroups: boolean
end

local record DescribeCacheClustersOutput
    Marker: string
    CacheClusters: {CacheCluster}
end

local record DescribeCacheEngineVersionsInput
    Engine: string
    EngineVersion: string
    CacheParameterGroupFamily: string
    MaxRecords: number
    Marker: string
    DefaultOnly: boolean
end

local record DescribeCacheEngineVersionsOutput
    Marker: string
    CacheEngineVersions: {CacheEngineVersion}
end

local record DescribeCacheParameterGroupsInput
    CacheParameterGroupName: string
    MaxRecords: number
    Marker: string
end

local record DescribeCacheParameterGroupsOutput
    Marker: string
    CacheParameterGroups: {CacheParameterGroup}
end

local record DescribeCacheParametersInput
    CacheParameterGroupName: string
    Source: string
    MaxRecords: number
    Marker: string
end

local record DescribeCacheParametersOutput
    Marker: string
    Parameters: {Parameter}
    CacheNodeTypeSpecificParameters: {CacheNodeTypeSpecificParameter}
end

local record DescribeCacheSecurityGroupsInput
    CacheSecurityGroupName: string
    MaxRecords: number
    Marker: string
end

local record DescribeCacheSecurityGroupsOutput
    Marker: string
    CacheSecurityGroups: {CacheSecurityGroup}
end

local record DescribeCacheSubnetGroupsInput
    CacheSubnetGroupName: string
    MaxRecords: number
    Marker: string
end

local record DescribeCacheSubnetGroupsOutput
    Marker: string
    CacheSubnetGroups: {CacheSubnetGroup}
end

local record DescribeEngineDefaultParametersInput
    CacheParameterGroupFamily: string
    MaxRecords: number
    Marker: string
end

local record DescribeEngineDefaultParametersOutput
    EngineDefaults: EngineDefaults
end

local record DescribeEventsInput
    SourceIdentifier: string
    SourceType: string
    StartTime: number
    EndTime: number
    Duration: number
    MaxRecords: number
    Marker: string
end

local record DescribeEventsOutput
    Marker: string
    Events: {Event}
end

local record DescribeGlobalReplicationGroupsInput
    GlobalReplicationGroupId: string
    MaxRecords: number
    Marker: string
    ShowMemberInfo: boolean
end

local record DescribeGlobalReplicationGroupsOutput
    Marker: string
    GlobalReplicationGroups: {GlobalReplicationGroup}
end

local record DescribeReplicationGroupsInput
    ReplicationGroupId: string
    MaxRecords: number
    Marker: string
end

local record DescribeReplicationGroupsOutput
    Marker: string
    ReplicationGroups: {ReplicationGroup}
end

local record DescribeReservedCacheNodesInput
    ReservedCacheNodeId: string
    ReservedCacheNodesOfferingId: string
    CacheNodeType: string
    Duration: string
    ProductDescription: string
    OfferingType: string
    MaxRecords: number
    Marker: string
end

local record DescribeReservedCacheNodesOutput
    Marker: string
    ReservedCacheNodes: {ReservedCacheNode}
end

local record DescribeReservedCacheNodesOfferingsInput
    ReservedCacheNodesOfferingId: string
    CacheNodeType: string
    Duration: string
    ProductDescription: string
    OfferingType: string
    MaxRecords: number
    Marker: string
end

local record DescribeReservedCacheNodesOfferingsOutput
    Marker: string
    ReservedCacheNodesOfferings: {ReservedCacheNodesOffering}
end

local record DescribeServerlessCachesInput
    ServerlessCacheName: string
    MaxResults: number
    NextToken: string
end

local record DescribeServerlessCachesOutput
    NextToken: string
    ServerlessCaches: {ServerlessCache}
end

local record DescribeServerlessCacheSnapshotsInput
    ServerlessCacheName: string
    ServerlessCacheSnapshotName: string
    SnapshotType: string
    NextToken: string
    MaxResults: number
end

local record DescribeServerlessCacheSnapshotsOutput
    NextToken: string
    ServerlessCacheSnapshots: {ServerlessCacheSnapshot}
end

local record DescribeServiceUpdatesInput
    ServiceUpdateName: string
    ServiceUpdateStatus: {string}
    MaxRecords: number
    Marker: string
end

local record DescribeServiceUpdatesOutput
    Marker: string
    ServiceUpdates: {ServiceUpdate}
end

local record DescribeSnapshotsInput
    ReplicationGroupId: string
    CacheClusterId: string
    SnapshotName: string
    SnapshotSource: string
    Marker: string
    MaxRecords: number
    ShowNodeGroupConfig: boolean
end

local record DescribeSnapshotsOutput
    Marker: string
    Snapshots: {Snapshot}
end

local record DescribeUpdateActionsInput
    ServiceUpdateName: string
    ReplicationGroupIds: {string}
    CacheClusterIds: {string}
    Engine: string
    ServiceUpdateStatus: {string}
    ServiceUpdateTimeRange: TimeRangeFilter
    UpdateActionStatus: {string}
    ShowNodeLevelUpdateStatus: boolean
    MaxRecords: number
    Marker: string
end

local record DescribeUpdateActionsOutput
    Marker: string
    UpdateActions: {UpdateAction}
end

local record DescribeUserGroupsInput
    UserGroupId: string
    MaxRecords: number
    Marker: string
end

local record DescribeUserGroupsOutput
    UserGroups: {UserGroup}
    Marker: string
end

local record DescribeUsersInput
    Engine: string
    UserId: string
    Filters: {Filter}
    MaxRecords: number
    Marker: string
end

local record DescribeUsersOutput
    Users: {User}
    Marker: string
end

local record DisassociateGlobalReplicationGroupInput
    GlobalReplicationGroupId: string
    ReplicationGroupId: string
    ReplicationGroupRegion: string
end

local record DisassociateGlobalReplicationGroupOutput
    GlobalReplicationGroup: GlobalReplicationGroup
end

local record ExportServerlessCacheSnapshotInput
    ServerlessCacheSnapshotName: string
    S3BucketName: string
end

local record ExportServerlessCacheSnapshotOutput
    ServerlessCacheSnapshot: ServerlessCacheSnapshot
end

local record FailoverGlobalReplicationGroupInput
    GlobalReplicationGroupId: string
    PrimaryRegion: string
    PrimaryReplicationGroupId: string
end

local record FailoverGlobalReplicationGroupOutput
    GlobalReplicationGroup: GlobalReplicationGroup
end

local record IncreaseNodeGroupsInGlobalReplicationGroupInput
    GlobalReplicationGroupId: string
    NodeGroupCount: number
    RegionalConfigurations: {RegionalConfiguration}
    ApplyImmediately: boolean
end

local record IncreaseNodeGroupsInGlobalReplicationGroupOutput
    GlobalReplicationGroup: GlobalReplicationGroup
end

local record IncreaseReplicaCountInput
    ReplicationGroupId: string
    NewReplicaCount: number
    ReplicaConfiguration: {ConfigureShard}
    ApplyImmediately: boolean
end

local record IncreaseReplicaCountOutput
    ReplicationGroup: ReplicationGroup
end

local record ListAllowedNodeTypeModificationsInput
    CacheClusterId: string
    ReplicationGroupId: string
end

local record ListAllowedNodeTypeModificationsOutput
    ScaleUpModifications: {string}
    ScaleDownModifications: {string}
end

local record ListTagsForResourceInput
    ResourceName: string
end

local record ListTagsForResourceOutput
    TagList: {Tag}
end

local record ModifyCacheClusterInput
    CacheClusterId: string
    NumCacheNodes: number
    CacheNodeIdsToRemove: {string}
    AZMode: string
    NewAvailabilityZones: {string}
    CacheSecurityGroupNames: {string}
    SecurityGroupIds: {string}
    PreferredMaintenanceWindow: string
    NotificationTopicArn: string
    CacheParameterGroupName: string
    NotificationTopicStatus: string
    ApplyImmediately: boolean
    Engine: string
    EngineVersion: string
    AutoMinorVersionUpgrade: boolean
    SnapshotRetentionLimit: number
    SnapshotWindow: string
    CacheNodeType: string
    AuthToken: string
    AuthTokenUpdateStrategy: string
    LogDeliveryConfigurations: {LogDeliveryConfigurationRequest}
    IpDiscovery: string
    ScaleConfig: ScaleConfig
end

local record ModifyCacheClusterOutput
    CacheCluster: CacheCluster
end

local record ModifyCacheParameterGroupInput
    CacheParameterGroupName: string
    ParameterNameValues: {ParameterNameValue}
end

local record ModifyCacheParameterGroupOutput
    CacheParameterGroupName: string
end

local record ModifyCacheSubnetGroupInput
    CacheSubnetGroupName: string
    CacheSubnetGroupDescription: string
    SubnetIds: {string}
end

local record ModifyCacheSubnetGroupOutput
    CacheSubnetGroup: CacheSubnetGroup
end

local record ModifyGlobalReplicationGroupInput
    GlobalReplicationGroupId: string
    ApplyImmediately: boolean
    CacheNodeType: string
    Engine: string
    EngineVersion: string
    CacheParameterGroupName: string
    GlobalReplicationGroupDescription: string
    AutomaticFailoverEnabled: boolean
end

local record ModifyGlobalReplicationGroupOutput
    GlobalReplicationGroup: GlobalReplicationGroup
end

local record ModifyReplicationGroupInput
    ReplicationGroupId: string
    ReplicationGroupDescription: string
    PrimaryClusterId: string
    SnapshottingClusterId: string
    AutomaticFailoverEnabled: boolean
    MultiAZEnabled: boolean
    NodeGroupId: string
    CacheSecurityGroupNames: {string}
    SecurityGroupIds: {string}
    PreferredMaintenanceWindow: string
    NotificationTopicArn: string
    CacheParameterGroupName: string
    NotificationTopicStatus: string
    ApplyImmediately: boolean
    Engine: string
    EngineVersion: string
    AutoMinorVersionUpgrade: boolean
    SnapshotRetentionLimit: number
    SnapshotWindow: string
    CacheNodeType: string
    AuthToken: string
    AuthTokenUpdateStrategy: string
    UserGroupIdsToAdd: {string}
    UserGroupIdsToRemove: {string}
    RemoveUserGroups: boolean
    LogDeliveryConfigurations: {LogDeliveryConfigurationRequest}
    IpDiscovery: string
    TransitEncryptionEnabled: boolean
    TransitEncryptionMode: string
    ClusterMode: string
end

local record ModifyReplicationGroupOutput
    ReplicationGroup: ReplicationGroup
end

local record ModifyReplicationGroupShardConfigurationInput
    ReplicationGroupId: string
    NodeGroupCount: number
    ApplyImmediately: boolean
    ReshardingConfiguration: {ReshardingConfiguration}
    NodeGroupsToRemove: {string}
    NodeGroupsToRetain: {string}
end

local record ModifyReplicationGroupShardConfigurationOutput
    ReplicationGroup: ReplicationGroup
end

local record ModifyServerlessCacheInput
    ServerlessCacheName: string
    Description: string
    CacheUsageLimits: CacheUsageLimits
    RemoveUserGroup: boolean
    UserGroupId: string
    SecurityGroupIds: {string}
    SnapshotRetentionLimit: number
    DailySnapshotTime: string
    Engine: string
    MajorEngineVersion: string
end

local record ModifyServerlessCacheOutput
    ServerlessCache: ServerlessCache
end

local record ModifyUserInput
    UserId: string
    AccessString: string
    AppendAccessString: string
    Passwords: {string}
    NoPasswordRequired: boolean
    AuthenticationMode: AuthenticationMode
    Engine: string
end

local record ModifyUserOutput
    UserId: string
    UserName: string
    Status: string
    Engine: string
    MinimumEngineVersion: string
    AccessString: string
    UserGroupIds: {string}
    Authentication: Authentication
    ARN: string
end

local record ModifyUserGroupInput
    UserGroupId: string
    UserIdsToAdd: {string}
    UserIdsToRemove: {string}
    Engine: string
end

local record ModifyUserGroupOutput
    UserGroupId: string
    Status: string
    Engine: string
    UserIds: {string}
    MinimumEngineVersion: string
    PendingChanges: UserGroupPendingChanges
    ReplicationGroups: {string}
    ServerlessCaches: {string}
    ARN: string
end

local record PurchaseReservedCacheNodesOfferingInput
    ReservedCacheNodesOfferingId: string
    ReservedCacheNodeId: string
    CacheNodeCount: number
    Tags: {Tag}
end

local record PurchaseReservedCacheNodesOfferingOutput
    ReservedCacheNode: ReservedCacheNode
end

local record RebalanceSlotsInGlobalReplicationGroupInput
    GlobalReplicationGroupId: string
    ApplyImmediately: boolean
end

local record RebalanceSlotsInGlobalReplicationGroupOutput
    GlobalReplicationGroup: GlobalReplicationGroup
end

local record RebootCacheClusterInput
    CacheClusterId: string
    CacheNodeIdsToReboot: {string}
end

local record RebootCacheClusterOutput
    CacheCluster: CacheCluster
end

local record RemoveTagsFromResourceInput
    ResourceName: string
    TagKeys: {string}
end

local record RemoveTagsFromResourceOutput
    TagList: {Tag}
end

local record ResetCacheParameterGroupInput
    CacheParameterGroupName: string
    ResetAllParameters: boolean
    ParameterNameValues: {ParameterNameValue}
end

local record ResetCacheParameterGroupOutput
    CacheParameterGroupName: string
end

local record RevokeCacheSecurityGroupIngressInput
    CacheSecurityGroupName: string
    EC2SecurityGroupName: string
    EC2SecurityGroupOwnerId: string
end

local record RevokeCacheSecurityGroupIngressOutput
    CacheSecurityGroup: CacheSecurityGroup
end

local record StartMigrationInput
    ReplicationGroupId: string
    CustomerNodeEndpointList: {CustomerNodeEndpoint}
end

local record StartMigrationOutput
    ReplicationGroup: ReplicationGroup
end

local record TestFailoverInput
    ReplicationGroupId: string
    NodeGroupId: string
end

local record TestFailoverOutput
    ReplicationGroup: ReplicationGroup
end

local record TestMigrationInput
    ReplicationGroupId: string
    CustomerNodeEndpointList: {CustomerNodeEndpoint}
end

local record TestMigrationOutput
    ReplicationGroup: ReplicationGroup
end

local record CacheClusterNotFoundFault
    message: string
end

local record CacheParameterGroupNotFoundFault
    message: string
end

local record CacheSecurityGroupNotFoundFault
    message: string
end

local record CacheSubnetGroupNotFoundFault
    message: string
end

local record InvalidARNFault
    message: string
end

local record InvalidReplicationGroupStateFault
    message: string
end

local record InvalidServerlessCacheSnapshotStateFault
    message: string
end

local record InvalidServerlessCacheStateFault
    message: string
end

local record ReplicationGroupNotFoundFault
    message: string
end

local record ReservedCacheNodeNotFoundFault
    message: string
end

local record ServerlessCacheNotFoundFault
    message: string
end

local record ServerlessCacheSnapshotNotFoundFault
    message: string
end

local record SnapshotNotFoundFault
    message: string
end

local record TagQuotaPerResourceExceeded
    message: string
end

local record UserGroupNotFoundFault
    message: string
end

local record UserNotFoundFault
    message: string
end

local record AuthorizationAlreadyExistsFault
    message: string
end

local record CacheSecurityGroupNotFoundFault
    message: string
end

local record InvalidCacheSecurityGroupStateFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServiceUpdateNotFoundFault
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServiceUpdateNotFoundFault
    message: string
end

local record InvalidReplicationGroupStateFault
    message: string
end

local record ReplicationGroupNotFoundFault
    message: string
end

local record ReplicationGroupNotUnderMigrationFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidServerlessCacheSnapshotStateFault
    message: string
end

local record ServerlessCacheSnapshotAlreadyExistsFault
    message: string
end

local record ServerlessCacheSnapshotNotFoundFault
    message: string
end

local record ServerlessCacheSnapshotQuotaExceededFault
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

local record InvalidParameterValueException
    message: string
end

local record InvalidSnapshotStateFault
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

local record CacheClusterAlreadyExistsFault
    message: string
end

local record CacheParameterGroupNotFoundFault
    message: string
end

local record CacheSecurityGroupNotFoundFault
    message: string
end

local record CacheSubnetGroupNotFoundFault
    message: string
end

local record ClusterQuotaForCustomerExceededFault
    message: string
end

local record InsufficientCacheClusterCapacityFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidReplicationGroupStateFault
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

local record ReplicationGroupNotFoundFault
    message: string
end

local record TagQuotaPerResourceExceeded
    message: string
end

local record CacheParameterGroupAlreadyExistsFault
    message: string
end

local record CacheParameterGroupQuotaExceededFault
    message: string
end

local record InvalidCacheParameterGroupStateFault
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

local record CacheSecurityGroupAlreadyExistsFault
    message: string
end

local record CacheSecurityGroupQuotaExceededFault
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

local record CacheSubnetGroupAlreadyExistsFault
    message: string
end

local record CacheSubnetGroupQuotaExceededFault
    message: string
end

local record CacheSubnetQuotaExceededFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record SubnetNotAllowedFault
    message: string
end

local record TagQuotaPerResourceExceeded
    message: string
end

local record GlobalReplicationGroupAlreadyExistsFault
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidReplicationGroupStateFault
    message: string
end

local record ReplicationGroupNotFoundFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record CacheClusterNotFoundFault
    message: string
end

local record CacheParameterGroupNotFoundFault
    message: string
end

local record CacheSecurityGroupNotFoundFault
    message: string
end

local record CacheSubnetGroupNotFoundFault
    message: string
end

local record ClusterQuotaForCustomerExceededFault
    message: string
end

local record GlobalReplicationGroupNotFoundFault
    message: string
end

local record InsufficientCacheClusterCapacityFault
    message: string
end

local record InvalidCacheClusterStateFault
    message: string
end

local record InvalidGlobalReplicationGroupStateFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidUserGroupStateFault
    message: string
end

local record InvalidVPCNetworkStateFault
    message: string
end

local record NodeGroupsPerReplicationGroupQuotaExceededFault
    message: string
end

local record NodeQuotaForClusterExceededFault
    message: string
end

local record NodeQuotaForCustomerExceededFault
    message: string
end

local record ReplicationGroupAlreadyExistsFault
    message: string
end

local record TagQuotaPerResourceExceeded
    message: string
end

local record UserGroupNotFoundFault
    message: string
end

local record InvalidCredentialsException
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidServerlessCacheStateFault
    message: string
end

local record InvalidUserGroupStateFault
    message: string
end

local record ServerlessCacheAlreadyExistsFault
    message: string
end

local record ServerlessCacheNotFoundFault
    message: string
end

local record ServerlessCacheQuotaForCustomerExceededFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record TagQuotaPerResourceExceeded
    message: string
end

local record UserGroupNotFoundFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidServerlessCacheStateFault
    message: string
end

local record ServerlessCacheNotFoundFault
    message: string
end

local record ServerlessCacheSnapshotAlreadyExistsFault
    message: string
end

local record ServerlessCacheSnapshotQuotaExceededFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record TagQuotaPerResourceExceeded
    message: string
end

local record CacheClusterNotFoundFault
    message: string
end

local record InvalidCacheClusterStateFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidReplicationGroupStateFault
    message: string
end

local record ReplicationGroupNotFoundFault
    message: string
end

local record SnapshotAlreadyExistsFault
    message: string
end

local record SnapshotFeatureNotSupportedFault
    message: string
end

local record SnapshotQuotaExceededFault
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

local record ServiceLinkedRoleNotFoundFault
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

local record DefaultUserRequired
    message: string
end

local record DuplicateUserNameFault
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

local record UserGroupAlreadyExistsFault
    message: string
end

local record UserGroupQuotaExceededFault
    message: string
end

local record UserNotFoundFault
    message: string
end

local record GlobalReplicationGroupNotFoundFault
    message: string
end

local record InvalidGlobalReplicationGroupStateFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ClusterQuotaForCustomerExceededFault
    message: string
end

local record InsufficientCacheClusterCapacityFault
    message: string
end

local record InvalidCacheClusterStateFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidReplicationGroupStateFault
    message: string
end

local record InvalidVPCNetworkStateFault
    message: string
end

local record NodeGroupsPerReplicationGroupQuotaExceededFault
    message: string
end

local record NodeQuotaForCustomerExceededFault
    message: string
end

local record NoOperationFault
    message: string
end

local record ReplicationGroupNotFoundFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record CacheClusterNotFoundFault
    message: string
end

local record InvalidCacheClusterStateFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record SnapshotAlreadyExistsFault
    message: string
end

local record SnapshotFeatureNotSupportedFault
    message: string
end

local record SnapshotQuotaExceededFault
    message: string
end

local record CacheParameterGroupNotFoundFault
    message: string
end

local record InvalidCacheParameterGroupStateFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record CacheSecurityGroupNotFoundFault
    message: string
end

local record InvalidCacheSecurityGroupStateFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record CacheSubnetGroupInUse
    message: string
end

local record CacheSubnetGroupNotFoundFault
    message: string
end

local record GlobalReplicationGroupNotFoundFault
    message: string
end

local record InvalidGlobalReplicationGroupStateFault
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

local record InvalidReplicationGroupStateFault
    message: string
end

local record ReplicationGroupNotFoundFault
    message: string
end

local record SnapshotAlreadyExistsFault
    message: string
end

local record SnapshotFeatureNotSupportedFault
    message: string
end

local record SnapshotQuotaExceededFault
    message: string
end

local record InvalidCredentialsException
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidServerlessCacheStateFault
    message: string
end

local record ServerlessCacheNotFoundFault
    message: string
end

local record ServerlessCacheSnapshotAlreadyExistsFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidServerlessCacheSnapshotStateFault
    message: string
end

local record ServerlessCacheSnapshotNotFoundFault
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

local record SnapshotNotFoundFault
    message: string
end

local record DefaultUserAssociatedToUserGroupFault
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidUserStateFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record UserNotFoundFault
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidUserGroupStateFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record UserGroupNotFoundFault
    message: string
end

local record CacheClusterNotFoundFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record CacheParameterGroupNotFoundFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record CacheParameterGroupNotFoundFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record CacheSecurityGroupNotFoundFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record CacheSubnetGroupNotFoundFault
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

local record GlobalReplicationGroupNotFoundFault
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

local record ReplicationGroupNotFoundFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ReservedCacheNodeNotFoundFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ReservedCacheNodesOfferingNotFoundFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServerlessCacheNotFoundFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServerlessCacheNotFoundFault
    message: string
end

local record ServerlessCacheSnapshotNotFoundFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ServiceUpdateNotFoundFault
    message: string
end

local record CacheClusterNotFoundFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record SnapshotNotFoundFault
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

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record UserGroupNotFoundFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record UserNotFoundFault
    message: string
end

local record GlobalReplicationGroupNotFoundFault
    message: string
end

local record InvalidGlobalReplicationGroupStateFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidServerlessCacheSnapshotStateFault
    message: string
end

local record ServerlessCacheSnapshotNotFoundFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record GlobalReplicationGroupNotFoundFault
    message: string
end

local record InvalidGlobalReplicationGroupStateFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record GlobalReplicationGroupNotFoundFault
    message: string
end

local record InvalidGlobalReplicationGroupStateFault
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ClusterQuotaForCustomerExceededFault
    message: string
end

local record InsufficientCacheClusterCapacityFault
    message: string
end

local record InvalidCacheClusterStateFault
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

local record InvalidReplicationGroupStateFault
    message: string
end

local record InvalidVPCNetworkStateFault
    message: string
end

local record NodeGroupsPerReplicationGroupQuotaExceededFault
    message: string
end

local record NodeQuotaForCustomerExceededFault
    message: string
end

local record NoOperationFault
    message: string
end

local record ReplicationGroupNotFoundFault
    message: string
end

local record CacheClusterNotFoundFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record ReplicationGroupNotFoundFault
    message: string
end

local record CacheClusterNotFoundFault
    message: string
end

local record CacheParameterGroupNotFoundFault
    message: string
end

local record CacheSecurityGroupNotFoundFault
    message: string
end

local record CacheSubnetGroupNotFoundFault
    message: string
end

local record InvalidARNFault
    message: string
end

local record InvalidReplicationGroupStateFault
    message: string
end

local record InvalidServerlessCacheSnapshotStateFault
    message: string
end

local record InvalidServerlessCacheStateFault
    message: string
end

local record ReplicationGroupNotFoundFault
    message: string
end

local record ReservedCacheNodeNotFoundFault
    message: string
end

local record ServerlessCacheNotFoundFault
    message: string
end

local record ServerlessCacheSnapshotNotFoundFault
    message: string
end

local record SnapshotNotFoundFault
    message: string
end

local record UserGroupNotFoundFault
    message: string
end

local record UserNotFoundFault
    message: string
end

local record CacheClusterNotFoundFault
    message: string
end

local record CacheParameterGroupNotFoundFault
    message: string
end

local record CacheSecurityGroupNotFoundFault
    message: string
end

local record InsufficientCacheClusterCapacityFault
    message: string
end

local record InvalidCacheClusterStateFault
    message: string
end

local record InvalidCacheSecurityGroupStateFault
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

local record CacheParameterGroupNotFoundFault
    message: string
end

local record InvalidCacheParameterGroupStateFault
    message: string
end

local record InvalidGlobalReplicationGroupStateFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record CacheSubnetGroupNotFoundFault
    message: string
end

local record CacheSubnetQuotaExceededFault
    message: string
end

local record InvalidSubnet
    message: string
end

local record SubnetInUse
    message: string
end

local record SubnetNotAllowedFault
    message: string
end

local record GlobalReplicationGroupNotFoundFault
    message: string
end

local record InvalidGlobalReplicationGroupStateFault
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record CacheClusterNotFoundFault
    message: string
end

local record CacheParameterGroupNotFoundFault
    message: string
end

local record CacheSecurityGroupNotFoundFault
    message: string
end

local record InsufficientCacheClusterCapacityFault
    message: string
end

local record InvalidCacheClusterStateFault
    message: string
end

local record InvalidCacheSecurityGroupStateFault
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

local record InvalidReplicationGroupStateFault
    message: string
end

local record InvalidUserGroupStateFault
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

local record ReplicationGroupNotFoundFault
    message: string
end

local record UserGroupNotFoundFault
    message: string
end

local record InsufficientCacheClusterCapacityFault
    message: string
end

local record InvalidCacheClusterStateFault
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

local record InvalidReplicationGroupStateFault
    message: string
end

local record InvalidVPCNetworkStateFault
    message: string
end

local record NodeGroupsPerReplicationGroupQuotaExceededFault
    message: string
end

local record NodeQuotaForCustomerExceededFault
    message: string
end

local record ReplicationGroupNotFoundFault
    message: string
end

local record InvalidCredentialsException
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidServerlessCacheStateFault
    message: string
end

local record InvalidUserGroupStateFault
    message: string
end

local record ServerlessCacheNotFoundFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record UserGroupNotFoundFault
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

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record UserNotFoundFault
    message: string
end

local record DefaultUserRequired
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

local record InvalidUserGroupStateFault
    message: string
end

local record ServiceLinkedRoleNotFoundFault
    message: string
end

local record UserGroupNotFoundFault
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

local record ReservedCacheNodeAlreadyExistsFault
    message: string
end

local record ReservedCacheNodeQuotaExceededFault
    message: string
end

local record ReservedCacheNodesOfferingNotFoundFault
    message: string
end

local record TagQuotaPerResourceExceeded
    message: string
end

local record GlobalReplicationGroupNotFoundFault
    message: string
end

local record InvalidGlobalReplicationGroupStateFault
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record CacheClusterNotFoundFault
    message: string
end

local record InvalidCacheClusterStateFault
    message: string
end

local record CacheClusterNotFoundFault
    message: string
end

local record CacheParameterGroupNotFoundFault
    message: string
end

local record CacheSecurityGroupNotFoundFault
    message: string
end

local record CacheSubnetGroupNotFoundFault
    message: string
end

local record InvalidARNFault
    message: string
end

local record InvalidReplicationGroupStateFault
    message: string
end

local record InvalidServerlessCacheSnapshotStateFault
    message: string
end

local record InvalidServerlessCacheStateFault
    message: string
end

local record ReplicationGroupNotFoundFault
    message: string
end

local record ReservedCacheNodeNotFoundFault
    message: string
end

local record ServerlessCacheNotFoundFault
    message: string
end

local record ServerlessCacheSnapshotNotFoundFault
    message: string
end

local record SnapshotNotFoundFault
    message: string
end

local record TagNotFoundFault
    message: string
end

local record UserGroupNotFoundFault
    message: string
end

local record UserNotFoundFault
    message: string
end

local record CacheParameterGroupNotFoundFault
    message: string
end

local record InvalidCacheParameterGroupStateFault
    message: string
end

local record InvalidGlobalReplicationGroupStateFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record AuthorizationNotFoundFault
    message: string
end

local record CacheSecurityGroupNotFoundFault
    message: string
end

local record InvalidCacheSecurityGroupStateFault
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidReplicationGroupStateFault
    message: string
end

local record ReplicationGroupAlreadyUnderMigrationFault
    message: string
end

local record ReplicationGroupNotFoundFault
    message: string
end

local record APICallRateForCustomerExceededFault
    message: string
end

local record InvalidCacheClusterStateFault
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

local record InvalidReplicationGroupStateFault
    message: string
end

local record NodeGroupNotFoundFault
    message: string
end

local record ReplicationGroupNotFoundFault
    message: string
end

local record TestFailoverNotAvailableFault
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidReplicationGroupStateFault
    message: string
end

local record ReplicationGroupAlreadyUnderMigrationFault
    message: string
end

local record ReplicationGroupNotFoundFault
    message: string
end

local type AZMode = "single-az" | "cross-az"

local type AuthTokenUpdateStrategyType = "SET" | "ROTATE" | "DELETE"

local type ClusterMode = "enabled" | "disabled" | "compatible"

local type IpDiscovery = "ipv4" | "ipv6"

local type NetworkType = "ipv4" | "ipv6" | "dual_stack"

local type OutpostMode = "single-outpost" | "cross-outpost"

local type SourceType = "cache-cluster" | "cache-parameter-group" | "cache-security-group" | "cache-subnet-group" | "replication-group" | "serverless-cache" | "serverless-cache-snapshot" | "user" | "user-group"

local type TransitEncryptionMode = "preferred" | "required"

local record M
    AddTagsToResourceInput: AddTagsToResourceInput
    AddTagsToResourceOutput: AddTagsToResourceOutput
    AuthorizeCacheSecurityGroupIngressInput: AuthorizeCacheSecurityGroupIngressInput
    AuthorizeCacheSecurityGroupIngressOutput: AuthorizeCacheSecurityGroupIngressOutput
    BatchApplyUpdateActionInput: BatchApplyUpdateActionInput
    BatchApplyUpdateActionOutput: BatchApplyUpdateActionOutput
    BatchStopUpdateActionInput: BatchStopUpdateActionInput
    BatchStopUpdateActionOutput: BatchStopUpdateActionOutput
    CompleteMigrationInput: CompleteMigrationInput
    CompleteMigrationOutput: CompleteMigrationOutput
    CopyServerlessCacheSnapshotInput: CopyServerlessCacheSnapshotInput
    CopyServerlessCacheSnapshotOutput: CopyServerlessCacheSnapshotOutput
    CopySnapshotInput: CopySnapshotInput
    CopySnapshotOutput: CopySnapshotOutput
    CreateCacheClusterInput: CreateCacheClusterInput
    CreateCacheClusterOutput: CreateCacheClusterOutput
    CreateCacheParameterGroupInput: CreateCacheParameterGroupInput
    CreateCacheParameterGroupOutput: CreateCacheParameterGroupOutput
    CreateCacheSecurityGroupInput: CreateCacheSecurityGroupInput
    CreateCacheSecurityGroupOutput: CreateCacheSecurityGroupOutput
    CreateCacheSubnetGroupInput: CreateCacheSubnetGroupInput
    CreateCacheSubnetGroupOutput: CreateCacheSubnetGroupOutput
    CreateGlobalReplicationGroupInput: CreateGlobalReplicationGroupInput
    CreateGlobalReplicationGroupOutput: CreateGlobalReplicationGroupOutput
    CreateReplicationGroupInput: CreateReplicationGroupInput
    CreateReplicationGroupOutput: CreateReplicationGroupOutput
    CreateServerlessCacheInput: CreateServerlessCacheInput
    CreateServerlessCacheOutput: CreateServerlessCacheOutput
    CreateServerlessCacheSnapshotInput: CreateServerlessCacheSnapshotInput
    CreateServerlessCacheSnapshotOutput: CreateServerlessCacheSnapshotOutput
    CreateSnapshotInput: CreateSnapshotInput
    CreateSnapshotOutput: CreateSnapshotOutput
    CreateUserInput: CreateUserInput
    CreateUserOutput: CreateUserOutput
    CreateUserGroupInput: CreateUserGroupInput
    CreateUserGroupOutput: CreateUserGroupOutput
    DecreaseNodeGroupsInGlobalReplicationGroupInput: DecreaseNodeGroupsInGlobalReplicationGroupInput
    DecreaseNodeGroupsInGlobalReplicationGroupOutput: DecreaseNodeGroupsInGlobalReplicationGroupOutput
    DecreaseReplicaCountInput: DecreaseReplicaCountInput
    DecreaseReplicaCountOutput: DecreaseReplicaCountOutput
    DeleteCacheClusterInput: DeleteCacheClusterInput
    DeleteCacheClusterOutput: DeleteCacheClusterOutput
    DeleteCacheParameterGroupInput: DeleteCacheParameterGroupInput
    DeleteCacheParameterGroupOutput: DeleteCacheParameterGroupOutput
    DeleteCacheSecurityGroupInput: DeleteCacheSecurityGroupInput
    DeleteCacheSecurityGroupOutput: DeleteCacheSecurityGroupOutput
    DeleteCacheSubnetGroupInput: DeleteCacheSubnetGroupInput
    DeleteCacheSubnetGroupOutput: DeleteCacheSubnetGroupOutput
    DeleteGlobalReplicationGroupInput: DeleteGlobalReplicationGroupInput
    DeleteGlobalReplicationGroupOutput: DeleteGlobalReplicationGroupOutput
    DeleteReplicationGroupInput: DeleteReplicationGroupInput
    DeleteReplicationGroupOutput: DeleteReplicationGroupOutput
    DeleteServerlessCacheInput: DeleteServerlessCacheInput
    DeleteServerlessCacheOutput: DeleteServerlessCacheOutput
    DeleteServerlessCacheSnapshotInput: DeleteServerlessCacheSnapshotInput
    DeleteServerlessCacheSnapshotOutput: DeleteServerlessCacheSnapshotOutput
    DeleteSnapshotInput: DeleteSnapshotInput
    DeleteSnapshotOutput: DeleteSnapshotOutput
    DeleteUserInput: DeleteUserInput
    DeleteUserOutput: DeleteUserOutput
    DeleteUserGroupInput: DeleteUserGroupInput
    DeleteUserGroupOutput: DeleteUserGroupOutput
    DescribeCacheClustersInput: DescribeCacheClustersInput
    DescribeCacheClustersOutput: DescribeCacheClustersOutput
    DescribeCacheEngineVersionsInput: DescribeCacheEngineVersionsInput
    DescribeCacheEngineVersionsOutput: DescribeCacheEngineVersionsOutput
    DescribeCacheParameterGroupsInput: DescribeCacheParameterGroupsInput
    DescribeCacheParameterGroupsOutput: DescribeCacheParameterGroupsOutput
    DescribeCacheParametersInput: DescribeCacheParametersInput
    DescribeCacheParametersOutput: DescribeCacheParametersOutput
    DescribeCacheSecurityGroupsInput: DescribeCacheSecurityGroupsInput
    DescribeCacheSecurityGroupsOutput: DescribeCacheSecurityGroupsOutput
    DescribeCacheSubnetGroupsInput: DescribeCacheSubnetGroupsInput
    DescribeCacheSubnetGroupsOutput: DescribeCacheSubnetGroupsOutput
    DescribeEngineDefaultParametersInput: DescribeEngineDefaultParametersInput
    DescribeEngineDefaultParametersOutput: DescribeEngineDefaultParametersOutput
    DescribeEventsInput: DescribeEventsInput
    DescribeEventsOutput: DescribeEventsOutput
    DescribeGlobalReplicationGroupsInput: DescribeGlobalReplicationGroupsInput
    DescribeGlobalReplicationGroupsOutput: DescribeGlobalReplicationGroupsOutput
    DescribeReplicationGroupsInput: DescribeReplicationGroupsInput
    DescribeReplicationGroupsOutput: DescribeReplicationGroupsOutput
    DescribeReservedCacheNodesInput: DescribeReservedCacheNodesInput
    DescribeReservedCacheNodesOutput: DescribeReservedCacheNodesOutput
    DescribeReservedCacheNodesOfferingsInput: DescribeReservedCacheNodesOfferingsInput
    DescribeReservedCacheNodesOfferingsOutput: DescribeReservedCacheNodesOfferingsOutput
    DescribeServerlessCachesInput: DescribeServerlessCachesInput
    DescribeServerlessCachesOutput: DescribeServerlessCachesOutput
    DescribeServerlessCacheSnapshotsInput: DescribeServerlessCacheSnapshotsInput
    DescribeServerlessCacheSnapshotsOutput: DescribeServerlessCacheSnapshotsOutput
    DescribeServiceUpdatesInput: DescribeServiceUpdatesInput
    DescribeServiceUpdatesOutput: DescribeServiceUpdatesOutput
    DescribeSnapshotsInput: DescribeSnapshotsInput
    DescribeSnapshotsOutput: DescribeSnapshotsOutput
    DescribeUpdateActionsInput: DescribeUpdateActionsInput
    DescribeUpdateActionsOutput: DescribeUpdateActionsOutput
    DescribeUserGroupsInput: DescribeUserGroupsInput
    DescribeUserGroupsOutput: DescribeUserGroupsOutput
    DescribeUsersInput: DescribeUsersInput
    DescribeUsersOutput: DescribeUsersOutput
    DisassociateGlobalReplicationGroupInput: DisassociateGlobalReplicationGroupInput
    DisassociateGlobalReplicationGroupOutput: DisassociateGlobalReplicationGroupOutput
    ExportServerlessCacheSnapshotInput: ExportServerlessCacheSnapshotInput
    ExportServerlessCacheSnapshotOutput: ExportServerlessCacheSnapshotOutput
    FailoverGlobalReplicationGroupInput: FailoverGlobalReplicationGroupInput
    FailoverGlobalReplicationGroupOutput: FailoverGlobalReplicationGroupOutput
    IncreaseNodeGroupsInGlobalReplicationGroupInput: IncreaseNodeGroupsInGlobalReplicationGroupInput
    IncreaseNodeGroupsInGlobalReplicationGroupOutput: IncreaseNodeGroupsInGlobalReplicationGroupOutput
    IncreaseReplicaCountInput: IncreaseReplicaCountInput
    IncreaseReplicaCountOutput: IncreaseReplicaCountOutput
    ListAllowedNodeTypeModificationsInput: ListAllowedNodeTypeModificationsInput
    ListAllowedNodeTypeModificationsOutput: ListAllowedNodeTypeModificationsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ModifyCacheClusterInput: ModifyCacheClusterInput
    ModifyCacheClusterOutput: ModifyCacheClusterOutput
    ModifyCacheParameterGroupInput: ModifyCacheParameterGroupInput
    ModifyCacheParameterGroupOutput: ModifyCacheParameterGroupOutput
    ModifyCacheSubnetGroupInput: ModifyCacheSubnetGroupInput
    ModifyCacheSubnetGroupOutput: ModifyCacheSubnetGroupOutput
    ModifyGlobalReplicationGroupInput: ModifyGlobalReplicationGroupInput
    ModifyGlobalReplicationGroupOutput: ModifyGlobalReplicationGroupOutput
    ModifyReplicationGroupInput: ModifyReplicationGroupInput
    ModifyReplicationGroupOutput: ModifyReplicationGroupOutput
    ModifyReplicationGroupShardConfigurationInput: ModifyReplicationGroupShardConfigurationInput
    ModifyReplicationGroupShardConfigurationOutput: ModifyReplicationGroupShardConfigurationOutput
    ModifyServerlessCacheInput: ModifyServerlessCacheInput
    ModifyServerlessCacheOutput: ModifyServerlessCacheOutput
    ModifyUserInput: ModifyUserInput
    ModifyUserOutput: ModifyUserOutput
    ModifyUserGroupInput: ModifyUserGroupInput
    ModifyUserGroupOutput: ModifyUserGroupOutput
    PurchaseReservedCacheNodesOfferingInput: PurchaseReservedCacheNodesOfferingInput
    PurchaseReservedCacheNodesOfferingOutput: PurchaseReservedCacheNodesOfferingOutput
    RebalanceSlotsInGlobalReplicationGroupInput: RebalanceSlotsInGlobalReplicationGroupInput
    RebalanceSlotsInGlobalReplicationGroupOutput: RebalanceSlotsInGlobalReplicationGroupOutput
    RebootCacheClusterInput: RebootCacheClusterInput
    RebootCacheClusterOutput: RebootCacheClusterOutput
    RemoveTagsFromResourceInput: RemoveTagsFromResourceInput
    RemoveTagsFromResourceOutput: RemoveTagsFromResourceOutput
    ResetCacheParameterGroupInput: ResetCacheParameterGroupInput
    ResetCacheParameterGroupOutput: ResetCacheParameterGroupOutput
    RevokeCacheSecurityGroupIngressInput: RevokeCacheSecurityGroupIngressInput
    RevokeCacheSecurityGroupIngressOutput: RevokeCacheSecurityGroupIngressOutput
    StartMigrationInput: StartMigrationInput
    StartMigrationOutput: StartMigrationOutput
    TestFailoverInput: TestFailoverInput
    TestFailoverOutput: TestFailoverOutput
    TestMigrationInput: TestMigrationInput
    TestMigrationOutput: TestMigrationOutput
end

return M
