local record ApplyArchiveRuleInput
    analyzerArn: string
    ruleName: string
    clientToken: string
end

local record ApplyArchiveRuleOutput
end

local record CancelPolicyGenerationInput
    jobId: string
end

local record CancelPolicyGenerationOutput
end

local record CheckAccessNotGrantedInput
    policyDocument: string
    access: {Access}
    policyType: string
end

local record CheckAccessNotGrantedOutput
    result: string
    message: string
    reasons: {ReasonSummary}
end

local record CheckNoNewAccessInput
    newPolicyDocument: string
    existingPolicyDocument: string
    policyType: string
end

local record CheckNoNewAccessOutput
    result: string
    message: string
    reasons: {ReasonSummary}
end

local record CheckNoPublicAccessInput
    policyDocument: string
    resourceType: string
end

local record CheckNoPublicAccessOutput
    result: string
    message: string
    reasons: {ReasonSummary}
end

local record CreateAccessPreviewInput
    analyzerArn: string
    configurations: {string : Configuration}
    clientToken: string
end

local record CreateAccessPreviewOutput
    id: string
end

local record CreateAnalyzerInput
    analyzerName: string
    type: string
    archiveRules: {InlineArchiveRule}
    tags: {string : string}
    clientToken: string
    configuration: AnalyzerConfiguration
end

local record CreateAnalyzerOutput
    arn: string
end

local record CreateArchiveRuleInput
    analyzerName: string
    ruleName: string
    filter: {string : Criterion}
    clientToken: string
end

local record CreateArchiveRuleOutput
end

local record DeleteAnalyzerInput
    analyzerName: string
    clientToken: string
end

local record DeleteAnalyzerOutput
end

local record DeleteArchiveRuleInput
    analyzerName: string
    ruleName: string
    clientToken: string
end

local record DeleteArchiveRuleOutput
end

local record GenerateFindingRecommendationInput
    analyzerArn: string
    id: string
end

local record GenerateFindingRecommendationOutput
end

local record GetAccessPreviewInput
    accessPreviewId: string
    analyzerArn: string
end

local record GetAccessPreviewOutput
    accessPreview: AccessPreview
end

local record GetAnalyzedResourceInput
    analyzerArn: string
    resourceArn: string
end

local record GetAnalyzedResourceOutput
    resource: AnalyzedResource
end

local record GetAnalyzerInput
    analyzerName: string
end

local record GetAnalyzerOutput
    analyzer: AnalyzerSummary
end

local record GetArchiveRuleInput
    analyzerName: string
    ruleName: string
end

local record GetArchiveRuleOutput
    archiveRule: ArchiveRuleSummary
end

local record GetFindingInput
    analyzerArn: string
    id: string
end

local record GetFindingOutput
    finding: Finding
end

local record GetFindingRecommendationInput
    analyzerArn: string
    id: string
    maxResults: number
    nextToken: string
end

local record GetFindingRecommendationOutput
    startedAt: number
    completedAt: number
    nextToken: string
    error: RecommendationError
    resourceArn: string
    recommendedSteps: {RecommendedStep}
    recommendationType: string
    status: string
end

local record GetFindingsStatisticsInput
    analyzerArn: string
end

local record GetFindingsStatisticsOutput
    findingsStatistics: {FindingsStatistics}
    lastUpdatedAt: number
end

local record GetFindingV2Input
    analyzerArn: string
    id: string
    maxResults: number
    nextToken: string
end

local record GetFindingV2Output
    analyzedAt: number
    createdAt: number
    error: string
    id: string
    nextToken: string
    resource: string
    resourceType: string
    resourceOwnerAccount: string
    status: string
    updatedAt: number
    findingDetails: {FindingDetails}
    findingType: string
end

local record GetGeneratedPolicyInput
    jobId: string
    includeResourcePlaceholders: boolean
    includeServiceLevelTemplate: boolean
end

local record GetGeneratedPolicyOutput
    jobDetails: JobDetails
    generatedPolicyResult: GeneratedPolicyResult
end

local record ListAccessPreviewFindingsInput
    accessPreviewId: string
    analyzerArn: string
    filter: {string : Criterion}
    nextToken: string
    maxResults: number
end

local record ListAccessPreviewFindingsOutput
    findings: {AccessPreviewFinding}
    nextToken: string
end

local record ListAccessPreviewsInput
    analyzerArn: string
    nextToken: string
    maxResults: number
end

local record ListAccessPreviewsOutput
    accessPreviews: {AccessPreviewSummary}
    nextToken: string
end

local record ListAnalyzedResourcesInput
    analyzerArn: string
    resourceType: string
    nextToken: string
    maxResults: number
end

local record ListAnalyzedResourcesOutput
    analyzedResources: {AnalyzedResourceSummary}
    nextToken: string
end

local record ListAnalyzersInput
    nextToken: string
    maxResults: number
    type: string
end

local record ListAnalyzersOutput
    analyzers: {AnalyzerSummary}
    nextToken: string
end

local record ListArchiveRulesInput
    analyzerName: string
    nextToken: string
    maxResults: number
end

local record ListArchiveRulesOutput
    archiveRules: {ArchiveRuleSummary}
    nextToken: string
end

local record ListFindingsInput
    analyzerArn: string
    filter: {string : Criterion}
    sort: SortCriteria
    nextToken: string
    maxResults: number
end

local record ListFindingsOutput
    findings: {FindingSummary}
    nextToken: string
end

local record ListFindingsV2Input
    analyzerArn: string
    filter: {string : Criterion}
    maxResults: number
    nextToken: string
    sort: SortCriteria
end

local record ListFindingsV2Output
    findings: {FindingSummaryV2}
    nextToken: string
end

local record ListPolicyGenerationsInput
    principalArn: string
    maxResults: number
    nextToken: string
end

local record ListPolicyGenerationsOutput
    policyGenerations: {PolicyGeneration}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record StartPolicyGenerationInput
    policyGenerationDetails: PolicyGenerationDetails
    cloudTrailDetails: CloudTrailDetails
    clientToken: string
end

local record StartPolicyGenerationOutput
    jobId: string
end

local record StartResourceScanInput
    analyzerArn: string
    resourceArn: string
    resourceOwnerAccount: string
end

local record StartResourceScanOutput
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

local record UpdateAnalyzerInput
    analyzerName: string
    configuration: AnalyzerConfiguration
end

local record UpdateAnalyzerOutput
    configuration: AnalyzerConfiguration
end

local record UpdateArchiveRuleInput
    analyzerName: string
    ruleName: string
    filter: {string : Criterion}
    clientToken: string
end

local record UpdateArchiveRuleOutput
end

local record UpdateFindingsInput
    analyzerArn: string
    status: string
    ids: {string}
    resourceArn: string
    clientToken: string
end

local record UpdateFindingsOutput
end

local record ValidatePolicyInput
    locale: string
    maxResults: number
    nextToken: string
    policyDocument: string
    policyType: string
    validatePolicyResourceType: string
end

local record ValidatePolicyOutput
    findings: {ValidatePolicyFinding}
    nextToken: string
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

local record InvalidParameterException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record UnprocessableEntityException
    message: string
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

local record InvalidParameterException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record UnprocessableEntityException
    message: string
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

local record InvalidParameterException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record UnprocessableEntityException
    message: string
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
end

local record ThrottlingException
    message: string
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

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
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
end

local record ThrottlingException
    message: string
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

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
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
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record M
    ApplyArchiveRuleInput: ApplyArchiveRuleInput
    ApplyArchiveRuleOutput: ApplyArchiveRuleOutput
    CancelPolicyGenerationInput: CancelPolicyGenerationInput
    CancelPolicyGenerationOutput: CancelPolicyGenerationOutput
    CheckAccessNotGrantedInput: CheckAccessNotGrantedInput
    CheckAccessNotGrantedOutput: CheckAccessNotGrantedOutput
    CheckNoNewAccessInput: CheckNoNewAccessInput
    CheckNoNewAccessOutput: CheckNoNewAccessOutput
    CheckNoPublicAccessInput: CheckNoPublicAccessInput
    CheckNoPublicAccessOutput: CheckNoPublicAccessOutput
    CreateAccessPreviewInput: CreateAccessPreviewInput
    CreateAccessPreviewOutput: CreateAccessPreviewOutput
    CreateAnalyzerInput: CreateAnalyzerInput
    CreateAnalyzerOutput: CreateAnalyzerOutput
    CreateArchiveRuleInput: CreateArchiveRuleInput
    CreateArchiveRuleOutput: CreateArchiveRuleOutput
    DeleteAnalyzerInput: DeleteAnalyzerInput
    DeleteAnalyzerOutput: DeleteAnalyzerOutput
    DeleteArchiveRuleInput: DeleteArchiveRuleInput
    DeleteArchiveRuleOutput: DeleteArchiveRuleOutput
    GenerateFindingRecommendationInput: GenerateFindingRecommendationInput
    GenerateFindingRecommendationOutput: GenerateFindingRecommendationOutput
    GetAccessPreviewInput: GetAccessPreviewInput
    GetAccessPreviewOutput: GetAccessPreviewOutput
    GetAnalyzedResourceInput: GetAnalyzedResourceInput
    GetAnalyzedResourceOutput: GetAnalyzedResourceOutput
    GetAnalyzerInput: GetAnalyzerInput
    GetAnalyzerOutput: GetAnalyzerOutput
    GetArchiveRuleInput: GetArchiveRuleInput
    GetArchiveRuleOutput: GetArchiveRuleOutput
    GetFindingInput: GetFindingInput
    GetFindingOutput: GetFindingOutput
    GetFindingRecommendationInput: GetFindingRecommendationInput
    GetFindingRecommendationOutput: GetFindingRecommendationOutput
    GetFindingsStatisticsInput: GetFindingsStatisticsInput
    GetFindingsStatisticsOutput: GetFindingsStatisticsOutput
    GetFindingV2Input: GetFindingV2Input
    GetFindingV2Output: GetFindingV2Output
    GetGeneratedPolicyInput: GetGeneratedPolicyInput
    GetGeneratedPolicyOutput: GetGeneratedPolicyOutput
    ListAccessPreviewFindingsInput: ListAccessPreviewFindingsInput
    ListAccessPreviewFindingsOutput: ListAccessPreviewFindingsOutput
    ListAccessPreviewsInput: ListAccessPreviewsInput
    ListAccessPreviewsOutput: ListAccessPreviewsOutput
    ListAnalyzedResourcesInput: ListAnalyzedResourcesInput
    ListAnalyzedResourcesOutput: ListAnalyzedResourcesOutput
    ListAnalyzersInput: ListAnalyzersInput
    ListAnalyzersOutput: ListAnalyzersOutput
    ListArchiveRulesInput: ListArchiveRulesInput
    ListArchiveRulesOutput: ListArchiveRulesOutput
    ListFindingsInput: ListFindingsInput
    ListFindingsOutput: ListFindingsOutput
    ListFindingsV2Input: ListFindingsV2Input
    ListFindingsV2Output: ListFindingsV2Output
    ListPolicyGenerationsInput: ListPolicyGenerationsInput
    ListPolicyGenerationsOutput: ListPolicyGenerationsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    StartPolicyGenerationInput: StartPolicyGenerationInput
    StartPolicyGenerationOutput: StartPolicyGenerationOutput
    StartResourceScanInput: StartResourceScanInput
    StartResourceScanOutput: StartResourceScanOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAnalyzerInput: UpdateAnalyzerInput
    UpdateAnalyzerOutput: UpdateAnalyzerOutput
    UpdateArchiveRuleInput: UpdateArchiveRuleInput
    UpdateArchiveRuleOutput: UpdateArchiveRuleOutput
    UpdateFindingsInput: UpdateFindingsInput
    UpdateFindingsOutput: UpdateFindingsOutput
    ValidatePolicyInput: ValidatePolicyInput
    ValidatePolicyOutput: ValidatePolicyOutput
end

return M
