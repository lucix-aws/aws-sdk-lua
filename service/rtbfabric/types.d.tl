local record AcceptLinkInput
    gatewayId: string
    linkId: string
    attributes: LinkAttributes
    logSettings: LinkLogSettings
    timeoutInMillis: number
end

local record AcceptLinkOutput
    gatewayId: string
    peerGatewayId: string
    status: string
    createdAt: number
    updatedAt: number
    direction: string
    flowModules: {ModuleConfiguration}
    pendingFlowModules: {ModuleConfiguration}
    attributes: LinkAttributes
    logSettings: LinkLogSettings
    connectivityType: string
    linkId: string
end

local record CreateInboundExternalLinkInput
    clientToken: string
    gatewayId: string
    attributes: LinkAttributes
    logSettings: LinkLogSettings
    tags: {string : string}
end

local record CreateInboundExternalLinkOutput
    gatewayId: string
    linkId: string
    status: string
    domainName: string
end

local record CreateLinkInput
    gatewayId: string
    peerGatewayId: string
    attributes: LinkAttributes
    httpResponderAllowed: boolean
    tags: {string : string}
    logSettings: LinkLogSettings
    timeoutInMillis: number
end

local record CreateLinkOutput
    gatewayId: string
    peerGatewayId: string
    status: string
    createdAt: number
    updatedAt: number
    direction: string
    flowModules: {ModuleConfiguration}
    pendingFlowModules: {ModuleConfiguration}
    attributes: LinkAttributes
    logSettings: LinkLogSettings
    connectivityType: string
    linkId: string
    customerProvidedId: string
end

local record CreateOutboundExternalLinkInput
    clientToken: string
    gatewayId: string
    attributes: LinkAttributes
    publicEndpoint: string
    logSettings: LinkLogSettings
    tags: {string : string}
end

local record CreateOutboundExternalLinkOutput
    gatewayId: string
    linkId: string
    status: string
end

local record CreateRequesterGatewayInput
    vpcId: string
    subnetIds: {string}
    securityGroupIds: {string}
    clientToken: string
    description: string
    tags: {string : string}
end

local record CreateRequesterGatewayOutput
    gatewayId: string
    domainName: string
    status: string
end

local record CreateResponderGatewayInput
    vpcId: string
    subnetIds: {string}
    securityGroupIds: {string}
    domainName: string
    port: number
    protocol: string
    listenerConfig: ListenerConfig
    trustStoreConfiguration: TrustStoreConfiguration
    managedEndpointConfiguration: ManagedEndpointConfiguration
    clientToken: string
    description: string
    tags: {string : string}
    gatewayType: string
end

local record CreateResponderGatewayOutput
    gatewayId: string
    status: string
    listenerConfig: ListenerConfig
    externalInboundEndpoint: string
end

local record DeleteInboundExternalLinkInput
    gatewayId: string
    linkId: string
end

local record DeleteInboundExternalLinkOutput
    linkId: string
    status: string
end

local record DeleteLinkInput
    gatewayId: string
    linkId: string
end

local record DeleteLinkOutput
    linkId: string
    status: string
end

local record DeleteOutboundExternalLinkInput
    gatewayId: string
    linkId: string
end

local record DeleteOutboundExternalLinkOutput
    linkId: string
    status: string
end

local record DeleteRequesterGatewayInput
    gatewayId: string
end

local record DeleteRequesterGatewayOutput
    gatewayId: string
    status: string
end

local record DeleteResponderGatewayInput
    gatewayId: string
end

local record DeleteResponderGatewayOutput
    gatewayId: string
    status: string
end

local record GetInboundExternalLinkInput
    gatewayId: string
    linkId: string
end

local record GetInboundExternalLinkOutput
    gatewayId: string
    linkId: string
    status: string
    domainName: string
    flowModules: {ModuleConfiguration}
    pendingFlowModules: {ModuleConfiguration}
    attributes: LinkAttributes
    createdAt: number
    updatedAt: number
    tags: {string : string}
    logSettings: LinkLogSettings
    connectivityType: string
end

local record GetLinkInput
    gatewayId: string
    linkId: string
end

local record GetLinkOutput
    gatewayId: string
    peerGatewayId: string
    status: string
    createdAt: number
    updatedAt: number
    direction: string
    flowModules: {ModuleConfiguration}
    pendingFlowModules: {ModuleConfiguration}
    attributes: LinkAttributes
    logSettings: LinkLogSettings
    connectivityType: string
    linkId: string
    tags: {string : string}
    httpResponderAllowed: boolean
    timeoutInMillis: number
end

local record GetOutboundExternalLinkInput
    gatewayId: string
    linkId: string
end

local record GetOutboundExternalLinkOutput
    gatewayId: string
    linkId: string
    status: string
    publicEndpoint: string
    flowModules: {ModuleConfiguration}
    pendingFlowModules: {ModuleConfiguration}
    attributes: LinkAttributes
    createdAt: number
    updatedAt: number
    tags: {string : string}
    logSettings: LinkLogSettings
    connectivityType: string
end

local record GetRequesterGatewayInput
    gatewayId: string
end

local record GetRequesterGatewayOutput
    status: string
    domainName: string
    description: string
    createdAt: number
    updatedAt: number
    vpcId: string
    subnetIds: {string}
    securityGroupIds: {string}
    gatewayId: string
    tags: {string : string}
    activeLinksCount: number
    totalLinksCount: number
end

local record GetResponderGatewayInput
    gatewayId: string
end

local record GetResponderGatewayOutput
    vpcId: string
    subnetIds: {string}
    securityGroupIds: {string}
    status: string
    description: string
    createdAt: number
    updatedAt: number
    domainName: string
    port: number
    protocol: string
    listenerConfig: ListenerConfig
    trustStoreConfiguration: TrustStoreConfiguration
    managedEndpointConfiguration: ManagedEndpointConfiguration
    gatewayId: string
    tags: {string : string}
    activeLinksCount: number
    totalLinksCount: number
    inboundLinksCount: number
    gatewayType: string
    externalInboundEndpoint: string
end

local record ListLinksInput
    gatewayId: string
    nextToken: string
    maxResults: number
end

local record ListLinksOutput
    links: {ListLinksResponseStructure}
    nextToken: string
end

local record ListRequesterGatewaysInput
    maxResults: number
    nextToken: string
end

local record ListRequesterGatewaysOutput
    gatewayIds: {string}
    nextToken: string
end

local record ListResponderGatewaysInput
    maxResults: number
    nextToken: string
end

local record ListResponderGatewaysOutput
    gatewayIds: {string}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record RejectLinkInput
    gatewayId: string
    linkId: string
end

local record RejectLinkOutput
    gatewayId: string
    peerGatewayId: string
    status: string
    createdAt: number
    updatedAt: number
    direction: string
    flowModules: {ModuleConfiguration}
    pendingFlowModules: {ModuleConfiguration}
    attributes: LinkAttributes
    logSettings: LinkLogSettings
    connectivityType: string
    linkId: string
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

local record UpdateLinkInput
    gatewayId: string
    linkId: string
    logSettings: LinkLogSettings
    timeoutInMillis: number
end

local record UpdateLinkOutput
    linkId: string
    status: string
end

local record UpdateLinkModuleFlowInput
    clientToken: string
    gatewayId: string
    linkId: string
    modules: {ModuleConfiguration}
end

local record UpdateLinkModuleFlowOutput
    gatewayId: string
    linkId: string
    status: string
end

local record UpdateRequesterGatewayInput
    clientToken: string
    gatewayId: string
    description: string
end

local record UpdateRequesterGatewayOutput
    gatewayId: string
    status: string
end

local record UpdateResponderGatewayInput
    domainName: string
    port: number
    protocol: string
    listenerConfig: ListenerConfig
    trustStoreConfiguration: TrustStoreConfiguration
    managedEndpointConfiguration: ManagedEndpointConfiguration
    clientToken: string
    gatewayId: string
    description: string
end

local record UpdateResponderGatewayOutput
    gatewayId: string
    status: string
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
end

local record ThrottlingException
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

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
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

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
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

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
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

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
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

local record InternalServerException
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
end

local record ThrottlingException
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

local type GatewayType = "EXTERNAL" | "INTERNAL"

local type RequesterGatewayStatus = "PENDING_CREATION" | "ACTIVE" | "PENDING_DELETION" | "DELETED" | "ERROR" | "PENDING_UPDATE" | "ISOLATED" | "PENDING_ISOLATION" | "PENDING_RESTORATION"

local type LinkDirection = "RESPONSE" | "REQUEST"

local type LinkStatus = "PENDING_CREATION" | "PENDING_REQUEST" | "REQUESTED" | "ACCEPTED" | "ACTIVE" | "REJECTED" | "FAILED" | "PENDING_DELETION" | "DELETED" | "PENDING_UPDATE" | "PENDING_ISOLATION" | "ISOLATED" | "PENDING_RESTORATION"

local type ResponderGatewayStatus = "PENDING_CREATION" | "ACTIVE" | "PENDING_DELETION" | "DELETED" | "ERROR" | "PENDING_UPDATE" | "ISOLATED" | "PENDING_ISOLATION" | "PENDING_RESTORATION"

local type ConnectivityType = "DEFAULT" | "PUBLIC_INGRESS" | "PUBLIC_EGRESS" | "EXTERNAL_INBOUND"

local type Protocol = "HTTP" | "HTTPS"

local record M
    AcceptLinkInput: AcceptLinkInput
    AcceptLinkOutput: AcceptLinkOutput
    CreateInboundExternalLinkInput: CreateInboundExternalLinkInput
    CreateInboundExternalLinkOutput: CreateInboundExternalLinkOutput
    CreateLinkInput: CreateLinkInput
    CreateLinkOutput: CreateLinkOutput
    CreateOutboundExternalLinkInput: CreateOutboundExternalLinkInput
    CreateOutboundExternalLinkOutput: CreateOutboundExternalLinkOutput
    CreateRequesterGatewayInput: CreateRequesterGatewayInput
    CreateRequesterGatewayOutput: CreateRequesterGatewayOutput
    CreateResponderGatewayInput: CreateResponderGatewayInput
    CreateResponderGatewayOutput: CreateResponderGatewayOutput
    DeleteInboundExternalLinkInput: DeleteInboundExternalLinkInput
    DeleteInboundExternalLinkOutput: DeleteInboundExternalLinkOutput
    DeleteLinkInput: DeleteLinkInput
    DeleteLinkOutput: DeleteLinkOutput
    DeleteOutboundExternalLinkInput: DeleteOutboundExternalLinkInput
    DeleteOutboundExternalLinkOutput: DeleteOutboundExternalLinkOutput
    DeleteRequesterGatewayInput: DeleteRequesterGatewayInput
    DeleteRequesterGatewayOutput: DeleteRequesterGatewayOutput
    DeleteResponderGatewayInput: DeleteResponderGatewayInput
    DeleteResponderGatewayOutput: DeleteResponderGatewayOutput
    GetInboundExternalLinkInput: GetInboundExternalLinkInput
    GetInboundExternalLinkOutput: GetInboundExternalLinkOutput
    GetLinkInput: GetLinkInput
    GetLinkOutput: GetLinkOutput
    GetOutboundExternalLinkInput: GetOutboundExternalLinkInput
    GetOutboundExternalLinkOutput: GetOutboundExternalLinkOutput
    GetRequesterGatewayInput: GetRequesterGatewayInput
    GetRequesterGatewayOutput: GetRequesterGatewayOutput
    GetResponderGatewayInput: GetResponderGatewayInput
    GetResponderGatewayOutput: GetResponderGatewayOutput
    ListLinksInput: ListLinksInput
    ListLinksOutput: ListLinksOutput
    ListRequesterGatewaysInput: ListRequesterGatewaysInput
    ListRequesterGatewaysOutput: ListRequesterGatewaysOutput
    ListResponderGatewaysInput: ListResponderGatewaysInput
    ListResponderGatewaysOutput: ListResponderGatewaysOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    RejectLinkInput: RejectLinkInput
    RejectLinkOutput: RejectLinkOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateLinkInput: UpdateLinkInput
    UpdateLinkOutput: UpdateLinkOutput
    UpdateLinkModuleFlowInput: UpdateLinkModuleFlowInput
    UpdateLinkModuleFlowOutput: UpdateLinkModuleFlowOutput
    UpdateRequesterGatewayInput: UpdateRequesterGatewayInput
    UpdateRequesterGatewayOutput: UpdateRequesterGatewayOutput
    UpdateResponderGatewayInput: UpdateResponderGatewayInput
    UpdateResponderGatewayOutput: UpdateResponderGatewayOutput
end

return M
