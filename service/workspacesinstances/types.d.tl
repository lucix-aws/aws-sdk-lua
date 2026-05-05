local record AssociateVolumeInput
    WorkspaceInstanceId: string
    VolumeId: string
    Device: string
end

local record AssociateVolumeOutput
end

local record CreateVolumeInput
    AvailabilityZone: string
    ClientToken: string
    Encrypted: boolean
    Iops: number
    KmsKeyId: string
    SizeInGB: number
    SnapshotId: string
    TagSpecifications: {TagSpecification}
    Throughput: number
    VolumeType: string
end

local record CreateVolumeOutput
    VolumeId: string
end

local record CreateWorkspaceInstanceInput
    ClientToken: string
    Tags: {Tag}
    ManagedInstance: ManagedInstanceRequest
    BillingConfiguration: BillingConfiguration
end

local record CreateWorkspaceInstanceOutput
    WorkspaceInstanceId: string
end

local record DeleteVolumeInput
    VolumeId: string
end

local record DeleteVolumeOutput
end

local record DeleteWorkspaceInstanceInput
    WorkspaceInstanceId: string
end

local record DeleteWorkspaceInstanceOutput
end

local record DisassociateVolumeInput
    WorkspaceInstanceId: string
    VolumeId: string
    Device: string
    DisassociateMode: string
end

local record DisassociateVolumeOutput
end

local record GetWorkspaceInstanceInput
    WorkspaceInstanceId: string
end

local record GetWorkspaceInstanceOutput
    WorkspaceInstanceErrors: {WorkspaceInstanceError}
    EC2InstanceErrors: {EC2InstanceError}
    ProvisionState: string
    WorkspaceInstanceId: string
    EC2ManagedInstance: EC2ManagedInstance
    BillingConfiguration: BillingConfiguration
end

local record ListInstanceTypesInput
    MaxResults: number
    NextToken: string
    InstanceConfigurationFilter: InstanceConfigurationFilter
end

local record ListInstanceTypesOutput
    InstanceTypes: {InstanceTypeInfo}
    NextToken: string
end

local record ListRegionsInput
    MaxResults: number
    NextToken: string
end

local record ListRegionsOutput
    Regions: {Region}
    NextToken: string
end

local record ListTagsForResourceInput
    WorkspaceInstanceId: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record ListWorkspaceInstancesInput
    ProvisionStates: {string}
    MaxResults: number
    NextToken: string
end

local record ListWorkspaceInstancesOutput
    WorkspaceInstances: {WorkspaceInstance}
    NextToken: string
end

local record TagResourceInput
    WorkspaceInstanceId: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    WorkspaceInstanceId: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    ServiceCode: string
    QuotaCode: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    ServiceCode: string
    QuotaCode: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    RetryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local type ProvisionStateEnum = "ALLOCATING" | "ALLOCATED" | "DEALLOCATING" | "DEALLOCATED" | "ERROR_ALLOCATING" | "ERROR_DEALLOCATING"

local type VolumeTypeEnum = "standard" | "io1" | "io2" | "gp2" | "sc1" | "st1" | "gp3"

local type DisassociateModeEnum = "FORCE" | "NO_FORCE"

local record M
    AssociateVolumeInput: AssociateVolumeInput
    AssociateVolumeOutput: AssociateVolumeOutput
    CreateVolumeInput: CreateVolumeInput
    CreateVolumeOutput: CreateVolumeOutput
    CreateWorkspaceInstanceInput: CreateWorkspaceInstanceInput
    CreateWorkspaceInstanceOutput: CreateWorkspaceInstanceOutput
    DeleteVolumeInput: DeleteVolumeInput
    DeleteVolumeOutput: DeleteVolumeOutput
    DeleteWorkspaceInstanceInput: DeleteWorkspaceInstanceInput
    DeleteWorkspaceInstanceOutput: DeleteWorkspaceInstanceOutput
    DisassociateVolumeInput: DisassociateVolumeInput
    DisassociateVolumeOutput: DisassociateVolumeOutput
    GetWorkspaceInstanceInput: GetWorkspaceInstanceInput
    GetWorkspaceInstanceOutput: GetWorkspaceInstanceOutput
    ListInstanceTypesInput: ListInstanceTypesInput
    ListInstanceTypesOutput: ListInstanceTypesOutput
    ListRegionsInput: ListRegionsInput
    ListRegionsOutput: ListRegionsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListWorkspaceInstancesInput: ListWorkspaceInstancesInput
    ListWorkspaceInstancesOutput: ListWorkspaceInstancesOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
end

return M
