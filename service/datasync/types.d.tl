local record CancelTaskExecutionInput
    TaskExecutionArn: string
end

local record CancelTaskExecutionOutput
end

local record CreateAgentInput
    ActivationKey: string
    AgentName: string
    Tags: {TagListEntry}
    VpcEndpointId: string
    SubnetArns: {string}
    SecurityGroupArns: {string}
end

local record CreateAgentOutput
    AgentArn: string
end

local record CreateLocationAzureBlobInput
    ContainerUrl: string
    AuthenticationType: string
    SasConfiguration: AzureBlobSasConfiguration
    BlobType: string
    AccessTier: string
    Subdirectory: string
    AgentArns: {string}
    Tags: {TagListEntry}
    CmkSecretConfig: CmkSecretConfig
    CustomSecretConfig: CustomSecretConfig
end

local record CreateLocationAzureBlobOutput
    LocationArn: string
end

local record CreateLocationEfsInput
    Subdirectory: string
    EfsFilesystemArn: string
    Ec2Config: Ec2Config
    Tags: {TagListEntry}
    AccessPointArn: string
    FileSystemAccessRoleArn: string
    InTransitEncryption: string
end

local record CreateLocationEfsOutput
    LocationArn: string
end

local record CreateLocationFsxLustreInput
    FsxFilesystemArn: string
    SecurityGroupArns: {string}
    Subdirectory: string
    Tags: {TagListEntry}
end

local record CreateLocationFsxLustreOutput
    LocationArn: string
end

local record CreateLocationFsxOntapInput
    Protocol: FsxProtocol
    SecurityGroupArns: {string}
    StorageVirtualMachineArn: string
    Subdirectory: string
    Tags: {TagListEntry}
end

local record CreateLocationFsxOntapOutput
    LocationArn: string
end

local record CreateLocationFsxOpenZfsInput
    FsxFilesystemArn: string
    Protocol: FsxProtocol
    SecurityGroupArns: {string}
    Subdirectory: string
    Tags: {TagListEntry}
end

local record CreateLocationFsxOpenZfsOutput
    LocationArn: string
end

local record CreateLocationFsxWindowsInput
    Subdirectory: string
    FsxFilesystemArn: string
    SecurityGroupArns: {string}
    Tags: {TagListEntry}
    User: string
    Domain: string
    Password: string
    CmkSecretConfig: CmkSecretConfig
    CustomSecretConfig: CustomSecretConfig
end

local record CreateLocationFsxWindowsOutput
    LocationArn: string
end

local record CreateLocationHdfsInput
    Subdirectory: string
    NameNodes: {HdfsNameNode}
    BlockSize: number
    ReplicationFactor: number
    KmsKeyProviderUri: string
    QopConfiguration: QopConfiguration
    AuthenticationType: string
    SimpleUser: string
    KerberosPrincipal: string
    KerberosKeytab: string
    KerberosKrb5Conf: string
    AgentArns: {string}
    Tags: {TagListEntry}
    CmkSecretConfig: CmkSecretConfig
    CustomSecretConfig: CustomSecretConfig
end

local record CreateLocationHdfsOutput
    LocationArn: string
end

local record CreateLocationNfsInput
    Subdirectory: string
    ServerHostname: string
    OnPremConfig: OnPremConfig
    MountOptions: NfsMountOptions
    Tags: {TagListEntry}
end

local record CreateLocationNfsOutput
    LocationArn: string
end

local record CreateLocationObjectStorageInput
    ServerHostname: string
    ServerPort: number
    ServerProtocol: string
    Subdirectory: string
    BucketName: string
    AccessKey: string
    SecretKey: string
    AgentArns: {string}
    Tags: {TagListEntry}
    ServerCertificate: string
    CmkSecretConfig: CmkSecretConfig
    CustomSecretConfig: CustomSecretConfig
end

local record CreateLocationObjectStorageOutput
    LocationArn: string
end

local record CreateLocationS3Input
    Subdirectory: string
    S3BucketArn: string
    S3StorageClass: string
    S3Config: S3Config
    AgentArns: {string}
    Tags: {TagListEntry}
end

local record CreateLocationS3Output
    LocationArn: string
end

local record CreateLocationSmbInput
    Subdirectory: string
    ServerHostname: string
    User: string
    Domain: string
    Password: string
    CmkSecretConfig: CmkSecretConfig
    CustomSecretConfig: CustomSecretConfig
    AgentArns: {string}
    MountOptions: SmbMountOptions
    Tags: {TagListEntry}
    AuthenticationType: string
    DnsIpAddresses: {string}
    KerberosPrincipal: string
    KerberosKeytab: string
    KerberosKrb5Conf: string
end

local record CreateLocationSmbOutput
    LocationArn: string
end

local record CreateTaskInput
    SourceLocationArn: string
    DestinationLocationArn: string
    CloudWatchLogGroupArn: string
    Name: string
    Options: Options
    Excludes: {FilterRule}
    Schedule: TaskSchedule
    Tags: {TagListEntry}
    Includes: {FilterRule}
    ManifestConfig: ManifestConfig
    TaskReportConfig: TaskReportConfig
    TaskMode: string
end

local record CreateTaskOutput
    TaskArn: string
end

local record DeleteAgentInput
    AgentArn: string
end

local record DeleteAgentOutput
end

local record DeleteLocationInput
    LocationArn: string
end

local record DeleteLocationOutput
end

local record DeleteTaskInput
    TaskArn: string
end

local record DeleteTaskOutput
end

local record DescribeAgentInput
    AgentArn: string
end

local record DescribeAgentOutput
    AgentArn: string
    Name: string
    Status: string
    LastConnectionTime: number
    CreationTime: number
    EndpointType: string
    PrivateLinkConfig: PrivateLinkConfig
    Platform: Platform
end

local record DescribeLocationAzureBlobInput
    LocationArn: string
end

local record DescribeLocationAzureBlobOutput
    LocationArn: string
    LocationUri: string
    AuthenticationType: string
    BlobType: string
    AccessTier: string
    AgentArns: {string}
    CreationTime: number
    ManagedSecretConfig: ManagedSecretConfig
    CmkSecretConfig: CmkSecretConfig
    CustomSecretConfig: CustomSecretConfig
end

local record DescribeLocationEfsInput
    LocationArn: string
end

local record DescribeLocationEfsOutput
    LocationArn: string
    LocationUri: string
    Ec2Config: Ec2Config
    CreationTime: number
    AccessPointArn: string
    FileSystemAccessRoleArn: string
    InTransitEncryption: string
end

local record DescribeLocationFsxLustreInput
    LocationArn: string
end

local record DescribeLocationFsxLustreOutput
    LocationArn: string
    LocationUri: string
    SecurityGroupArns: {string}
    CreationTime: number
end

local record DescribeLocationFsxOntapInput
    LocationArn: string
end

local record DescribeLocationFsxOntapOutput
    CreationTime: number
    LocationArn: string
    LocationUri: string
    Protocol: FsxProtocol
    SecurityGroupArns: {string}
    StorageVirtualMachineArn: string
    FsxFilesystemArn: string
end

local record DescribeLocationFsxOpenZfsInput
    LocationArn: string
end

local record DescribeLocationFsxOpenZfsOutput
    LocationArn: string
    LocationUri: string
    SecurityGroupArns: {string}
    Protocol: FsxProtocol
    CreationTime: number
end

local record DescribeLocationFsxWindowsInput
    LocationArn: string
end

local record DescribeLocationFsxWindowsOutput
    LocationArn: string
    LocationUri: string
    SecurityGroupArns: {string}
    CreationTime: number
    User: string
    Domain: string
    ManagedSecretConfig: ManagedSecretConfig
    CmkSecretConfig: CmkSecretConfig
    CustomSecretConfig: CustomSecretConfig
end

local record DescribeLocationHdfsInput
    LocationArn: string
end

local record DescribeLocationHdfsOutput
    LocationArn: string
    LocationUri: string
    NameNodes: {HdfsNameNode}
    BlockSize: number
    ReplicationFactor: number
    KmsKeyProviderUri: string
    QopConfiguration: QopConfiguration
    AuthenticationType: string
    SimpleUser: string
    KerberosPrincipal: string
    AgentArns: {string}
    CreationTime: number
    ManagedSecretConfig: ManagedSecretConfig
    CmkSecretConfig: CmkSecretConfig
    CustomSecretConfig: CustomSecretConfig
end

local record DescribeLocationNfsInput
    LocationArn: string
end

local record DescribeLocationNfsOutput
    LocationArn: string
    LocationUri: string
    OnPremConfig: OnPremConfig
    MountOptions: NfsMountOptions
    CreationTime: number
end

local record DescribeLocationObjectStorageInput
    LocationArn: string
end

local record DescribeLocationObjectStorageOutput
    LocationArn: string
    LocationUri: string
    AccessKey: string
    ServerPort: number
    ServerProtocol: string
    AgentArns: {string}
    CreationTime: number
    ServerCertificate: string
    ManagedSecretConfig: ManagedSecretConfig
    CmkSecretConfig: CmkSecretConfig
    CustomSecretConfig: CustomSecretConfig
end

local record DescribeLocationS3Input
    LocationArn: string
end

local record DescribeLocationS3Output
    LocationArn: string
    LocationUri: string
    S3StorageClass: string
    S3Config: S3Config
    AgentArns: {string}
    CreationTime: number
end

local record DescribeLocationSmbInput
    LocationArn: string
end

local record DescribeLocationSmbOutput
    LocationArn: string
    LocationUri: string
    AgentArns: {string}
    User: string
    Domain: string
    MountOptions: SmbMountOptions
    CreationTime: number
    DnsIpAddresses: {string}
    KerberosPrincipal: string
    AuthenticationType: string
    ManagedSecretConfig: ManagedSecretConfig
    CmkSecretConfig: CmkSecretConfig
    CustomSecretConfig: CustomSecretConfig
end

local record DescribeTaskInput
    TaskArn: string
end

local record DescribeTaskOutput
    TaskArn: string
    Status: string
    Name: string
    CurrentTaskExecutionArn: string
    SourceLocationArn: string
    DestinationLocationArn: string
    CloudWatchLogGroupArn: string
    SourceNetworkInterfaceArns: {string}
    DestinationNetworkInterfaceArns: {string}
    Options: Options
    Excludes: {FilterRule}
    Schedule: TaskSchedule
    ErrorCode: string
    ErrorDetail: string
    CreationTime: number
    Includes: {FilterRule}
    ManifestConfig: ManifestConfig
    TaskReportConfig: TaskReportConfig
    ScheduleDetails: TaskScheduleDetails
    TaskMode: string
end

local record DescribeTaskExecutionInput
    TaskExecutionArn: string
end

local record DescribeTaskExecutionOutput
    TaskExecutionArn: string
    Status: string
    Options: Options
    Excludes: {FilterRule}
    Includes: {FilterRule}
    ManifestConfig: ManifestConfig
    StartTime: number
    EstimatedFilesToTransfer: number
    EstimatedBytesToTransfer: number
    FilesTransferred: number
    BytesWritten: number
    BytesTransferred: number
    BytesCompressed: number
    Result: TaskExecutionResultDetail
    TaskReportConfig: TaskReportConfig
    FilesDeleted: number
    FilesSkipped: number
    FilesVerified: number
    ReportResult: ReportResult
    EstimatedFilesToDelete: number
    TaskMode: string
    FilesPrepared: number
    FilesListed: TaskExecutionFilesListedDetail
    FilesFailed: TaskExecutionFilesFailedDetail
    EstimatedFoldersToDelete: number
    EstimatedFoldersToTransfer: number
    FoldersSkipped: number
    FoldersPrepared: number
    FoldersTransferred: number
    FoldersVerified: number
    FoldersDeleted: number
    FoldersListed: TaskExecutionFoldersListedDetail
    FoldersFailed: TaskExecutionFoldersFailedDetail
    LaunchTime: number
    EndTime: number
end

local record ListAgentsInput
    MaxResults: number
    NextToken: string
end

local record ListAgentsOutput
    Agents: {AgentListEntry}
    NextToken: string
end

local record ListLocationsInput
    MaxResults: number
    NextToken: string
    Filters: {LocationFilter}
end

local record ListLocationsOutput
    Locations: {LocationListEntry}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
    MaxResults: number
    NextToken: string
end

local record ListTagsForResourceOutput
    Tags: {TagListEntry}
    NextToken: string
end

local record ListTaskExecutionsInput
    TaskArn: string
    MaxResults: number
    NextToken: string
end

local record ListTaskExecutionsOutput
    TaskExecutions: {TaskExecutionListEntry}
    NextToken: string
end

local record ListTasksInput
    MaxResults: number
    NextToken: string
    Filters: {TaskFilter}
end

local record ListTasksOutput
    Tasks: {TaskListEntry}
    NextToken: string
end

local record StartTaskExecutionInput
    TaskArn: string
    OverrideOptions: Options
    Includes: {FilterRule}
    Excludes: {FilterRule}
    ManifestConfig: ManifestConfig
    TaskReportConfig: TaskReportConfig
    Tags: {TagListEntry}
end

local record StartTaskExecutionOutput
    TaskExecutionArn: string
end

local record TagResourceInput
    ResourceArn: string
    Tags: {TagListEntry}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    Keys: {string}
end

local record UntagResourceOutput
end

local record UpdateAgentInput
    AgentArn: string
    Name: string
end

local record UpdateAgentOutput
end

local record UpdateLocationAzureBlobInput
    LocationArn: string
    Subdirectory: string
    AuthenticationType: string
    SasConfiguration: AzureBlobSasConfiguration
    BlobType: string
    AccessTier: string
    AgentArns: {string}
    CmkSecretConfig: CmkSecretConfig
    CustomSecretConfig: CustomSecretConfig
end

local record UpdateLocationAzureBlobOutput
end

local record UpdateLocationEfsInput
    LocationArn: string
    Subdirectory: string
    AccessPointArn: string
    FileSystemAccessRoleArn: string
    InTransitEncryption: string
end

local record UpdateLocationEfsOutput
end

local record UpdateLocationFsxLustreInput
    LocationArn: string
    Subdirectory: string
end

local record UpdateLocationFsxLustreOutput
end

local record UpdateLocationFsxOntapInput
    LocationArn: string
    Protocol: FsxUpdateProtocol
    Subdirectory: string
end

local record UpdateLocationFsxOntapOutput
end

local record UpdateLocationFsxOpenZfsInput
    LocationArn: string
    Protocol: FsxProtocol
    Subdirectory: string
end

local record UpdateLocationFsxOpenZfsOutput
end

local record UpdateLocationFsxWindowsInput
    LocationArn: string
    Subdirectory: string
    Domain: string
    User: string
    Password: string
    CmkSecretConfig: CmkSecretConfig
    CustomSecretConfig: CustomSecretConfig
end

local record UpdateLocationFsxWindowsOutput
end

local record UpdateLocationHdfsInput
    LocationArn: string
    Subdirectory: string
    NameNodes: {HdfsNameNode}
    BlockSize: number
    ReplicationFactor: number
    KmsKeyProviderUri: string
    QopConfiguration: QopConfiguration
    AuthenticationType: string
    SimpleUser: string
    KerberosPrincipal: string
    KerberosKeytab: string
    KerberosKrb5Conf: string
    AgentArns: {string}
    CmkSecretConfig: CmkSecretConfig
    CustomSecretConfig: CustomSecretConfig
end

local record UpdateLocationHdfsOutput
end

local record UpdateLocationNfsInput
    LocationArn: string
    Subdirectory: string
    ServerHostname: string
    OnPremConfig: OnPremConfig
    MountOptions: NfsMountOptions
end

local record UpdateLocationNfsOutput
end

local record UpdateLocationObjectStorageInput
    LocationArn: string
    ServerPort: number
    ServerProtocol: string
    Subdirectory: string
    ServerHostname: string
    AccessKey: string
    SecretKey: string
    AgentArns: {string}
    ServerCertificate: string
    CmkSecretConfig: CmkSecretConfig
    CustomSecretConfig: CustomSecretConfig
end

local record UpdateLocationObjectStorageOutput
end

local record UpdateLocationS3Input
    LocationArn: string
    Subdirectory: string
    S3StorageClass: string
    S3Config: S3Config
end

local record UpdateLocationS3Output
end

local record UpdateLocationSmbInput
    LocationArn: string
    Subdirectory: string
    ServerHostname: string
    User: string
    Domain: string
    Password: string
    CmkSecretConfig: CmkSecretConfig
    CustomSecretConfig: CustomSecretConfig
    AgentArns: {string}
    MountOptions: SmbMountOptions
    AuthenticationType: string
    DnsIpAddresses: {string}
    KerberosPrincipal: string
    KerberosKeytab: string
    KerberosKrb5Conf: string
end

local record UpdateLocationSmbOutput
end

local record UpdateTaskInput
    TaskArn: string
    Options: Options
    Excludes: {FilterRule}
    Schedule: TaskSchedule
    Name: string
    CloudWatchLogGroupArn: string
    Includes: {FilterRule}
    ManifestConfig: ManifestConfig
    TaskReportConfig: TaskReportConfig
end

local record UpdateTaskOutput
end

local record UpdateTaskExecutionInput
    TaskExecutionArn: string
    Options: Options
end

local record UpdateTaskExecutionOutput
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local record InternalException
    message: string
    errorCode: string
end

local record InvalidRequestException
    message: string
    errorCode: string
    datasyncErrorCode: string
end

local type AzureBlobType = "BLOCK"

local type TaskMode = "BASIC" | "ENHANCED"

local type SmbAuthenticationType = "NTLM" | "KERBEROS"

local type TaskStatus = "AVAILABLE" | "CREATING" | "QUEUED" | "RUNNING" | "UNAVAILABLE"

local type HdfsAuthenticationType = "SIMPLE" | "KERBEROS"

local type AgentStatus = "ONLINE" | "OFFLINE"

local type ObjectStorageServerProtocol = "HTTPS" | "HTTP"

local type AzureBlobAuthenticationType = "SAS" | "NONE"

local type AzureAccessTier = "HOT" | "COOL" | "ARCHIVE"

local type EndpointType = "PUBLIC" | "PRIVATE_LINK" | "FIPS" | "FIPS_PRIVATE_LINK"

local type TaskExecutionStatus = "QUEUED" | "CANCELLING" | "LAUNCHING" | "PREPARING" | "TRANSFERRING" | "VERIFYING" | "SUCCESS" | "ERROR"

local type EfsInTransitEncryption = "NONE" | "TLS1_2"

local type S3StorageClass = "STANDARD" | "STANDARD_IA" | "ONEZONE_IA" | "INTELLIGENT_TIERING" | "GLACIER" | "DEEP_ARCHIVE" | "OUTPOSTS" | "GLACIER_INSTANT_RETRIEVAL"

local record M
    CancelTaskExecutionInput: CancelTaskExecutionInput
    CancelTaskExecutionOutput: CancelTaskExecutionOutput
    CreateAgentInput: CreateAgentInput
    CreateAgentOutput: CreateAgentOutput
    CreateLocationAzureBlobInput: CreateLocationAzureBlobInput
    CreateLocationAzureBlobOutput: CreateLocationAzureBlobOutput
    CreateLocationEfsInput: CreateLocationEfsInput
    CreateLocationEfsOutput: CreateLocationEfsOutput
    CreateLocationFsxLustreInput: CreateLocationFsxLustreInput
    CreateLocationFsxLustreOutput: CreateLocationFsxLustreOutput
    CreateLocationFsxOntapInput: CreateLocationFsxOntapInput
    CreateLocationFsxOntapOutput: CreateLocationFsxOntapOutput
    CreateLocationFsxOpenZfsInput: CreateLocationFsxOpenZfsInput
    CreateLocationFsxOpenZfsOutput: CreateLocationFsxOpenZfsOutput
    CreateLocationFsxWindowsInput: CreateLocationFsxWindowsInput
    CreateLocationFsxWindowsOutput: CreateLocationFsxWindowsOutput
    CreateLocationHdfsInput: CreateLocationHdfsInput
    CreateLocationHdfsOutput: CreateLocationHdfsOutput
    CreateLocationNfsInput: CreateLocationNfsInput
    CreateLocationNfsOutput: CreateLocationNfsOutput
    CreateLocationObjectStorageInput: CreateLocationObjectStorageInput
    CreateLocationObjectStorageOutput: CreateLocationObjectStorageOutput
    CreateLocationS3Input: CreateLocationS3Input
    CreateLocationS3Output: CreateLocationS3Output
    CreateLocationSmbInput: CreateLocationSmbInput
    CreateLocationSmbOutput: CreateLocationSmbOutput
    CreateTaskInput: CreateTaskInput
    CreateTaskOutput: CreateTaskOutput
    DeleteAgentInput: DeleteAgentInput
    DeleteAgentOutput: DeleteAgentOutput
    DeleteLocationInput: DeleteLocationInput
    DeleteLocationOutput: DeleteLocationOutput
    DeleteTaskInput: DeleteTaskInput
    DeleteTaskOutput: DeleteTaskOutput
    DescribeAgentInput: DescribeAgentInput
    DescribeAgentOutput: DescribeAgentOutput
    DescribeLocationAzureBlobInput: DescribeLocationAzureBlobInput
    DescribeLocationAzureBlobOutput: DescribeLocationAzureBlobOutput
    DescribeLocationEfsInput: DescribeLocationEfsInput
    DescribeLocationEfsOutput: DescribeLocationEfsOutput
    DescribeLocationFsxLustreInput: DescribeLocationFsxLustreInput
    DescribeLocationFsxLustreOutput: DescribeLocationFsxLustreOutput
    DescribeLocationFsxOntapInput: DescribeLocationFsxOntapInput
    DescribeLocationFsxOntapOutput: DescribeLocationFsxOntapOutput
    DescribeLocationFsxOpenZfsInput: DescribeLocationFsxOpenZfsInput
    DescribeLocationFsxOpenZfsOutput: DescribeLocationFsxOpenZfsOutput
    DescribeLocationFsxWindowsInput: DescribeLocationFsxWindowsInput
    DescribeLocationFsxWindowsOutput: DescribeLocationFsxWindowsOutput
    DescribeLocationHdfsInput: DescribeLocationHdfsInput
    DescribeLocationHdfsOutput: DescribeLocationHdfsOutput
    DescribeLocationNfsInput: DescribeLocationNfsInput
    DescribeLocationNfsOutput: DescribeLocationNfsOutput
    DescribeLocationObjectStorageInput: DescribeLocationObjectStorageInput
    DescribeLocationObjectStorageOutput: DescribeLocationObjectStorageOutput
    DescribeLocationS3Input: DescribeLocationS3Input
    DescribeLocationS3Output: DescribeLocationS3Output
    DescribeLocationSmbInput: DescribeLocationSmbInput
    DescribeLocationSmbOutput: DescribeLocationSmbOutput
    DescribeTaskInput: DescribeTaskInput
    DescribeTaskOutput: DescribeTaskOutput
    DescribeTaskExecutionInput: DescribeTaskExecutionInput
    DescribeTaskExecutionOutput: DescribeTaskExecutionOutput
    ListAgentsInput: ListAgentsInput
    ListAgentsOutput: ListAgentsOutput
    ListLocationsInput: ListLocationsInput
    ListLocationsOutput: ListLocationsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTaskExecutionsInput: ListTaskExecutionsInput
    ListTaskExecutionsOutput: ListTaskExecutionsOutput
    ListTasksInput: ListTasksInput
    ListTasksOutput: ListTasksOutput
    StartTaskExecutionInput: StartTaskExecutionInput
    StartTaskExecutionOutput: StartTaskExecutionOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAgentInput: UpdateAgentInput
    UpdateAgentOutput: UpdateAgentOutput
    UpdateLocationAzureBlobInput: UpdateLocationAzureBlobInput
    UpdateLocationAzureBlobOutput: UpdateLocationAzureBlobOutput
    UpdateLocationEfsInput: UpdateLocationEfsInput
    UpdateLocationEfsOutput: UpdateLocationEfsOutput
    UpdateLocationFsxLustreInput: UpdateLocationFsxLustreInput
    UpdateLocationFsxLustreOutput: UpdateLocationFsxLustreOutput
    UpdateLocationFsxOntapInput: UpdateLocationFsxOntapInput
    UpdateLocationFsxOntapOutput: UpdateLocationFsxOntapOutput
    UpdateLocationFsxOpenZfsInput: UpdateLocationFsxOpenZfsInput
    UpdateLocationFsxOpenZfsOutput: UpdateLocationFsxOpenZfsOutput
    UpdateLocationFsxWindowsInput: UpdateLocationFsxWindowsInput
    UpdateLocationFsxWindowsOutput: UpdateLocationFsxWindowsOutput
    UpdateLocationHdfsInput: UpdateLocationHdfsInput
    UpdateLocationHdfsOutput: UpdateLocationHdfsOutput
    UpdateLocationNfsInput: UpdateLocationNfsInput
    UpdateLocationNfsOutput: UpdateLocationNfsOutput
    UpdateLocationObjectStorageInput: UpdateLocationObjectStorageInput
    UpdateLocationObjectStorageOutput: UpdateLocationObjectStorageOutput
    UpdateLocationS3Input: UpdateLocationS3Input
    UpdateLocationS3Output: UpdateLocationS3Output
    UpdateLocationSmbInput: UpdateLocationSmbInput
    UpdateLocationSmbOutput: UpdateLocationSmbOutput
    UpdateTaskInput: UpdateTaskInput
    UpdateTaskOutput: UpdateTaskOutput
    UpdateTaskExecutionInput: UpdateTaskExecutionInput
    UpdateTaskExecutionOutput: UpdateTaskExecutionOutput
end

return M
