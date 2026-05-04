local record BatchAddChannelRoleToAccessorsInput
    spaceId: string
    channelId: string
    accessorIds: {string}
    channelRole: string
end

local record BatchAddChannelRoleToAccessorsOutput
    addedAccessorIds: {string}
    errors: {BatchError}
end

local record BatchAddRoleInput
    spaceId: string
    accessorIds: {string}
    role: string
end

local record BatchAddRoleOutput
    addedAccessorIds: {string}
    errors: {BatchError}
end

local record BatchRemoveChannelRoleFromAccessorsInput
    spaceId: string
    channelId: string
    accessorIds: {string}
    channelRole: string
end

local record BatchRemoveChannelRoleFromAccessorsOutput
    removedAccessorIds: {string}
    errors: {BatchError}
end

local record BatchRemoveRoleInput
    spaceId: string
    accessorIds: {string}
    role: string
end

local record BatchRemoveRoleOutput
    removedAccessorIds: {string}
    errors: {BatchError}
end

local record CreateChannelInput
    spaceId: string
    channelName: string
    channelDescription: string
end

local record CreateChannelOutput
    channelId: string
end

local record CreateSpaceInput
    name: string
    subdomain: string
    tier: string
    description: string
    userKMSKey: string
    tags: {string : string}
    roleArn: string
    supportedEmailDomains: SupportedEmailDomainsParameters
end

local record CreateSpaceOutput
    spaceId: string
end

local record DeleteSpaceInput
    spaceId: string
end

local record DeleteSpaceOutput
end

local record DeregisterAdminInput
    spaceId: string
    adminId: string
end

local record DeregisterAdminOutput
end

local record GetChannelInput
    spaceId: string
    channelId: string
end

local record GetChannelOutput
    spaceId: string
    channelId: string
    channelName: string
    channelDescription: string
    createDateTime: number
    deleteDateTime: number
    channelRoles: {string : {string}}
    channelStatus: string
end

local record GetSpaceInput
    spaceId: string
end

local record GetSpaceOutput
    spaceId: string
    arn: string
    name: string
    status: string
    configurationStatus: string
    clientId: string
    identityStoreId: string
    applicationArn: string
    description: string
    vanityDomainStatus: string
    vanityDomain: string
    randomDomain: string
    customerRoleArn: string
    createDateTime: number
    deleteDateTime: number
    tier: string
    storageLimit: number
    userAdmins: {string}
    groupAdmins: {string}
    roles: {string : {string}}
    userKMSKey: string
    userCount: number
    contentSize: number
    supportedEmailDomains: SupportedEmailDomainsStatus
end

local record ListChannelsInput
    spaceId: string
    nextToken: string
    maxResults: number
end

local record ListChannelsOutput
    channels: {ChannelData}
    nextToken: string
end

local record ListSpacesInput
    nextToken: string
    maxResults: number
end

local record ListSpacesOutput
    spaces: {SpaceData}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record RegisterAdminInput
    spaceId: string
    adminId: string
end

local record RegisterAdminOutput
end

local record SendInvitesInput
    spaceId: string
    accessorIds: {string}
    title: string
    body: string
end

local record SendInvitesOutput
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

local record UpdateChannelInput
    spaceId: string
    channelId: string
    channelName: string
    channelDescription: string
end

local record UpdateChannelOutput
end

local record UpdateSpaceInput
    spaceId: string
    description: string
    tier: string
    roleArn: string
    supportedEmailDomains: SupportedEmailDomainsParameters
end

local record UpdateSpaceOutput
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

local type TierLevel = "BASIC" | "STANDARD"

local type ChannelRole = "ASKER" | "EXPERT" | "MODERATOR" | "SUPPORTREQUESTOR"

local type Role = "EXPERT" | "MODERATOR" | "ADMINISTRATOR" | "SUPPORTREQUESTOR"

local type ChannelStatus = "CREATED" | "CREATING" | "CREATE_FAILED" | "DELETED" | "DELETING" | "DELETE_FAILED"

local type VanityDomainStatus = "PENDING" | "APPROVED" | "UNAPPROVED"

local type ConfigurationStatus = "CONFIGURED" | "UNCONFIGURED"

local record M
    BatchAddChannelRoleToAccessorsInput: BatchAddChannelRoleToAccessorsInput
    BatchAddChannelRoleToAccessorsOutput: BatchAddChannelRoleToAccessorsOutput
    BatchAddRoleInput: BatchAddRoleInput
    BatchAddRoleOutput: BatchAddRoleOutput
    BatchRemoveChannelRoleFromAccessorsInput: BatchRemoveChannelRoleFromAccessorsInput
    BatchRemoveChannelRoleFromAccessorsOutput: BatchRemoveChannelRoleFromAccessorsOutput
    BatchRemoveRoleInput: BatchRemoveRoleInput
    BatchRemoveRoleOutput: BatchRemoveRoleOutput
    CreateChannelInput: CreateChannelInput
    CreateChannelOutput: CreateChannelOutput
    CreateSpaceInput: CreateSpaceInput
    CreateSpaceOutput: CreateSpaceOutput
    DeleteSpaceInput: DeleteSpaceInput
    DeleteSpaceOutput: DeleteSpaceOutput
    DeregisterAdminInput: DeregisterAdminInput
    DeregisterAdminOutput: DeregisterAdminOutput
    GetChannelInput: GetChannelInput
    GetChannelOutput: GetChannelOutput
    GetSpaceInput: GetSpaceInput
    GetSpaceOutput: GetSpaceOutput
    ListChannelsInput: ListChannelsInput
    ListChannelsOutput: ListChannelsOutput
    ListSpacesInput: ListSpacesInput
    ListSpacesOutput: ListSpacesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    RegisterAdminInput: RegisterAdminInput
    RegisterAdminOutput: RegisterAdminOutput
    SendInvitesInput: SendInvitesInput
    SendInvitesOutput: SendInvitesOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateChannelInput: UpdateChannelInput
    UpdateChannelOutput: UpdateChannelOutput
    UpdateSpaceInput: UpdateSpaceInput
    UpdateSpaceOutput: UpdateSpaceOutput
end

return M
