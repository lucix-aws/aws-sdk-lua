local record BatchGetCollaborationAnalysisTemplateInput
    collaborationIdentifier: string
    analysisTemplateArns: {string}
end

local record BatchGetCollaborationAnalysisTemplateOutput
    collaborationAnalysisTemplates: {CollaborationAnalysisTemplate}
    errors: {BatchGetCollaborationAnalysisTemplateError}
end

local record BatchGetSchemaInput
    collaborationIdentifier: string
    names: {string}
end

local record BatchGetSchemaOutput
    schemas: {Schema}
    errors: {BatchGetSchemaError}
end

local record BatchGetSchemaAnalysisRuleInput
    collaborationIdentifier: string
    schemaAnalysisRuleRequests: {SchemaAnalysisRuleRequest}
end

local record BatchGetSchemaAnalysisRuleOutput
    analysisRules: {AnalysisRule}
    errors: {BatchGetSchemaAnalysisRuleError}
end

local record CreateAnalysisTemplateInput
    description: string
    membershipIdentifier: string
    name: string
    format: string
    source: AnalysisSource
    tags: {string : string}
    analysisParameters: {AnalysisParameter}
    schema: AnalysisSchema
    errorMessageConfiguration: ErrorMessageConfiguration
    syntheticDataParameters: SyntheticDataParameters
end

local record CreateAnalysisTemplateOutput
    analysisTemplate: AnalysisTemplate
end

local record CreateCollaborationInput
    members: {MemberSpecification}
    name: string
    description: string
    creatorMemberAbilities: {string}
    creatorMLMemberAbilities: MLMemberAbilities
    creatorDisplayName: string
    dataEncryptionMetadata: DataEncryptionMetadata
    queryLogStatus: string
    jobLogStatus: string
    tags: {string : string}
    creatorPaymentConfiguration: PaymentConfiguration
    analyticsEngine: string
    autoApprovedChangeRequestTypes: {string}
    allowedResultRegions: {string}
    isMetricsEnabled: boolean
end

local record CreateCollaborationOutput
    collaboration: Collaboration
end

local record CreateCollaborationChangeRequestInput
    collaborationIdentifier: string
    changes: {ChangeInput}
end

local record CreateCollaborationChangeRequestOutput
    collaborationChangeRequest: CollaborationChangeRequest
end

local record CreateConfiguredAudienceModelAssociationInput
    membershipIdentifier: string
    configuredAudienceModelArn: string
    configuredAudienceModelAssociationName: string
    manageResourcePolicies: boolean
    tags: {string : string}
    description: string
end

local record CreateConfiguredAudienceModelAssociationOutput
    configuredAudienceModelAssociation: ConfiguredAudienceModelAssociation
end

local record CreateConfiguredTableInput
    name: string
    description: string
    tableReference: TableReference
    allowedColumns: {string}
    analysisMethod: string
    selectedAnalysisMethods: {string}
    tags: {string : string}
end

local record CreateConfiguredTableOutput
    configuredTable: ConfiguredTable
end

local record CreateConfiguredTableAnalysisRuleInput
    configuredTableIdentifier: string
    analysisRuleType: string
    analysisRulePolicy: ConfiguredTableAnalysisRulePolicy
end

local record CreateConfiguredTableAnalysisRuleOutput
    analysisRule: ConfiguredTableAnalysisRule
end

local record CreateConfiguredTableAssociationInput
    name: string
    description: string
    membershipIdentifier: string
    configuredTableIdentifier: string
    roleArn: string
    tags: {string : string}
end

local record CreateConfiguredTableAssociationOutput
    configuredTableAssociation: ConfiguredTableAssociation
end

local record CreateConfiguredTableAssociationAnalysisRuleInput
    membershipIdentifier: string
    configuredTableAssociationIdentifier: string
    analysisRuleType: string
    analysisRulePolicy: ConfiguredTableAssociationAnalysisRulePolicy
end

local record CreateConfiguredTableAssociationAnalysisRuleOutput
    analysisRule: ConfiguredTableAssociationAnalysisRule
end

local record CreateIdMappingTableInput
    membershipIdentifier: string
    name: string
    description: string
    inputReferenceConfig: IdMappingTableInputReferenceConfig
    tags: {string : string}
    kmsKeyArn: string
end

local record CreateIdMappingTableOutput
    idMappingTable: IdMappingTable
end

local record CreateIdNamespaceAssociationInput
    membershipIdentifier: string
    inputReferenceConfig: IdNamespaceAssociationInputReferenceConfig
    tags: {string : string}
    name: string
    description: string
    idMappingConfig: IdMappingConfig
end

local record CreateIdNamespaceAssociationOutput
    idNamespaceAssociation: IdNamespaceAssociation
end

local record CreateMembershipInput
    collaborationIdentifier: string
    queryLogStatus: string
    jobLogStatus: string
    tags: {string : string}
    defaultResultConfiguration: MembershipProtectedQueryResultConfiguration
    defaultJobResultConfiguration: MembershipProtectedJobResultConfiguration
    paymentConfiguration: MembershipPaymentConfiguration
    isMetricsEnabled: boolean
end

local record CreateMembershipOutput
    membership: Membership
end

local record CreatePrivacyBudgetTemplateInput
    membershipIdentifier: string
    autoRefresh: string
    privacyBudgetType: string
    parameters: PrivacyBudgetTemplateParametersInput
    tags: {string : string}
end

local record CreatePrivacyBudgetTemplateOutput
    privacyBudgetTemplate: PrivacyBudgetTemplate
end

local record DeleteAnalysisTemplateInput
    membershipIdentifier: string
    analysisTemplateIdentifier: string
end

local record DeleteAnalysisTemplateOutput
end

local record DeleteCollaborationInput
    collaborationIdentifier: string
end

local record DeleteCollaborationOutput
end

local record DeleteConfiguredAudienceModelAssociationInput
    configuredAudienceModelAssociationIdentifier: string
    membershipIdentifier: string
end

local record DeleteConfiguredAudienceModelAssociationOutput
end

local record DeleteConfiguredTableInput
    configuredTableIdentifier: string
end

local record DeleteConfiguredTableOutput
end

local record DeleteConfiguredTableAnalysisRuleInput
    configuredTableIdentifier: string
    analysisRuleType: string
end

local record DeleteConfiguredTableAnalysisRuleOutput
end

local record DeleteConfiguredTableAssociationInput
    configuredTableAssociationIdentifier: string
    membershipIdentifier: string
end

local record DeleteConfiguredTableAssociationOutput
end

local record DeleteConfiguredTableAssociationAnalysisRuleInput
    membershipIdentifier: string
    configuredTableAssociationIdentifier: string
    analysisRuleType: string
end

local record DeleteConfiguredTableAssociationAnalysisRuleOutput
end

local record DeleteIdMappingTableInput
    idMappingTableIdentifier: string
    membershipIdentifier: string
end

local record DeleteIdMappingTableOutput
end

local record DeleteIdNamespaceAssociationInput
    idNamespaceAssociationIdentifier: string
    membershipIdentifier: string
end

local record DeleteIdNamespaceAssociationOutput
end

local record DeleteMemberInput
    collaborationIdentifier: string
    accountId: string
end

local record DeleteMemberOutput
end

local record DeleteMembershipInput
    membershipIdentifier: string
end

local record DeleteMembershipOutput
end

local record DeletePrivacyBudgetTemplateInput
    membershipIdentifier: string
    privacyBudgetTemplateIdentifier: string
end

local record DeletePrivacyBudgetTemplateOutput
end

local record GetAnalysisTemplateInput
    membershipIdentifier: string
    analysisTemplateIdentifier: string
end

local record GetAnalysisTemplateOutput
    analysisTemplate: AnalysisTemplate
end

local record GetCollaborationInput
    collaborationIdentifier: string
end

local record GetCollaborationOutput
    collaboration: Collaboration
end

local record GetCollaborationAnalysisTemplateInput
    collaborationIdentifier: string
    analysisTemplateArn: string
end

local record GetCollaborationAnalysisTemplateOutput
    collaborationAnalysisTemplate: CollaborationAnalysisTemplate
end

local record GetCollaborationChangeRequestInput
    collaborationIdentifier: string
    changeRequestIdentifier: string
end

local record GetCollaborationChangeRequestOutput
    collaborationChangeRequest: CollaborationChangeRequest
end

local record GetCollaborationConfiguredAudienceModelAssociationInput
    collaborationIdentifier: string
    configuredAudienceModelAssociationIdentifier: string
end

local record GetCollaborationConfiguredAudienceModelAssociationOutput
    collaborationConfiguredAudienceModelAssociation: CollaborationConfiguredAudienceModelAssociation
end

local record GetCollaborationIdNamespaceAssociationInput
    collaborationIdentifier: string
    idNamespaceAssociationIdentifier: string
end

local record GetCollaborationIdNamespaceAssociationOutput
    collaborationIdNamespaceAssociation: CollaborationIdNamespaceAssociation
end

local record GetCollaborationPrivacyBudgetTemplateInput
    collaborationIdentifier: string
    privacyBudgetTemplateIdentifier: string
end

local record GetCollaborationPrivacyBudgetTemplateOutput
    collaborationPrivacyBudgetTemplate: CollaborationPrivacyBudgetTemplate
end

local record GetConfiguredAudienceModelAssociationInput
    configuredAudienceModelAssociationIdentifier: string
    membershipIdentifier: string
end

local record GetConfiguredAudienceModelAssociationOutput
    configuredAudienceModelAssociation: ConfiguredAudienceModelAssociation
end

local record GetConfiguredTableInput
    configuredTableIdentifier: string
end

local record GetConfiguredTableOutput
    configuredTable: ConfiguredTable
end

local record GetConfiguredTableAnalysisRuleInput
    configuredTableIdentifier: string
    analysisRuleType: string
end

local record GetConfiguredTableAnalysisRuleOutput
    analysisRule: ConfiguredTableAnalysisRule
end

local record GetConfiguredTableAssociationInput
    configuredTableAssociationIdentifier: string
    membershipIdentifier: string
end

local record GetConfiguredTableAssociationOutput
    configuredTableAssociation: ConfiguredTableAssociation
end

local record GetConfiguredTableAssociationAnalysisRuleInput
    membershipIdentifier: string
    configuredTableAssociationIdentifier: string
    analysisRuleType: string
end

local record GetConfiguredTableAssociationAnalysisRuleOutput
    analysisRule: ConfiguredTableAssociationAnalysisRule
end

local record GetIdMappingTableInput
    idMappingTableIdentifier: string
    membershipIdentifier: string
end

local record GetIdMappingTableOutput
    idMappingTable: IdMappingTable
end

local record GetIdNamespaceAssociationInput
    idNamespaceAssociationIdentifier: string
    membershipIdentifier: string
end

local record GetIdNamespaceAssociationOutput
    idNamespaceAssociation: IdNamespaceAssociation
end

local record GetMembershipInput
    membershipIdentifier: string
end

local record GetMembershipOutput
    membership: Membership
end

local record GetPrivacyBudgetTemplateInput
    membershipIdentifier: string
    privacyBudgetTemplateIdentifier: string
end

local record GetPrivacyBudgetTemplateOutput
    privacyBudgetTemplate: PrivacyBudgetTemplate
end

local record GetProtectedJobInput
    membershipIdentifier: string
    protectedJobIdentifier: string
end

local record GetProtectedJobOutput
    protectedJob: ProtectedJob
end

local record GetProtectedQueryInput
    membershipIdentifier: string
    protectedQueryIdentifier: string
end

local record GetProtectedQueryOutput
    protectedQuery: ProtectedQuery
end

local record GetSchemaInput
    collaborationIdentifier: string
    name: string
end

local record GetSchemaOutput
    schema: Schema
end

local record GetSchemaAnalysisRuleInput
    collaborationIdentifier: string
    name: string
    type: string
end

local record GetSchemaAnalysisRuleOutput
    analysisRule: AnalysisRule
end

local record ListAnalysisTemplatesInput
    membershipIdentifier: string
    nextToken: string
    maxResults: number
end

local record ListAnalysisTemplatesOutput
    nextToken: string
    analysisTemplateSummaries: {AnalysisTemplateSummary}
end

local record ListCollaborationAnalysisTemplatesInput
    collaborationIdentifier: string
    nextToken: string
    maxResults: number
end

local record ListCollaborationAnalysisTemplatesOutput
    nextToken: string
    collaborationAnalysisTemplateSummaries: {CollaborationAnalysisTemplateSummary}
end

local record ListCollaborationChangeRequestsInput
    collaborationIdentifier: string
    status: string
    nextToken: string
    maxResults: number
end

local record ListCollaborationChangeRequestsOutput
    collaborationChangeRequestSummaries: {CollaborationChangeRequestSummary}
    nextToken: string
end

local record ListCollaborationConfiguredAudienceModelAssociationsInput
    collaborationIdentifier: string
    nextToken: string
    maxResults: number
end

local record ListCollaborationConfiguredAudienceModelAssociationsOutput
    collaborationConfiguredAudienceModelAssociationSummaries: {CollaborationConfiguredAudienceModelAssociationSummary}
    nextToken: string
end

local record ListCollaborationIdNamespaceAssociationsInput
    collaborationIdentifier: string
    nextToken: string
    maxResults: number
end

local record ListCollaborationIdNamespaceAssociationsOutput
    nextToken: string
    collaborationIdNamespaceAssociationSummaries: {CollaborationIdNamespaceAssociationSummary}
end

local record ListCollaborationPrivacyBudgetsInput
    collaborationIdentifier: string
    privacyBudgetType: string
    maxResults: number
    nextToken: string
    accessBudgetResourceArn: string
end

local record ListCollaborationPrivacyBudgetsOutput
    collaborationPrivacyBudgetSummaries: {CollaborationPrivacyBudgetSummary}
    nextToken: string
end

local record ListCollaborationPrivacyBudgetTemplatesInput
    collaborationIdentifier: string
    nextToken: string
    maxResults: number
end

local record ListCollaborationPrivacyBudgetTemplatesOutput
    nextToken: string
    collaborationPrivacyBudgetTemplateSummaries: {CollaborationPrivacyBudgetTemplateSummary}
end

local record ListCollaborationsInput
    nextToken: string
    maxResults: number
    memberStatus: string
end

local record ListCollaborationsOutput
    nextToken: string
    collaborationList: {CollaborationSummary}
end

local record ListConfiguredAudienceModelAssociationsInput
    membershipIdentifier: string
    nextToken: string
    maxResults: number
end

local record ListConfiguredAudienceModelAssociationsOutput
    configuredAudienceModelAssociationSummaries: {ConfiguredAudienceModelAssociationSummary}
    nextToken: string
end

local record ListConfiguredTableAssociationsInput
    membershipIdentifier: string
    nextToken: string
    maxResults: number
end

local record ListConfiguredTableAssociationsOutput
    configuredTableAssociationSummaries: {ConfiguredTableAssociationSummary}
    nextToken: string
end

local record ListConfiguredTablesInput
    nextToken: string
    maxResults: number
end

local record ListConfiguredTablesOutput
    configuredTableSummaries: {ConfiguredTableSummary}
    nextToken: string
end

local record ListIdMappingTablesInput
    membershipIdentifier: string
    nextToken: string
    maxResults: number
end

local record ListIdMappingTablesOutput
    idMappingTableSummaries: {IdMappingTableSummary}
    nextToken: string
end

local record ListIdNamespaceAssociationsInput
    membershipIdentifier: string
    nextToken: string
    maxResults: number
end

local record ListIdNamespaceAssociationsOutput
    nextToken: string
    idNamespaceAssociationSummaries: {IdNamespaceAssociationSummary}
end

local record ListMembersInput
    collaborationIdentifier: string
    nextToken: string
    maxResults: number
end

local record ListMembersOutput
    nextToken: string
    memberSummaries: {MemberSummary}
end

local record ListMembershipsInput
    nextToken: string
    maxResults: number
    status: string
end

local record ListMembershipsOutput
    nextToken: string
    membershipSummaries: {MembershipSummary}
end

local record ListPrivacyBudgetsInput
    membershipIdentifier: string
    privacyBudgetType: string
    nextToken: string
    maxResults: number
    accessBudgetResourceArn: string
end

local record ListPrivacyBudgetsOutput
    privacyBudgetSummaries: {PrivacyBudgetSummary}
    nextToken: string
end

local record ListPrivacyBudgetTemplatesInput
    membershipIdentifier: string
    nextToken: string
    maxResults: number
end

local record ListPrivacyBudgetTemplatesOutput
    nextToken: string
    privacyBudgetTemplateSummaries: {PrivacyBudgetTemplateSummary}
end

local record ListProtectedJobsInput
    membershipIdentifier: string
    status: string
    nextToken: string
    maxResults: number
end

local record ListProtectedJobsOutput
    nextToken: string
    protectedJobs: {ProtectedJobSummary}
end

local record ListProtectedQueriesInput
    membershipIdentifier: string
    status: string
    nextToken: string
    maxResults: number
end

local record ListProtectedQueriesOutput
    nextToken: string
    protectedQueries: {ProtectedQuerySummary}
end

local record ListSchemasInput
    collaborationIdentifier: string
    schemaType: string
    nextToken: string
    maxResults: number
end

local record ListSchemasOutput
    schemaSummaries: {SchemaSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record PopulateIdMappingTableInput
    idMappingTableIdentifier: string
    membershipIdentifier: string
    jobType: string
end

local record PopulateIdMappingTableOutput
    idMappingJobId: string
end

local record PreviewPrivacyImpactInput
    membershipIdentifier: string
    parameters: PreviewPrivacyImpactParametersInput
end

local record PreviewPrivacyImpactOutput
    privacyImpact: PrivacyImpact
end

local record StartProtectedJobInput
    type: string
    membershipIdentifier: string
    jobParameters: ProtectedJobParameters
    resultConfiguration: ProtectedJobResultConfigurationInput
    computeConfiguration: ProtectedJobComputeConfiguration
end

local record StartProtectedJobOutput
    protectedJob: ProtectedJob
end

local record StartProtectedQueryInput
    type: string
    membershipIdentifier: string
    sqlParameters: ProtectedQuerySQLParameters
    resultConfiguration: ProtectedQueryResultConfiguration
    computeConfiguration: ComputeConfiguration
end

local record StartProtectedQueryOutput
    protectedQuery: ProtectedQuery
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

local record UpdateAnalysisTemplateInput
    membershipIdentifier: string
    analysisTemplateIdentifier: string
    description: string
end

local record UpdateAnalysisTemplateOutput
    analysisTemplate: AnalysisTemplate
end

local record UpdateCollaborationInput
    collaborationIdentifier: string
    name: string
    description: string
    analyticsEngine: string
end

local record UpdateCollaborationOutput
    collaboration: Collaboration
end

local record UpdateCollaborationChangeRequestInput
    collaborationIdentifier: string
    changeRequestIdentifier: string
    action: string
end

local record UpdateCollaborationChangeRequestOutput
    collaborationChangeRequest: CollaborationChangeRequest
end

local record UpdateConfiguredAudienceModelAssociationInput
    configuredAudienceModelAssociationIdentifier: string
    membershipIdentifier: string
    description: string
    name: string
end

local record UpdateConfiguredAudienceModelAssociationOutput
    configuredAudienceModelAssociation: ConfiguredAudienceModelAssociation
end

local record UpdateConfiguredTableInput
    configuredTableIdentifier: string
    name: string
    description: string
    tableReference: TableReference
    allowedColumns: {string}
    analysisMethod: string
    selectedAnalysisMethods: {string}
end

local record UpdateConfiguredTableOutput
    configuredTable: ConfiguredTable
end

local record UpdateConfiguredTableAnalysisRuleInput
    configuredTableIdentifier: string
    analysisRuleType: string
    analysisRulePolicy: ConfiguredTableAnalysisRulePolicy
end

local record UpdateConfiguredTableAnalysisRuleOutput
    analysisRule: ConfiguredTableAnalysisRule
end

local record UpdateConfiguredTableAssociationInput
    configuredTableAssociationIdentifier: string
    membershipIdentifier: string
    description: string
    roleArn: string
end

local record UpdateConfiguredTableAssociationOutput
    configuredTableAssociation: ConfiguredTableAssociation
end

local record UpdateConfiguredTableAssociationAnalysisRuleInput
    membershipIdentifier: string
    configuredTableAssociationIdentifier: string
    analysisRuleType: string
    analysisRulePolicy: ConfiguredTableAssociationAnalysisRulePolicy
end

local record UpdateConfiguredTableAssociationAnalysisRuleOutput
    analysisRule: ConfiguredTableAssociationAnalysisRule
end

local record UpdateIdMappingTableInput
    idMappingTableIdentifier: string
    membershipIdentifier: string
    description: string
    kmsKeyArn: string
end

local record UpdateIdMappingTableOutput
    idMappingTable: IdMappingTable
end

local record UpdateIdNamespaceAssociationInput
    idNamespaceAssociationIdentifier: string
    membershipIdentifier: string
    name: string
    description: string
    idMappingConfig: IdMappingConfig
end

local record UpdateIdNamespaceAssociationOutput
    idNamespaceAssociation: IdNamespaceAssociation
end

local record UpdateMembershipInput
    membershipIdentifier: string
    queryLogStatus: string
    jobLogStatus: string
    defaultResultConfiguration: MembershipProtectedQueryResultConfiguration
    defaultJobResultConfiguration: MembershipProtectedJobResultConfiguration
end

local record UpdateMembershipOutput
    membership: Membership
end

local record UpdatePrivacyBudgetTemplateInput
    membershipIdentifier: string
    privacyBudgetTemplateIdentifier: string
    privacyBudgetType: string
    parameters: PrivacyBudgetTemplateUpdateParameters
end

local record UpdatePrivacyBudgetTemplateOutput
    privacyBudgetTemplate: PrivacyBudgetTemplate
end

local record UpdateProtectedJobInput
    membershipIdentifier: string
    protectedJobIdentifier: string
    targetStatus: string
end

local record UpdateProtectedJobOutput
    protectedJob: ProtectedJob
end

local record UpdateProtectedQueryInput
    membershipIdentifier: string
    protectedQueryIdentifier: string
    targetStatus: string
end

local record UpdateProtectedQueryOutput
    protectedQuery: ProtectedQuery
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    quotaName: string
    quotaValue: number
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
    quotaName: string
    quotaValue: number
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    quotaName: string
    quotaValue: number
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    quotaName: string
    quotaValue: number
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    quotaName: string
    quotaValue: number
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    quotaName: string
    quotaValue: number
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    quotaName: string
    quotaValue: number
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    quotaName: string
    quotaValue: number
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    quotaName: string
    quotaValue: number
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    quotaName: string
    quotaValue: number
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    quotaName: string
    quotaValue: number
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    quotaName: string
    quotaValue: number
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    quotaName: string
    quotaValue: number
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    quotaName: string
    quotaValue: number
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    quotaName: string
    quotaValue: number
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
    reason: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
    reason: string
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
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local type MembershipQueryLogStatus = "ENABLED" | "DISABLED"

local type AnalysisMethod = "DIRECT_QUERY" | "DIRECT_JOB" | "MULTIPLE"

local type MembershipJobLogStatus = "ENABLED" | "DISABLED"

local type TargetProtectedJobStatus = "CANCELLED"

local type ProtectedJobStatus = "SUBMITTED" | "STARTED" | "CANCELLED" | "CANCELLING" | "FAILED" | "SUCCESS"

local type CollaborationJobLogStatus = "ENABLED" | "DISABLED"

local type JobType = "BATCH" | "INCREMENTAL" | "DELETE_ONLY"

local type SchemaType = "TABLE" | "ID_MAPPING_TABLE"

local type AnalysisFormat = "SQL" | "PYSPARK_1_0"

local type ChangeRequestStatus = "PENDING" | "APPROVED" | "CANCELLED" | "DENIED" | "COMMITTED"

local type PrivacyBudgetType = "DIFFERENTIAL_PRIVACY" | "ACCESS_BUDGET"

local type ChangeRequestAction = "APPROVE" | "DENY" | "CANCEL" | "COMMIT"

local type PrivacyBudgetTemplateAutoRefresh = "CALENDAR_MONTH" | "NONE"

local type ProtectedJobType = "PYSPARK"

local type AnalyticsEngine = "SPARK" | "CLEAN_ROOMS_SQL"

local type ConfiguredTableAssociationAnalysisRuleType = "AGGREGATION" | "LIST" | "CUSTOM"

local type CollaborationQueryLogStatus = "ENABLED" | "DISABLED"

local type AnalysisRuleType = "AGGREGATION" | "LIST" | "CUSTOM" | "ID_MAPPING_TABLE"

local type ConfiguredTableAnalysisRuleType = "AGGREGATION" | "LIST" | "CUSTOM"

local record M
    BatchGetCollaborationAnalysisTemplateInput: BatchGetCollaborationAnalysisTemplateInput
    BatchGetCollaborationAnalysisTemplateOutput: BatchGetCollaborationAnalysisTemplateOutput
    BatchGetSchemaInput: BatchGetSchemaInput
    BatchGetSchemaOutput: BatchGetSchemaOutput
    BatchGetSchemaAnalysisRuleInput: BatchGetSchemaAnalysisRuleInput
    BatchGetSchemaAnalysisRuleOutput: BatchGetSchemaAnalysisRuleOutput
    CreateAnalysisTemplateInput: CreateAnalysisTemplateInput
    CreateAnalysisTemplateOutput: CreateAnalysisTemplateOutput
    CreateCollaborationInput: CreateCollaborationInput
    CreateCollaborationOutput: CreateCollaborationOutput
    CreateCollaborationChangeRequestInput: CreateCollaborationChangeRequestInput
    CreateCollaborationChangeRequestOutput: CreateCollaborationChangeRequestOutput
    CreateConfiguredAudienceModelAssociationInput: CreateConfiguredAudienceModelAssociationInput
    CreateConfiguredAudienceModelAssociationOutput: CreateConfiguredAudienceModelAssociationOutput
    CreateConfiguredTableInput: CreateConfiguredTableInput
    CreateConfiguredTableOutput: CreateConfiguredTableOutput
    CreateConfiguredTableAnalysisRuleInput: CreateConfiguredTableAnalysisRuleInput
    CreateConfiguredTableAnalysisRuleOutput: CreateConfiguredTableAnalysisRuleOutput
    CreateConfiguredTableAssociationInput: CreateConfiguredTableAssociationInput
    CreateConfiguredTableAssociationOutput: CreateConfiguredTableAssociationOutput
    CreateConfiguredTableAssociationAnalysisRuleInput: CreateConfiguredTableAssociationAnalysisRuleInput
    CreateConfiguredTableAssociationAnalysisRuleOutput: CreateConfiguredTableAssociationAnalysisRuleOutput
    CreateIdMappingTableInput: CreateIdMappingTableInput
    CreateIdMappingTableOutput: CreateIdMappingTableOutput
    CreateIdNamespaceAssociationInput: CreateIdNamespaceAssociationInput
    CreateIdNamespaceAssociationOutput: CreateIdNamespaceAssociationOutput
    CreateMembershipInput: CreateMembershipInput
    CreateMembershipOutput: CreateMembershipOutput
    CreatePrivacyBudgetTemplateInput: CreatePrivacyBudgetTemplateInput
    CreatePrivacyBudgetTemplateOutput: CreatePrivacyBudgetTemplateOutput
    DeleteAnalysisTemplateInput: DeleteAnalysisTemplateInput
    DeleteAnalysisTemplateOutput: DeleteAnalysisTemplateOutput
    DeleteCollaborationInput: DeleteCollaborationInput
    DeleteCollaborationOutput: DeleteCollaborationOutput
    DeleteConfiguredAudienceModelAssociationInput: DeleteConfiguredAudienceModelAssociationInput
    DeleteConfiguredAudienceModelAssociationOutput: DeleteConfiguredAudienceModelAssociationOutput
    DeleteConfiguredTableInput: DeleteConfiguredTableInput
    DeleteConfiguredTableOutput: DeleteConfiguredTableOutput
    DeleteConfiguredTableAnalysisRuleInput: DeleteConfiguredTableAnalysisRuleInput
    DeleteConfiguredTableAnalysisRuleOutput: DeleteConfiguredTableAnalysisRuleOutput
    DeleteConfiguredTableAssociationInput: DeleteConfiguredTableAssociationInput
    DeleteConfiguredTableAssociationOutput: DeleteConfiguredTableAssociationOutput
    DeleteConfiguredTableAssociationAnalysisRuleInput: DeleteConfiguredTableAssociationAnalysisRuleInput
    DeleteConfiguredTableAssociationAnalysisRuleOutput: DeleteConfiguredTableAssociationAnalysisRuleOutput
    DeleteIdMappingTableInput: DeleteIdMappingTableInput
    DeleteIdMappingTableOutput: DeleteIdMappingTableOutput
    DeleteIdNamespaceAssociationInput: DeleteIdNamespaceAssociationInput
    DeleteIdNamespaceAssociationOutput: DeleteIdNamespaceAssociationOutput
    DeleteMemberInput: DeleteMemberInput
    DeleteMemberOutput: DeleteMemberOutput
    DeleteMembershipInput: DeleteMembershipInput
    DeleteMembershipOutput: DeleteMembershipOutput
    DeletePrivacyBudgetTemplateInput: DeletePrivacyBudgetTemplateInput
    DeletePrivacyBudgetTemplateOutput: DeletePrivacyBudgetTemplateOutput
    GetAnalysisTemplateInput: GetAnalysisTemplateInput
    GetAnalysisTemplateOutput: GetAnalysisTemplateOutput
    GetCollaborationInput: GetCollaborationInput
    GetCollaborationOutput: GetCollaborationOutput
    GetCollaborationAnalysisTemplateInput: GetCollaborationAnalysisTemplateInput
    GetCollaborationAnalysisTemplateOutput: GetCollaborationAnalysisTemplateOutput
    GetCollaborationChangeRequestInput: GetCollaborationChangeRequestInput
    GetCollaborationChangeRequestOutput: GetCollaborationChangeRequestOutput
    GetCollaborationConfiguredAudienceModelAssociationInput: GetCollaborationConfiguredAudienceModelAssociationInput
    GetCollaborationConfiguredAudienceModelAssociationOutput: GetCollaborationConfiguredAudienceModelAssociationOutput
    GetCollaborationIdNamespaceAssociationInput: GetCollaborationIdNamespaceAssociationInput
    GetCollaborationIdNamespaceAssociationOutput: GetCollaborationIdNamespaceAssociationOutput
    GetCollaborationPrivacyBudgetTemplateInput: GetCollaborationPrivacyBudgetTemplateInput
    GetCollaborationPrivacyBudgetTemplateOutput: GetCollaborationPrivacyBudgetTemplateOutput
    GetConfiguredAudienceModelAssociationInput: GetConfiguredAudienceModelAssociationInput
    GetConfiguredAudienceModelAssociationOutput: GetConfiguredAudienceModelAssociationOutput
    GetConfiguredTableInput: GetConfiguredTableInput
    GetConfiguredTableOutput: GetConfiguredTableOutput
    GetConfiguredTableAnalysisRuleInput: GetConfiguredTableAnalysisRuleInput
    GetConfiguredTableAnalysisRuleOutput: GetConfiguredTableAnalysisRuleOutput
    GetConfiguredTableAssociationInput: GetConfiguredTableAssociationInput
    GetConfiguredTableAssociationOutput: GetConfiguredTableAssociationOutput
    GetConfiguredTableAssociationAnalysisRuleInput: GetConfiguredTableAssociationAnalysisRuleInput
    GetConfiguredTableAssociationAnalysisRuleOutput: GetConfiguredTableAssociationAnalysisRuleOutput
    GetIdMappingTableInput: GetIdMappingTableInput
    GetIdMappingTableOutput: GetIdMappingTableOutput
    GetIdNamespaceAssociationInput: GetIdNamespaceAssociationInput
    GetIdNamespaceAssociationOutput: GetIdNamespaceAssociationOutput
    GetMembershipInput: GetMembershipInput
    GetMembershipOutput: GetMembershipOutput
    GetPrivacyBudgetTemplateInput: GetPrivacyBudgetTemplateInput
    GetPrivacyBudgetTemplateOutput: GetPrivacyBudgetTemplateOutput
    GetProtectedJobInput: GetProtectedJobInput
    GetProtectedJobOutput: GetProtectedJobOutput
    GetProtectedQueryInput: GetProtectedQueryInput
    GetProtectedQueryOutput: GetProtectedQueryOutput
    GetSchemaInput: GetSchemaInput
    GetSchemaOutput: GetSchemaOutput
    GetSchemaAnalysisRuleInput: GetSchemaAnalysisRuleInput
    GetSchemaAnalysisRuleOutput: GetSchemaAnalysisRuleOutput
    ListAnalysisTemplatesInput: ListAnalysisTemplatesInput
    ListAnalysisTemplatesOutput: ListAnalysisTemplatesOutput
    ListCollaborationAnalysisTemplatesInput: ListCollaborationAnalysisTemplatesInput
    ListCollaborationAnalysisTemplatesOutput: ListCollaborationAnalysisTemplatesOutput
    ListCollaborationChangeRequestsInput: ListCollaborationChangeRequestsInput
    ListCollaborationChangeRequestsOutput: ListCollaborationChangeRequestsOutput
    ListCollaborationConfiguredAudienceModelAssociationsInput: ListCollaborationConfiguredAudienceModelAssociationsInput
    ListCollaborationConfiguredAudienceModelAssociationsOutput: ListCollaborationConfiguredAudienceModelAssociationsOutput
    ListCollaborationIdNamespaceAssociationsInput: ListCollaborationIdNamespaceAssociationsInput
    ListCollaborationIdNamespaceAssociationsOutput: ListCollaborationIdNamespaceAssociationsOutput
    ListCollaborationPrivacyBudgetsInput: ListCollaborationPrivacyBudgetsInput
    ListCollaborationPrivacyBudgetsOutput: ListCollaborationPrivacyBudgetsOutput
    ListCollaborationPrivacyBudgetTemplatesInput: ListCollaborationPrivacyBudgetTemplatesInput
    ListCollaborationPrivacyBudgetTemplatesOutput: ListCollaborationPrivacyBudgetTemplatesOutput
    ListCollaborationsInput: ListCollaborationsInput
    ListCollaborationsOutput: ListCollaborationsOutput
    ListConfiguredAudienceModelAssociationsInput: ListConfiguredAudienceModelAssociationsInput
    ListConfiguredAudienceModelAssociationsOutput: ListConfiguredAudienceModelAssociationsOutput
    ListConfiguredTableAssociationsInput: ListConfiguredTableAssociationsInput
    ListConfiguredTableAssociationsOutput: ListConfiguredTableAssociationsOutput
    ListConfiguredTablesInput: ListConfiguredTablesInput
    ListConfiguredTablesOutput: ListConfiguredTablesOutput
    ListIdMappingTablesInput: ListIdMappingTablesInput
    ListIdMappingTablesOutput: ListIdMappingTablesOutput
    ListIdNamespaceAssociationsInput: ListIdNamespaceAssociationsInput
    ListIdNamespaceAssociationsOutput: ListIdNamespaceAssociationsOutput
    ListMembersInput: ListMembersInput
    ListMembersOutput: ListMembersOutput
    ListMembershipsInput: ListMembershipsInput
    ListMembershipsOutput: ListMembershipsOutput
    ListPrivacyBudgetsInput: ListPrivacyBudgetsInput
    ListPrivacyBudgetsOutput: ListPrivacyBudgetsOutput
    ListPrivacyBudgetTemplatesInput: ListPrivacyBudgetTemplatesInput
    ListPrivacyBudgetTemplatesOutput: ListPrivacyBudgetTemplatesOutput
    ListProtectedJobsInput: ListProtectedJobsInput
    ListProtectedJobsOutput: ListProtectedJobsOutput
    ListProtectedQueriesInput: ListProtectedQueriesInput
    ListProtectedQueriesOutput: ListProtectedQueriesOutput
    ListSchemasInput: ListSchemasInput
    ListSchemasOutput: ListSchemasOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PopulateIdMappingTableInput: PopulateIdMappingTableInput
    PopulateIdMappingTableOutput: PopulateIdMappingTableOutput
    PreviewPrivacyImpactInput: PreviewPrivacyImpactInput
    PreviewPrivacyImpactOutput: PreviewPrivacyImpactOutput
    StartProtectedJobInput: StartProtectedJobInput
    StartProtectedJobOutput: StartProtectedJobOutput
    StartProtectedQueryInput: StartProtectedQueryInput
    StartProtectedQueryOutput: StartProtectedQueryOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAnalysisTemplateInput: UpdateAnalysisTemplateInput
    UpdateAnalysisTemplateOutput: UpdateAnalysisTemplateOutput
    UpdateCollaborationInput: UpdateCollaborationInput
    UpdateCollaborationOutput: UpdateCollaborationOutput
    UpdateCollaborationChangeRequestInput: UpdateCollaborationChangeRequestInput
    UpdateCollaborationChangeRequestOutput: UpdateCollaborationChangeRequestOutput
    UpdateConfiguredAudienceModelAssociationInput: UpdateConfiguredAudienceModelAssociationInput
    UpdateConfiguredAudienceModelAssociationOutput: UpdateConfiguredAudienceModelAssociationOutput
    UpdateConfiguredTableInput: UpdateConfiguredTableInput
    UpdateConfiguredTableOutput: UpdateConfiguredTableOutput
    UpdateConfiguredTableAnalysisRuleInput: UpdateConfiguredTableAnalysisRuleInput
    UpdateConfiguredTableAnalysisRuleOutput: UpdateConfiguredTableAnalysisRuleOutput
    UpdateConfiguredTableAssociationInput: UpdateConfiguredTableAssociationInput
    UpdateConfiguredTableAssociationOutput: UpdateConfiguredTableAssociationOutput
    UpdateConfiguredTableAssociationAnalysisRuleInput: UpdateConfiguredTableAssociationAnalysisRuleInput
    UpdateConfiguredTableAssociationAnalysisRuleOutput: UpdateConfiguredTableAssociationAnalysisRuleOutput
    UpdateIdMappingTableInput: UpdateIdMappingTableInput
    UpdateIdMappingTableOutput: UpdateIdMappingTableOutput
    UpdateIdNamespaceAssociationInput: UpdateIdNamespaceAssociationInput
    UpdateIdNamespaceAssociationOutput: UpdateIdNamespaceAssociationOutput
    UpdateMembershipInput: UpdateMembershipInput
    UpdateMembershipOutput: UpdateMembershipOutput
    UpdatePrivacyBudgetTemplateInput: UpdatePrivacyBudgetTemplateInput
    UpdatePrivacyBudgetTemplateOutput: UpdatePrivacyBudgetTemplateOutput
    UpdateProtectedJobInput: UpdateProtectedJobInput
    UpdateProtectedJobOutput: UpdateProtectedJobOutput
    UpdateProtectedQueryInput: UpdateProtectedQueryInput
    UpdateProtectedQueryOutput: UpdateProtectedQueryOutput
end

return M
