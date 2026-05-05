local record ActivateGatewayInput
    ActivationKey: string
    GatewayName: string
    GatewayTimezone: string
    GatewayRegion: string
    GatewayType: string
    TapeDriveType: string
    MediumChangerType: string
    Tags: {Tag}
end

local record ActivateGatewayOutput
    GatewayARN: string
end

local record AddCacheInput
    GatewayARN: string
    DiskIds: {string}
end

local record AddCacheOutput
    GatewayARN: string
end

local record AddTagsToResourceInput
    ResourceARN: string
    Tags: {Tag}
end

local record AddTagsToResourceOutput
    ResourceARN: string
end

local record AddUploadBufferInput
    GatewayARN: string
    DiskIds: {string}
end

local record AddUploadBufferOutput
    GatewayARN: string
end

local record AddWorkingStorageInput
    GatewayARN: string
    DiskIds: {string}
end

local record AddWorkingStorageOutput
    GatewayARN: string
end

local record AssignTapePoolInput
    TapeARN: string
    PoolId: string
    BypassGovernanceRetention: boolean
end

local record AssignTapePoolOutput
    TapeARN: string
end

local record AssociateFileSystemInput
    UserName: string
    Password: string
    ClientToken: string
    GatewayARN: string
    LocationARN: string
    Tags: {Tag}
    AuditDestinationARN: string
    CacheAttributes: CacheAttributes
    EndpointNetworkConfiguration: EndpointNetworkConfiguration
end

local record AssociateFileSystemOutput
    FileSystemAssociationARN: string
end

local record AttachVolumeInput
    GatewayARN: string
    TargetName: string
    VolumeARN: string
    NetworkInterfaceId: string
    DiskId: string
end

local record AttachVolumeOutput
    VolumeARN: string
    TargetARN: string
end

local record CancelArchivalInput
    GatewayARN: string
    TapeARN: string
end

local record CancelArchivalOutput
    TapeARN: string
end

local record CancelCacheReportInput
    CacheReportARN: string
end

local record CancelCacheReportOutput
    CacheReportARN: string
end

local record CancelRetrievalInput
    GatewayARN: string
    TapeARN: string
end

local record CancelRetrievalOutput
    TapeARN: string
end

local record CreateCachediSCSIVolumeInput
    GatewayARN: string
    VolumeSizeInBytes: number
    SnapshotId: string
    TargetName: string
    SourceVolumeARN: string
    NetworkInterfaceId: string
    ClientToken: string
    KMSEncrypted: boolean
    KMSKey: string
    Tags: {Tag}
end

local record CreateCachediSCSIVolumeOutput
    VolumeARN: string
    TargetARN: string
end

local record CreateNFSFileShareInput
    ClientToken: string
    NFSFileShareDefaults: NFSFileShareDefaults
    GatewayARN: string
    EncryptionType: string
    KMSEncrypted: boolean
    KMSKey: string
    Role: string
    LocationARN: string
    DefaultStorageClass: string
    ObjectACL: string
    ClientList: {string}
    Squash: string
    ReadOnly: boolean
    GuessMIMETypeEnabled: boolean
    RequesterPays: boolean
    Tags: {Tag}
    FileShareName: string
    CacheAttributes: CacheAttributes
    NotificationPolicy: string
    VPCEndpointDNSName: string
    BucketRegion: string
    AuditDestinationARN: string
end

local record CreateNFSFileShareOutput
    FileShareARN: string
end

local record CreateSMBFileShareInput
    ClientToken: string
    GatewayARN: string
    EncryptionType: string
    KMSEncrypted: boolean
    KMSKey: string
    Role: string
    LocationARN: string
    DefaultStorageClass: string
    ObjectACL: string
    ReadOnly: boolean
    GuessMIMETypeEnabled: boolean
    RequesterPays: boolean
    SMBACLEnabled: boolean
    AccessBasedEnumeration: boolean
    AdminUserList: {string}
    ValidUserList: {string}
    InvalidUserList: {string}
    AuditDestinationARN: string
    Authentication: string
    CaseSensitivity: string
    Tags: {Tag}
    FileShareName: string
    CacheAttributes: CacheAttributes
    NotificationPolicy: string
    VPCEndpointDNSName: string
    BucketRegion: string
    OplocksEnabled: boolean
end

local record CreateSMBFileShareOutput
    FileShareARN: string
end

local record CreateSnapshotInput
    VolumeARN: string
    SnapshotDescription: string
    Tags: {Tag}
end

local record CreateSnapshotOutput
    VolumeARN: string
    SnapshotId: string
end

local record CreateSnapshotFromVolumeRecoveryPointInput
    VolumeARN: string
    SnapshotDescription: string
    Tags: {Tag}
end

local record CreateSnapshotFromVolumeRecoveryPointOutput
    SnapshotId: string
    VolumeARN: string
    VolumeRecoveryPointTime: string
end

local record CreateStorediSCSIVolumeInput
    GatewayARN: string
    DiskId: string
    SnapshotId: string
    PreserveExistingData: boolean
    TargetName: string
    NetworkInterfaceId: string
    KMSEncrypted: boolean
    KMSKey: string
    Tags: {Tag}
end

local record CreateStorediSCSIVolumeOutput
    VolumeARN: string
    VolumeSizeInBytes: number
    TargetARN: string
end

local record CreateTapePoolInput
    PoolName: string
    StorageClass: string
    RetentionLockType: string
    RetentionLockTimeInDays: number
    Tags: {Tag}
end

local record CreateTapePoolOutput
    PoolARN: string
end

local record CreateTapesInput
    GatewayARN: string
    TapeSizeInBytes: number
    ClientToken: string
    NumTapesToCreate: number
    TapeBarcodePrefix: string
    KMSEncrypted: boolean
    KMSKey: string
    PoolId: string
    Worm: boolean
    Tags: {Tag}
end

local record CreateTapesOutput
    TapeARNs: {string}
end

local record CreateTapeWithBarcodeInput
    GatewayARN: string
    TapeSizeInBytes: number
    TapeBarcode: string
    KMSEncrypted: boolean
    KMSKey: string
    PoolId: string
    Worm: boolean
    Tags: {Tag}
end

local record CreateTapeWithBarcodeOutput
    TapeARN: string
end

local record DeleteAutomaticTapeCreationPolicyInput
    GatewayARN: string
end

local record DeleteAutomaticTapeCreationPolicyOutput
    GatewayARN: string
end

local record DeleteBandwidthRateLimitInput
    GatewayARN: string
    BandwidthType: string
end

local record DeleteBandwidthRateLimitOutput
    GatewayARN: string
end

local record DeleteCacheReportInput
    CacheReportARN: string
end

local record DeleteCacheReportOutput
    CacheReportARN: string
end

local record DeleteChapCredentialsInput
    TargetARN: string
    InitiatorName: string
end

local record DeleteChapCredentialsOutput
    TargetARN: string
    InitiatorName: string
end

local record DeleteFileShareInput
    FileShareARN: string
    ForceDelete: boolean
end

local record DeleteFileShareOutput
    FileShareARN: string
end

local record DeleteGatewayInput
    GatewayARN: string
end

local record DeleteGatewayOutput
    GatewayARN: string
end

local record DeleteSnapshotScheduleInput
    VolumeARN: string
end

local record DeleteSnapshotScheduleOutput
    VolumeARN: string
end

local record DeleteTapeInput
    GatewayARN: string
    TapeARN: string
    BypassGovernanceRetention: boolean
end

local record DeleteTapeOutput
    TapeARN: string
end

local record DeleteTapeArchiveInput
    TapeARN: string
    BypassGovernanceRetention: boolean
end

local record DeleteTapeArchiveOutput
    TapeARN: string
end

local record DeleteTapePoolInput
    PoolARN: string
end

local record DeleteTapePoolOutput
    PoolARN: string
end

local record DeleteVolumeInput
    VolumeARN: string
end

local record DeleteVolumeOutput
    VolumeARN: string
end

local record DescribeAvailabilityMonitorTestInput
    GatewayARN: string
end

local record DescribeAvailabilityMonitorTestOutput
    GatewayARN: string
    Status: string
    StartTime: number
end

local record DescribeBandwidthRateLimitInput
    GatewayARN: string
end

local record DescribeBandwidthRateLimitOutput
    GatewayARN: string
    AverageUploadRateLimitInBitsPerSec: number
    AverageDownloadRateLimitInBitsPerSec: number
end

local record DescribeBandwidthRateLimitScheduleInput
    GatewayARN: string
end

local record DescribeBandwidthRateLimitScheduleOutput
    GatewayARN: string
    BandwidthRateLimitIntervals: {BandwidthRateLimitInterval}
end

local record DescribeCacheInput
    GatewayARN: string
end

local record DescribeCacheOutput
    GatewayARN: string
    DiskIds: {string}
    CacheAllocatedInBytes: number
    CacheUsedPercentage: number
    CacheDirtyPercentage: number
    CacheHitPercentage: number
    CacheMissPercentage: number
end

local record DescribeCachediSCSIVolumesInput
    VolumeARNs: {string}
end

local record DescribeCachediSCSIVolumesOutput
    CachediSCSIVolumes: {CachediSCSIVolume}
end

local record DescribeCacheReportInput
    CacheReportARN: string
end

local record DescribeCacheReportOutput
    CacheReportInfo: CacheReportInfo
end

local record DescribeChapCredentialsInput
    TargetARN: string
end

local record DescribeChapCredentialsOutput
    ChapCredentials: {ChapInfo}
end

local record DescribeFileSystemAssociationsInput
    FileSystemAssociationARNList: {string}
end

local record DescribeFileSystemAssociationsOutput
    FileSystemAssociationInfoList: {FileSystemAssociationInfo}
end

local record DescribeGatewayInformationInput
    GatewayARN: string
end

local record DescribeGatewayInformationOutput
    GatewayARN: string
    GatewayId: string
    GatewayName: string
    GatewayTimezone: string
    GatewayState: string
    GatewayNetworkInterfaces: {NetworkInterface}
    GatewayType: string
    NextUpdateAvailabilityDate: string
    LastSoftwareUpdate: string
    Ec2InstanceId: string
    Ec2InstanceRegion: string
    Tags: {Tag}
    VPCEndpoint: string
    CloudWatchLogGroupARN: string
    HostEnvironment: string
    EndpointType: string
    SoftwareUpdatesEndDate: string
    DeprecationDate: string
    GatewayCapacity: string
    SupportedGatewayCapacities: {string}
    HostEnvironmentId: string
    SoftwareVersion: string
end

local record DescribeMaintenanceStartTimeInput
    GatewayARN: string
end

local record DescribeMaintenanceStartTimeOutput
    GatewayARN: string
    HourOfDay: number
    MinuteOfHour: number
    DayOfWeek: number
    DayOfMonth: number
    Timezone: string
    SoftwareUpdatePreferences: SoftwareUpdatePreferences
end

local record DescribeNFSFileSharesInput
    FileShareARNList: {string}
end

local record DescribeNFSFileSharesOutput
    NFSFileShareInfoList: {NFSFileShareInfo}
end

local record DescribeSMBFileSharesInput
    FileShareARNList: {string}
end

local record DescribeSMBFileSharesOutput
    SMBFileShareInfoList: {SMBFileShareInfo}
end

local record DescribeSMBSettingsInput
    GatewayARN: string
end

local record DescribeSMBSettingsOutput
    GatewayARN: string
    DomainName: string
    ActiveDirectoryStatus: string
    SMBGuestPasswordSet: boolean
    SMBSecurityStrategy: string
    FileSharesVisible: boolean
    SMBLocalGroups: SMBLocalGroups
end

local record DescribeSnapshotScheduleInput
    VolumeARN: string
end

local record DescribeSnapshotScheduleOutput
    VolumeARN: string
    StartAt: number
    RecurrenceInHours: number
    Description: string
    Timezone: string
    Tags: {Tag}
end

local record DescribeStorediSCSIVolumesInput
    VolumeARNs: {string}
end

local record DescribeStorediSCSIVolumesOutput
    StorediSCSIVolumes: {StorediSCSIVolume}
end

local record DescribeTapeArchivesInput
    TapeARNs: {string}
    Marker: string
    Limit: number
end

local record DescribeTapeArchivesOutput
    TapeArchives: {TapeArchive}
    Marker: string
end

local record DescribeTapeRecoveryPointsInput
    GatewayARN: string
    Marker: string
    Limit: number
end

local record DescribeTapeRecoveryPointsOutput
    GatewayARN: string
    TapeRecoveryPointInfos: {TapeRecoveryPointInfo}
    Marker: string
end

local record DescribeTapesInput
    GatewayARN: string
    TapeARNs: {string}
    Marker: string
    Limit: number
end

local record DescribeTapesOutput
    Tapes: {Tape}
    Marker: string
end

local record DescribeUploadBufferInput
    GatewayARN: string
end

local record DescribeUploadBufferOutput
    GatewayARN: string
    DiskIds: {string}
    UploadBufferUsedInBytes: number
    UploadBufferAllocatedInBytes: number
end

local record DescribeVTLDevicesInput
    GatewayARN: string
    VTLDeviceARNs: {string}
    Marker: string
    Limit: number
end

local record DescribeVTLDevicesOutput
    GatewayARN: string
    VTLDevices: {VTLDevice}
    Marker: string
end

local record DescribeWorkingStorageInput
    GatewayARN: string
end

local record DescribeWorkingStorageOutput
    GatewayARN: string
    DiskIds: {string}
    WorkingStorageUsedInBytes: number
    WorkingStorageAllocatedInBytes: number
end

local record DetachVolumeInput
    VolumeARN: string
    ForceDetach: boolean
end

local record DetachVolumeOutput
    VolumeARN: string
end

local record DisableGatewayInput
    GatewayARN: string
end

local record DisableGatewayOutput
    GatewayARN: string
end

local record DisassociateFileSystemInput
    FileSystemAssociationARN: string
    ForceDelete: boolean
end

local record DisassociateFileSystemOutput
    FileSystemAssociationARN: string
end

local record EvictFilesFailingUploadInput
    FileShareARN: string
    ForceRemove: boolean
end

local record EvictFilesFailingUploadOutput
    NotificationId: string
end

local record JoinDomainInput
    GatewayARN: string
    DomainName: string
    OrganizationalUnit: string
    DomainControllers: {string}
    TimeoutInSeconds: number
    UserName: string
    Password: string
end

local record JoinDomainOutput
    GatewayARN: string
    ActiveDirectoryStatus: string
end

local record ListAutomaticTapeCreationPoliciesInput
    GatewayARN: string
end

local record ListAutomaticTapeCreationPoliciesOutput
    AutomaticTapeCreationPolicyInfos: {AutomaticTapeCreationPolicyInfo}
end

local record ListCacheReportsInput
    Marker: string
end

local record ListCacheReportsOutput
    CacheReportList: {CacheReportInfo}
    Marker: string
end

local record ListFileSharesInput
    GatewayARN: string
    Limit: number
    Marker: string
end

local record ListFileSharesOutput
    Marker: string
    NextMarker: string
    FileShareInfoList: {FileShareInfo}
end

local record ListFileSystemAssociationsInput
    GatewayARN: string
    Limit: number
    Marker: string
end

local record ListFileSystemAssociationsOutput
    Marker: string
    NextMarker: string
    FileSystemAssociationSummaryList: {FileSystemAssociationSummary}
end

local record ListGatewaysInput
    Marker: string
    Limit: number
end

local record ListGatewaysOutput
    Gateways: {GatewayInfo}
    Marker: string
end

local record ListLocalDisksInput
    GatewayARN: string
end

local record ListLocalDisksOutput
    GatewayARN: string
    Disks: {Disk}
end

local record ListTagsForResourceInput
    ResourceARN: string
    Marker: string
    Limit: number
end

local record ListTagsForResourceOutput
    ResourceARN: string
    Marker: string
    Tags: {Tag}
end

local record ListTapePoolsInput
    PoolARNs: {string}
    Marker: string
    Limit: number
end

local record ListTapePoolsOutput
    PoolInfos: {PoolInfo}
    Marker: string
end

local record ListTapesInput
    TapeARNs: {string}
    Marker: string
    Limit: number
end

local record ListTapesOutput
    TapeInfos: {TapeInfo}
    Marker: string
end

local record ListVolumeInitiatorsInput
    VolumeARN: string
end

local record ListVolumeInitiatorsOutput
    Initiators: {string}
end

local record ListVolumeRecoveryPointsInput
    GatewayARN: string
end

local record ListVolumeRecoveryPointsOutput
    GatewayARN: string
    VolumeRecoveryPointInfos: {VolumeRecoveryPointInfo}
end

local record ListVolumesInput
    GatewayARN: string
    Marker: string
    Limit: number
end

local record ListVolumesOutput
    GatewayARN: string
    Marker: string
    VolumeInfos: {VolumeInfo}
end

local record NotifyWhenUploadedInput
    FileShareARN: string
end

local record NotifyWhenUploadedOutput
    FileShareARN: string
    NotificationId: string
end

local record RefreshCacheInput
    FileShareARN: string
    FolderList: {string}
    Recursive: boolean
end

local record RefreshCacheOutput
    FileShareARN: string
    NotificationId: string
end

local record RemoveTagsFromResourceInput
    ResourceARN: string
    TagKeys: {string}
end

local record RemoveTagsFromResourceOutput
    ResourceARN: string
end

local record ResetCacheInput
    GatewayARN: string
end

local record ResetCacheOutput
    GatewayARN: string
end

local record RetrieveTapeArchiveInput
    TapeARN: string
    GatewayARN: string
end

local record RetrieveTapeArchiveOutput
    TapeARN: string
end

local record RetrieveTapeRecoveryPointInput
    TapeARN: string
    GatewayARN: string
end

local record RetrieveTapeRecoveryPointOutput
    TapeARN: string
end

local record SetLocalConsolePasswordInput
    GatewayARN: string
    LocalConsolePassword: string
end

local record SetLocalConsolePasswordOutput
    GatewayARN: string
end

local record SetSMBGuestPasswordInput
    GatewayARN: string
    Password: string
end

local record SetSMBGuestPasswordOutput
    GatewayARN: string
end

local record ShutdownGatewayInput
    GatewayARN: string
end

local record ShutdownGatewayOutput
    GatewayARN: string
end

local record StartAvailabilityMonitorTestInput
    GatewayARN: string
end

local record StartAvailabilityMonitorTestOutput
    GatewayARN: string
end

local record StartCacheReportInput
    FileShareARN: string
    Role: string
    LocationARN: string
    BucketRegion: string
    VPCEndpointDNSName: string
    InclusionFilters: {CacheReportFilter}
    ExclusionFilters: {CacheReportFilter}
    ClientToken: string
    Tags: {Tag}
end

local record StartCacheReportOutput
    CacheReportARN: string
end

local record StartGatewayInput
    GatewayARN: string
end

local record StartGatewayOutput
    GatewayARN: string
end

local record UpdateAutomaticTapeCreationPolicyInput
    AutomaticTapeCreationRules: {AutomaticTapeCreationRule}
    GatewayARN: string
end

local record UpdateAutomaticTapeCreationPolicyOutput
    GatewayARN: string
end

local record UpdateBandwidthRateLimitInput
    GatewayARN: string
    AverageUploadRateLimitInBitsPerSec: number
    AverageDownloadRateLimitInBitsPerSec: number
end

local record UpdateBandwidthRateLimitOutput
    GatewayARN: string
end

local record UpdateBandwidthRateLimitScheduleInput
    GatewayARN: string
    BandwidthRateLimitIntervals: {BandwidthRateLimitInterval}
end

local record UpdateBandwidthRateLimitScheduleOutput
    GatewayARN: string
end

local record UpdateChapCredentialsInput
    TargetARN: string
    SecretToAuthenticateInitiator: string
    InitiatorName: string
    SecretToAuthenticateTarget: string
end

local record UpdateChapCredentialsOutput
    TargetARN: string
    InitiatorName: string
end

local record UpdateFileSystemAssociationInput
    FileSystemAssociationARN: string
    UserName: string
    Password: string
    AuditDestinationARN: string
    CacheAttributes: CacheAttributes
end

local record UpdateFileSystemAssociationOutput
    FileSystemAssociationARN: string
end

local record UpdateGatewayInformationInput
    GatewayARN: string
    GatewayName: string
    GatewayTimezone: string
    CloudWatchLogGroupARN: string
    GatewayCapacity: string
end

local record UpdateGatewayInformationOutput
    GatewayARN: string
    GatewayName: string
end

local record UpdateGatewaySoftwareNowInput
    GatewayARN: string
end

local record UpdateGatewaySoftwareNowOutput
    GatewayARN: string
end

local record UpdateMaintenanceStartTimeInput
    GatewayARN: string
    HourOfDay: number
    MinuteOfHour: number
    DayOfWeek: number
    DayOfMonth: number
    SoftwareUpdatePreferences: SoftwareUpdatePreferences
end

local record UpdateMaintenanceStartTimeOutput
    GatewayARN: string
end

local record UpdateNFSFileShareInput
    FileShareARN: string
    EncryptionType: string
    KMSEncrypted: boolean
    KMSKey: string
    NFSFileShareDefaults: NFSFileShareDefaults
    DefaultStorageClass: string
    ObjectACL: string
    ClientList: {string}
    Squash: string
    ReadOnly: boolean
    GuessMIMETypeEnabled: boolean
    RequesterPays: boolean
    FileShareName: string
    CacheAttributes: CacheAttributes
    NotificationPolicy: string
    AuditDestinationARN: string
end

local record UpdateNFSFileShareOutput
    FileShareARN: string
end

local record UpdateSMBFileShareInput
    FileShareARN: string
    EncryptionType: string
    KMSEncrypted: boolean
    KMSKey: string
    DefaultStorageClass: string
    ObjectACL: string
    ReadOnly: boolean
    GuessMIMETypeEnabled: boolean
    RequesterPays: boolean
    SMBACLEnabled: boolean
    AccessBasedEnumeration: boolean
    AdminUserList: {string}
    ValidUserList: {string}
    InvalidUserList: {string}
    AuditDestinationARN: string
    CaseSensitivity: string
    FileShareName: string
    CacheAttributes: CacheAttributes
    NotificationPolicy: string
    OplocksEnabled: boolean
end

local record UpdateSMBFileShareOutput
    FileShareARN: string
end

local record UpdateSMBFileShareVisibilityInput
    GatewayARN: string
    FileSharesVisible: boolean
end

local record UpdateSMBFileShareVisibilityOutput
    GatewayARN: string
end

local record UpdateSMBLocalGroupsInput
    GatewayARN: string
    SMBLocalGroups: SMBLocalGroups
end

local record UpdateSMBLocalGroupsOutput
    GatewayARN: string
end

local record UpdateSMBSecurityStrategyInput
    GatewayARN: string
    SMBSecurityStrategy: string
end

local record UpdateSMBSecurityStrategyOutput
    GatewayARN: string
end

local record UpdateSnapshotScheduleInput
    VolumeARN: string
    StartAt: number
    RecurrenceInHours: number
    Description: string
    Tags: {Tag}
end

local record UpdateSnapshotScheduleOutput
    VolumeARN: string
end

local record UpdateVTLDeviceTypeInput
    VTLDeviceARN: string
    DeviceType: string
end

local record UpdateVTLDeviceTypeOutput
    VTLDeviceARN: string
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record ServiceUnavailableError
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record ServiceUnavailableError
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local record InternalServerError
    message: string
    error: StorageGatewayError
end

local record InvalidGatewayRequestException
    message: string
    error: StorageGatewayError
end

local type EncryptionType = "SseS3" | "SseKms" | "DsseKms"

local type HostEnvironment = "VMWARE" | "HYPER-V" | "EC2" | "KVM" | "OTHER" | "SNOWBALL"

local type AvailabilityMonitorTestStatus = "COMPLETE" | "FAILED" | "PENDING"

local type GatewayCapacity = "Small" | "Medium" | "Large"

local type ObjectACL = "private" | "public-read" | "public-read-write" | "authenticated-read" | "bucket-owner-read" | "bucket-owner-full-control" | "aws-exec-read"

local type ActiveDirectoryStatus = "ACCESS_DENIED" | "DETACHED" | "JOINED" | "JOINING" | "NETWORK_ERROR" | "TIMEOUT" | "UNKNOWN_ERROR" | "INSUFFICIENT_PERMISSIONS"

local type CaseSensitivity = "ClientSpecified" | "CaseSensitive"

local type TapeStorageClass = "DEEP_ARCHIVE" | "GLACIER"

local type RetentionLockType = "COMPLIANCE" | "GOVERNANCE" | "NONE"

local type SMBSecurityStrategy = "ClientSpecified" | "MandatorySigning" | "MandatoryEncryption" | "MandatoryEncryptionNoAes128"

local record M
    ActivateGatewayInput: ActivateGatewayInput
    ActivateGatewayOutput: ActivateGatewayOutput
    AddCacheInput: AddCacheInput
    AddCacheOutput: AddCacheOutput
    AddTagsToResourceInput: AddTagsToResourceInput
    AddTagsToResourceOutput: AddTagsToResourceOutput
    AddUploadBufferInput: AddUploadBufferInput
    AddUploadBufferOutput: AddUploadBufferOutput
    AddWorkingStorageInput: AddWorkingStorageInput
    AddWorkingStorageOutput: AddWorkingStorageOutput
    AssignTapePoolInput: AssignTapePoolInput
    AssignTapePoolOutput: AssignTapePoolOutput
    AssociateFileSystemInput: AssociateFileSystemInput
    AssociateFileSystemOutput: AssociateFileSystemOutput
    AttachVolumeInput: AttachVolumeInput
    AttachVolumeOutput: AttachVolumeOutput
    CancelArchivalInput: CancelArchivalInput
    CancelArchivalOutput: CancelArchivalOutput
    CancelCacheReportInput: CancelCacheReportInput
    CancelCacheReportOutput: CancelCacheReportOutput
    CancelRetrievalInput: CancelRetrievalInput
    CancelRetrievalOutput: CancelRetrievalOutput
    CreateCachediSCSIVolumeInput: CreateCachediSCSIVolumeInput
    CreateCachediSCSIVolumeOutput: CreateCachediSCSIVolumeOutput
    CreateNFSFileShareInput: CreateNFSFileShareInput
    CreateNFSFileShareOutput: CreateNFSFileShareOutput
    CreateSMBFileShareInput: CreateSMBFileShareInput
    CreateSMBFileShareOutput: CreateSMBFileShareOutput
    CreateSnapshotInput: CreateSnapshotInput
    CreateSnapshotOutput: CreateSnapshotOutput
    CreateSnapshotFromVolumeRecoveryPointInput: CreateSnapshotFromVolumeRecoveryPointInput
    CreateSnapshotFromVolumeRecoveryPointOutput: CreateSnapshotFromVolumeRecoveryPointOutput
    CreateStorediSCSIVolumeInput: CreateStorediSCSIVolumeInput
    CreateStorediSCSIVolumeOutput: CreateStorediSCSIVolumeOutput
    CreateTapePoolInput: CreateTapePoolInput
    CreateTapePoolOutput: CreateTapePoolOutput
    CreateTapesInput: CreateTapesInput
    CreateTapesOutput: CreateTapesOutput
    CreateTapeWithBarcodeInput: CreateTapeWithBarcodeInput
    CreateTapeWithBarcodeOutput: CreateTapeWithBarcodeOutput
    DeleteAutomaticTapeCreationPolicyInput: DeleteAutomaticTapeCreationPolicyInput
    DeleteAutomaticTapeCreationPolicyOutput: DeleteAutomaticTapeCreationPolicyOutput
    DeleteBandwidthRateLimitInput: DeleteBandwidthRateLimitInput
    DeleteBandwidthRateLimitOutput: DeleteBandwidthRateLimitOutput
    DeleteCacheReportInput: DeleteCacheReportInput
    DeleteCacheReportOutput: DeleteCacheReportOutput
    DeleteChapCredentialsInput: DeleteChapCredentialsInput
    DeleteChapCredentialsOutput: DeleteChapCredentialsOutput
    DeleteFileShareInput: DeleteFileShareInput
    DeleteFileShareOutput: DeleteFileShareOutput
    DeleteGatewayInput: DeleteGatewayInput
    DeleteGatewayOutput: DeleteGatewayOutput
    DeleteSnapshotScheduleInput: DeleteSnapshotScheduleInput
    DeleteSnapshotScheduleOutput: DeleteSnapshotScheduleOutput
    DeleteTapeInput: DeleteTapeInput
    DeleteTapeOutput: DeleteTapeOutput
    DeleteTapeArchiveInput: DeleteTapeArchiveInput
    DeleteTapeArchiveOutput: DeleteTapeArchiveOutput
    DeleteTapePoolInput: DeleteTapePoolInput
    DeleteTapePoolOutput: DeleteTapePoolOutput
    DeleteVolumeInput: DeleteVolumeInput
    DeleteVolumeOutput: DeleteVolumeOutput
    DescribeAvailabilityMonitorTestInput: DescribeAvailabilityMonitorTestInput
    DescribeAvailabilityMonitorTestOutput: DescribeAvailabilityMonitorTestOutput
    DescribeBandwidthRateLimitInput: DescribeBandwidthRateLimitInput
    DescribeBandwidthRateLimitOutput: DescribeBandwidthRateLimitOutput
    DescribeBandwidthRateLimitScheduleInput: DescribeBandwidthRateLimitScheduleInput
    DescribeBandwidthRateLimitScheduleOutput: DescribeBandwidthRateLimitScheduleOutput
    DescribeCacheInput: DescribeCacheInput
    DescribeCacheOutput: DescribeCacheOutput
    DescribeCachediSCSIVolumesInput: DescribeCachediSCSIVolumesInput
    DescribeCachediSCSIVolumesOutput: DescribeCachediSCSIVolumesOutput
    DescribeCacheReportInput: DescribeCacheReportInput
    DescribeCacheReportOutput: DescribeCacheReportOutput
    DescribeChapCredentialsInput: DescribeChapCredentialsInput
    DescribeChapCredentialsOutput: DescribeChapCredentialsOutput
    DescribeFileSystemAssociationsInput: DescribeFileSystemAssociationsInput
    DescribeFileSystemAssociationsOutput: DescribeFileSystemAssociationsOutput
    DescribeGatewayInformationInput: DescribeGatewayInformationInput
    DescribeGatewayInformationOutput: DescribeGatewayInformationOutput
    DescribeMaintenanceStartTimeInput: DescribeMaintenanceStartTimeInput
    DescribeMaintenanceStartTimeOutput: DescribeMaintenanceStartTimeOutput
    DescribeNFSFileSharesInput: DescribeNFSFileSharesInput
    DescribeNFSFileSharesOutput: DescribeNFSFileSharesOutput
    DescribeSMBFileSharesInput: DescribeSMBFileSharesInput
    DescribeSMBFileSharesOutput: DescribeSMBFileSharesOutput
    DescribeSMBSettingsInput: DescribeSMBSettingsInput
    DescribeSMBSettingsOutput: DescribeSMBSettingsOutput
    DescribeSnapshotScheduleInput: DescribeSnapshotScheduleInput
    DescribeSnapshotScheduleOutput: DescribeSnapshotScheduleOutput
    DescribeStorediSCSIVolumesInput: DescribeStorediSCSIVolumesInput
    DescribeStorediSCSIVolumesOutput: DescribeStorediSCSIVolumesOutput
    DescribeTapeArchivesInput: DescribeTapeArchivesInput
    DescribeTapeArchivesOutput: DescribeTapeArchivesOutput
    DescribeTapeRecoveryPointsInput: DescribeTapeRecoveryPointsInput
    DescribeTapeRecoveryPointsOutput: DescribeTapeRecoveryPointsOutput
    DescribeTapesInput: DescribeTapesInput
    DescribeTapesOutput: DescribeTapesOutput
    DescribeUploadBufferInput: DescribeUploadBufferInput
    DescribeUploadBufferOutput: DescribeUploadBufferOutput
    DescribeVTLDevicesInput: DescribeVTLDevicesInput
    DescribeVTLDevicesOutput: DescribeVTLDevicesOutput
    DescribeWorkingStorageInput: DescribeWorkingStorageInput
    DescribeWorkingStorageOutput: DescribeWorkingStorageOutput
    DetachVolumeInput: DetachVolumeInput
    DetachVolumeOutput: DetachVolumeOutput
    DisableGatewayInput: DisableGatewayInput
    DisableGatewayOutput: DisableGatewayOutput
    DisassociateFileSystemInput: DisassociateFileSystemInput
    DisassociateFileSystemOutput: DisassociateFileSystemOutput
    EvictFilesFailingUploadInput: EvictFilesFailingUploadInput
    EvictFilesFailingUploadOutput: EvictFilesFailingUploadOutput
    JoinDomainInput: JoinDomainInput
    JoinDomainOutput: JoinDomainOutput
    ListAutomaticTapeCreationPoliciesInput: ListAutomaticTapeCreationPoliciesInput
    ListAutomaticTapeCreationPoliciesOutput: ListAutomaticTapeCreationPoliciesOutput
    ListCacheReportsInput: ListCacheReportsInput
    ListCacheReportsOutput: ListCacheReportsOutput
    ListFileSharesInput: ListFileSharesInput
    ListFileSharesOutput: ListFileSharesOutput
    ListFileSystemAssociationsInput: ListFileSystemAssociationsInput
    ListFileSystemAssociationsOutput: ListFileSystemAssociationsOutput
    ListGatewaysInput: ListGatewaysInput
    ListGatewaysOutput: ListGatewaysOutput
    ListLocalDisksInput: ListLocalDisksInput
    ListLocalDisksOutput: ListLocalDisksOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTapePoolsInput: ListTapePoolsInput
    ListTapePoolsOutput: ListTapePoolsOutput
    ListTapesInput: ListTapesInput
    ListTapesOutput: ListTapesOutput
    ListVolumeInitiatorsInput: ListVolumeInitiatorsInput
    ListVolumeInitiatorsOutput: ListVolumeInitiatorsOutput
    ListVolumeRecoveryPointsInput: ListVolumeRecoveryPointsInput
    ListVolumeRecoveryPointsOutput: ListVolumeRecoveryPointsOutput
    ListVolumesInput: ListVolumesInput
    ListVolumesOutput: ListVolumesOutput
    NotifyWhenUploadedInput: NotifyWhenUploadedInput
    NotifyWhenUploadedOutput: NotifyWhenUploadedOutput
    RefreshCacheInput: RefreshCacheInput
    RefreshCacheOutput: RefreshCacheOutput
    RemoveTagsFromResourceInput: RemoveTagsFromResourceInput
    RemoveTagsFromResourceOutput: RemoveTagsFromResourceOutput
    ResetCacheInput: ResetCacheInput
    ResetCacheOutput: ResetCacheOutput
    RetrieveTapeArchiveInput: RetrieveTapeArchiveInput
    RetrieveTapeArchiveOutput: RetrieveTapeArchiveOutput
    RetrieveTapeRecoveryPointInput: RetrieveTapeRecoveryPointInput
    RetrieveTapeRecoveryPointOutput: RetrieveTapeRecoveryPointOutput
    SetLocalConsolePasswordInput: SetLocalConsolePasswordInput
    SetLocalConsolePasswordOutput: SetLocalConsolePasswordOutput
    SetSMBGuestPasswordInput: SetSMBGuestPasswordInput
    SetSMBGuestPasswordOutput: SetSMBGuestPasswordOutput
    ShutdownGatewayInput: ShutdownGatewayInput
    ShutdownGatewayOutput: ShutdownGatewayOutput
    StartAvailabilityMonitorTestInput: StartAvailabilityMonitorTestInput
    StartAvailabilityMonitorTestOutput: StartAvailabilityMonitorTestOutput
    StartCacheReportInput: StartCacheReportInput
    StartCacheReportOutput: StartCacheReportOutput
    StartGatewayInput: StartGatewayInput
    StartGatewayOutput: StartGatewayOutput
    UpdateAutomaticTapeCreationPolicyInput: UpdateAutomaticTapeCreationPolicyInput
    UpdateAutomaticTapeCreationPolicyOutput: UpdateAutomaticTapeCreationPolicyOutput
    UpdateBandwidthRateLimitInput: UpdateBandwidthRateLimitInput
    UpdateBandwidthRateLimitOutput: UpdateBandwidthRateLimitOutput
    UpdateBandwidthRateLimitScheduleInput: UpdateBandwidthRateLimitScheduleInput
    UpdateBandwidthRateLimitScheduleOutput: UpdateBandwidthRateLimitScheduleOutput
    UpdateChapCredentialsInput: UpdateChapCredentialsInput
    UpdateChapCredentialsOutput: UpdateChapCredentialsOutput
    UpdateFileSystemAssociationInput: UpdateFileSystemAssociationInput
    UpdateFileSystemAssociationOutput: UpdateFileSystemAssociationOutput
    UpdateGatewayInformationInput: UpdateGatewayInformationInput
    UpdateGatewayInformationOutput: UpdateGatewayInformationOutput
    UpdateGatewaySoftwareNowInput: UpdateGatewaySoftwareNowInput
    UpdateGatewaySoftwareNowOutput: UpdateGatewaySoftwareNowOutput
    UpdateMaintenanceStartTimeInput: UpdateMaintenanceStartTimeInput
    UpdateMaintenanceStartTimeOutput: UpdateMaintenanceStartTimeOutput
    UpdateNFSFileShareInput: UpdateNFSFileShareInput
    UpdateNFSFileShareOutput: UpdateNFSFileShareOutput
    UpdateSMBFileShareInput: UpdateSMBFileShareInput
    UpdateSMBFileShareOutput: UpdateSMBFileShareOutput
    UpdateSMBFileShareVisibilityInput: UpdateSMBFileShareVisibilityInput
    UpdateSMBFileShareVisibilityOutput: UpdateSMBFileShareVisibilityOutput
    UpdateSMBLocalGroupsInput: UpdateSMBLocalGroupsInput
    UpdateSMBLocalGroupsOutput: UpdateSMBLocalGroupsOutput
    UpdateSMBSecurityStrategyInput: UpdateSMBSecurityStrategyInput
    UpdateSMBSecurityStrategyOutput: UpdateSMBSecurityStrategyOutput
    UpdateSnapshotScheduleInput: UpdateSnapshotScheduleInput
    UpdateSnapshotScheduleOutput: UpdateSnapshotScheduleOutput
    UpdateVTLDeviceTypeInput: UpdateVTLDeviceTypeInput
    UpdateVTLDeviceTypeOutput: UpdateVTLDeviceTypeOutput
end

return M
