local record GetPreferencesInput
end

local record GetPreferencesOutput
    savingsEstimationMode: string
    memberAccountDiscountVisibility: string
    preferredCommitment: PreferredCommitment
end

local record GetRecommendationInput
    recommendationId: string
end

local record GetRecommendationOutput
    recommendationId: string
    resourceId: string
    resourceArn: string
    accountId: string
    currencyCode: string
    recommendationLookbackPeriodInDays: number
    costCalculationLookbackPeriodInDays: number
    estimatedSavingsPercentage: number
    estimatedSavingsOverCostCalculationLookbackPeriod: number
    currentResourceType: string
    recommendedResourceType: string
    region: string
    source: string
    lastRefreshTimestamp: number
    estimatedMonthlySavings: number
    estimatedMonthlyCost: number
    implementationEffort: string
    restartNeeded: boolean
    actionType: string
    rollbackPossible: boolean
    currentResourceDetails: ResourceDetails
    recommendedResourceDetails: ResourceDetails
    tags: {Tag}
end

local record ListEfficiencyMetricsInput
    groupBy: string
    granularity: string
    timePeriod: TimePeriod
    maxResults: number
    orderBy: OrderBy
    nextToken: string
end

local record ListEfficiencyMetricsOutput
    efficiencyMetricsByGroup: {EfficiencyMetricsByGroup}
    nextToken: string
end

local record ListEnrollmentStatusesInput
    includeOrganizationInfo: boolean
    accountId: string
    nextToken: string
    maxResults: number
end

local record ListEnrollmentStatusesOutput
    items: {AccountEnrollmentStatus}
    includeMemberAccounts: boolean
    nextToken: string
end

local record ListRecommendationsInput
    filter: Filter
    orderBy: OrderBy
    includeAllRecommendations: boolean
    maxResults: number
    nextToken: string
end

local record ListRecommendationsOutput
    items: {Recommendation}
    nextToken: string
end

local record ListRecommendationSummariesInput
    filter: Filter
    groupBy: string
    maxResults: number
    metrics: {string}
    nextToken: string
end

local record ListRecommendationSummariesOutput
    estimatedTotalDedupedSavings: number
    items: {RecommendationSummary}
    groupBy: string
    currencyCode: string
    metrics: SummaryMetricsResult
    nextToken: string
end

local record UpdateEnrollmentStatusInput
    status: string
    includeMemberAccounts: boolean
end

local record UpdateEnrollmentStatusOutput
    status: string
end

local record UpdatePreferencesInput
    savingsEstimationMode: string
    memberAccountDiscountVisibility: string
    preferredCommitment: PreferredCommitment
end

local record UpdatePreferencesOutput
    savingsEstimationMode: string
    memberAccountDiscountVisibility: string
    preferredCommitment: PreferredCommitment
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
    fields: {ValidationExceptionDetail}
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionDetail}
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
    fields: {ValidationExceptionDetail}
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
    fields: {ValidationExceptionDetail}
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
    fields: {ValidationExceptionDetail}
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
    fields: {ValidationExceptionDetail}
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
    fields: {ValidationExceptionDetail}
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
    fields: {ValidationExceptionDetail}
end

local type EnrollmentStatus = "Active" | "Inactive"

local type Source = "ComputeOptimizer" | "CostExplorer"

local type ActionType = "Rightsize" | "Stop" | "Upgrade" | "PurchaseSavingsPlans" | "PurchaseReservedInstances" | "MigrateToGraviton" | "Delete" | "ScaleIn"

local type ImplementationEffort = "VeryLow" | "Low" | "Medium" | "High" | "VeryHigh"

local type MemberAccountDiscountVisibility = "All" | "None"

local type ResourceType = "Ec2Instance" | "LambdaFunction" | "EbsVolume" | "EcsService" | "Ec2AutoScalingGroup" | "Ec2InstanceSavingsPlans" | "ComputeSavingsPlans" | "SageMakerSavingsPlans" | "Ec2ReservedInstances" | "RdsReservedInstances" | "OpenSearchReservedInstances" | "RedshiftReservedInstances" | "ElastiCacheReservedInstances" | "RdsDbInstanceStorage" | "RdsDbInstance" | "AuroraDbClusterStorage" | "DynamoDbReservedCapacity" | "MemoryDbReservedInstances" | "NatGateway"

local type SavingsEstimationMode = "BeforeDiscounts" | "AfterDiscounts"

local type GranularityType = "Daily" | "Monthly"

local record M
    GetPreferencesInput: GetPreferencesInput
    GetPreferencesOutput: GetPreferencesOutput
    GetRecommendationInput: GetRecommendationInput
    GetRecommendationOutput: GetRecommendationOutput
    ListEfficiencyMetricsInput: ListEfficiencyMetricsInput
    ListEfficiencyMetricsOutput: ListEfficiencyMetricsOutput
    ListEnrollmentStatusesInput: ListEnrollmentStatusesInput
    ListEnrollmentStatusesOutput: ListEnrollmentStatusesOutput
    ListRecommendationsInput: ListRecommendationsInput
    ListRecommendationsOutput: ListRecommendationsOutput
    ListRecommendationSummariesInput: ListRecommendationSummariesInput
    ListRecommendationSummariesOutput: ListRecommendationSummariesOutput
    UpdateEnrollmentStatusInput: UpdateEnrollmentStatusInput
    UpdateEnrollmentStatusOutput: UpdateEnrollmentStatusOutput
    UpdatePreferencesInput: UpdatePreferencesInput
    UpdatePreferencesOutput: UpdatePreferencesOutput
end

return M
