local record BatchGetMemberAccountDetailsInput
    membershipId: string
    accountIds: {string}
end

local record BatchGetMemberAccountDetailsOutput
    items: {GetMembershipAccountDetailItem}
    errors: {GetMembershipAccountDetailError}
end

local record CancelMembershipInput
    membershipId: string
end

local record CancelMembershipOutput
    membershipId: string
end

local record CloseCaseInput
    caseId: string
end

local record CloseCaseOutput
    caseStatus: string
    closedDate: number
end

local record CreateCaseInput
    clientToken: string
    resolverType: string
    title: string
    description: string
    engagementType: string
    reportedIncidentStartDate: number
    impactedAccounts: {string}
    watchers: {Watcher}
    threatActorIpAddresses: {ThreatActorIp}
    impactedServices: {string}
    impactedAwsRegions: {ImpactedAwsRegion}
    tags: {string : string}
end

local record CreateCaseOutput
    caseId: string
end

local record CreateCaseCommentInput
    caseId: string
    clientToken: string
    body: string
end

local record CreateCaseCommentOutput
    commentId: string
end

local record CreateMembershipInput
    clientToken: string
    membershipName: string
    incidentResponseTeam: {IncidentResponder}
    optInFeatures: {OptInFeature}
    tags: {string : string}
    coverEntireOrganization: boolean
end

local record CreateMembershipOutput
    membershipId: string
end

local record GetCaseInput
    caseId: string
end

local record GetCaseOutput
    title: string
    caseArn: string
    description: string
    caseStatus: string
    engagementType: string
    reportedIncidentStartDate: number
    actualIncidentStartDate: number
    impactedAwsRegions: {ImpactedAwsRegion}
    threatActorIpAddresses: {ThreatActorIp}
    pendingAction: string
    impactedAccounts: {string}
    watchers: {Watcher}
    createdDate: number
    lastUpdatedDate: number
    closureCode: string
    resolverType: string
    impactedServices: {string}
    caseAttachments: {CaseAttachmentAttributes}
    closedDate: number
    caseMetadata: {CaseMetadataEntry}
end

local record GetCaseAttachmentDownloadUrlInput
    caseId: string
    attachmentId: string
end

local record GetCaseAttachmentDownloadUrlOutput
    attachmentPresignedUrl: string
end

local record GetCaseAttachmentUploadUrlInput
    caseId: string
    fileName: string
    contentLength: number
    clientToken: string
end

local record GetCaseAttachmentUploadUrlOutput
    attachmentPresignedUrl: string
end

local record GetMembershipInput
    membershipId: string
end

local record GetMembershipOutput
    membershipId: string
    accountId: string
    region: string
    membershipName: string
    membershipArn: string
    membershipStatus: string
    membershipActivationTimestamp: number
    membershipDeactivationTimestamp: number
    customerType: string
    numberOfAccountsCovered: number
    incidentResponseTeam: {IncidentResponder}
    optInFeatures: {OptInFeature}
    membershipAccountsConfigurations: MembershipAccountsConfigurations
end

local record ListCaseEditsInput
    nextToken: string
    maxResults: number
    caseId: string
end

local record ListCaseEditsOutput
    nextToken: string
    items: {CaseEditItem}
    total: number
end

local record ListCasesInput
    nextToken: string
    maxResults: number
end

local record ListCasesOutput
    nextToken: string
    items: {ListCasesItem}
    total: number
end

local record ListCommentsInput
    nextToken: string
    maxResults: number
    caseId: string
end

local record ListCommentsOutput
    nextToken: string
    items: {ListCommentsItem}
    total: number
end

local record ListInvestigationsInput
    nextToken: string
    maxResults: number
    caseId: string
end

local record ListInvestigationsOutput
    nextToken: string
    investigationActions: {InvestigationAction}
end

local record ListMembershipsInput
    nextToken: string
    maxResults: number
end

local record ListMembershipsOutput
    nextToken: string
    items: {ListMembershipItem}
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record SendFeedbackInput
    caseId: string
    resultId: string
    usefulness: string
    comment: string
end

local record SendFeedbackOutput
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

local record UpdateCaseInput
    caseId: string
    title: string
    description: string
    reportedIncidentStartDate: number
    actualIncidentStartDate: number
    engagementType: string
    watchersToAdd: {Watcher}
    watchersToDelete: {Watcher}
    threatActorIpAddressesToAdd: {ThreatActorIp}
    threatActorIpAddressesToDelete: {ThreatActorIp}
    impactedServicesToAdd: {string}
    impactedServicesToDelete: {string}
    impactedAwsRegionsToAdd: {ImpactedAwsRegion}
    impactedAwsRegionsToDelete: {ImpactedAwsRegion}
    impactedAccountsToAdd: {string}
    impactedAccountsToDelete: {string}
    caseMetadata: {CaseMetadataEntry}
end

local record UpdateCaseOutput
end

local record UpdateCaseCommentInput
    caseId: string
    commentId: string
    body: string
end

local record UpdateCaseCommentOutput
    commentId: string
    body: string
end

local record UpdateCaseStatusInput
    caseId: string
    caseStatus: string
end

local record UpdateCaseStatusOutput
    caseStatus: string
end

local record UpdateMembershipInput
    membershipId: string
    membershipName: string
    incidentResponseTeam: {IncidentResponder}
    optInFeatures: {OptInFeature}
    membershipAccountsConfigurationsUpdate: MembershipAccountsConfigurationsUpdate
    undoMembershipCancellation: boolean
end

local record UpdateMembershipOutput
end

local record UpdateResolverTypeInput
    caseId: string
    resolverType: string
end

local record UpdateResolverTypeOutput
    caseId: string
    caseStatus: string
    resolverType: string
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

local record InvalidTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record SecurityIncidentResponseNotActiveException
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

local record InvalidTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record SecurityIncidentResponseNotActiveException
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

local record InvalidTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record SecurityIncidentResponseNotActiveException
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

local record InvalidTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record SecurityIncidentResponseNotActiveException
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

local record InvalidTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record SecurityIncidentResponseNotActiveException
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

local record InvalidTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record SecurityIncidentResponseNotActiveException
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

local record InvalidTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record SecurityIncidentResponseNotActiveException
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

local record InvalidTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record SecurityIncidentResponseNotActiveException
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

local record InvalidTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record SecurityIncidentResponseNotActiveException
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

local record InvalidTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record SecurityIncidentResponseNotActiveException
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

local record InvalidTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record SecurityIncidentResponseNotActiveException
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

local record InvalidTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record SecurityIncidentResponseNotActiveException
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

local record InvalidTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record SecurityIncidentResponseNotActiveException
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

local record InvalidTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record SecurityIncidentResponseNotActiveException
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

local record InvalidTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record SecurityIncidentResponseNotActiveException
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

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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

local record InvalidTokenException
    message: string
end

local record SecurityIncidentResponseNotActiveException
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
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
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

local record InvalidTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record SecurityIncidentResponseNotActiveException
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

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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

local record InvalidTokenException
    message: string
end

local record SecurityIncidentResponseNotActiveException
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
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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

local record InvalidTokenException
    message: string
end

local record SecurityIncidentResponseNotActiveException
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
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
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

local record InvalidTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record SecurityIncidentResponseNotActiveException
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

local record InvalidTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record SecurityIncidentResponseNotActiveException
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

local record InvalidTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record SecurityIncidentResponseNotActiveException
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

local record InvalidTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record SecurityIncidentResponseNotActiveException
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

local record InvalidTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record SecurityIncidentResponseNotActiveException
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
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local type AwsRegion = "af-south-1" | "ap-east-1" | "ap-east-2" | "ap-northeast-1" | "ap-northeast-2" | "ap-northeast-3" | "ap-south-1" | "ap-south-2" | "ap-southeast-1" | "ap-southeast-2" | "ap-southeast-3" | "ap-southeast-4" | "ap-southeast-5" | "ap-southeast-6" | "ap-southeast-7" | "ca-central-1" | "ca-west-1" | "cn-north-1" | "cn-northwest-1" | "eu-central-1" | "eu-central-2" | "eu-north-1" | "eu-south-1" | "eu-south-2" | "eu-west-1" | "eu-west-2" | "eu-west-3" | "il-central-1" | "me-central-1" | "me-south-1" | "mx-central-1" | "sa-east-1" | "us-east-1" | "us-east-2" | "us-west-1" | "us-west-2"

local type CustomerType = "Standalone" | "Organization"

local type SelfManagedCaseStatus = "Submitted" | "Detection and Analysis" | "Containment, Eradication and Recovery" | "Post-incident Activities"

local type CaseStatus = "Submitted" | "Acknowledged" | "Detection and Analysis" | "Containment, Eradication and Recovery" | "Post-incident Activities" | "Ready to Close" | "Closed"

local type ClosureCode = "Investigation Completed" | "Not Resolved" | "False Positive" | "Duplicate"

local type EngagementType = "Security Incident" | "Investigation"

local type UsefulnessRating = "USEFUL" | "NOT_USEFUL"

local type PendingAction = "Customer" | "None"

local type MembershipStatus = "Active" | "Cancelled" | "Terminated"

local type ResolverType = "AWS" | "Self"

local record M
    BatchGetMemberAccountDetailsInput: BatchGetMemberAccountDetailsInput
    BatchGetMemberAccountDetailsOutput: BatchGetMemberAccountDetailsOutput
    CancelMembershipInput: CancelMembershipInput
    CancelMembershipOutput: CancelMembershipOutput
    CloseCaseInput: CloseCaseInput
    CloseCaseOutput: CloseCaseOutput
    CreateCaseInput: CreateCaseInput
    CreateCaseOutput: CreateCaseOutput
    CreateCaseCommentInput: CreateCaseCommentInput
    CreateCaseCommentOutput: CreateCaseCommentOutput
    CreateMembershipInput: CreateMembershipInput
    CreateMembershipOutput: CreateMembershipOutput
    GetCaseInput: GetCaseInput
    GetCaseOutput: GetCaseOutput
    GetCaseAttachmentDownloadUrlInput: GetCaseAttachmentDownloadUrlInput
    GetCaseAttachmentDownloadUrlOutput: GetCaseAttachmentDownloadUrlOutput
    GetCaseAttachmentUploadUrlInput: GetCaseAttachmentUploadUrlInput
    GetCaseAttachmentUploadUrlOutput: GetCaseAttachmentUploadUrlOutput
    GetMembershipInput: GetMembershipInput
    GetMembershipOutput: GetMembershipOutput
    ListCaseEditsInput: ListCaseEditsInput
    ListCaseEditsOutput: ListCaseEditsOutput
    ListCasesInput: ListCasesInput
    ListCasesOutput: ListCasesOutput
    ListCommentsInput: ListCommentsInput
    ListCommentsOutput: ListCommentsOutput
    ListInvestigationsInput: ListInvestigationsInput
    ListInvestigationsOutput: ListInvestigationsOutput
    ListMembershipsInput: ListMembershipsInput
    ListMembershipsOutput: ListMembershipsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    SendFeedbackInput: SendFeedbackInput
    SendFeedbackOutput: SendFeedbackOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateCaseInput: UpdateCaseInput
    UpdateCaseOutput: UpdateCaseOutput
    UpdateCaseCommentInput: UpdateCaseCommentInput
    UpdateCaseCommentOutput: UpdateCaseCommentOutput
    UpdateCaseStatusInput: UpdateCaseStatusInput
    UpdateCaseStatusOutput: UpdateCaseStatusOutput
    UpdateMembershipInput: UpdateMembershipInput
    UpdateMembershipOutput: UpdateMembershipOutput
    UpdateResolverTypeInput: UpdateResolverTypeInput
    UpdateResolverTypeOutput: UpdateResolverTypeOutput
end

return M
