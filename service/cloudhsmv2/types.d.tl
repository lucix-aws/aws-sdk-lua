local record CopyBackupToRegionInput
    DestinationRegion: string
    BackupId: string
    TagList: {Tag}
end

local record CopyBackupToRegionOutput
    DestinationBackup: DestinationBackup
end

local record CreateClusterInput
    BackupRetentionPolicy: BackupRetentionPolicy
    HsmType: string
    SourceBackupId: string
    SubnetIds: {string}
    NetworkType: string
    TagList: {Tag}
    Mode: string
end

local record CreateClusterOutput
    Cluster: Cluster
end

local record CreateHsmInput
    ClusterId: string
    AvailabilityZone: string
    IpAddress: string
end

local record CreateHsmOutput
    Hsm: Hsm
end

local record DeleteBackupInput
    BackupId: string
end

local record DeleteBackupOutput
    Backup: Backup
end

local record DeleteClusterInput
    ClusterId: string
end

local record DeleteClusterOutput
    Cluster: Cluster
end

local record DeleteHsmInput
    ClusterId: string
    HsmId: string
    EniId: string
    EniIp: string
end

local record DeleteHsmOutput
    HsmId: string
end

local record DeleteResourcePolicyInput
    ResourceArn: string
end

local record DeleteResourcePolicyOutput
    ResourceArn: string
    Policy: string
end

local record DescribeBackupsInput
    NextToken: string
    MaxResults: number
    Filters: {string : {string}}
    Shared: boolean
    SortAscending: boolean
end

local record DescribeBackupsOutput
    Backups: {Backup}
    NextToken: string
end

local record DescribeClustersInput
    Filters: {string : {string}}
    NextToken: string
    MaxResults: number
end

local record DescribeClustersOutput
    Clusters: {Cluster}
    NextToken: string
end

local record GetResourcePolicyInput
    ResourceArn: string
end

local record GetResourcePolicyOutput
    Policy: string
end

local record InitializeClusterInput
    ClusterId: string
    SignedCert: string
    TrustAnchor: string
end

local record InitializeClusterOutput
    State: string
    StateMessage: string
end

local record ListTagsInput
    ResourceId: string
    NextToken: string
    MaxResults: number
end

local record ListTagsOutput
    TagList: {Tag}
    NextToken: string
end

local record ModifyBackupAttributesInput
    BackupId: string
    NeverExpires: boolean
end

local record ModifyBackupAttributesOutput
    Backup: Backup
end

local record ModifyClusterInput
    HsmType: string
    BackupRetentionPolicy: BackupRetentionPolicy
    ClusterId: string
end

local record ModifyClusterOutput
    Cluster: Cluster
end

local record PutResourcePolicyInput
    ResourceArn: string
    Policy: string
end

local record PutResourcePolicyOutput
    ResourceArn: string
    Policy: string
end

local record RestoreBackupInput
    BackupId: string
end

local record RestoreBackupOutput
    Backup: Backup
end

local record TagResourceInput
    ResourceId: string
    TagList: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceId: string
    TagKeyList: {string}
end

local record UntagResourceOutput
end

local record CloudHsmAccessDeniedException
    Message: string
end

local record CloudHsmInternalFailureException
    Message: string
end

local record CloudHsmInvalidRequestException
    Message: string
end

local record CloudHsmResourceNotFoundException
    Message: string
end

local record CloudHsmServiceException
    Message: string
end

local record CloudHsmTagException
    Message: string
end

local record CloudHsmAccessDeniedException
    Message: string
end

local record CloudHsmInternalFailureException
    Message: string
end

local record CloudHsmInvalidRequestException
    Message: string
end

local record CloudHsmResourceNotFoundException
    Message: string
end

local record CloudHsmServiceException
    Message: string
end

local record CloudHsmTagException
    Message: string
end

local record CloudHsmAccessDeniedException
    Message: string
end

local record CloudHsmInternalFailureException
    Message: string
end

local record CloudHsmInvalidRequestException
    Message: string
end

local record CloudHsmResourceNotFoundException
    Message: string
end

local record CloudHsmServiceException
    Message: string
end

local record CloudHsmAccessDeniedException
    Message: string
end

local record CloudHsmInternalFailureException
    Message: string
end

local record CloudHsmInvalidRequestException
    Message: string
end

local record CloudHsmResourceNotFoundException
    Message: string
end

local record CloudHsmServiceException
    Message: string
end

local record CloudHsmAccessDeniedException
    Message: string
end

local record CloudHsmInternalFailureException
    Message: string
end

local record CloudHsmInvalidRequestException
    Message: string
end

local record CloudHsmResourceNotFoundException
    Message: string
end

local record CloudHsmServiceException
    Message: string
end

local record CloudHsmTagException
    Message: string
end

local record CloudHsmAccessDeniedException
    Message: string
end

local record CloudHsmInternalFailureException
    Message: string
end

local record CloudHsmInvalidRequestException
    Message: string
end

local record CloudHsmResourceNotFoundException
    Message: string
end

local record CloudHsmServiceException
    Message: string
end

local record CloudHsmAccessDeniedException
    Message: string
end

local record CloudHsmInternalFailureException
    Message: string
end

local record CloudHsmInvalidRequestException
    Message: string
end

local record CloudHsmResourceNotFoundException
    Message: string
end

local record CloudHsmServiceException
    Message: string
end

local record CloudHsmAccessDeniedException
    Message: string
end

local record CloudHsmInternalFailureException
    Message: string
end

local record CloudHsmInvalidRequestException
    Message: string
end

local record CloudHsmResourceNotFoundException
    Message: string
end

local record CloudHsmServiceException
    Message: string
end

local record CloudHsmTagException
    Message: string
end

local record CloudHsmAccessDeniedException
    Message: string
end

local record CloudHsmInternalFailureException
    Message: string
end

local record CloudHsmInvalidRequestException
    Message: string
end

local record CloudHsmServiceException
    Message: string
end

local record CloudHsmTagException
    Message: string
end

local record CloudHsmAccessDeniedException
    Message: string
end

local record CloudHsmInternalFailureException
    Message: string
end

local record CloudHsmInvalidRequestException
    Message: string
end

local record CloudHsmResourceNotFoundException
    Message: string
end

local record CloudHsmServiceException
    Message: string
end

local record CloudHsmAccessDeniedException
    Message: string
end

local record CloudHsmInternalFailureException
    Message: string
end

local record CloudHsmInvalidRequestException
    Message: string
end

local record CloudHsmResourceNotFoundException
    Message: string
end

local record CloudHsmServiceException
    Message: string
end

local record CloudHsmAccessDeniedException
    Message: string
end

local record CloudHsmInternalFailureException
    Message: string
end

local record CloudHsmInvalidRequestException
    Message: string
end

local record CloudHsmResourceNotFoundException
    Message: string
end

local record CloudHsmServiceException
    Message: string
end

local record CloudHsmTagException
    Message: string
end

local record CloudHsmAccessDeniedException
    Message: string
end

local record CloudHsmInternalFailureException
    Message: string
end

local record CloudHsmInvalidRequestException
    Message: string
end

local record CloudHsmResourceNotFoundException
    Message: string
end

local record CloudHsmServiceException
    Message: string
end

local record CloudHsmAccessDeniedException
    Message: string
end

local record CloudHsmInternalFailureException
    Message: string
end

local record CloudHsmInvalidRequestException
    Message: string
end

local record CloudHsmResourceNotFoundException
    Message: string
end

local record CloudHsmServiceException
    Message: string
end

local record CloudHsmAccessDeniedException
    Message: string
end

local record CloudHsmInternalFailureException
    Message: string
end

local record CloudHsmInvalidRequestException
    Message: string
end

local record CloudHsmResourceNotFoundException
    Message: string
end

local record CloudHsmServiceException
    Message: string
end

local record CloudHsmAccessDeniedException
    Message: string
end

local record CloudHsmInternalFailureException
    Message: string
end

local record CloudHsmInvalidRequestException
    Message: string
end

local record CloudHsmResourceNotFoundException
    Message: string
end

local record CloudHsmServiceException
    Message: string
end

local record CloudHsmAccessDeniedException
    Message: string
end

local record CloudHsmInternalFailureException
    Message: string
end

local record CloudHsmInvalidRequestException
    Message: string
end

local record CloudHsmResourceLimitExceededException
    Message: string
end

local record CloudHsmResourceNotFoundException
    Message: string
end

local record CloudHsmServiceException
    Message: string
end

local record CloudHsmTagException
    Message: string
end

local record CloudHsmAccessDeniedException
    Message: string
end

local record CloudHsmInternalFailureException
    Message: string
end

local record CloudHsmInvalidRequestException
    Message: string
end

local record CloudHsmResourceNotFoundException
    Message: string
end

local record CloudHsmServiceException
    Message: string
end

local record CloudHsmTagException
    Message: string
end

local type ClusterState = "CREATE_IN_PROGRESS" | "UNINITIALIZED" | "INITIALIZE_IN_PROGRESS" | "INITIALIZED" | "ACTIVE" | "UPDATE_IN_PROGRESS" | "MODIFY_IN_PROGRESS" | "ROLLBACK_IN_PROGRESS" | "DELETE_IN_PROGRESS" | "DELETED" | "DEGRADED"

local type ClusterMode = "FIPS" | "NON_FIPS"

local type NetworkType = "IPV4" | "DUALSTACK"

local record M
    CopyBackupToRegionInput: CopyBackupToRegionInput
    CopyBackupToRegionOutput: CopyBackupToRegionOutput
    CreateClusterInput: CreateClusterInput
    CreateClusterOutput: CreateClusterOutput
    CreateHsmInput: CreateHsmInput
    CreateHsmOutput: CreateHsmOutput
    DeleteBackupInput: DeleteBackupInput
    DeleteBackupOutput: DeleteBackupOutput
    DeleteClusterInput: DeleteClusterInput
    DeleteClusterOutput: DeleteClusterOutput
    DeleteHsmInput: DeleteHsmInput
    DeleteHsmOutput: DeleteHsmOutput
    DeleteResourcePolicyInput: DeleteResourcePolicyInput
    DeleteResourcePolicyOutput: DeleteResourcePolicyOutput
    DescribeBackupsInput: DescribeBackupsInput
    DescribeBackupsOutput: DescribeBackupsOutput
    DescribeClustersInput: DescribeClustersInput
    DescribeClustersOutput: DescribeClustersOutput
    GetResourcePolicyInput: GetResourcePolicyInput
    GetResourcePolicyOutput: GetResourcePolicyOutput
    InitializeClusterInput: InitializeClusterInput
    InitializeClusterOutput: InitializeClusterOutput
    ListTagsInput: ListTagsInput
    ListTagsOutput: ListTagsOutput
    ModifyBackupAttributesInput: ModifyBackupAttributesInput
    ModifyBackupAttributesOutput: ModifyBackupAttributesOutput
    ModifyClusterInput: ModifyClusterInput
    ModifyClusterOutput: ModifyClusterOutput
    PutResourcePolicyInput: PutResourcePolicyInput
    PutResourcePolicyOutput: PutResourcePolicyOutput
    RestoreBackupInput: RestoreBackupInput
    RestoreBackupOutput: RestoreBackupOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
end

return M
