local record AddTagsToResourceInput
    ResourceArn: string
    TagList: {Tag}
end

local record AddTagsToResourceOutput
    Status: string
end

local record CreateHapgInput
    Label: string
end

local record CreateHapgOutput
    HapgArn: string
end

local record CreateHsmInput
    SubnetId: string
    SshKey: string
    EniIp: string
    IamRoleArn: string
    ExternalId: string
    SubscriptionType: string
    ClientToken: string
    SyslogIp: string
end

local record CreateHsmOutput
    HsmArn: string
end

local record CreateLunaClientInput
    Label: string
    Certificate: string
end

local record CreateLunaClientOutput
    ClientArn: string
end

local record DeleteHapgInput
    HapgArn: string
end

local record DeleteHapgOutput
    Status: string
end

local record DeleteHsmInput
    HsmArn: string
end

local record DeleteHsmOutput
    Status: string
end

local record DeleteLunaClientInput
    ClientArn: string
end

local record DeleteLunaClientOutput
    Status: string
end

local record DescribeHapgInput
    HapgArn: string
end

local record DescribeHapgOutput
    HapgArn: string
    HapgSerial: string
    HsmsLastActionFailed: {string}
    HsmsPendingDeletion: {string}
    HsmsPendingRegistration: {string}
    Label: string
    LastModifiedTimestamp: string
    PartitionSerialList: {string}
    State: string
end

local record DescribeHsmInput
    HsmArn: string
    HsmSerialNumber: string
end

local record DescribeHsmOutput
    HsmArn: string
    Status: string
    StatusDetails: string
    AvailabilityZone: string
    EniId: string
    EniIp: string
    SubscriptionType: string
    SubscriptionStartDate: string
    SubscriptionEndDate: string
    VpcId: string
    SubnetId: string
    IamRoleArn: string
    SerialNumber: string
    VendorName: string
    HsmType: string
    SoftwareVersion: string
    SshPublicKey: string
    SshKeyLastUpdated: string
    ServerCertUri: string
    ServerCertLastUpdated: string
    Partitions: {string}
end

local record DescribeLunaClientInput
    ClientArn: string
    CertificateFingerprint: string
end

local record DescribeLunaClientOutput
    ClientArn: string
    Certificate: string
    CertificateFingerprint: string
    LastModifiedTimestamp: string
    Label: string
end

local record GetConfigInput
    ClientArn: string
    ClientVersion: string
    HapgList: {string}
end

local record GetConfigOutput
    ConfigType: string
    ConfigFile: string
    ConfigCred: string
end

local record ListAvailableZonesInput
end

local record ListAvailableZonesOutput
    AZList: {string}
end

local record ListHapgsInput
    NextToken: string
end

local record ListHapgsOutput
    HapgList: {string}
    NextToken: string
end

local record ListHsmsInput
    NextToken: string
end

local record ListHsmsOutput
    HsmList: {string}
    NextToken: string
end

local record ListLunaClientsInput
    NextToken: string
end

local record ListLunaClientsOutput
    ClientList: {string}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    TagList: {Tag}
end

local record ModifyHapgInput
    HapgArn: string
    Label: string
    PartitionSerialList: {string}
end

local record ModifyHapgOutput
    HapgArn: string
end

local record ModifyHsmInput
    HsmArn: string
    SubnetId: string
    EniIp: string
    IamRoleArn: string
    ExternalId: string
    SyslogIp: string
end

local record ModifyHsmOutput
    HsmArn: string
end

local record ModifyLunaClientInput
    ClientArn: string
    Certificate: string
end

local record ModifyLunaClientOutput
    ClientArn: string
end

local record RemoveTagsFromResourceInput
    ResourceArn: string
    TagKeyList: {string}
end

local record RemoveTagsFromResourceOutput
    Status: string
end

local record CloudHsmInternalException
    message: string
    retryable: boolean
end

local record CloudHsmServiceException
    message: string
    retryable: boolean
end

local record InvalidRequestException
    message: string
    retryable: boolean
end

local record CloudHsmInternalException
    message: string
    retryable: boolean
end

local record CloudHsmServiceException
    message: string
    retryable: boolean
end

local record InvalidRequestException
    message: string
    retryable: boolean
end

local record CloudHsmInternalException
    message: string
    retryable: boolean
end

local record CloudHsmServiceException
    message: string
    retryable: boolean
end

local record InvalidRequestException
    message: string
    retryable: boolean
end

local record CloudHsmInternalException
    message: string
    retryable: boolean
end

local record CloudHsmServiceException
    message: string
    retryable: boolean
end

local record InvalidRequestException
    message: string
    retryable: boolean
end

local record CloudHsmInternalException
    message: string
    retryable: boolean
end

local record CloudHsmServiceException
    message: string
    retryable: boolean
end

local record InvalidRequestException
    message: string
    retryable: boolean
end

local record CloudHsmInternalException
    message: string
    retryable: boolean
end

local record CloudHsmServiceException
    message: string
    retryable: boolean
end

local record InvalidRequestException
    message: string
    retryable: boolean
end

local record CloudHsmInternalException
    message: string
    retryable: boolean
end

local record CloudHsmServiceException
    message: string
    retryable: boolean
end

local record InvalidRequestException
    message: string
    retryable: boolean
end

local record CloudHsmInternalException
    message: string
    retryable: boolean
end

local record CloudHsmServiceException
    message: string
    retryable: boolean
end

local record InvalidRequestException
    message: string
    retryable: boolean
end

local record CloudHsmInternalException
    message: string
    retryable: boolean
end

local record CloudHsmServiceException
    message: string
    retryable: boolean
end

local record InvalidRequestException
    message: string
    retryable: boolean
end

local record CloudHsmInternalException
    message: string
    retryable: boolean
end

local record CloudHsmServiceException
    message: string
    retryable: boolean
end

local record InvalidRequestException
    message: string
    retryable: boolean
end

local record CloudHsmInternalException
    message: string
    retryable: boolean
end

local record CloudHsmServiceException
    message: string
    retryable: boolean
end

local record InvalidRequestException
    message: string
    retryable: boolean
end

local record CloudHsmInternalException
    message: string
    retryable: boolean
end

local record CloudHsmServiceException
    message: string
    retryable: boolean
end

local record InvalidRequestException
    message: string
    retryable: boolean
end

local record CloudHsmInternalException
    message: string
    retryable: boolean
end

local record CloudHsmServiceException
    message: string
    retryable: boolean
end

local record InvalidRequestException
    message: string
    retryable: boolean
end

local record CloudHsmInternalException
    message: string
    retryable: boolean
end

local record CloudHsmServiceException
    message: string
    retryable: boolean
end

local record InvalidRequestException
    message: string
    retryable: boolean
end

local record CloudHsmInternalException
    message: string
    retryable: boolean
end

local record CloudHsmServiceException
    message: string
    retryable: boolean
end

local record InvalidRequestException
    message: string
    retryable: boolean
end

local record CloudHsmInternalException
    message: string
    retryable: boolean
end

local record CloudHsmServiceException
    message: string
    retryable: boolean
end

local record InvalidRequestException
    message: string
    retryable: boolean
end

local record CloudHsmInternalException
    message: string
    retryable: boolean
end

local record CloudHsmServiceException
    message: string
    retryable: boolean
end

local record InvalidRequestException
    message: string
    retryable: boolean
end

local record CloudHsmInternalException
    message: string
    retryable: boolean
end

local record CloudHsmServiceException
    message: string
    retryable: boolean
end

local record InvalidRequestException
    message: string
    retryable: boolean
end

local record CloudHsmServiceException
    message: string
    retryable: boolean
end

local record CloudHsmInternalException
    message: string
    retryable: boolean
end

local record CloudHsmServiceException
    message: string
    retryable: boolean
end

local record InvalidRequestException
    message: string
    retryable: boolean
end

local type CloudHsmObjectState = "READY" | "UPDATING" | "DEGRADED"

local type ClientVersion = "5.1" | "5.3"

local type HsmStatus = "PENDING" | "RUNNING" | "UPDATING" | "SUSPENDED" | "TERMINATING" | "TERMINATED" | "DEGRADED"

local type SubscriptionType = "PRODUCTION"

local record M
    AddTagsToResourceInput: AddTagsToResourceInput
    AddTagsToResourceOutput: AddTagsToResourceOutput
    CreateHapgInput: CreateHapgInput
    CreateHapgOutput: CreateHapgOutput
    CreateHsmInput: CreateHsmInput
    CreateHsmOutput: CreateHsmOutput
    CreateLunaClientInput: CreateLunaClientInput
    CreateLunaClientOutput: CreateLunaClientOutput
    DeleteHapgInput: DeleteHapgInput
    DeleteHapgOutput: DeleteHapgOutput
    DeleteHsmInput: DeleteHsmInput
    DeleteHsmOutput: DeleteHsmOutput
    DeleteLunaClientInput: DeleteLunaClientInput
    DeleteLunaClientOutput: DeleteLunaClientOutput
    DescribeHapgInput: DescribeHapgInput
    DescribeHapgOutput: DescribeHapgOutput
    DescribeHsmInput: DescribeHsmInput
    DescribeHsmOutput: DescribeHsmOutput
    DescribeLunaClientInput: DescribeLunaClientInput
    DescribeLunaClientOutput: DescribeLunaClientOutput
    GetConfigInput: GetConfigInput
    GetConfigOutput: GetConfigOutput
    ListAvailableZonesInput: ListAvailableZonesInput
    ListAvailableZonesOutput: ListAvailableZonesOutput
    ListHapgsInput: ListHapgsInput
    ListHapgsOutput: ListHapgsOutput
    ListHsmsInput: ListHsmsInput
    ListHsmsOutput: ListHsmsOutput
    ListLunaClientsInput: ListLunaClientsInput
    ListLunaClientsOutput: ListLunaClientsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ModifyHapgInput: ModifyHapgInput
    ModifyHapgOutput: ModifyHapgOutput
    ModifyHsmInput: ModifyHsmInput
    ModifyHsmOutput: ModifyHsmOutput
    ModifyLunaClientInput: ModifyLunaClientInput
    ModifyLunaClientOutput: ModifyLunaClientOutput
    RemoveTagsFromResourceInput: RemoveTagsFromResourceInput
    RemoveTagsFromResourceOutput: RemoveTagsFromResourceOutput
end

return M
