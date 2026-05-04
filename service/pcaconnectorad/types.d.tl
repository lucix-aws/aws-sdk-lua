local record CreateConnectorInput
    DirectoryId: string
    CertificateAuthorityArn: string
    VpcInformation: VpcInformation
    ClientToken: string
    Tags: {string : string}
end

local record CreateConnectorOutput
    ConnectorArn: string
end

local record CreateDirectoryRegistrationInput
    DirectoryId: string
    ClientToken: string
    Tags: {string : string}
end

local record CreateDirectoryRegistrationOutput
    DirectoryRegistrationArn: string
end

local record CreateServicePrincipalNameInput
    DirectoryRegistrationArn: string
    ConnectorArn: string
    ClientToken: string
end

local record CreateServicePrincipalNameOutput
end

local record CreateTemplateInput
    ConnectorArn: string
    Name: string
    Definition: TemplateDefinition
    ClientToken: string
    Tags: {string : string}
end

local record CreateTemplateOutput
    TemplateArn: string
end

local record CreateTemplateGroupAccessControlEntryInput
    TemplateArn: string
    GroupSecurityIdentifier: string
    GroupDisplayName: string
    AccessRights: AccessRights
    ClientToken: string
end

local record CreateTemplateGroupAccessControlEntryOutput
end

local record DeleteConnectorInput
    ConnectorArn: string
end

local record DeleteConnectorOutput
end

local record DeleteDirectoryRegistrationInput
    DirectoryRegistrationArn: string
end

local record DeleteDirectoryRegistrationOutput
end

local record DeleteServicePrincipalNameInput
    DirectoryRegistrationArn: string
    ConnectorArn: string
end

local record DeleteServicePrincipalNameOutput
end

local record DeleteTemplateInput
    TemplateArn: string
end

local record DeleteTemplateOutput
end

local record DeleteTemplateGroupAccessControlEntryInput
    TemplateArn: string
    GroupSecurityIdentifier: string
end

local record DeleteTemplateGroupAccessControlEntryOutput
end

local record GetConnectorInput
    ConnectorArn: string
end

local record GetConnectorOutput
    Connector: Connector
end

local record GetDirectoryRegistrationInput
    DirectoryRegistrationArn: string
end

local record GetDirectoryRegistrationOutput
    DirectoryRegistration: DirectoryRegistration
end

local record GetServicePrincipalNameInput
    DirectoryRegistrationArn: string
    ConnectorArn: string
end

local record GetServicePrincipalNameOutput
    ServicePrincipalName: ServicePrincipalName
end

local record GetTemplateInput
    TemplateArn: string
end

local record GetTemplateOutput
    Template: Template
end

local record GetTemplateGroupAccessControlEntryInput
    TemplateArn: string
    GroupSecurityIdentifier: string
end

local record GetTemplateGroupAccessControlEntryOutput
    AccessControlEntry: AccessControlEntry
end

local record ListConnectorsInput
    MaxResults: number
    NextToken: string
end

local record ListConnectorsOutput
    Connectors: {ConnectorSummary}
    NextToken: string
end

local record ListDirectoryRegistrationsInput
    MaxResults: number
    NextToken: string
end

local record ListDirectoryRegistrationsOutput
    DirectoryRegistrations: {DirectoryRegistrationSummary}
    NextToken: string
end

local record ListServicePrincipalNamesInput
    MaxResults: number
    NextToken: string
    DirectoryRegistrationArn: string
end

local record ListServicePrincipalNamesOutput
    ServicePrincipalNames: {ServicePrincipalNameSummary}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record ListTemplateGroupAccessControlEntriesInput
    MaxResults: number
    NextToken: string
    TemplateArn: string
end

local record ListTemplateGroupAccessControlEntriesOutput
    AccessControlEntries: {AccessControlEntrySummary}
    NextToken: string
end

local record ListTemplatesInput
    MaxResults: number
    NextToken: string
    ConnectorArn: string
end

local record ListTemplatesOutput
    Templates: {TemplateSummary}
    NextToken: string
end

local record TagResourceInput
    ResourceArn: string
    Tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateTemplateInput
    TemplateArn: string
    Definition: TemplateDefinition
    ReenrollAllCertificateHolders: boolean
end

local record UpdateTemplateOutput
end

local record UpdateTemplateGroupAccessControlEntryInput
    TemplateArn: string
    GroupSecurityIdentifier: string
    GroupDisplayName: string
    AccessRights: AccessRights
end

local record UpdateTemplateGroupAccessControlEntryOutput
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
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
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
end

local record ValidationException
    Message: string
    Reason: string
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
end

local record ValidationException
    Message: string
    Reason: string
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
end

local record ValidationException
    Message: string
    Reason: string
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
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
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
end

local record ValidationException
    Message: string
    Reason: string
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
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
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
end

local record ValidationException
    Message: string
    Reason: string
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
end

local record ValidationException
    Message: string
    Reason: string
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
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
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
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
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
end

local record ValidationException
    Message: string
    Reason: string
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
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
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
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
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
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
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
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
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
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
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
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
    ServiceCode: string
    QuotaCode: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
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
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
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
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
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
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
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
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
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
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
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
end

local record ValidationException
    Message: string
    Reason: string
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
end

local record ValidationException
    Message: string
    Reason: string
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
end

local record ValidationException
    Message: string
    Reason: string
end

local record M
    CreateConnectorInput: CreateConnectorInput
    CreateConnectorOutput: CreateConnectorOutput
    CreateDirectoryRegistrationInput: CreateDirectoryRegistrationInput
    CreateDirectoryRegistrationOutput: CreateDirectoryRegistrationOutput
    CreateServicePrincipalNameInput: CreateServicePrincipalNameInput
    CreateServicePrincipalNameOutput: CreateServicePrincipalNameOutput
    CreateTemplateInput: CreateTemplateInput
    CreateTemplateOutput: CreateTemplateOutput
    CreateTemplateGroupAccessControlEntryInput: CreateTemplateGroupAccessControlEntryInput
    CreateTemplateGroupAccessControlEntryOutput: CreateTemplateGroupAccessControlEntryOutput
    DeleteConnectorInput: DeleteConnectorInput
    DeleteConnectorOutput: DeleteConnectorOutput
    DeleteDirectoryRegistrationInput: DeleteDirectoryRegistrationInput
    DeleteDirectoryRegistrationOutput: DeleteDirectoryRegistrationOutput
    DeleteServicePrincipalNameInput: DeleteServicePrincipalNameInput
    DeleteServicePrincipalNameOutput: DeleteServicePrincipalNameOutput
    DeleteTemplateInput: DeleteTemplateInput
    DeleteTemplateOutput: DeleteTemplateOutput
    DeleteTemplateGroupAccessControlEntryInput: DeleteTemplateGroupAccessControlEntryInput
    DeleteTemplateGroupAccessControlEntryOutput: DeleteTemplateGroupAccessControlEntryOutput
    GetConnectorInput: GetConnectorInput
    GetConnectorOutput: GetConnectorOutput
    GetDirectoryRegistrationInput: GetDirectoryRegistrationInput
    GetDirectoryRegistrationOutput: GetDirectoryRegistrationOutput
    GetServicePrincipalNameInput: GetServicePrincipalNameInput
    GetServicePrincipalNameOutput: GetServicePrincipalNameOutput
    GetTemplateInput: GetTemplateInput
    GetTemplateOutput: GetTemplateOutput
    GetTemplateGroupAccessControlEntryInput: GetTemplateGroupAccessControlEntryInput
    GetTemplateGroupAccessControlEntryOutput: GetTemplateGroupAccessControlEntryOutput
    ListConnectorsInput: ListConnectorsInput
    ListConnectorsOutput: ListConnectorsOutput
    ListDirectoryRegistrationsInput: ListDirectoryRegistrationsInput
    ListDirectoryRegistrationsOutput: ListDirectoryRegistrationsOutput
    ListServicePrincipalNamesInput: ListServicePrincipalNamesInput
    ListServicePrincipalNamesOutput: ListServicePrincipalNamesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTemplateGroupAccessControlEntriesInput: ListTemplateGroupAccessControlEntriesInput
    ListTemplateGroupAccessControlEntriesOutput: ListTemplateGroupAccessControlEntriesOutput
    ListTemplatesInput: ListTemplatesInput
    ListTemplatesOutput: ListTemplatesOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateTemplateInput: UpdateTemplateInput
    UpdateTemplateOutput: UpdateTemplateOutput
    UpdateTemplateGroupAccessControlEntryInput: UpdateTemplateGroupAccessControlEntryInput
    UpdateTemplateGroupAccessControlEntryOutput: UpdateTemplateGroupAccessControlEntryOutput
end

return M
