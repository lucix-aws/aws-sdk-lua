local record CreateInvestigationGroupInput
    name: string
    roleArn: string
    encryptionConfiguration: EncryptionConfiguration
    retentionInDays: number
    tags: {string : string}
    tagKeyBoundaries: {string}
    chatbotNotificationChannel: {string : {string}}
    isCloudTrailEventHistoryEnabled: boolean
    crossAccountConfigurations: {CrossAccountConfiguration}
end

local record CreateInvestigationGroupOutput
    arn: string
end

local record DeleteInvestigationGroupInput
    identifier: string
end

local record DeleteInvestigationGroupOutput
end

local record DeleteInvestigationGroupPolicyInput
    identifier: string
end

local record DeleteInvestigationGroupPolicyOutput
end

local record GetInvestigationGroupInput
    identifier: string
end

local record GetInvestigationGroupOutput
    createdBy: string
    createdAt: number
    lastModifiedBy: string
    lastModifiedAt: number
    name: string
    arn: string
    roleArn: string
    encryptionConfiguration: EncryptionConfiguration
    retentionInDays: number
    chatbotNotificationChannel: {string : {string}}
    tagKeyBoundaries: {string}
    isCloudTrailEventHistoryEnabled: boolean
    crossAccountConfigurations: {CrossAccountConfiguration}
end

local record GetInvestigationGroupPolicyInput
    identifier: string
end

local record GetInvestigationGroupPolicyOutput
    investigationGroupArn: string
    policy: string
end

local record ListInvestigationGroupsInput
    nextToken: string
    maxResults: number
end

local record ListInvestigationGroupsOutput
    nextToken: string
    investigationGroups: {ListInvestigationGroupsModel}
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record PutInvestigationGroupPolicyInput
    identifier: string
    policy: string
end

local record PutInvestigationGroupPolicyOutput
    investigationGroupArn: string
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

local record UpdateInvestigationGroupInput
    identifier: string
    roleArn: string
    encryptionConfiguration: EncryptionConfiguration
    tagKeyBoundaries: {string}
    chatbotNotificationChannel: {string : {string}}
    isCloudTrailEventHistoryEnabled: boolean
    crossAccountConfigurations: {CrossAccountConfiguration}
end

local record UpdateInvestigationGroupOutput
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
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
end

local record ValidationException
    message: string
end

local record ForbiddenException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record ForbiddenException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record ForbiddenException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record ForbiddenException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record ForbiddenException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record ForbiddenException
    message: string
end

local record M
    CreateInvestigationGroupInput: CreateInvestigationGroupInput
    CreateInvestigationGroupOutput: CreateInvestigationGroupOutput
    DeleteInvestigationGroupInput: DeleteInvestigationGroupInput
    DeleteInvestigationGroupOutput: DeleteInvestigationGroupOutput
    DeleteInvestigationGroupPolicyInput: DeleteInvestigationGroupPolicyInput
    DeleteInvestigationGroupPolicyOutput: DeleteInvestigationGroupPolicyOutput
    GetInvestigationGroupInput: GetInvestigationGroupInput
    GetInvestigationGroupOutput: GetInvestigationGroupOutput
    GetInvestigationGroupPolicyInput: GetInvestigationGroupPolicyInput
    GetInvestigationGroupPolicyOutput: GetInvestigationGroupPolicyOutput
    ListInvestigationGroupsInput: ListInvestigationGroupsInput
    ListInvestigationGroupsOutput: ListInvestigationGroupsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutInvestigationGroupPolicyInput: PutInvestigationGroupPolicyInput
    PutInvestigationGroupPolicyOutput: PutInvestigationGroupPolicyOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateInvestigationGroupInput: UpdateInvestigationGroupInput
    UpdateInvestigationGroupOutput: UpdateInvestigationGroupOutput
end

return M
