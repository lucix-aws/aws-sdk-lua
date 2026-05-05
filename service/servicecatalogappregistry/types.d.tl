local record AssociateAttributeGroupInput
    application: string
    attributeGroup: string
end

local record AssociateAttributeGroupOutput
    applicationArn: string
    attributeGroupArn: string
end

local record AssociateResourceInput
    application: string
    resourceType: string
    resource: string
    options: {string}
end

local record AssociateResourceOutput
    applicationArn: string
    resourceArn: string
    options: {string}
end

local record CreateApplicationInput
    name: string
    description: string
    tags: {string : string}
    clientToken: string
end

local record CreateApplicationOutput
    application: Application
end

local record CreateAttributeGroupInput
    name: string
    description: string
    attributes: string
    tags: {string : string}
    clientToken: string
end

local record CreateAttributeGroupOutput
    attributeGroup: AttributeGroup
end

local record DeleteApplicationInput
    application: string
end

local record DeleteApplicationOutput
    application: ApplicationSummary
end

local record DeleteAttributeGroupInput
    attributeGroup: string
end

local record DeleteAttributeGroupOutput
    attributeGroup: AttributeGroupSummary
end

local record DisassociateAttributeGroupInput
    application: string
    attributeGroup: string
end

local record DisassociateAttributeGroupOutput
    applicationArn: string
    attributeGroupArn: string
end

local record DisassociateResourceInput
    application: string
    resourceType: string
    resource: string
end

local record DisassociateResourceOutput
    applicationArn: string
    resourceArn: string
end

local record GetApplicationInput
    application: string
end

local record GetApplicationOutput
    id: string
    arn: string
    name: string
    description: string
    creationTime: number
    lastUpdateTime: number
    associatedResourceCount: number
    tags: {string : string}
    integrations: Integrations
    applicationTag: {string : string}
end

local record GetAssociatedResourceInput
    application: string
    resourceType: string
    resource: string
    nextToken: string
    resourceTagStatus: {string}
    maxResults: number
end

local record GetAssociatedResourceOutput
    resource: Resource
    options: {string}
    applicationTagResult: ApplicationTagResult
end

local record GetAttributeGroupInput
    attributeGroup: string
end

local record GetAttributeGroupOutput
    id: string
    arn: string
    name: string
    description: string
    attributes: string
    creationTime: number
    lastUpdateTime: number
    tags: {string : string}
    createdBy: string
end

local record GetConfigurationInput
end

local record GetConfigurationOutput
    configuration: AppRegistryConfiguration
end

local record ListApplicationsInput
    nextToken: string
    maxResults: number
end

local record ListApplicationsOutput
    applications: {ApplicationSummary}
    nextToken: string
end

local record ListAssociatedAttributeGroupsInput
    application: string
    nextToken: string
    maxResults: number
end

local record ListAssociatedAttributeGroupsOutput
    attributeGroups: {string}
    nextToken: string
end

local record ListAssociatedResourcesInput
    application: string
    nextToken: string
    maxResults: number
end

local record ListAssociatedResourcesOutput
    resources: {ResourceInfo}
    nextToken: string
end

local record ListAttributeGroupsInput
    nextToken: string
    maxResults: number
end

local record ListAttributeGroupsOutput
    attributeGroups: {AttributeGroupSummary}
    nextToken: string
end

local record ListAttributeGroupsForApplicationInput
    application: string
    nextToken: string
    maxResults: number
end

local record ListAttributeGroupsForApplicationOutput
    attributeGroupsDetails: {AttributeGroupDetails}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record PutConfigurationInput
    configuration: AppRegistryConfiguration
end

local record PutConfigurationOutput
end

local record SyncResourceInput
    resourceType: string
    resource: string
end

local record SyncResourceOutput
    applicationArn: string
    resourceArn: string
    actionTaken: string
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

local record UpdateApplicationInput
    application: string
    name: string
    description: string
end

local record UpdateApplicationOutput
    application: Application
end

local record UpdateAttributeGroupInput
    attributeGroup: string
    name: string
    description: string
    attributes: string
end

local record UpdateAttributeGroupOutput
    attributeGroup: AttributeGroup
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
end

local record ValidationException
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
end

local record ThrottlingException
    message: string
    serviceCode: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
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
    serviceCode: string
end

local record ValidationException
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

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
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

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
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
    serviceCode: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
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
    serviceCode: string
end

local record ValidationException
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

local record ValidationException
    message: string
end

local type SyncAction = "START_SYNC" | "NO_ACTION"

local type ResourceType = "CFN_STACK" | "RESOURCE_TAG_VALUE"

local record M
    AssociateAttributeGroupInput: AssociateAttributeGroupInput
    AssociateAttributeGroupOutput: AssociateAttributeGroupOutput
    AssociateResourceInput: AssociateResourceInput
    AssociateResourceOutput: AssociateResourceOutput
    CreateApplicationInput: CreateApplicationInput
    CreateApplicationOutput: CreateApplicationOutput
    CreateAttributeGroupInput: CreateAttributeGroupInput
    CreateAttributeGroupOutput: CreateAttributeGroupOutput
    DeleteApplicationInput: DeleteApplicationInput
    DeleteApplicationOutput: DeleteApplicationOutput
    DeleteAttributeGroupInput: DeleteAttributeGroupInput
    DeleteAttributeGroupOutput: DeleteAttributeGroupOutput
    DisassociateAttributeGroupInput: DisassociateAttributeGroupInput
    DisassociateAttributeGroupOutput: DisassociateAttributeGroupOutput
    DisassociateResourceInput: DisassociateResourceInput
    DisassociateResourceOutput: DisassociateResourceOutput
    GetApplicationInput: GetApplicationInput
    GetApplicationOutput: GetApplicationOutput
    GetAssociatedResourceInput: GetAssociatedResourceInput
    GetAssociatedResourceOutput: GetAssociatedResourceOutput
    GetAttributeGroupInput: GetAttributeGroupInput
    GetAttributeGroupOutput: GetAttributeGroupOutput
    GetConfigurationInput: GetConfigurationInput
    GetConfigurationOutput: GetConfigurationOutput
    ListApplicationsInput: ListApplicationsInput
    ListApplicationsOutput: ListApplicationsOutput
    ListAssociatedAttributeGroupsInput: ListAssociatedAttributeGroupsInput
    ListAssociatedAttributeGroupsOutput: ListAssociatedAttributeGroupsOutput
    ListAssociatedResourcesInput: ListAssociatedResourcesInput
    ListAssociatedResourcesOutput: ListAssociatedResourcesOutput
    ListAttributeGroupsInput: ListAttributeGroupsInput
    ListAttributeGroupsOutput: ListAttributeGroupsOutput
    ListAttributeGroupsForApplicationInput: ListAttributeGroupsForApplicationInput
    ListAttributeGroupsForApplicationOutput: ListAttributeGroupsForApplicationOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutConfigurationInput: PutConfigurationInput
    PutConfigurationOutput: PutConfigurationOutput
    SyncResourceInput: SyncResourceInput
    SyncResourceOutput: SyncResourceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateApplicationInput: UpdateApplicationInput
    UpdateApplicationOutput: UpdateApplicationOutput
    UpdateAttributeGroupInput: UpdateAttributeGroupInput
    UpdateAttributeGroupOutput: UpdateAttributeGroupOutput
end

return M
