local record BatchGetCaseRuleInput
    domainId: string
    caseRules: {CaseRuleIdentifier}
end

local record BatchGetCaseRuleOutput
    caseRules: {GetCaseRuleResponse}
    errors: {CaseRuleError}
    unprocessedCaseRules: {string}
end

local record BatchGetFieldInput
    domainId: string
    fields: {FieldIdentifier}
end

local record BatchGetFieldOutput
    fields: {GetFieldResponse}
    errors: {FieldError}
end

local record BatchPutFieldOptionsInput
    domainId: string
    fieldId: string
    options: {FieldOption}
end

local record BatchPutFieldOptionsOutput
    errors: {FieldOptionError}
end

local record CreateCaseInput
    domainId: string
    templateId: string
    fields: {FieldValue}
    clientToken: string
    performedBy: UserUnion
    tags: {string : string}
end

local record CreateCaseOutput
    caseId: string
    caseArn: string
end

local record CreateCaseRuleInput
    domainId: string
    name: string
    description: string
    rule: CaseRuleDetails
end

local record CreateCaseRuleOutput
    caseRuleId: string
    caseRuleArn: string
end

local record CreateDomainInput
    name: string
end

local record CreateDomainOutput
    domainId: string
    domainArn: string
    domainStatus: string
end

local record CreateFieldInput
    domainId: string
    name: string
    type: string
    description: string
    attributes: FieldAttributes
end

local record CreateFieldOutput
    fieldId: string
    fieldArn: string
end

local record CreateLayoutInput
    domainId: string
    name: string
    content: LayoutContent
end

local record CreateLayoutOutput
    layoutId: string
    layoutArn: string
end

local record CreateRelatedItemInput
    domainId: string
    caseId: string
    type: string
    content: RelatedItemInputContent
    performedBy: UserUnion
end

local record CreateRelatedItemOutput
    relatedItemId: string
    relatedItemArn: string
end

local record CreateTemplateInput
    domainId: string
    name: string
    description: string
    layoutConfiguration: LayoutConfiguration
    requiredFields: {RequiredField}
    status: string
    rules: {TemplateRule}
    tagPropagationConfigurations: {TagPropagationConfiguration}
end

local record CreateTemplateOutput
    templateId: string
    templateArn: string
end

local record DeleteCaseInput
    domainId: string
    caseId: string
end

local record DeleteCaseOutput
end

local record DeleteCaseRuleInput
    domainId: string
    caseRuleId: string
end

local record DeleteCaseRuleOutput
end

local record DeleteDomainInput
    domainId: string
end

local record DeleteDomainOutput
end

local record DeleteFieldInput
    domainId: string
    fieldId: string
end

local record DeleteFieldOutput
end

local record DeleteLayoutInput
    domainId: string
    layoutId: string
end

local record DeleteLayoutOutput
end

local record DeleteRelatedItemInput
    domainId: string
    caseId: string
    relatedItemId: string
end

local record DeleteRelatedItemOutput
end

local record DeleteTemplateInput
    domainId: string
    templateId: string
end

local record DeleteTemplateOutput
end

local record GetCaseInput
    caseId: string
    domainId: string
    fields: {FieldIdentifier}
    nextToken: string
end

local record GetCaseOutput
    fields: {FieldValue}
    templateId: string
    nextToken: string
    tags: {string : string}
end

local record GetCaseAuditEventsInput
    caseId: string
    domainId: string
    maxResults: number
    nextToken: string
end

local record GetCaseAuditEventsOutput
    nextToken: string
    auditEvents: {AuditEvent}
end

local record GetCaseEventConfigurationInput
    domainId: string
end

local record GetCaseEventConfigurationOutput
    eventBridge: EventBridgeConfiguration
end

local record GetDomainInput
    domainId: string
end

local record GetDomainOutput
    domainId: string
    domainArn: string
    name: string
    createdTime: number
    domainStatus: string
    tags: {string : string}
end

local record GetLayoutInput
    domainId: string
    layoutId: string
end

local record GetLayoutOutput
    layoutId: string
    layoutArn: string
    name: string
    content: LayoutContent
    tags: {string : string}
    deleted: boolean
    createdTime: number
    lastModifiedTime: number
end

local record GetTemplateInput
    domainId: string
    templateId: string
end

local record GetTemplateOutput
    templateId: string
    templateArn: string
    name: string
    description: string
    layoutConfiguration: LayoutConfiguration
    requiredFields: {RequiredField}
    tags: {string : string}
    status: string
    deleted: boolean
    createdTime: number
    lastModifiedTime: number
    rules: {TemplateRule}
    tagPropagationConfigurations: {TagPropagationConfiguration}
end

local record ListCaseRulesInput
    domainId: string
    maxResults: number
    nextToken: string
end

local record ListCaseRulesOutput
    caseRules: {CaseRuleSummary}
    nextToken: string
end

local record ListCasesForContactInput
    domainId: string
    contactArn: string
    maxResults: number
    nextToken: string
end

local record ListCasesForContactOutput
    cases: {CaseSummary}
    nextToken: string
end

local record ListDomainsInput
    maxResults: number
    nextToken: string
end

local record ListDomainsOutput
    domains: {DomainSummary}
    nextToken: string
end

local record ListFieldOptionsInput
    domainId: string
    fieldId: string
    maxResults: number
    nextToken: string
    values: {string}
end

local record ListFieldOptionsOutput
    options: {FieldOption}
    nextToken: string
end

local record ListFieldsInput
    domainId: string
    maxResults: number
    nextToken: string
end

local record ListFieldsOutput
    fields: {FieldSummary}
    nextToken: string
end

local record ListLayoutsInput
    domainId: string
    maxResults: number
    nextToken: string
end

local record ListLayoutsOutput
    layouts: {LayoutSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    arn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListTemplatesInput
    domainId: string
    maxResults: number
    nextToken: string
    status: {string}
end

local record ListTemplatesOutput
    templates: {TemplateSummary}
    nextToken: string
end

local record PutCaseEventConfigurationInput
    domainId: string
    eventBridge: EventBridgeConfiguration
end

local record PutCaseEventConfigurationOutput
end

local record SearchAllRelatedItemsInput
    domainId: string
    maxResults: number
    nextToken: string
    filters: {RelatedItemTypeFilter}
    sorts: {SearchAllRelatedItemsSort}
end

local record SearchAllRelatedItemsOutput
    nextToken: string
    relatedItems: {SearchAllRelatedItemsResponseItem}
end

local record SearchCasesInput
    domainId: string
    maxResults: number
    nextToken: string
    searchTerm: string
    filter: CaseFilter
    sorts: {Sort}
    fields: {FieldIdentifier}
end

local record SearchCasesOutput
    nextToken: string
    cases: {SearchCasesResponseItem}
    totalCount: number
end

local record SearchRelatedItemsInput
    domainId: string
    caseId: string
    maxResults: number
    nextToken: string
    filters: {RelatedItemTypeFilter}
end

local record SearchRelatedItemsOutput
    nextToken: string
    relatedItems: {SearchRelatedItemsResponseItem}
end

local record TagResourceInput
    arn: string
    tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    arn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateCaseInput
    domainId: string
    caseId: string
    fields: {FieldValue}
    performedBy: UserUnion
end

local record UpdateCaseOutput
end

local record UpdateCaseRuleInput
    domainId: string
    caseRuleId: string
    name: string
    description: string
    rule: CaseRuleDetails
end

local record UpdateCaseRuleOutput
end

local record UpdateFieldInput
    domainId: string
    fieldId: string
    name: string
    description: string
    attributes: FieldAttributes
end

local record UpdateFieldOutput
end

local record UpdateLayoutInput
    domainId: string
    layoutId: string
    name: string
    content: LayoutContent
end

local record UpdateLayoutOutput
end

local record UpdateRelatedItemInput
    domainId: string
    caseId: string
    relatedItemId: string
    content: RelatedItemUpdateContent
    performedBy: UserUnion
end

local record UpdateRelatedItemOutput
    relatedItemId: string
    relatedItemArn: string
    type: string
    content: RelatedItemContent
    associationTime: number
    tags: {string : string}
    lastUpdatedUser: UserUnion
    createdBy: UserUnion
end

local record UpdateTemplateInput
    domainId: string
    templateId: string
    name: string
    description: string
    layoutConfiguration: LayoutConfiguration
    requiredFields: {RequiredField}
    status: string
    rules: {TemplateRule}
    tagPropagationConfigurations: {TagPropagationConfiguration}
end

local record UpdateTemplateOutput
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
end

local record ValidationException
    message: string
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
end

local record ValidationException
    message: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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

local record M
    BatchGetCaseRuleInput: BatchGetCaseRuleInput
    BatchGetCaseRuleOutput: BatchGetCaseRuleOutput
    BatchGetFieldInput: BatchGetFieldInput
    BatchGetFieldOutput: BatchGetFieldOutput
    BatchPutFieldOptionsInput: BatchPutFieldOptionsInput
    BatchPutFieldOptionsOutput: BatchPutFieldOptionsOutput
    CreateCaseInput: CreateCaseInput
    CreateCaseOutput: CreateCaseOutput
    CreateCaseRuleInput: CreateCaseRuleInput
    CreateCaseRuleOutput: CreateCaseRuleOutput
    CreateDomainInput: CreateDomainInput
    CreateDomainOutput: CreateDomainOutput
    CreateFieldInput: CreateFieldInput
    CreateFieldOutput: CreateFieldOutput
    CreateLayoutInput: CreateLayoutInput
    CreateLayoutOutput: CreateLayoutOutput
    CreateRelatedItemInput: CreateRelatedItemInput
    CreateRelatedItemOutput: CreateRelatedItemOutput
    CreateTemplateInput: CreateTemplateInput
    CreateTemplateOutput: CreateTemplateOutput
    DeleteCaseInput: DeleteCaseInput
    DeleteCaseOutput: DeleteCaseOutput
    DeleteCaseRuleInput: DeleteCaseRuleInput
    DeleteCaseRuleOutput: DeleteCaseRuleOutput
    DeleteDomainInput: DeleteDomainInput
    DeleteDomainOutput: DeleteDomainOutput
    DeleteFieldInput: DeleteFieldInput
    DeleteFieldOutput: DeleteFieldOutput
    DeleteLayoutInput: DeleteLayoutInput
    DeleteLayoutOutput: DeleteLayoutOutput
    DeleteRelatedItemInput: DeleteRelatedItemInput
    DeleteRelatedItemOutput: DeleteRelatedItemOutput
    DeleteTemplateInput: DeleteTemplateInput
    DeleteTemplateOutput: DeleteTemplateOutput
    GetCaseInput: GetCaseInput
    GetCaseOutput: GetCaseOutput
    GetCaseAuditEventsInput: GetCaseAuditEventsInput
    GetCaseAuditEventsOutput: GetCaseAuditEventsOutput
    GetCaseEventConfigurationInput: GetCaseEventConfigurationInput
    GetCaseEventConfigurationOutput: GetCaseEventConfigurationOutput
    GetDomainInput: GetDomainInput
    GetDomainOutput: GetDomainOutput
    GetLayoutInput: GetLayoutInput
    GetLayoutOutput: GetLayoutOutput
    GetTemplateInput: GetTemplateInput
    GetTemplateOutput: GetTemplateOutput
    ListCaseRulesInput: ListCaseRulesInput
    ListCaseRulesOutput: ListCaseRulesOutput
    ListCasesForContactInput: ListCasesForContactInput
    ListCasesForContactOutput: ListCasesForContactOutput
    ListDomainsInput: ListDomainsInput
    ListDomainsOutput: ListDomainsOutput
    ListFieldOptionsInput: ListFieldOptionsInput
    ListFieldOptionsOutput: ListFieldOptionsOutput
    ListFieldsInput: ListFieldsInput
    ListFieldsOutput: ListFieldsOutput
    ListLayoutsInput: ListLayoutsInput
    ListLayoutsOutput: ListLayoutsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTemplatesInput: ListTemplatesInput
    ListTemplatesOutput: ListTemplatesOutput
    PutCaseEventConfigurationInput: PutCaseEventConfigurationInput
    PutCaseEventConfigurationOutput: PutCaseEventConfigurationOutput
    SearchAllRelatedItemsInput: SearchAllRelatedItemsInput
    SearchAllRelatedItemsOutput: SearchAllRelatedItemsOutput
    SearchCasesInput: SearchCasesInput
    SearchCasesOutput: SearchCasesOutput
    SearchRelatedItemsInput: SearchRelatedItemsInput
    SearchRelatedItemsOutput: SearchRelatedItemsOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateCaseInput: UpdateCaseInput
    UpdateCaseOutput: UpdateCaseOutput
    UpdateCaseRuleInput: UpdateCaseRuleInput
    UpdateCaseRuleOutput: UpdateCaseRuleOutput
    UpdateFieldInput: UpdateFieldInput
    UpdateFieldOutput: UpdateFieldOutput
    UpdateLayoutInput: UpdateLayoutInput
    UpdateLayoutOutput: UpdateLayoutOutput
    UpdateRelatedItemInput: UpdateRelatedItemInput
    UpdateRelatedItemOutput: UpdateRelatedItemOutput
    UpdateTemplateInput: UpdateTemplateInput
    UpdateTemplateOutput: UpdateTemplateOutput
end

return M
