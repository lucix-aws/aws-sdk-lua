local record BatchGetPolicyInput
    requests: {BatchGetPolicyInputItem}
end

local record BatchGetPolicyOutput
    results: {BatchGetPolicyOutputItem}
    errors: {BatchGetPolicyErrorItem}
end

local record BatchIsAuthorizedInput
    policyStoreId: string
    entities: EntitiesDefinition
    requests: {BatchIsAuthorizedInputItem}
end

local record BatchIsAuthorizedOutput
    results: {BatchIsAuthorizedOutputItem}
end

local record BatchIsAuthorizedWithTokenInput
    policyStoreId: string
    identityToken: string
    accessToken: string
    entities: EntitiesDefinition
    requests: {BatchIsAuthorizedWithTokenInputItem}
end

local record BatchIsAuthorizedWithTokenOutput
    principal: EntityIdentifier
    results: {BatchIsAuthorizedWithTokenOutputItem}
end

local record CreateIdentitySourceInput
    clientToken: string
    policyStoreId: string
    configuration: Configuration
    principalEntityType: string
end

local record CreateIdentitySourceOutput
    createdDate: number
    identitySourceId: string
    lastUpdatedDate: number
    policyStoreId: string
end

local record CreatePolicyInput
    clientToken: string
    policyStoreId: string
    definition: PolicyDefinition
    name: string
end

local record CreatePolicyOutput
    policyStoreId: string
    policyId: string
    policyType: string
    principal: EntityIdentifier
    resource: EntityIdentifier
    actions: {ActionIdentifier}
    createdDate: number
    lastUpdatedDate: number
    effect: string
end

local record CreatePolicyStoreInput
    clientToken: string
    validationSettings: ValidationSettings
    description: string
    deletionProtection: string
    encryptionSettings: EncryptionSettings
    tags: {string : string}
end

local record CreatePolicyStoreOutput
    policyStoreId: string
    arn: string
    createdDate: number
    lastUpdatedDate: number
end

local record CreatePolicyStoreAliasInput
    aliasName: string
    policyStoreId: string
end

local record CreatePolicyStoreAliasOutput
    aliasName: string
    policyStoreId: string
    aliasArn: string
    createdAt: number
end

local record CreatePolicyTemplateInput
    clientToken: string
    policyStoreId: string
    description: string
    statement: string
    name: string
end

local record CreatePolicyTemplateOutput
    policyStoreId: string
    policyTemplateId: string
    createdDate: number
    lastUpdatedDate: number
end

local record DeleteIdentitySourceInput
    policyStoreId: string
    identitySourceId: string
end

local record DeleteIdentitySourceOutput
end

local record DeletePolicyInput
    policyStoreId: string
    policyId: string
end

local record DeletePolicyOutput
end

local record DeletePolicyStoreInput
    policyStoreId: string
end

local record DeletePolicyStoreOutput
end

local record DeletePolicyStoreAliasInput
    aliasName: string
end

local record DeletePolicyStoreAliasOutput
end

local record DeletePolicyTemplateInput
    policyStoreId: string
    policyTemplateId: string
end

local record DeletePolicyTemplateOutput
end

local record GetIdentitySourceInput
    policyStoreId: string
    identitySourceId: string
end

local record GetIdentitySourceOutput
    createdDate: number
    details: IdentitySourceDetails
    identitySourceId: string
    lastUpdatedDate: number
    policyStoreId: string
    principalEntityType: string
    configuration: ConfigurationDetail
end

local record GetPolicyInput
    policyStoreId: string
    policyId: string
end

local record GetPolicyOutput
    policyStoreId: string
    policyId: string
    policyType: string
    principal: EntityIdentifier
    resource: EntityIdentifier
    actions: {ActionIdentifier}
    definition: PolicyDefinitionDetail
    createdDate: number
    lastUpdatedDate: number
    effect: string
    name: string
end

local record GetPolicyStoreInput
    policyStoreId: string
    tags: boolean
end

local record GetPolicyStoreOutput
    policyStoreId: string
    arn: string
    validationSettings: ValidationSettings
    createdDate: number
    lastUpdatedDate: number
    description: string
    deletionProtection: string
    encryptionState: EncryptionState
    cedarVersion: string
    tags: {string : string}
end

local record GetPolicyStoreAliasInput
    aliasName: string
end

local record GetPolicyStoreAliasOutput
    aliasName: string
    policyStoreId: string
    aliasArn: string
    createdAt: number
    state: string
end

local record GetPolicyTemplateInput
    policyStoreId: string
    policyTemplateId: string
end

local record GetPolicyTemplateOutput
    policyStoreId: string
    policyTemplateId: string
    description: string
    statement: string
    createdDate: number
    lastUpdatedDate: number
    name: string
end

local record GetSchemaInput
    policyStoreId: string
end

local record GetSchemaOutput
    policyStoreId: string
    schema: string
    createdDate: number
    lastUpdatedDate: number
    namespaces: {string}
end

local record IsAuthorizedInput
    policyStoreId: string
    principal: EntityIdentifier
    action: ActionIdentifier
    resource: EntityIdentifier
    context: ContextDefinition
    entities: EntitiesDefinition
end

local record IsAuthorizedOutput
    decision: string
    determiningPolicies: {DeterminingPolicyItem}
    errors: {EvaluationErrorItem}
end

local record IsAuthorizedWithTokenInput
    policyStoreId: string
    identityToken: string
    accessToken: string
    action: ActionIdentifier
    resource: EntityIdentifier
    context: ContextDefinition
    entities: EntitiesDefinition
end

local record IsAuthorizedWithTokenOutput
    decision: string
    determiningPolicies: {DeterminingPolicyItem}
    errors: {EvaluationErrorItem}
    principal: EntityIdentifier
end

local record ListIdentitySourcesInput
    policyStoreId: string
    nextToken: string
    maxResults: number
    filters: {IdentitySourceFilter}
end

local record ListIdentitySourcesOutput
    nextToken: string
    identitySources: {IdentitySourceItem}
end

local record ListPoliciesInput
    policyStoreId: string
    nextToken: string
    maxResults: number
    filter: PolicyFilter
end

local record ListPoliciesOutput
    nextToken: string
    policies: {PolicyItem}
end

local record ListPolicyStoreAliasesInput
    nextToken: string
    maxResults: number
    filter: PolicyStoreAliasFilter
end

local record ListPolicyStoreAliasesOutput
    nextToken: string
    policyStoreAliases: {PolicyStoreAliasItem}
end

local record ListPolicyStoresInput
    nextToken: string
    maxResults: number
end

local record ListPolicyStoresOutput
    nextToken: string
    policyStores: {PolicyStoreItem}
end

local record ListPolicyTemplatesInput
    policyStoreId: string
    nextToken: string
    maxResults: number
end

local record ListPolicyTemplatesOutput
    nextToken: string
    policyTemplates: {PolicyTemplateItem}
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record PutSchemaInput
    policyStoreId: string
    definition: SchemaDefinition
end

local record PutSchemaOutput
    policyStoreId: string
    namespaces: {string}
    createdDate: number
    lastUpdatedDate: number
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

local record UpdateIdentitySourceInput
    policyStoreId: string
    identitySourceId: string
    updateConfiguration: UpdateConfiguration
    principalEntityType: string
end

local record UpdateIdentitySourceOutput
    createdDate: number
    identitySourceId: string
    lastUpdatedDate: number
    policyStoreId: string
end

local record UpdatePolicyInput
    policyStoreId: string
    policyId: string
    definition: UpdatePolicyDefinition
    name: string
end

local record UpdatePolicyOutput
    policyStoreId: string
    policyId: string
    policyType: string
    principal: EntityIdentifier
    resource: EntityIdentifier
    actions: {ActionIdentifier}
    createdDate: number
    lastUpdatedDate: number
    effect: string
end

local record UpdatePolicyStoreInput
    policyStoreId: string
    validationSettings: ValidationSettings
    deletionProtection: string
    description: string
end

local record UpdatePolicyStoreOutput
    policyStoreId: string
    arn: string
    createdDate: number
    lastUpdatedDate: number
end

local record UpdatePolicyTemplateInput
    policyStoreId: string
    policyTemplateId: string
    description: string
    statement: string
    name: string
end

local record UpdatePolicyTemplateOutput
    policyStoreId: string
    policyTemplateId: string
    createdDate: number
    lastUpdatedDate: number
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
    resources: {ResourceConflict}
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

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
    resources: {ResourceConflict}
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

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
    resources: {ResourceConflict}
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
    resources: {ResourceConflict}
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

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
    resources: {ResourceConflict}
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

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
    resources: {ResourceConflict}
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
    resources: {ResourceConflict}
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record InvalidStateException
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
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record InvalidStateException
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
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
    resources: {ResourceConflict}
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
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
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
    resources: {ResourceConflict}
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

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
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
end

local record TooManyTagsException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
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
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
    resources: {ResourceConflict}
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
    resources: {ResourceConflict}
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

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
    resources: {ResourceConflict}
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
    resources: {ResourceConflict}
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local type AliasState = "Active" | "PendingDeletion"

local type PolicyType = "STATIC" | "TEMPLATE_LINKED"

local type DeletionProtection = "ENABLED" | "DISABLED"

local type PolicyEffect = "Permit" | "Forbid"

local type Decision = "ALLOW" | "DENY"

local type CedarVersion = "CEDAR_2" | "CEDAR_4"

local record M
    BatchGetPolicyInput: BatchGetPolicyInput
    BatchGetPolicyOutput: BatchGetPolicyOutput
    BatchIsAuthorizedInput: BatchIsAuthorizedInput
    BatchIsAuthorizedOutput: BatchIsAuthorizedOutput
    BatchIsAuthorizedWithTokenInput: BatchIsAuthorizedWithTokenInput
    BatchIsAuthorizedWithTokenOutput: BatchIsAuthorizedWithTokenOutput
    CreateIdentitySourceInput: CreateIdentitySourceInput
    CreateIdentitySourceOutput: CreateIdentitySourceOutput
    CreatePolicyInput: CreatePolicyInput
    CreatePolicyOutput: CreatePolicyOutput
    CreatePolicyStoreInput: CreatePolicyStoreInput
    CreatePolicyStoreOutput: CreatePolicyStoreOutput
    CreatePolicyStoreAliasInput: CreatePolicyStoreAliasInput
    CreatePolicyStoreAliasOutput: CreatePolicyStoreAliasOutput
    CreatePolicyTemplateInput: CreatePolicyTemplateInput
    CreatePolicyTemplateOutput: CreatePolicyTemplateOutput
    DeleteIdentitySourceInput: DeleteIdentitySourceInput
    DeleteIdentitySourceOutput: DeleteIdentitySourceOutput
    DeletePolicyInput: DeletePolicyInput
    DeletePolicyOutput: DeletePolicyOutput
    DeletePolicyStoreInput: DeletePolicyStoreInput
    DeletePolicyStoreOutput: DeletePolicyStoreOutput
    DeletePolicyStoreAliasInput: DeletePolicyStoreAliasInput
    DeletePolicyStoreAliasOutput: DeletePolicyStoreAliasOutput
    DeletePolicyTemplateInput: DeletePolicyTemplateInput
    DeletePolicyTemplateOutput: DeletePolicyTemplateOutput
    GetIdentitySourceInput: GetIdentitySourceInput
    GetIdentitySourceOutput: GetIdentitySourceOutput
    GetPolicyInput: GetPolicyInput
    GetPolicyOutput: GetPolicyOutput
    GetPolicyStoreInput: GetPolicyStoreInput
    GetPolicyStoreOutput: GetPolicyStoreOutput
    GetPolicyStoreAliasInput: GetPolicyStoreAliasInput
    GetPolicyStoreAliasOutput: GetPolicyStoreAliasOutput
    GetPolicyTemplateInput: GetPolicyTemplateInput
    GetPolicyTemplateOutput: GetPolicyTemplateOutput
    GetSchemaInput: GetSchemaInput
    GetSchemaOutput: GetSchemaOutput
    IsAuthorizedInput: IsAuthorizedInput
    IsAuthorizedOutput: IsAuthorizedOutput
    IsAuthorizedWithTokenInput: IsAuthorizedWithTokenInput
    IsAuthorizedWithTokenOutput: IsAuthorizedWithTokenOutput
    ListIdentitySourcesInput: ListIdentitySourcesInput
    ListIdentitySourcesOutput: ListIdentitySourcesOutput
    ListPoliciesInput: ListPoliciesInput
    ListPoliciesOutput: ListPoliciesOutput
    ListPolicyStoreAliasesInput: ListPolicyStoreAliasesInput
    ListPolicyStoreAliasesOutput: ListPolicyStoreAliasesOutput
    ListPolicyStoresInput: ListPolicyStoresInput
    ListPolicyStoresOutput: ListPolicyStoresOutput
    ListPolicyTemplatesInput: ListPolicyTemplatesInput
    ListPolicyTemplatesOutput: ListPolicyTemplatesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutSchemaInput: PutSchemaInput
    PutSchemaOutput: PutSchemaOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateIdentitySourceInput: UpdateIdentitySourceInput
    UpdateIdentitySourceOutput: UpdateIdentitySourceOutput
    UpdatePolicyInput: UpdatePolicyInput
    UpdatePolicyOutput: UpdatePolicyOutput
    UpdatePolicyStoreInput: UpdatePolicyStoreInput
    UpdatePolicyStoreOutput: UpdatePolicyStoreOutput
    UpdatePolicyTemplateInput: UpdatePolicyTemplateInput
    UpdatePolicyTemplateOutput: UpdatePolicyTemplateOutput
end

return M
