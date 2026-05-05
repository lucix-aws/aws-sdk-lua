local record AssociateAssessmentReportEvidenceFolderInput
    assessmentId: string
    evidenceFolderId: string
end

local record AssociateAssessmentReportEvidenceFolderOutput
end

local record BatchAssociateAssessmentReportEvidenceInput
    assessmentId: string
    evidenceFolderId: string
    evidenceIds: {string}
end

local record BatchAssociateAssessmentReportEvidenceOutput
    evidenceIds: {string}
    errors: {AssessmentReportEvidenceError}
end

local record BatchCreateDelegationByAssessmentInput
    createDelegationRequests: {CreateDelegationRequest}
    assessmentId: string
end

local record BatchCreateDelegationByAssessmentOutput
    delegations: {Delegation}
    errors: {BatchCreateDelegationByAssessmentError}
end

local record BatchDeleteDelegationByAssessmentInput
    delegationIds: {string}
    assessmentId: string
end

local record BatchDeleteDelegationByAssessmentOutput
    errors: {BatchDeleteDelegationByAssessmentError}
end

local record BatchDisassociateAssessmentReportEvidenceInput
    assessmentId: string
    evidenceFolderId: string
    evidenceIds: {string}
end

local record BatchDisassociateAssessmentReportEvidenceOutput
    evidenceIds: {string}
    errors: {AssessmentReportEvidenceError}
end

local record BatchImportEvidenceToAssessmentControlInput
    assessmentId: string
    controlSetId: string
    controlId: string
    manualEvidence: {ManualEvidence}
end

local record BatchImportEvidenceToAssessmentControlOutput
    errors: {BatchImportEvidenceToAssessmentControlError}
end

local record CreateAssessmentInput
    name: string
    description: string
    assessmentReportsDestination: AssessmentReportsDestination
    scope: Scope
    roles: {Role}
    frameworkId: string
    tags: {string : string}
end

local record CreateAssessmentOutput
    assessment: Assessment
end

local record CreateAssessmentFrameworkInput
    name: string
    description: string
    complianceType: string
    controlSets: {CreateAssessmentFrameworkControlSet}
    tags: {string : string}
end

local record CreateAssessmentFrameworkOutput
    framework: Framework
end

local record CreateAssessmentReportInput
    name: string
    description: string
    assessmentId: string
    queryStatement: string
end

local record CreateAssessmentReportOutput
    assessmentReport: AssessmentReport
end

local record CreateControlInput
    name: string
    description: string
    testingInformation: string
    actionPlanTitle: string
    actionPlanInstructions: string
    controlMappingSources: {CreateControlMappingSource}
    tags: {string : string}
end

local record CreateControlOutput
    control: Control
end

local record DeleteAssessmentInput
    assessmentId: string
end

local record DeleteAssessmentOutput
end

local record DeleteAssessmentFrameworkInput
    frameworkId: string
end

local record DeleteAssessmentFrameworkOutput
end

local record DeleteAssessmentFrameworkShareInput
    requestId: string
    requestType: string
end

local record DeleteAssessmentFrameworkShareOutput
end

local record DeleteAssessmentReportInput
    assessmentId: string
    assessmentReportId: string
end

local record DeleteAssessmentReportOutput
end

local record DeleteControlInput
    controlId: string
end

local record DeleteControlOutput
end

local record DeregisterAccountInput
end

local record DeregisterAccountOutput
    status: string
end

local record DeregisterOrganizationAdminAccountInput
    adminAccountId: string
end

local record DeregisterOrganizationAdminAccountOutput
end

local record DisassociateAssessmentReportEvidenceFolderInput
    assessmentId: string
    evidenceFolderId: string
end

local record DisassociateAssessmentReportEvidenceFolderOutput
end

local record GetAccountStatusInput
end

local record GetAccountStatusOutput
    status: string
end

local record GetAssessmentInput
    assessmentId: string
end

local record GetAssessmentOutput
    assessment: Assessment
    userRole: Role
end

local record GetAssessmentFrameworkInput
    frameworkId: string
end

local record GetAssessmentFrameworkOutput
    framework: Framework
end

local record GetAssessmentReportUrlInput
    assessmentReportId: string
    assessmentId: string
end

local record GetAssessmentReportUrlOutput
    preSignedUrl: URL
end

local record GetChangeLogsInput
    assessmentId: string
    controlSetId: string
    controlId: string
    nextToken: string
    maxResults: number
end

local record GetChangeLogsOutput
    changeLogs: {ChangeLog}
    nextToken: string
end

local record GetControlInput
    controlId: string
end

local record GetControlOutput
    control: Control
end

local record GetDelegationsInput
    nextToken: string
    maxResults: number
end

local record GetDelegationsOutput
    delegations: {DelegationMetadata}
    nextToken: string
end

local record GetEvidenceInput
    assessmentId: string
    controlSetId: string
    evidenceFolderId: string
    evidenceId: string
end

local record GetEvidenceOutput
    evidence: Evidence
end

local record GetEvidenceByEvidenceFolderInput
    assessmentId: string
    controlSetId: string
    evidenceFolderId: string
    nextToken: string
    maxResults: number
end

local record GetEvidenceByEvidenceFolderOutput
    evidence: {Evidence}
    nextToken: string
end

local record GetEvidenceFileUploadUrlInput
    fileName: string
end

local record GetEvidenceFileUploadUrlOutput
    evidenceFileName: string
    uploadUrl: string
end

local record GetEvidenceFolderInput
    assessmentId: string
    controlSetId: string
    evidenceFolderId: string
end

local record GetEvidenceFolderOutput
    evidenceFolder: AssessmentEvidenceFolder
end

local record GetEvidenceFoldersByAssessmentInput
    assessmentId: string
    nextToken: string
    maxResults: number
end

local record GetEvidenceFoldersByAssessmentOutput
    evidenceFolders: {AssessmentEvidenceFolder}
    nextToken: string
end

local record GetEvidenceFoldersByAssessmentControlInput
    assessmentId: string
    controlSetId: string
    controlId: string
    nextToken: string
    maxResults: number
end

local record GetEvidenceFoldersByAssessmentControlOutput
    evidenceFolders: {AssessmentEvidenceFolder}
    nextToken: string
end

local record GetInsightsInput
end

local record GetInsightsOutput
    insights: Insights
end

local record GetInsightsByAssessmentInput
    assessmentId: string
end

local record GetInsightsByAssessmentOutput
    insights: InsightsByAssessment
end

local record GetOrganizationAdminAccountInput
end

local record GetOrganizationAdminAccountOutput
    adminAccountId: string
    organizationId: string
end

local record GetServicesInScopeInput
end

local record GetServicesInScopeOutput
    serviceMetadata: {ServiceMetadata}
end

local record GetSettingsInput
    attribute: string
end

local record GetSettingsOutput
    settings: Settings
end

local record ListAssessmentControlInsightsByControlDomainInput
    controlDomainId: string
    assessmentId: string
    nextToken: string
    maxResults: number
end

local record ListAssessmentControlInsightsByControlDomainOutput
    controlInsightsByAssessment: {ControlInsightsMetadataByAssessmentItem}
    nextToken: string
end

local record ListAssessmentFrameworksInput
    frameworkType: string
    nextToken: string
    maxResults: number
end

local record ListAssessmentFrameworksOutput
    frameworkMetadataList: {AssessmentFrameworkMetadata}
    nextToken: string
end

local record ListAssessmentFrameworkShareRequestsInput
    requestType: string
    nextToken: string
    maxResults: number
end

local record ListAssessmentFrameworkShareRequestsOutput
    assessmentFrameworkShareRequests: {AssessmentFrameworkShareRequest}
    nextToken: string
end

local record ListAssessmentReportsInput
    nextToken: string
    maxResults: number
end

local record ListAssessmentReportsOutput
    assessmentReports: {AssessmentReportMetadata}
    nextToken: string
end

local record ListAssessmentsInput
    status: string
    nextToken: string
    maxResults: number
end

local record ListAssessmentsOutput
    assessmentMetadata: {AssessmentMetadataItem}
    nextToken: string
end

local record ListControlDomainInsightsInput
    nextToken: string
    maxResults: number
end

local record ListControlDomainInsightsOutput
    controlDomainInsights: {ControlDomainInsights}
    nextToken: string
end

local record ListControlDomainInsightsByAssessmentInput
    assessmentId: string
    nextToken: string
    maxResults: number
end

local record ListControlDomainInsightsByAssessmentOutput
    controlDomainInsights: {ControlDomainInsights}
    nextToken: string
end

local record ListControlInsightsByControlDomainInput
    controlDomainId: string
    nextToken: string
    maxResults: number
end

local record ListControlInsightsByControlDomainOutput
    controlInsightsMetadata: {ControlInsightsMetadataItem}
    nextToken: string
end

local record ListControlsInput
    controlType: string
    nextToken: string
    maxResults: number
    controlCatalogId: string
end

local record ListControlsOutput
    controlMetadataList: {ControlMetadata}
    nextToken: string
end

local record ListKeywordsForDataSourceInput
    source: string
    nextToken: string
    maxResults: number
end

local record ListKeywordsForDataSourceOutput
    keywords: {string}
    nextToken: string
end

local record ListNotificationsInput
    nextToken: string
    maxResults: number
end

local record ListNotificationsOutput
    notifications: {Notification}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record RegisterAccountInput
    kmsKey: string
    delegatedAdminAccount: string
end

local record RegisterAccountOutput
    status: string
end

local record RegisterOrganizationAdminAccountInput
    adminAccountId: string
end

local record RegisterOrganizationAdminAccountOutput
    adminAccountId: string
    organizationId: string
end

local record StartAssessmentFrameworkShareInput
    frameworkId: string
    destinationAccount: string
    destinationRegion: string
    comment: string
end

local record StartAssessmentFrameworkShareOutput
    assessmentFrameworkShareRequest: AssessmentFrameworkShareRequest
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

local record UpdateAssessmentInput
    assessmentId: string
    assessmentName: string
    assessmentDescription: string
    scope: Scope
    assessmentReportsDestination: AssessmentReportsDestination
    roles: {Role}
end

local record UpdateAssessmentOutput
    assessment: Assessment
end

local record UpdateAssessmentControlInput
    assessmentId: string
    controlSetId: string
    controlId: string
    controlStatus: string
    commentBody: string
end

local record UpdateAssessmentControlOutput
    control: AssessmentControl
end

local record UpdateAssessmentControlSetStatusInput
    assessmentId: string
    controlSetId: string
    status: string
    comment: string
end

local record UpdateAssessmentControlSetStatusOutput
    controlSet: AssessmentControlSet
end

local record UpdateAssessmentFrameworkInput
    frameworkId: string
    name: string
    description: string
    complianceType: string
    controlSets: {UpdateAssessmentFrameworkControlSet}
end

local record UpdateAssessmentFrameworkOutput
    framework: Framework
end

local record UpdateAssessmentFrameworkShareInput
    requestId: string
    requestType: string
    action: string
end

local record UpdateAssessmentFrameworkShareOutput
    assessmentFrameworkShareRequest: AssessmentFrameworkShareRequest
end

local record UpdateAssessmentStatusInput
    assessmentId: string
    status: string
end

local record UpdateAssessmentStatusOutput
    assessment: Assessment
end

local record UpdateControlInput
    controlId: string
    name: string
    description: string
    testingInformation: string
    actionPlanTitle: string
    actionPlanInstructions: string
    controlMappingSources: {ControlMappingSource}
end

local record UpdateControlOutput
    control: Control
end

local record UpdateSettingsInput
    snsTopic: string
    defaultAssessmentReportsDestination: AssessmentReportsDestination
    defaultProcessOwners: {Role}
    kmsKey: string
    evidenceFinderEnabled: boolean
    deregistrationPolicy: DeregistrationPolicy
    defaultExportDestination: DefaultExportDestination
end

local record UpdateSettingsOutput
    settings: Settings
end

local record ValidateAssessmentReportIntegrityInput
    s3RelativePath: string
end

local record ValidateAssessmentReportIntegrityOutput
    signatureValid: boolean
    signatureAlgorithm: string
    signatureDateTime: string
    signatureKeyId: string
    validationErrors: {string}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ServiceQuotaExceededException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ServiceQuotaExceededException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record InternalServerException
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
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
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
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
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
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ServiceQuotaExceededException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ServiceQuotaExceededException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ServiceQuotaExceededException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local type FrameworkType = "Standard" | "Custom"

local type SettingAttribute = "ALL" | "IS_AWS_ORG_ENABLED" | "SNS_TOPIC" | "DEFAULT_ASSESSMENT_REPORTS_DESTINATION" | "DEFAULT_PROCESS_OWNERS" | "EVIDENCE_FINDER_ENABLEMENT" | "DEREGISTRATION_POLICY" | "DEFAULT_EXPORT_DESTINATION"

local type AssessmentStatus = "ACTIVE" | "INACTIVE"

local type ControlSetStatus = "ACTIVE" | "UNDER_REVIEW" | "REVIEWED"

local type ShareRequestAction = "ACCEPT" | "DECLINE" | "REVOKE"

local type ControlType = "Standard" | "Custom" | "Core"

local type AccountStatus = "ACTIVE" | "INACTIVE" | "PENDING_ACTIVATION"

local type ShareRequestType = "SENT" | "RECEIVED"

local type DataSourceType = "AWS_Cloudtrail" | "AWS_Config" | "AWS_Security_Hub" | "AWS_API_Call" | "MANUAL"

local type ControlStatus = "UNDER_REVIEW" | "REVIEWED" | "INACTIVE"

local record M
    AssociateAssessmentReportEvidenceFolderInput: AssociateAssessmentReportEvidenceFolderInput
    AssociateAssessmentReportEvidenceFolderOutput: AssociateAssessmentReportEvidenceFolderOutput
    BatchAssociateAssessmentReportEvidenceInput: BatchAssociateAssessmentReportEvidenceInput
    BatchAssociateAssessmentReportEvidenceOutput: BatchAssociateAssessmentReportEvidenceOutput
    BatchCreateDelegationByAssessmentInput: BatchCreateDelegationByAssessmentInput
    BatchCreateDelegationByAssessmentOutput: BatchCreateDelegationByAssessmentOutput
    BatchDeleteDelegationByAssessmentInput: BatchDeleteDelegationByAssessmentInput
    BatchDeleteDelegationByAssessmentOutput: BatchDeleteDelegationByAssessmentOutput
    BatchDisassociateAssessmentReportEvidenceInput: BatchDisassociateAssessmentReportEvidenceInput
    BatchDisassociateAssessmentReportEvidenceOutput: BatchDisassociateAssessmentReportEvidenceOutput
    BatchImportEvidenceToAssessmentControlInput: BatchImportEvidenceToAssessmentControlInput
    BatchImportEvidenceToAssessmentControlOutput: BatchImportEvidenceToAssessmentControlOutput
    CreateAssessmentInput: CreateAssessmentInput
    CreateAssessmentOutput: CreateAssessmentOutput
    CreateAssessmentFrameworkInput: CreateAssessmentFrameworkInput
    CreateAssessmentFrameworkOutput: CreateAssessmentFrameworkOutput
    CreateAssessmentReportInput: CreateAssessmentReportInput
    CreateAssessmentReportOutput: CreateAssessmentReportOutput
    CreateControlInput: CreateControlInput
    CreateControlOutput: CreateControlOutput
    DeleteAssessmentInput: DeleteAssessmentInput
    DeleteAssessmentOutput: DeleteAssessmentOutput
    DeleteAssessmentFrameworkInput: DeleteAssessmentFrameworkInput
    DeleteAssessmentFrameworkOutput: DeleteAssessmentFrameworkOutput
    DeleteAssessmentFrameworkShareInput: DeleteAssessmentFrameworkShareInput
    DeleteAssessmentFrameworkShareOutput: DeleteAssessmentFrameworkShareOutput
    DeleteAssessmentReportInput: DeleteAssessmentReportInput
    DeleteAssessmentReportOutput: DeleteAssessmentReportOutput
    DeleteControlInput: DeleteControlInput
    DeleteControlOutput: DeleteControlOutput
    DeregisterAccountInput: DeregisterAccountInput
    DeregisterAccountOutput: DeregisterAccountOutput
    DeregisterOrganizationAdminAccountInput: DeregisterOrganizationAdminAccountInput
    DeregisterOrganizationAdminAccountOutput: DeregisterOrganizationAdminAccountOutput
    DisassociateAssessmentReportEvidenceFolderInput: DisassociateAssessmentReportEvidenceFolderInput
    DisassociateAssessmentReportEvidenceFolderOutput: DisassociateAssessmentReportEvidenceFolderOutput
    GetAccountStatusInput: GetAccountStatusInput
    GetAccountStatusOutput: GetAccountStatusOutput
    GetAssessmentInput: GetAssessmentInput
    GetAssessmentOutput: GetAssessmentOutput
    GetAssessmentFrameworkInput: GetAssessmentFrameworkInput
    GetAssessmentFrameworkOutput: GetAssessmentFrameworkOutput
    GetAssessmentReportUrlInput: GetAssessmentReportUrlInput
    GetAssessmentReportUrlOutput: GetAssessmentReportUrlOutput
    GetChangeLogsInput: GetChangeLogsInput
    GetChangeLogsOutput: GetChangeLogsOutput
    GetControlInput: GetControlInput
    GetControlOutput: GetControlOutput
    GetDelegationsInput: GetDelegationsInput
    GetDelegationsOutput: GetDelegationsOutput
    GetEvidenceInput: GetEvidenceInput
    GetEvidenceOutput: GetEvidenceOutput
    GetEvidenceByEvidenceFolderInput: GetEvidenceByEvidenceFolderInput
    GetEvidenceByEvidenceFolderOutput: GetEvidenceByEvidenceFolderOutput
    GetEvidenceFileUploadUrlInput: GetEvidenceFileUploadUrlInput
    GetEvidenceFileUploadUrlOutput: GetEvidenceFileUploadUrlOutput
    GetEvidenceFolderInput: GetEvidenceFolderInput
    GetEvidenceFolderOutput: GetEvidenceFolderOutput
    GetEvidenceFoldersByAssessmentInput: GetEvidenceFoldersByAssessmentInput
    GetEvidenceFoldersByAssessmentOutput: GetEvidenceFoldersByAssessmentOutput
    GetEvidenceFoldersByAssessmentControlInput: GetEvidenceFoldersByAssessmentControlInput
    GetEvidenceFoldersByAssessmentControlOutput: GetEvidenceFoldersByAssessmentControlOutput
    GetInsightsInput: GetInsightsInput
    GetInsightsOutput: GetInsightsOutput
    GetInsightsByAssessmentInput: GetInsightsByAssessmentInput
    GetInsightsByAssessmentOutput: GetInsightsByAssessmentOutput
    GetOrganizationAdminAccountInput: GetOrganizationAdminAccountInput
    GetOrganizationAdminAccountOutput: GetOrganizationAdminAccountOutput
    GetServicesInScopeInput: GetServicesInScopeInput
    GetServicesInScopeOutput: GetServicesInScopeOutput
    GetSettingsInput: GetSettingsInput
    GetSettingsOutput: GetSettingsOutput
    ListAssessmentControlInsightsByControlDomainInput: ListAssessmentControlInsightsByControlDomainInput
    ListAssessmentControlInsightsByControlDomainOutput: ListAssessmentControlInsightsByControlDomainOutput
    ListAssessmentFrameworksInput: ListAssessmentFrameworksInput
    ListAssessmentFrameworksOutput: ListAssessmentFrameworksOutput
    ListAssessmentFrameworkShareRequestsInput: ListAssessmentFrameworkShareRequestsInput
    ListAssessmentFrameworkShareRequestsOutput: ListAssessmentFrameworkShareRequestsOutput
    ListAssessmentReportsInput: ListAssessmentReportsInput
    ListAssessmentReportsOutput: ListAssessmentReportsOutput
    ListAssessmentsInput: ListAssessmentsInput
    ListAssessmentsOutput: ListAssessmentsOutput
    ListControlDomainInsightsInput: ListControlDomainInsightsInput
    ListControlDomainInsightsOutput: ListControlDomainInsightsOutput
    ListControlDomainInsightsByAssessmentInput: ListControlDomainInsightsByAssessmentInput
    ListControlDomainInsightsByAssessmentOutput: ListControlDomainInsightsByAssessmentOutput
    ListControlInsightsByControlDomainInput: ListControlInsightsByControlDomainInput
    ListControlInsightsByControlDomainOutput: ListControlInsightsByControlDomainOutput
    ListControlsInput: ListControlsInput
    ListControlsOutput: ListControlsOutput
    ListKeywordsForDataSourceInput: ListKeywordsForDataSourceInput
    ListKeywordsForDataSourceOutput: ListKeywordsForDataSourceOutput
    ListNotificationsInput: ListNotificationsInput
    ListNotificationsOutput: ListNotificationsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    RegisterAccountInput: RegisterAccountInput
    RegisterAccountOutput: RegisterAccountOutput
    RegisterOrganizationAdminAccountInput: RegisterOrganizationAdminAccountInput
    RegisterOrganizationAdminAccountOutput: RegisterOrganizationAdminAccountOutput
    StartAssessmentFrameworkShareInput: StartAssessmentFrameworkShareInput
    StartAssessmentFrameworkShareOutput: StartAssessmentFrameworkShareOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAssessmentInput: UpdateAssessmentInput
    UpdateAssessmentOutput: UpdateAssessmentOutput
    UpdateAssessmentControlInput: UpdateAssessmentControlInput
    UpdateAssessmentControlOutput: UpdateAssessmentControlOutput
    UpdateAssessmentControlSetStatusInput: UpdateAssessmentControlSetStatusInput
    UpdateAssessmentControlSetStatusOutput: UpdateAssessmentControlSetStatusOutput
    UpdateAssessmentFrameworkInput: UpdateAssessmentFrameworkInput
    UpdateAssessmentFrameworkOutput: UpdateAssessmentFrameworkOutput
    UpdateAssessmentFrameworkShareInput: UpdateAssessmentFrameworkShareInput
    UpdateAssessmentFrameworkShareOutput: UpdateAssessmentFrameworkShareOutput
    UpdateAssessmentStatusInput: UpdateAssessmentStatusInput
    UpdateAssessmentStatusOutput: UpdateAssessmentStatusOutput
    UpdateControlInput: UpdateControlInput
    UpdateControlOutput: UpdateControlOutput
    UpdateSettingsInput: UpdateSettingsInput
    UpdateSettingsOutput: UpdateSettingsOutput
    ValidateAssessmentReportIntegrityInput: ValidateAssessmentReportIntegrityInput
    ValidateAssessmentReportIntegrityOutput: ValidateAssessmentReportIntegrityOutput
end

return M
