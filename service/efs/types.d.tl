local record CreateAccessPointInput
    ClientToken: string
    Tags: {Tag}
    FileSystemId: string
    PosixUser: PosixUser
    RootDirectory: RootDirectory
end

local record CreateAccessPointOutput
    ClientToken: string
    Name: string
    Tags: {Tag}
    AccessPointId: string
    AccessPointArn: string
    FileSystemId: string
    PosixUser: PosixUser
    RootDirectory: RootDirectory
    OwnerId: string
    LifeCycleState: string
end

local record CreateFileSystemInput
    CreationToken: string
    PerformanceMode: string
    Encrypted: boolean
    KmsKeyId: string
    ThroughputMode: string
    ProvisionedThroughputInMibps: number
    AvailabilityZoneName: string
    Backup: boolean
    Tags: {Tag}
end

local record CreateFileSystemOutput
    OwnerId: string
    CreationToken: string
    FileSystemId: string
    FileSystemArn: string
    CreationTime: number
    LifeCycleState: string
    Name: string
    NumberOfMountTargets: number
    SizeInBytes: FileSystemSize
    PerformanceMode: string
    Encrypted: boolean
    KmsKeyId: string
    ThroughputMode: string
    ProvisionedThroughputInMibps: number
    AvailabilityZoneName: string
    AvailabilityZoneId: string
    Tags: {Tag}
    FileSystemProtection: FileSystemProtectionDescription
end

local record CreateMountTargetInput
    FileSystemId: string
    SubnetId: string
    IpAddress: string
    Ipv6Address: string
    IpAddressType: string
    SecurityGroups: {string}
end

local record CreateMountTargetOutput
    OwnerId: string
    MountTargetId: string
    FileSystemId: string
    SubnetId: string
    LifeCycleState: string
    IpAddress: string
    Ipv6Address: string
    NetworkInterfaceId: string
    AvailabilityZoneId: string
    AvailabilityZoneName: string
    VpcId: string
end

local record CreateReplicationConfigurationInput
    SourceFileSystemId: string
    Destinations: {DestinationToCreate}
end

local record CreateReplicationConfigurationOutput
    SourceFileSystemId: string
    SourceFileSystemRegion: string
    SourceFileSystemArn: string
    OriginalSourceFileSystemArn: string
    CreationTime: number
    Destinations: {Destination}
    SourceFileSystemOwnerId: string
end

local record CreateTagsInput
    FileSystemId: string
    Tags: {Tag}
end

local record CreateTagsOutput
end

local record DeleteAccessPointInput
    AccessPointId: string
end

local record DeleteAccessPointOutput
end

local record DeleteFileSystemInput
    FileSystemId: string
end

local record DeleteFileSystemOutput
end

local record DeleteFileSystemPolicyInput
    FileSystemId: string
end

local record DeleteFileSystemPolicyOutput
end

local record DeleteMountTargetInput
    MountTargetId: string
end

local record DeleteMountTargetOutput
end

local record DeleteReplicationConfigurationInput
    SourceFileSystemId: string
    DeletionMode: string
end

local record DeleteReplicationConfigurationOutput
end

local record DeleteTagsInput
    FileSystemId: string
    TagKeys: {string}
end

local record DeleteTagsOutput
end

local record DescribeAccessPointsInput
    MaxResults: number
    NextToken: string
    AccessPointId: string
    FileSystemId: string
end

local record DescribeAccessPointsOutput
    AccessPoints: {AccessPointDescription}
    NextToken: string
end

local record DescribeAccountPreferencesInput
    NextToken: string
    MaxResults: number
end

local record DescribeAccountPreferencesOutput
    ResourceIdPreference: ResourceIdPreference
    NextToken: string
end

local record DescribeBackupPolicyInput
    FileSystemId: string
end

local record DescribeBackupPolicyOutput
    BackupPolicy: BackupPolicy
end

local record DescribeFileSystemPolicyInput
    FileSystemId: string
end

local record DescribeFileSystemPolicyOutput
    FileSystemId: string
    Policy: string
end

local record DescribeFileSystemsInput
    MaxItems: number
    Marker: string
    CreationToken: string
    FileSystemId: string
end

local record DescribeFileSystemsOutput
    Marker: string
    FileSystems: {FileSystemDescription}
    NextMarker: string
end

local record DescribeLifecycleConfigurationInput
    FileSystemId: string
end

local record DescribeLifecycleConfigurationOutput
    LifecyclePolicies: {LifecyclePolicy}
end

local record DescribeMountTargetsInput
    MaxItems: number
    Marker: string
    FileSystemId: string
    MountTargetId: string
    AccessPointId: string
end

local record DescribeMountTargetsOutput
    Marker: string
    MountTargets: {MountTargetDescription}
    NextMarker: string
end

local record DescribeMountTargetSecurityGroupsInput
    MountTargetId: string
end

local record DescribeMountTargetSecurityGroupsOutput
    SecurityGroups: {string}
end

local record DescribeReplicationConfigurationsInput
    FileSystemId: string
    NextToken: string
    MaxResults: number
end

local record DescribeReplicationConfigurationsOutput
    Replications: {ReplicationConfigurationDescription}
    NextToken: string
end

local record DescribeTagsInput
    MaxItems: number
    Marker: string
    FileSystemId: string
end

local record DescribeTagsOutput
    Marker: string
    Tags: {Tag}
    NextMarker: string
end

local record ListTagsForResourceInput
    ResourceId: string
    MaxResults: number
    NextToken: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
    NextToken: string
end

local record ModifyMountTargetSecurityGroupsInput
    MountTargetId: string
    SecurityGroups: {string}
end

local record ModifyMountTargetSecurityGroupsOutput
end

local record PutAccountPreferencesInput
    ResourceIdType: string
end

local record PutAccountPreferencesOutput
    ResourceIdPreference: ResourceIdPreference
end

local record PutBackupPolicyInput
    FileSystemId: string
    BackupPolicy: BackupPolicy
end

local record PutBackupPolicyOutput
    BackupPolicy: BackupPolicy
end

local record PutFileSystemPolicyInput
    FileSystemId: string
    Policy: string
    BypassPolicyLockoutSafetyCheck: boolean
end

local record PutFileSystemPolicyOutput
    FileSystemId: string
    Policy: string
end

local record PutLifecycleConfigurationInput
    FileSystemId: string
    LifecyclePolicies: {LifecyclePolicy}
end

local record PutLifecycleConfigurationOutput
    LifecyclePolicies: {LifecyclePolicy}
end

local record TagResourceInput
    ResourceId: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceId: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateFileSystemInput
    FileSystemId: string
    ThroughputMode: string
    ProvisionedThroughputInMibps: number
end

local record UpdateFileSystemOutput
    OwnerId: string
    CreationToken: string
    FileSystemId: string
    FileSystemArn: string
    CreationTime: number
    LifeCycleState: string
    Name: string
    NumberOfMountTargets: number
    SizeInBytes: FileSystemSize
    PerformanceMode: string
    Encrypted: boolean
    KmsKeyId: string
    ThroughputMode: string
    ProvisionedThroughputInMibps: number
    AvailabilityZoneName: string
    AvailabilityZoneId: string
    Tags: {Tag}
    FileSystemProtection: FileSystemProtectionDescription
end

local record UpdateFileSystemProtectionInput
    FileSystemId: string
    ReplicationOverwriteProtection: string
end

local record UpdateFileSystemProtectionOutput
    ReplicationOverwriteProtection: string
end

local record AccessPointAlreadyExists
    ErrorCode: string
    Message: string
    AccessPointId: string
end

local record AccessPointLimitExceeded
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record FileSystemNotFound
    ErrorCode: string
    Message: string
end

local record IncorrectFileSystemLifeCycleState
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record ThrottlingException
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record FileSystemAlreadyExists
    ErrorCode: string
    Message: string
    FileSystemId: string
end

local record FileSystemLimitExceeded
    ErrorCode: string
    Message: string
end

local record InsufficientThroughputCapacity
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record ThroughputLimitExceeded
    ErrorCode: string
    Message: string
end

local record UnsupportedAvailabilityZone
    ErrorCode: string
    Message: string
end

local record AvailabilityZonesMismatch
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record FileSystemNotFound
    ErrorCode: string
    Message: string
end

local record IncorrectFileSystemLifeCycleState
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record IpAddressInUse
    ErrorCode: string
    Message: string
end

local record MountTargetConflict
    ErrorCode: string
    Message: string
end

local record NetworkInterfaceLimitExceeded
    ErrorCode: string
    Message: string
end

local record NoFreeAddressesInSubnet
    ErrorCode: string
    Message: string
end

local record SecurityGroupLimitExceeded
    ErrorCode: string
    Message: string
end

local record SecurityGroupNotFound
    ErrorCode: string
    Message: string
end

local record SubnetNotFound
    ErrorCode: string
    Message: string
end

local record UnsupportedAvailabilityZone
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record ConflictException
    ErrorCode: string
    Message: string
end

local record FileSystemLimitExceeded
    ErrorCode: string
    Message: string
end

local record FileSystemNotFound
    ErrorCode: string
    Message: string
end

local record IncorrectFileSystemLifeCycleState
    ErrorCode: string
    Message: string
end

local record InsufficientThroughputCapacity
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record ReplicationNotFound
    ErrorCode: string
    Message: string
end

local record ThroughputLimitExceeded
    ErrorCode: string
    Message: string
end

local record UnsupportedAvailabilityZone
    ErrorCode: string
    Message: string
end

local record ValidationException
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record FileSystemNotFound
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record AccessPointNotFound
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record FileSystemInUse
    ErrorCode: string
    Message: string
end

local record FileSystemNotFound
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record FileSystemNotFound
    ErrorCode: string
    Message: string
end

local record IncorrectFileSystemLifeCycleState
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record DependencyTimeout
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record MountTargetNotFound
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record FileSystemNotFound
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record ReplicationNotFound
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record FileSystemNotFound
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record AccessPointNotFound
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record FileSystemNotFound
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record FileSystemNotFound
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record PolicyNotFound
    ErrorCode: string
    Message: string
end

local record ValidationException
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record FileSystemNotFound
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record PolicyNotFound
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record FileSystemNotFound
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record FileSystemNotFound
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record AccessPointNotFound
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record FileSystemNotFound
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record MountTargetNotFound
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record IncorrectMountTargetState
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record MountTargetNotFound
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record FileSystemNotFound
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record ReplicationNotFound
    ErrorCode: string
    Message: string
end

local record ValidationException
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record FileSystemNotFound
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record AccessPointNotFound
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record FileSystemNotFound
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record IncorrectMountTargetState
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record MountTargetNotFound
    ErrorCode: string
    Message: string
end

local record SecurityGroupLimitExceeded
    ErrorCode: string
    Message: string
end

local record SecurityGroupNotFound
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record FileSystemNotFound
    ErrorCode: string
    Message: string
end

local record IncorrectFileSystemLifeCycleState
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record ValidationException
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record FileSystemNotFound
    ErrorCode: string
    Message: string
end

local record IncorrectFileSystemLifeCycleState
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record InvalidPolicyException
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record FileSystemNotFound
    ErrorCode: string
    Message: string
end

local record IncorrectFileSystemLifeCycleState
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record AccessPointNotFound
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record FileSystemNotFound
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record AccessPointNotFound
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record FileSystemNotFound
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record FileSystemNotFound
    ErrorCode: string
    Message: string
end

local record IncorrectFileSystemLifeCycleState
    ErrorCode: string
    Message: string
end

local record InsufficientThroughputCapacity
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record ThroughputLimitExceeded
    ErrorCode: string
    Message: string
end

local record TooManyRequests
    ErrorCode: string
    Message: string
end

local record BadRequest
    ErrorCode: string
    Message: string
end

local record FileSystemNotFound
    ErrorCode: string
    Message: string
end

local record IncorrectFileSystemLifeCycleState
    ErrorCode: string
    Message: string
end

local record InsufficientThroughputCapacity
    ErrorCode: string
    Message: string
end

local record InternalServerError
    ErrorCode: string
    Message: string
end

local record ReplicationAlreadyExists
    ErrorCode: string
    Message: string
end

local record ThroughputLimitExceeded
    ErrorCode: string
    Message: string
end

local record TooManyRequests
    ErrorCode: string
    Message: string
end

local type IpAddressType = "IPV4_ONLY" | "IPV6_ONLY" | "DUAL_STACK"

local type ResourceIdType = "LONG_ID" | "SHORT_ID"

local type LifeCycleState = "creating" | "available" | "updating" | "deleting" | "deleted" | "error"

local type ReplicationOverwriteProtection = "ENABLED" | "DISABLED" | "REPLICATING"

local type ThroughputMode = "bursting" | "provisioned" | "elastic"

local type DeletionMode = "ALL_CONFIGURATIONS" | "LOCAL_CONFIGURATION_ONLY"

local type PerformanceMode = "generalPurpose" | "maxIO"

local record M
    CreateAccessPointInput: CreateAccessPointInput
    CreateAccessPointOutput: CreateAccessPointOutput
    CreateFileSystemInput: CreateFileSystemInput
    CreateFileSystemOutput: CreateFileSystemOutput
    CreateMountTargetInput: CreateMountTargetInput
    CreateMountTargetOutput: CreateMountTargetOutput
    CreateReplicationConfigurationInput: CreateReplicationConfigurationInput
    CreateReplicationConfigurationOutput: CreateReplicationConfigurationOutput
    CreateTagsInput: CreateTagsInput
    CreateTagsOutput: CreateTagsOutput
    DeleteAccessPointInput: DeleteAccessPointInput
    DeleteAccessPointOutput: DeleteAccessPointOutput
    DeleteFileSystemInput: DeleteFileSystemInput
    DeleteFileSystemOutput: DeleteFileSystemOutput
    DeleteFileSystemPolicyInput: DeleteFileSystemPolicyInput
    DeleteFileSystemPolicyOutput: DeleteFileSystemPolicyOutput
    DeleteMountTargetInput: DeleteMountTargetInput
    DeleteMountTargetOutput: DeleteMountTargetOutput
    DeleteReplicationConfigurationInput: DeleteReplicationConfigurationInput
    DeleteReplicationConfigurationOutput: DeleteReplicationConfigurationOutput
    DeleteTagsInput: DeleteTagsInput
    DeleteTagsOutput: DeleteTagsOutput
    DescribeAccessPointsInput: DescribeAccessPointsInput
    DescribeAccessPointsOutput: DescribeAccessPointsOutput
    DescribeAccountPreferencesInput: DescribeAccountPreferencesInput
    DescribeAccountPreferencesOutput: DescribeAccountPreferencesOutput
    DescribeBackupPolicyInput: DescribeBackupPolicyInput
    DescribeBackupPolicyOutput: DescribeBackupPolicyOutput
    DescribeFileSystemPolicyInput: DescribeFileSystemPolicyInput
    DescribeFileSystemPolicyOutput: DescribeFileSystemPolicyOutput
    DescribeFileSystemsInput: DescribeFileSystemsInput
    DescribeFileSystemsOutput: DescribeFileSystemsOutput
    DescribeLifecycleConfigurationInput: DescribeLifecycleConfigurationInput
    DescribeLifecycleConfigurationOutput: DescribeLifecycleConfigurationOutput
    DescribeMountTargetsInput: DescribeMountTargetsInput
    DescribeMountTargetsOutput: DescribeMountTargetsOutput
    DescribeMountTargetSecurityGroupsInput: DescribeMountTargetSecurityGroupsInput
    DescribeMountTargetSecurityGroupsOutput: DescribeMountTargetSecurityGroupsOutput
    DescribeReplicationConfigurationsInput: DescribeReplicationConfigurationsInput
    DescribeReplicationConfigurationsOutput: DescribeReplicationConfigurationsOutput
    DescribeTagsInput: DescribeTagsInput
    DescribeTagsOutput: DescribeTagsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ModifyMountTargetSecurityGroupsInput: ModifyMountTargetSecurityGroupsInput
    ModifyMountTargetSecurityGroupsOutput: ModifyMountTargetSecurityGroupsOutput
    PutAccountPreferencesInput: PutAccountPreferencesInput
    PutAccountPreferencesOutput: PutAccountPreferencesOutput
    PutBackupPolicyInput: PutBackupPolicyInput
    PutBackupPolicyOutput: PutBackupPolicyOutput
    PutFileSystemPolicyInput: PutFileSystemPolicyInput
    PutFileSystemPolicyOutput: PutFileSystemPolicyOutput
    PutLifecycleConfigurationInput: PutLifecycleConfigurationInput
    PutLifecycleConfigurationOutput: PutLifecycleConfigurationOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateFileSystemInput: UpdateFileSystemInput
    UpdateFileSystemOutput: UpdateFileSystemOutput
    UpdateFileSystemProtectionInput: UpdateFileSystemProtectionInput
    UpdateFileSystemProtectionOutput: UpdateFileSystemProtectionOutput
end

return M
