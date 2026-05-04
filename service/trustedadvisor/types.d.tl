local record BatchUpdateRecommendationResourceExclusionInput
    recommendationResourceExclusions: {RecommendationResourceExclusion}
end

local record BatchUpdateRecommendationResourceExclusionOutput
    batchUpdateRecommendationResourceExclusionErrors: {UpdateRecommendationResourceExclusionError}
end

local record GetOrganizationRecommendationInput
    organizationRecommendationIdentifier: string
end

local record GetOrganizationRecommendationOutput
    organizationRecommendation: OrganizationRecommendation
end

local record GetRecommendationInput
    recommendationIdentifier: string
    language: string
end

local record GetRecommendationOutput
    recommendation: Recommendation
end

local record ListChecksInput
    nextToken: string
    maxResults: number
    pillar: string
    awsService: string
    source: string
    language: string
end

local record ListChecksOutput
    nextToken: string
    checkSummaries: {CheckSummary}
end

local record ListOrganizationRecommendationAccountsInput
    nextToken: string
    maxResults: number
    organizationRecommendationIdentifier: string
    affectedAccountId: string
end

local record ListOrganizationRecommendationAccountsOutput
    nextToken: string
    accountRecommendationLifecycleSummaries: {AccountRecommendationLifecycleSummary}
end

local record ListOrganizationRecommendationResourcesInput
    nextToken: string
    maxResults: number
    status: string
    exclusionStatus: string
    regionCode: string
    organizationRecommendationIdentifier: string
    affectedAccountId: string
end

local record ListOrganizationRecommendationResourcesOutput
    nextToken: string
    organizationRecommendationResourceSummaries: {OrganizationRecommendationResourceSummary}
end

local record ListOrganizationRecommendationsInput
    nextToken: string
    maxResults: number
    type: string
    status: string
    pillar: string
    awsService: string
    source: string
    checkIdentifier: string
    afterLastUpdatedAt: number
    beforeLastUpdatedAt: number
end

local record ListOrganizationRecommendationsOutput
    nextToken: string
    organizationRecommendationSummaries: {OrganizationRecommendationSummary}
end

local record ListRecommendationResourcesInput
    nextToken: string
    maxResults: number
    status: string
    exclusionStatus: string
    regionCode: string
    recommendationIdentifier: string
    language: string
end

local record ListRecommendationResourcesOutput
    nextToken: string
    recommendationResourceSummaries: {RecommendationResourceSummary}
end

local record ListRecommendationsInput
    nextToken: string
    maxResults: number
    type: string
    status: string
    pillar: string
    awsService: string
    source: string
    checkIdentifier: string
    afterLastUpdatedAt: number
    beforeLastUpdatedAt: number
    language: string
end

local record ListRecommendationsOutput
    nextToken: string
    recommendationSummaries: {RecommendationSummary}
end

local record UpdateOrganizationRecommendationLifecycleInput
    lifecycleStage: string
    updateReason: string
    updateReasonCode: string
    organizationRecommendationIdentifier: string
end

local record UpdateOrganizationRecommendationLifecycleOutput
end

local record UpdateRecommendationLifecycleInput
    lifecycleStage: string
    updateReason: string
    updateReasonCode: string
    recommendationIdentifier: string
end

local record UpdateRecommendationLifecycleOutput
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

local type RecommendationPillar = "cost_optimizing" | "performance" | "security" | "service_limits" | "fault_tolerance" | "operational_excellence"

local type RecommendationType = "standard" | "priority"

local type RecommendationStatus = "ok" | "warning" | "error"

local type ResourceStatus = "ok" | "warning" | "error"

local type UpdateRecommendationLifecycleStageReasonCode = "non_critical_account" | "temporary_account" | "valid_business_case" | "other_methods_available" | "low_priority" | "not_applicable" | "other"

local type UpdateRecommendationLifecycleStage = "pending_response" | "in_progress" | "dismissed" | "resolved"

local type RecommendationLanguage = "en" | "ja" | "zh" | "fr" | "de" | "ko" | "zh_TW" | "it" | "es" | "pt_BR" | "id"

local type RecommendationSource = "aws_config" | "compute_optimizer" | "cost_explorer" | "lse" | "manual" | "pse" | "rds" | "resilience" | "resilience_hub" | "security_hub" | "stir" | "ta_check" | "well_architected" | "cost_optimization_hub"

local type ExclusionStatus = "excluded" | "included"

local record M
    BatchUpdateRecommendationResourceExclusionInput: BatchUpdateRecommendationResourceExclusionInput
    BatchUpdateRecommendationResourceExclusionOutput: BatchUpdateRecommendationResourceExclusionOutput
    GetOrganizationRecommendationInput: GetOrganizationRecommendationInput
    GetOrganizationRecommendationOutput: GetOrganizationRecommendationOutput
    GetRecommendationInput: GetRecommendationInput
    GetRecommendationOutput: GetRecommendationOutput
    ListChecksInput: ListChecksInput
    ListChecksOutput: ListChecksOutput
    ListOrganizationRecommendationAccountsInput: ListOrganizationRecommendationAccountsInput
    ListOrganizationRecommendationAccountsOutput: ListOrganizationRecommendationAccountsOutput
    ListOrganizationRecommendationResourcesInput: ListOrganizationRecommendationResourcesInput
    ListOrganizationRecommendationResourcesOutput: ListOrganizationRecommendationResourcesOutput
    ListOrganizationRecommendationsInput: ListOrganizationRecommendationsInput
    ListOrganizationRecommendationsOutput: ListOrganizationRecommendationsOutput
    ListRecommendationResourcesInput: ListRecommendationResourcesInput
    ListRecommendationResourcesOutput: ListRecommendationResourcesOutput
    ListRecommendationsInput: ListRecommendationsInput
    ListRecommendationsOutput: ListRecommendationsOutput
    UpdateOrganizationRecommendationLifecycleInput: UpdateOrganizationRecommendationLifecycleInput
    UpdateOrganizationRecommendationLifecycleOutput: UpdateOrganizationRecommendationLifecycleOutput
    UpdateRecommendationLifecycleInput: UpdateRecommendationLifecycleInput
    UpdateRecommendationLifecycleOutput: UpdateRecommendationLifecycleOutput
end

return M
