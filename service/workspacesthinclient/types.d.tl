local record CreateEnvironmentInput
    name: string
    desktopArn: string
    desktopEndpoint: string
    softwareSetUpdateSchedule: string
    maintenanceWindow: MaintenanceWindow
    softwareSetUpdateMode: string
    desiredSoftwareSetId: string
    kmsKeyArn: string
    clientToken: string
    tags: {string : string}
    deviceCreationTags: {string : string}
end

local record CreateEnvironmentOutput
    environment: EnvironmentSummary
end

local record DeleteDeviceInput
    id: string
    clientToken: string
end

local record DeleteDeviceOutput
end

local record DeleteEnvironmentInput
    id: string
    clientToken: string
end

local record DeleteEnvironmentOutput
end

local record DeregisterDeviceInput
    id: string
    targetDeviceStatus: string
    clientToken: string
end

local record DeregisterDeviceOutput
end

local record GetDeviceInput
    id: string
end

local record GetDeviceOutput
    device: Device
end

local record GetEnvironmentInput
    id: string
end

local record GetEnvironmentOutput
    environment: Environment
end

local record GetSoftwareSetInput
    id: string
end

local record GetSoftwareSetOutput
    softwareSet: SoftwareSet
end

local record ListDevicesInput
    nextToken: string
    maxResults: number
end

local record ListDevicesOutput
    devices: {DeviceSummary}
    nextToken: string
end

local record ListEnvironmentsInput
    nextToken: string
    maxResults: number
end

local record ListEnvironmentsOutput
    environments: {EnvironmentSummary}
    nextToken: string
end

local record ListSoftwareSetsInput
    nextToken: string
    maxResults: number
end

local record ListSoftwareSetsOutput
    softwareSets: {SoftwareSetSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record TagResourceInput
    resourceArn: string
    tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateDeviceInput
    id: string
    name: string
    desiredSoftwareSetId: string
    softwareSetUpdateSchedule: string
end

local record UpdateDeviceOutput
    device: DeviceSummary
end

local record UpdateEnvironmentInput
    id: string
    name: string
    desktopArn: string
    desktopEndpoint: string
    softwareSetUpdateSchedule: string
    maintenanceWindow: MaintenanceWindow
    softwareSetUpdateMode: string
    desiredSoftwareSetId: string
    deviceCreationTags: {string : string}
end

local record UpdateEnvironmentOutput
    environment: EnvironmentSummary
end

local record UpdateSoftwareSetInput
    id: string
    validationStatus: string
end

local record UpdateSoftwareSetOutput
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local type SoftwareSetValidationStatus = "VALIDATED" | "NOT_VALIDATED"

local type SoftwareSetUpdateMode = "USE_LATEST" | "USE_DESIRED"

local type TargetDeviceStatus = "DEREGISTERED" | "ARCHIVED"

local type SoftwareSetUpdateSchedule = "USE_MAINTENANCE_WINDOW" | "APPLY_IMMEDIATELY"

local record M
    CreateEnvironmentInput: CreateEnvironmentInput
    CreateEnvironmentOutput: CreateEnvironmentOutput
    DeleteDeviceInput: DeleteDeviceInput
    DeleteDeviceOutput: DeleteDeviceOutput
    DeleteEnvironmentInput: DeleteEnvironmentInput
    DeleteEnvironmentOutput: DeleteEnvironmentOutput
    DeregisterDeviceInput: DeregisterDeviceInput
    DeregisterDeviceOutput: DeregisterDeviceOutput
    GetDeviceInput: GetDeviceInput
    GetDeviceOutput: GetDeviceOutput
    GetEnvironmentInput: GetEnvironmentInput
    GetEnvironmentOutput: GetEnvironmentOutput
    GetSoftwareSetInput: GetSoftwareSetInput
    GetSoftwareSetOutput: GetSoftwareSetOutput
    ListDevicesInput: ListDevicesInput
    ListDevicesOutput: ListDevicesOutput
    ListEnvironmentsInput: ListEnvironmentsInput
    ListEnvironmentsOutput: ListEnvironmentsOutput
    ListSoftwareSetsInput: ListSoftwareSetsInput
    ListSoftwareSetsOutput: ListSoftwareSetsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateDeviceInput: UpdateDeviceInput
    UpdateDeviceOutput: UpdateDeviceOutput
    UpdateEnvironmentInput: UpdateEnvironmentInput
    UpdateEnvironmentOutput: UpdateEnvironmentOutput
    UpdateSoftwareSetInput: UpdateSoftwareSetInput
    UpdateSoftwareSetOutput: UpdateSoftwareSetOutput
end

return M
