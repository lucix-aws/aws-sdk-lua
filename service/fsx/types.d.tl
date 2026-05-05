local record AssociateFileSystemAliasesInput
    ClientRequestToken: string
    FileSystemId: string
    Aliases: {string}
end

local record AssociateFileSystemAliasesOutput
    Aliases: {Alias}
end

local record CancelDataRepositoryTaskInput
    TaskId: string
end

local record CancelDataRepositoryTaskOutput
    Lifecycle: string
    TaskId: string
end

local record CopyBackupInput
    ClientRequestToken: string
    SourceBackupId: string
    SourceRegion: string
    KmsKeyId: string
    CopyTags: boolean
    Tags: {Tag}
end

local record CopyBackupOutput
    Backup: Backup
end

local record CopySnapshotAndUpdateVolumeInput
    ClientRequestToken: string
    VolumeId: string
    SourceSnapshotARN: string
    CopyStrategy: string
    Options: {string}
end

local record CopySnapshotAndUpdateVolumeOutput
    VolumeId: string
    Lifecycle: string
    AdministrativeActions: {AdministrativeAction}
end

local record CreateAndAttachS3AccessPointInput
    ClientRequestToken: string
    Name: string
    Type: string
    OpenZFSConfiguration: CreateAndAttachS3AccessPointOpenZFSConfiguration
    OntapConfiguration: CreateAndAttachS3AccessPointOntapConfiguration
    S3AccessPoint: CreateAndAttachS3AccessPointS3Configuration
end

local record CreateAndAttachS3AccessPointOutput
    S3AccessPointAttachment: S3AccessPointAttachment
end

local record CreateBackupInput
    FileSystemId: string
    ClientRequestToken: string
    Tags: {Tag}
    VolumeId: string
end

local record CreateBackupOutput
    Backup: Backup
end

local record CreateDataRepositoryAssociationInput
    FileSystemId: string
    FileSystemPath: string
    DataRepositoryPath: string
    BatchImportMetaDataOnCreate: boolean
    ImportedFileChunkSize: number
    S3: S3DataRepositoryConfiguration
    ClientRequestToken: string
    Tags: {Tag}
end

local record CreateDataRepositoryAssociationOutput
    Association: DataRepositoryAssociation
end

local record CreateDataRepositoryTaskInput
    Type: string
    Paths: {string}
    FileSystemId: string
    Report: CompletionReport
    ClientRequestToken: string
    Tags: {Tag}
    CapacityToRelease: number
    ReleaseConfiguration: ReleaseConfiguration
end

local record CreateDataRepositoryTaskOutput
    DataRepositoryTask: DataRepositoryTask
end

local record CreateFileCacheInput
    ClientRequestToken: string
    FileCacheType: string
    FileCacheTypeVersion: string
    StorageCapacity: number
    SubnetIds: {string}
    SecurityGroupIds: {string}
    Tags: {Tag}
    CopyTagsToDataRepositoryAssociations: boolean
    KmsKeyId: string
    LustreConfiguration: CreateFileCacheLustreConfiguration
    DataRepositoryAssociations: {FileCacheDataRepositoryAssociation}
end

local record CreateFileCacheOutput
    FileCache: FileCacheCreating
end

local record CreateFileSystemInput
    ClientRequestToken: string
    FileSystemType: string
    StorageCapacity: number
    StorageType: string
    SubnetIds: {string}
    SecurityGroupIds: {string}
    Tags: {Tag}
    KmsKeyId: string
    WindowsConfiguration: CreateFileSystemWindowsConfiguration
    LustreConfiguration: CreateFileSystemLustreConfiguration
    OntapConfiguration: CreateFileSystemOntapConfiguration
    FileSystemTypeVersion: string
    OpenZFSConfiguration: CreateFileSystemOpenZFSConfiguration
    NetworkType: string
end

local record CreateFileSystemOutput
    FileSystem: FileSystem
end

local record CreateFileSystemFromBackupInput
    BackupId: string
    ClientRequestToken: string
    SubnetIds: {string}
    SecurityGroupIds: {string}
    Tags: {Tag}
    WindowsConfiguration: CreateFileSystemWindowsConfiguration
    LustreConfiguration: CreateFileSystemLustreConfiguration
    StorageType: string
    KmsKeyId: string
    FileSystemTypeVersion: string
    OpenZFSConfiguration: CreateFileSystemOpenZFSConfiguration
    StorageCapacity: number
    NetworkType: string
end

local record CreateFileSystemFromBackupOutput
    FileSystem: FileSystem
end

local record CreateSnapshotInput
    ClientRequestToken: string
    Name: string
    VolumeId: string
    Tags: {Tag}
end

local record CreateSnapshotOutput
    Snapshot: Snapshot
end

local record CreateStorageVirtualMachineInput
    ActiveDirectoryConfiguration: CreateSvmActiveDirectoryConfiguration
    ClientRequestToken: string
    FileSystemId: string
    Name: string
    SvmAdminPassword: string
    Tags: {Tag}
    RootVolumeSecurityStyle: string
end

local record CreateStorageVirtualMachineOutput
    StorageVirtualMachine: StorageVirtualMachine
end

local record CreateVolumeInput
    ClientRequestToken: string
    VolumeType: string
    Name: string
    OntapConfiguration: CreateOntapVolumeConfiguration
    Tags: {Tag}
    OpenZFSConfiguration: CreateOpenZFSVolumeConfiguration
end

local record CreateVolumeOutput
    Volume: Volume
end

local record CreateVolumeFromBackupInput
    BackupId: string
    ClientRequestToken: string
    Name: string
    OntapConfiguration: CreateOntapVolumeConfiguration
    Tags: {Tag}
end

local record CreateVolumeFromBackupOutput
    Volume: Volume
end

local record DeleteBackupInput
    BackupId: string
    ClientRequestToken: string
end

local record DeleteBackupOutput
    BackupId: string
    Lifecycle: string
end

local record DeleteDataRepositoryAssociationInput
    AssociationId: string
    ClientRequestToken: string
    DeleteDataInFileSystem: boolean
end

local record DeleteDataRepositoryAssociationOutput
    AssociationId: string
    Lifecycle: string
    DeleteDataInFileSystem: boolean
end

local record DeleteFileCacheInput
    FileCacheId: string
    ClientRequestToken: string
end

local record DeleteFileCacheOutput
    FileCacheId: string
    Lifecycle: string
end

local record DeleteFileSystemInput
    FileSystemId: string
    ClientRequestToken: string
    WindowsConfiguration: DeleteFileSystemWindowsConfiguration
    LustreConfiguration: DeleteFileSystemLustreConfiguration
    OpenZFSConfiguration: DeleteFileSystemOpenZFSConfiguration
end

local record DeleteFileSystemOutput
    FileSystemId: string
    Lifecycle: string
    WindowsResponse: DeleteFileSystemWindowsResponse
    LustreResponse: DeleteFileSystemLustreResponse
    OpenZFSResponse: DeleteFileSystemOpenZFSResponse
end

local record DeleteSnapshotInput
    ClientRequestToken: string
    SnapshotId: string
end

local record DeleteSnapshotOutput
    SnapshotId: string
    Lifecycle: string
end

local record DeleteStorageVirtualMachineInput
    ClientRequestToken: string
    StorageVirtualMachineId: string
end

local record DeleteStorageVirtualMachineOutput
    StorageVirtualMachineId: string
    Lifecycle: string
end

local record DeleteVolumeInput
    ClientRequestToken: string
    VolumeId: string
    OntapConfiguration: DeleteVolumeOntapConfiguration
    OpenZFSConfiguration: DeleteVolumeOpenZFSConfiguration
end

local record DeleteVolumeOutput
    VolumeId: string
    Lifecycle: string
    OntapResponse: DeleteVolumeOntapResponse
end

local record DescribeBackupsInput
    BackupIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record DescribeBackupsOutput
    Backups: {Backup}
    NextToken: string
end

local record DescribeDataRepositoryAssociationsInput
    AssociationIds: {string}
    Filters: {Filter}
    MaxResults: number
    NextToken: string
end

local record DescribeDataRepositoryAssociationsOutput
    Associations: {DataRepositoryAssociation}
    NextToken: string
end

local record DescribeDataRepositoryTasksInput
    TaskIds: {string}
    Filters: {DataRepositoryTaskFilter}
    MaxResults: number
    NextToken: string
end

local record DescribeDataRepositoryTasksOutput
    DataRepositoryTasks: {DataRepositoryTask}
    NextToken: string
end

local record DescribeFileCachesInput
    FileCacheIds: {string}
    MaxResults: number
    NextToken: string
end

local record DescribeFileCachesOutput
    FileCaches: {FileCache}
    NextToken: string
end

local record DescribeFileSystemAliasesInput
    ClientRequestToken: string
    FileSystemId: string
    MaxResults: number
    NextToken: string
end

local record DescribeFileSystemAliasesOutput
    Aliases: {Alias}
    NextToken: string
end

local record DescribeFileSystemsInput
    FileSystemIds: {string}
    MaxResults: number
    NextToken: string
end

local record DescribeFileSystemsOutput
    FileSystems: {FileSystem}
    NextToken: string
end

local record DescribeS3AccessPointAttachmentsInput
    Names: {string}
    Filters: {S3AccessPointAttachmentsFilter}
    MaxResults: number
    NextToken: string
end

local record DescribeS3AccessPointAttachmentsOutput
    S3AccessPointAttachments: {S3AccessPointAttachment}
    NextToken: string
end

local record DescribeSharedVpcConfigurationInput
end

local record DescribeSharedVpcConfigurationOutput
    EnableFsxRouteTableUpdatesFromParticipantAccounts: string
end

local record DescribeSnapshotsInput
    SnapshotIds: {string}
    Filters: {SnapshotFilter}
    MaxResults: number
    NextToken: string
    IncludeShared: boolean
end

local record DescribeSnapshotsOutput
    Snapshots: {Snapshot}
    NextToken: string
end

local record DescribeStorageVirtualMachinesInput
    StorageVirtualMachineIds: {string}
    Filters: {StorageVirtualMachineFilter}
    MaxResults: number
    NextToken: string
end

local record DescribeStorageVirtualMachinesOutput
    StorageVirtualMachines: {StorageVirtualMachine}
    NextToken: string
end

local record DescribeVolumesInput
    VolumeIds: {string}
    Filters: {VolumeFilter}
    MaxResults: number
    NextToken: string
end

local record DescribeVolumesOutput
    Volumes: {Volume}
    NextToken: string
end

local record DetachAndDeleteS3AccessPointInput
    ClientRequestToken: string
    Name: string
end

local record DetachAndDeleteS3AccessPointOutput
    Lifecycle: string
    Name: string
end

local record DisassociateFileSystemAliasesInput
    ClientRequestToken: string
    FileSystemId: string
    Aliases: {string}
end

local record DisassociateFileSystemAliasesOutput
    Aliases: {Alias}
end

local record ListTagsForResourceInput
    ResourceARN: string
    MaxResults: number
    NextToken: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
    NextToken: string
end

local record ReleaseFileSystemNfsV3LocksInput
    FileSystemId: string
    ClientRequestToken: string
end

local record ReleaseFileSystemNfsV3LocksOutput
    FileSystem: FileSystem
end

local record RestoreVolumeFromSnapshotInput
    ClientRequestToken: string
    VolumeId: string
    SnapshotId: string
    Options: {string}
end

local record RestoreVolumeFromSnapshotOutput
    VolumeId: string
    Lifecycle: string
    AdministrativeActions: {AdministrativeAction}
end

local record StartMisconfiguredStateRecoveryInput
    ClientRequestToken: string
    FileSystemId: string
end

local record StartMisconfiguredStateRecoveryOutput
    FileSystem: FileSystem
end

local record TagResourceInput
    ResourceARN: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceARN: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateDataRepositoryAssociationInput
    AssociationId: string
    ClientRequestToken: string
    ImportedFileChunkSize: number
    S3: S3DataRepositoryConfiguration
end

local record UpdateDataRepositoryAssociationOutput
    Association: DataRepositoryAssociation
end

local record UpdateFileCacheInput
    FileCacheId: string
    ClientRequestToken: string
    LustreConfiguration: UpdateFileCacheLustreConfiguration
end

local record UpdateFileCacheOutput
    FileCache: FileCache
end

local record UpdateFileSystemInput
    FileSystemId: string
    ClientRequestToken: string
    StorageCapacity: number
    WindowsConfiguration: UpdateFileSystemWindowsConfiguration
    LustreConfiguration: UpdateFileSystemLustreConfiguration
    OntapConfiguration: UpdateFileSystemOntapConfiguration
    OpenZFSConfiguration: UpdateFileSystemOpenZFSConfiguration
    StorageType: string
    FileSystemTypeVersion: string
    NetworkType: string
end

local record UpdateFileSystemOutput
    FileSystem: FileSystem
end

local record UpdateSharedVpcConfigurationInput
    EnableFsxRouteTableUpdatesFromParticipantAccounts: string
    ClientRequestToken: string
end

local record UpdateSharedVpcConfigurationOutput
    EnableFsxRouteTableUpdatesFromParticipantAccounts: string
end

local record UpdateSnapshotInput
    ClientRequestToken: string
    Name: string
    SnapshotId: string
end

local record UpdateSnapshotOutput
    Snapshot: Snapshot
end

local record UpdateStorageVirtualMachineInput
    ActiveDirectoryConfiguration: UpdateSvmActiveDirectoryConfiguration
    ClientRequestToken: string
    StorageVirtualMachineId: string
    SvmAdminPassword: string
end

local record UpdateStorageVirtualMachineOutput
    StorageVirtualMachine: StorageVirtualMachine
end

local record UpdateVolumeInput
    ClientRequestToken: string
    VolumeId: string
    OntapConfiguration: UpdateOntapVolumeConfiguration
    Name: string
    OpenZFSConfiguration: UpdateOpenZFSVolumeConfiguration
end

local record UpdateVolumeOutput
    Volume: Volume
end

local record BadRequest
    Message: string
end

local record FileSystemNotFound
    Message: string
end

local record InternalServerError
    Message: string
end

local record BadRequest
    Message: string
end

local record DataRepositoryTaskEnded
    Message: string
end

local record DataRepositoryTaskNotFound
    Message: string
end

local record InternalServerError
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record BackupNotFound
    Message: string
end

local record BadRequest
    Message: string
end

local record IncompatibleParameterError
    Parameter: string
    Message: string
end

local record IncompatibleRegionForMultiAZ
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidDestinationKmsKey
    Message: string
end

local record InvalidRegion
    Message: string
end

local record InvalidSourceKmsKey
    Message: string
end

local record ServiceLimitExceeded
    Limit: string
    Message: string
end

local record SourceBackupUnavailable
    Message: string
    BackupId: string
end

local record UnsupportedOperation
    Message: string
end

local record BadRequest
    Message: string
end

local record IncompatibleParameterError
    Parameter: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record ServiceLimitExceeded
    Limit: string
    Message: string
end

local record AccessPointAlreadyOwnedByYou
    ErrorCode: string
    Message: string
end

local record BadRequest
    Message: string
end

local record IncompatibleParameterError
    Parameter: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidAccessPoint
    ErrorCode: string
    Message: string
end

local record InvalidRequest
    ErrorCode: string
    Message: string
end

local record TooManyAccessPoints
    ErrorCode: string
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record VolumeNotFound
    Message: string
end

local record BackupInProgress
    Message: string
end

local record BadRequest
    Message: string
end

local record FileSystemNotFound
    Message: string
end

local record IncompatibleParameterError
    Parameter: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record ServiceLimitExceeded
    Limit: string
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record VolumeNotFound
    Message: string
end

local record BadRequest
    Message: string
end

local record FileSystemNotFound
    Message: string
end

local record IncompatibleParameterError
    Parameter: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record ServiceLimitExceeded
    Limit: string
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record BadRequest
    Message: string
end

local record DataRepositoryTaskExecuting
    Message: string
end

local record FileSystemNotFound
    Message: string
end

local record IncompatibleParameterError
    Parameter: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record ServiceLimitExceeded
    Limit: string
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record BadRequest
    Message: string
end

local record IncompatibleParameterError
    Parameter: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidNetworkSettings
    Message: string
    InvalidSubnetId: string
    InvalidSecurityGroupId: string
    InvalidRouteTableId: string
end

local record InvalidPerUnitStorageThroughput
    Message: string
end

local record MissingFileCacheConfiguration
    Message: string
end

local record ServiceLimitExceeded
    Limit: string
    Message: string
end

local record ActiveDirectoryError
    ActiveDirectoryId: string
    Type: string
    Message: string
end

local record BadRequest
    Message: string
end

local record IncompatibleParameterError
    Parameter: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidExportPath
    Message: string
end

local record InvalidImportPath
    Message: string
end

local record InvalidNetworkSettings
    Message: string
    InvalidSubnetId: string
    InvalidSecurityGroupId: string
    InvalidRouteTableId: string
end

local record InvalidPerUnitStorageThroughput
    Message: string
end

local record MissingFileSystemConfiguration
    Message: string
end

local record ServiceLimitExceeded
    Limit: string
    Message: string
end

local record ActiveDirectoryError
    ActiveDirectoryId: string
    Type: string
    Message: string
end

local record BackupNotFound
    Message: string
end

local record BadRequest
    Message: string
end

local record IncompatibleParameterError
    Parameter: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidNetworkSettings
    Message: string
    InvalidSubnetId: string
    InvalidSecurityGroupId: string
    InvalidRouteTableId: string
end

local record InvalidPerUnitStorageThroughput
    Message: string
end

local record MissingFileSystemConfiguration
    Message: string
end

local record ServiceLimitExceeded
    Limit: string
    Message: string
end

local record BadRequest
    Message: string
end

local record InternalServerError
    Message: string
end

local record ServiceLimitExceeded
    Limit: string
    Message: string
end

local record VolumeNotFound
    Message: string
end

local record ActiveDirectoryError
    ActiveDirectoryId: string
    Type: string
    Message: string
end

local record BadRequest
    Message: string
end

local record FileSystemNotFound
    Message: string
end

local record IncompatibleParameterError
    Parameter: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record ServiceLimitExceeded
    Limit: string
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record BadRequest
    Message: string
end

local record FileSystemNotFound
    Message: string
end

local record IncompatibleParameterError
    Parameter: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record MissingVolumeConfiguration
    Message: string
end

local record ServiceLimitExceeded
    Limit: string
    Message: string
end

local record StorageVirtualMachineNotFound
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record BackupNotFound
    Message: string
end

local record BadRequest
    Message: string
end

local record FileSystemNotFound
    Message: string
end

local record IncompatibleParameterError
    Parameter: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record MissingVolumeConfiguration
    Message: string
end

local record ServiceLimitExceeded
    Limit: string
    Message: string
end

local record StorageVirtualMachineNotFound
    Message: string
end

local record BackupBeingCopied
    Message: string
    BackupId: string
end

local record BackupInProgress
    Message: string
end

local record BackupNotFound
    Message: string
end

local record BackupRestoring
    Message: string
    FileSystemId: string
end

local record BadRequest
    Message: string
end

local record IncompatibleParameterError
    Parameter: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record BadRequest
    Message: string
end

local record DataRepositoryAssociationNotFound
    Message: string
end

local record IncompatibleParameterError
    Parameter: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record ServiceLimitExceeded
    Limit: string
    Message: string
end

local record BadRequest
    Message: string
end

local record FileCacheNotFound
    Message: string
end

local record IncompatibleParameterError
    Parameter: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record ServiceLimitExceeded
    Limit: string
    Message: string
end

local record BadRequest
    Message: string
end

local record FileSystemNotFound
    Message: string
end

local record IncompatibleParameterError
    Parameter: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record ServiceLimitExceeded
    Limit: string
    Message: string
end

local record BadRequest
    Message: string
end

local record InternalServerError
    Message: string
end

local record SnapshotNotFound
    Message: string
end

local record BadRequest
    Message: string
end

local record IncompatibleParameterError
    Parameter: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record StorageVirtualMachineNotFound
    Message: string
end

local record BadRequest
    Message: string
end

local record IncompatibleParameterError
    Parameter: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record ServiceLimitExceeded
    Limit: string
    Message: string
end

local record VolumeNotFound
    Message: string
end

local record BackupNotFound
    Message: string
end

local record BadRequest
    Message: string
end

local record FileSystemNotFound
    Message: string
end

local record InternalServerError
    Message: string
end

local record VolumeNotFound
    Message: string
end

local record BadRequest
    Message: string
end

local record DataRepositoryAssociationNotFound
    Message: string
end

local record FileSystemNotFound
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidDataRepositoryType
    Message: string
end

local record BadRequest
    Message: string
end

local record DataRepositoryTaskNotFound
    Message: string
end

local record FileSystemNotFound
    Message: string
end

local record InternalServerError
    Message: string
end

local record BadRequest
    Message: string
end

local record FileCacheNotFound
    Message: string
end

local record InternalServerError
    Message: string
end

local record BadRequest
    Message: string
end

local record FileSystemNotFound
    Message: string
end

local record InternalServerError
    Message: string
end

local record BadRequest
    Message: string
end

local record FileSystemNotFound
    Message: string
end

local record InternalServerError
    Message: string
end

local record BadRequest
    Message: string
end

local record InternalServerError
    Message: string
end

local record S3AccessPointAttachmentNotFound
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record BadRequest
    Message: string
end

local record InternalServerError
    Message: string
end

local record BadRequest
    Message: string
end

local record InternalServerError
    Message: string
end

local record SnapshotNotFound
    Message: string
end

local record BadRequest
    Message: string
end

local record InternalServerError
    Message: string
end

local record StorageVirtualMachineNotFound
    Message: string
end

local record BadRequest
    Message: string
end

local record InternalServerError
    Message: string
end

local record VolumeNotFound
    Message: string
end

local record BadRequest
    Message: string
end

local record IncompatibleParameterError
    Parameter: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record S3AccessPointAttachmentNotFound
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record BadRequest
    Message: string
end

local record FileSystemNotFound
    Message: string
end

local record InternalServerError
    Message: string
end

local record BadRequest
    Message: string
end

local record InternalServerError
    Message: string
end

local record NotServiceResourceError
    ResourceARN: string
    Message: string
end

local record ResourceDoesNotSupportTagging
    ResourceARN: string
    Message: string
end

local record ResourceNotFound
    ResourceARN: string
    Message: string
end

local record BadRequest
    Message: string
end

local record FileSystemNotFound
    Message: string
end

local record IncompatibleParameterError
    Parameter: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record ServiceLimitExceeded
    Limit: string
    Message: string
end

local record BadRequest
    Message: string
end

local record InternalServerError
    Message: string
end

local record VolumeNotFound
    Message: string
end

local record BadRequest
    Message: string
end

local record FileSystemNotFound
    Message: string
end

local record InternalServerError
    Message: string
end

local record BadRequest
    Message: string
end

local record InternalServerError
    Message: string
end

local record NotServiceResourceError
    ResourceARN: string
    Message: string
end

local record ResourceDoesNotSupportTagging
    ResourceARN: string
    Message: string
end

local record ResourceNotFound
    ResourceARN: string
    Message: string
end

local record BadRequest
    Message: string
end

local record InternalServerError
    Message: string
end

local record NotServiceResourceError
    ResourceARN: string
    Message: string
end

local record ResourceDoesNotSupportTagging
    ResourceARN: string
    Message: string
end

local record ResourceNotFound
    ResourceARN: string
    Message: string
end

local record BadRequest
    Message: string
end

local record DataRepositoryAssociationNotFound
    Message: string
end

local record IncompatibleParameterError
    Parameter: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record ServiceLimitExceeded
    Limit: string
    Message: string
end

local record BadRequest
    Message: string
end

local record FileCacheNotFound
    Message: string
end

local record IncompatibleParameterError
    Parameter: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record MissingFileCacheConfiguration
    Message: string
end

local record ServiceLimitExceeded
    Limit: string
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record BadRequest
    Message: string
end

local record FileSystemNotFound
    Message: string
end

local record IncompatibleParameterError
    Parameter: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidNetworkSettings
    Message: string
    InvalidSubnetId: string
    InvalidSecurityGroupId: string
    InvalidRouteTableId: string
end

local record MissingFileSystemConfiguration
    Message: string
end

local record ServiceLimitExceeded
    Limit: string
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record BadRequest
    Message: string
end

local record IncompatibleParameterError
    Parameter: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record BadRequest
    Message: string
end

local record InternalServerError
    Message: string
end

local record SnapshotNotFound
    Message: string
end

local record BadRequest
    Message: string
end

local record IncompatibleParameterError
    Parameter: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record StorageVirtualMachineNotFound
    Message: string
end

local record UnsupportedOperation
    Message: string
end

local record BadRequest
    Message: string
end

local record IncompatibleParameterError
    Parameter: string
    Message: string
end

local record InternalServerError
    Message: string
end

local record MissingVolumeConfiguration
    Message: string
end

local record VolumeNotFound
    Message: string
end

local type DataRepositoryTaskType = "EXPORT_TO_REPOSITORY" | "IMPORT_METADATA_FROM_REPOSITORY" | "RELEASE_DATA_FROM_FILESYSTEM" | "AUTO_RELEASE_DATA"

local type BackupLifecycle = "AVAILABLE" | "CREATING" | "TRANSFERRING" | "DELETED" | "FAILED" | "PENDING" | "COPYING"

local type StorageVirtualMachineRootVolumeSecurityStyle = "UNIX" | "NTFS" | "MIXED"

local type FileCacheType = "LUSTRE"

local type FileCacheLifecycle = "AVAILABLE" | "CREATING" | "DELETING" | "UPDATING" | "FAILED"

local type NetworkType = "IPV4" | "DUAL"

local type VolumeType = "ONTAP" | "OPENZFS"

local type DataRepositoryTaskLifecycle = "PENDING" | "EXECUTING" | "FAILED" | "SUCCEEDED" | "CANCELED" | "CANCELING"

local type SnapshotLifecycle = "PENDING" | "CREATING" | "DELETING" | "AVAILABLE"

local type FileSystemLifecycle = "AVAILABLE" | "CREATING" | "FAILED" | "DELETING" | "MISCONFIGURED" | "UPDATING" | "MISCONFIGURED_UNAVAILABLE"

local type FileSystemType = "WINDOWS" | "LUSTRE" | "ONTAP" | "OPENZFS"

local type StorageType = "SSD" | "HDD" | "INTELLIGENT_TIERING"

local type OpenZFSCopyStrategy = "CLONE" | "FULL_COPY" | "INCREMENTAL_COPY"

local type S3AccessPointAttachmentType = "OPENZFS" | "ONTAP"

local type StorageVirtualMachineLifecycle = "CREATED" | "CREATING" | "DELETING" | "FAILED" | "MISCONFIGURED" | "PENDING"

local type VolumeLifecycle = "CREATING" | "CREATED" | "DELETING" | "FAILED" | "MISCONFIGURED" | "PENDING" | "AVAILABLE"

local type DataRepositoryLifecycle = "CREATING" | "AVAILABLE" | "MISCONFIGURED" | "UPDATING" | "DELETING" | "FAILED"

local type S3AccessPointAttachmentLifecycle = "AVAILABLE" | "CREATING" | "DELETING" | "UPDATING" | "FAILED" | "MISCONFIGURED"

local record M
    AssociateFileSystemAliasesInput: AssociateFileSystemAliasesInput
    AssociateFileSystemAliasesOutput: AssociateFileSystemAliasesOutput
    CancelDataRepositoryTaskInput: CancelDataRepositoryTaskInput
    CancelDataRepositoryTaskOutput: CancelDataRepositoryTaskOutput
    CopyBackupInput: CopyBackupInput
    CopyBackupOutput: CopyBackupOutput
    CopySnapshotAndUpdateVolumeInput: CopySnapshotAndUpdateVolumeInput
    CopySnapshotAndUpdateVolumeOutput: CopySnapshotAndUpdateVolumeOutput
    CreateAndAttachS3AccessPointInput: CreateAndAttachS3AccessPointInput
    CreateAndAttachS3AccessPointOutput: CreateAndAttachS3AccessPointOutput
    CreateBackupInput: CreateBackupInput
    CreateBackupOutput: CreateBackupOutput
    CreateDataRepositoryAssociationInput: CreateDataRepositoryAssociationInput
    CreateDataRepositoryAssociationOutput: CreateDataRepositoryAssociationOutput
    CreateDataRepositoryTaskInput: CreateDataRepositoryTaskInput
    CreateDataRepositoryTaskOutput: CreateDataRepositoryTaskOutput
    CreateFileCacheInput: CreateFileCacheInput
    CreateFileCacheOutput: CreateFileCacheOutput
    CreateFileSystemInput: CreateFileSystemInput
    CreateFileSystemOutput: CreateFileSystemOutput
    CreateFileSystemFromBackupInput: CreateFileSystemFromBackupInput
    CreateFileSystemFromBackupOutput: CreateFileSystemFromBackupOutput
    CreateSnapshotInput: CreateSnapshotInput
    CreateSnapshotOutput: CreateSnapshotOutput
    CreateStorageVirtualMachineInput: CreateStorageVirtualMachineInput
    CreateStorageVirtualMachineOutput: CreateStorageVirtualMachineOutput
    CreateVolumeInput: CreateVolumeInput
    CreateVolumeOutput: CreateVolumeOutput
    CreateVolumeFromBackupInput: CreateVolumeFromBackupInput
    CreateVolumeFromBackupOutput: CreateVolumeFromBackupOutput
    DeleteBackupInput: DeleteBackupInput
    DeleteBackupOutput: DeleteBackupOutput
    DeleteDataRepositoryAssociationInput: DeleteDataRepositoryAssociationInput
    DeleteDataRepositoryAssociationOutput: DeleteDataRepositoryAssociationOutput
    DeleteFileCacheInput: DeleteFileCacheInput
    DeleteFileCacheOutput: DeleteFileCacheOutput
    DeleteFileSystemInput: DeleteFileSystemInput
    DeleteFileSystemOutput: DeleteFileSystemOutput
    DeleteSnapshotInput: DeleteSnapshotInput
    DeleteSnapshotOutput: DeleteSnapshotOutput
    DeleteStorageVirtualMachineInput: DeleteStorageVirtualMachineInput
    DeleteStorageVirtualMachineOutput: DeleteStorageVirtualMachineOutput
    DeleteVolumeInput: DeleteVolumeInput
    DeleteVolumeOutput: DeleteVolumeOutput
    DescribeBackupsInput: DescribeBackupsInput
    DescribeBackupsOutput: DescribeBackupsOutput
    DescribeDataRepositoryAssociationsInput: DescribeDataRepositoryAssociationsInput
    DescribeDataRepositoryAssociationsOutput: DescribeDataRepositoryAssociationsOutput
    DescribeDataRepositoryTasksInput: DescribeDataRepositoryTasksInput
    DescribeDataRepositoryTasksOutput: DescribeDataRepositoryTasksOutput
    DescribeFileCachesInput: DescribeFileCachesInput
    DescribeFileCachesOutput: DescribeFileCachesOutput
    DescribeFileSystemAliasesInput: DescribeFileSystemAliasesInput
    DescribeFileSystemAliasesOutput: DescribeFileSystemAliasesOutput
    DescribeFileSystemsInput: DescribeFileSystemsInput
    DescribeFileSystemsOutput: DescribeFileSystemsOutput
    DescribeS3AccessPointAttachmentsInput: DescribeS3AccessPointAttachmentsInput
    DescribeS3AccessPointAttachmentsOutput: DescribeS3AccessPointAttachmentsOutput
    DescribeSharedVpcConfigurationInput: DescribeSharedVpcConfigurationInput
    DescribeSharedVpcConfigurationOutput: DescribeSharedVpcConfigurationOutput
    DescribeSnapshotsInput: DescribeSnapshotsInput
    DescribeSnapshotsOutput: DescribeSnapshotsOutput
    DescribeStorageVirtualMachinesInput: DescribeStorageVirtualMachinesInput
    DescribeStorageVirtualMachinesOutput: DescribeStorageVirtualMachinesOutput
    DescribeVolumesInput: DescribeVolumesInput
    DescribeVolumesOutput: DescribeVolumesOutput
    DetachAndDeleteS3AccessPointInput: DetachAndDeleteS3AccessPointInput
    DetachAndDeleteS3AccessPointOutput: DetachAndDeleteS3AccessPointOutput
    DisassociateFileSystemAliasesInput: DisassociateFileSystemAliasesInput
    DisassociateFileSystemAliasesOutput: DisassociateFileSystemAliasesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ReleaseFileSystemNfsV3LocksInput: ReleaseFileSystemNfsV3LocksInput
    ReleaseFileSystemNfsV3LocksOutput: ReleaseFileSystemNfsV3LocksOutput
    RestoreVolumeFromSnapshotInput: RestoreVolumeFromSnapshotInput
    RestoreVolumeFromSnapshotOutput: RestoreVolumeFromSnapshotOutput
    StartMisconfiguredStateRecoveryInput: StartMisconfiguredStateRecoveryInput
    StartMisconfiguredStateRecoveryOutput: StartMisconfiguredStateRecoveryOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateDataRepositoryAssociationInput: UpdateDataRepositoryAssociationInput
    UpdateDataRepositoryAssociationOutput: UpdateDataRepositoryAssociationOutput
    UpdateFileCacheInput: UpdateFileCacheInput
    UpdateFileCacheOutput: UpdateFileCacheOutput
    UpdateFileSystemInput: UpdateFileSystemInput
    UpdateFileSystemOutput: UpdateFileSystemOutput
    UpdateSharedVpcConfigurationInput: UpdateSharedVpcConfigurationInput
    UpdateSharedVpcConfigurationOutput: UpdateSharedVpcConfigurationOutput
    UpdateSnapshotInput: UpdateSnapshotInput
    UpdateSnapshotOutput: UpdateSnapshotOutput
    UpdateStorageVirtualMachineInput: UpdateStorageVirtualMachineInput
    UpdateStorageVirtualMachineOutput: UpdateStorageVirtualMachineOutput
    UpdateVolumeInput: UpdateVolumeInput
    UpdateVolumeOutput: UpdateVolumeOutput
end

return M
