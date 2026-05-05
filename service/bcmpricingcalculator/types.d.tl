local record BatchCreateBillScenarioCommitmentModificationInput
    billScenarioId: string
    commitmentModifications: {BatchCreateBillScenarioCommitmentModificationEntry}
    clientToken: string
end

local record BatchCreateBillScenarioCommitmentModificationOutput
    items: {BatchCreateBillScenarioCommitmentModificationItem}
    errors: {BatchCreateBillScenarioCommitmentModificationError}
end

local record BatchCreateBillScenarioUsageModificationInput
    billScenarioId: string
    usageModifications: {BatchCreateBillScenarioUsageModificationEntry}
    clientToken: string
end

local record BatchCreateBillScenarioUsageModificationOutput
    items: {BatchCreateBillScenarioUsageModificationItem}
    errors: {BatchCreateBillScenarioUsageModificationError}
end

local record BatchCreateWorkloadEstimateUsageInput
    workloadEstimateId: string
    usage: {BatchCreateWorkloadEstimateUsageEntry}
    clientToken: string
end

local record BatchCreateWorkloadEstimateUsageOutput
    items: {BatchCreateWorkloadEstimateUsageItem}
    errors: {BatchCreateWorkloadEstimateUsageError}
end

local record BatchDeleteBillScenarioCommitmentModificationInput
    billScenarioId: string
    ids: {string}
end

local record BatchDeleteBillScenarioCommitmentModificationOutput
    errors: {BatchDeleteBillScenarioCommitmentModificationError}
end

local record BatchDeleteBillScenarioUsageModificationInput
    billScenarioId: string
    ids: {string}
end

local record BatchDeleteBillScenarioUsageModificationOutput
    errors: {BatchDeleteBillScenarioUsageModificationError}
end

local record BatchDeleteWorkloadEstimateUsageInput
    workloadEstimateId: string
    ids: {string}
end

local record BatchDeleteWorkloadEstimateUsageOutput
    errors: {BatchDeleteWorkloadEstimateUsageError}
end

local record BatchUpdateBillScenarioCommitmentModificationInput
    billScenarioId: string
    commitmentModifications: {BatchUpdateBillScenarioCommitmentModificationEntry}
end

local record BatchUpdateBillScenarioCommitmentModificationOutput
    items: {BillScenarioCommitmentModificationItem}
    errors: {BatchUpdateBillScenarioCommitmentModificationError}
end

local record BatchUpdateBillScenarioUsageModificationInput
    billScenarioId: string
    usageModifications: {BatchUpdateBillScenarioUsageModificationEntry}
end

local record BatchUpdateBillScenarioUsageModificationOutput
    items: {BillScenarioUsageModificationItem}
    errors: {BatchUpdateBillScenarioUsageModificationError}
end

local record BatchUpdateWorkloadEstimateUsageInput
    workloadEstimateId: string
    usage: {BatchUpdateWorkloadEstimateUsageEntry}
end

local record BatchUpdateWorkloadEstimateUsageOutput
    items: {WorkloadEstimateUsageItem}
    errors: {BatchUpdateWorkloadEstimateUsageError}
end

local record CreateBillEstimateInput
    billScenarioId: string
    name: string
    clientToken: string
    tags: {string : string}
end

local record CreateBillEstimateOutput
    id: string
    name: string
    status: string
    failureMessage: string
    billInterval: BillInterval
    costSummary: BillEstimateCostSummary
    createdAt: number
    expiresAt: number
    groupSharingPreference: string
    costCategoryGroupSharingPreferenceArn: string
    costCategoryGroupSharingPreferenceEffectiveDate: number
end

local record CreateBillScenarioInput
    name: string
    clientToken: string
    tags: {string : string}
    groupSharingPreference: string
    costCategoryGroupSharingPreferenceArn: string
end

local record CreateBillScenarioOutput
    id: string
    name: string
    billInterval: BillInterval
    status: string
    createdAt: number
    expiresAt: number
    failureMessage: string
    groupSharingPreference: string
    costCategoryGroupSharingPreferenceArn: string
end

local record CreateWorkloadEstimateInput
    name: string
    clientToken: string
    rateType: string
    tags: {string : string}
end

local record CreateWorkloadEstimateOutput
    id: string
    name: string
    createdAt: number
    expiresAt: number
    rateType: string
    rateTimestamp: number
    status: string
    totalCost: number
    costCurrency: string
    failureMessage: string
end

local record DeleteBillEstimateInput
    identifier: string
end

local record DeleteBillEstimateOutput
end

local record DeleteBillScenarioInput
    identifier: string
end

local record DeleteBillScenarioOutput
end

local record DeleteWorkloadEstimateInput
    identifier: string
end

local record DeleteWorkloadEstimateOutput
end

local record GetBillEstimateInput
    identifier: string
end

local record GetBillEstimateOutput
    id: string
    name: string
    status: string
    failureMessage: string
    billInterval: BillInterval
    costSummary: BillEstimateCostSummary
    createdAt: number
    expiresAt: number
    groupSharingPreference: string
    costCategoryGroupSharingPreferenceArn: string
    costCategoryGroupSharingPreferenceEffectiveDate: number
end

local record GetBillScenarioInput
    identifier: string
end

local record GetBillScenarioOutput
    id: string
    name: string
    billInterval: BillInterval
    status: string
    createdAt: number
    expiresAt: number
    failureMessage: string
    groupSharingPreference: string
    costCategoryGroupSharingPreferenceArn: string
end

local record GetPreferencesInput
end

local record GetPreferencesOutput
    managementAccountRateTypeSelections: {string}
    memberAccountRateTypeSelections: {string}
    standaloneAccountRateTypeSelections: {string}
end

local record GetWorkloadEstimateInput
    identifier: string
end

local record GetWorkloadEstimateOutput
    id: string
    name: string
    createdAt: number
    expiresAt: number
    rateType: string
    rateTimestamp: number
    status: string
    totalCost: number
    costCurrency: string
    failureMessage: string
end

local record ListBillEstimateCommitmentsInput
    billEstimateId: string
    nextToken: string
    maxResults: number
end

local record ListBillEstimateCommitmentsOutput
    items: {BillEstimateCommitmentSummary}
    nextToken: string
end

local record ListBillEstimateInputCommitmentModificationsInput
    billEstimateId: string
    nextToken: string
    maxResults: number
end

local record ListBillEstimateInputCommitmentModificationsOutput
    items: {BillEstimateInputCommitmentModificationSummary}
    nextToken: string
end

local record ListBillEstimateInputUsageModificationsInput
    billEstimateId: string
    filters: {ListUsageFilter}
    nextToken: string
    maxResults: number
end

local record ListBillEstimateInputUsageModificationsOutput
    items: {BillEstimateInputUsageModificationSummary}
    nextToken: string
end

local record ListBillEstimateLineItemsInput
    billEstimateId: string
    filters: {ListBillEstimateLineItemsFilter}
    nextToken: string
    maxResults: number
end

local record ListBillEstimateLineItemsOutput
    items: {BillEstimateLineItemSummary}
    nextToken: string
end

local record ListBillEstimatesInput
    filters: {ListBillEstimatesFilter}
    createdAtFilter: FilterTimestamp
    expiresAtFilter: FilterTimestamp
    nextToken: string
    maxResults: number
end

local record ListBillEstimatesOutput
    items: {BillEstimateSummary}
    nextToken: string
end

local record ListBillScenarioCommitmentModificationsInput
    billScenarioId: string
    nextToken: string
    maxResults: number
end

local record ListBillScenarioCommitmentModificationsOutput
    items: {BillScenarioCommitmentModificationItem}
    nextToken: string
end

local record ListBillScenariosInput
    filters: {ListBillScenariosFilter}
    createdAtFilter: FilterTimestamp
    expiresAtFilter: FilterTimestamp
    nextToken: string
    maxResults: number
end

local record ListBillScenariosOutput
    items: {BillScenarioSummary}
    nextToken: string
end

local record ListBillScenarioUsageModificationsInput
    billScenarioId: string
    filters: {ListUsageFilter}
    nextToken: string
    maxResults: number
end

local record ListBillScenarioUsageModificationsOutput
    items: {BillScenarioUsageModificationItem}
    nextToken: string
end

local record ListTagsForResourceInput
    arn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListWorkloadEstimatesInput
    createdAtFilter: FilterTimestamp
    expiresAtFilter: FilterTimestamp
    filters: {ListWorkloadEstimatesFilter}
    nextToken: string
    maxResults: number
end

local record ListWorkloadEstimatesOutput
    items: {WorkloadEstimateSummary}
    nextToken: string
end

local record ListWorkloadEstimateUsageInput
    workloadEstimateId: string
    filters: {ListUsageFilter}
    nextToken: string
    maxResults: number
end

local record ListWorkloadEstimateUsageOutput
    items: {WorkloadEstimateUsageItem}
    nextToken: string
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

local record UpdateBillEstimateInput
    identifier: string
    name: string
    expiresAt: number
end

local record UpdateBillEstimateOutput
    id: string
    name: string
    status: string
    failureMessage: string
    billInterval: BillInterval
    costSummary: BillEstimateCostSummary
    createdAt: number
    expiresAt: number
    groupSharingPreference: string
    costCategoryGroupSharingPreferenceArn: string
    costCategoryGroupSharingPreferenceEffectiveDate: number
end

local record UpdateBillScenarioInput
    identifier: string
    name: string
    expiresAt: number
    groupSharingPreference: string
    costCategoryGroupSharingPreferenceArn: string
end

local record UpdateBillScenarioOutput
    id: string
    name: string
    billInterval: BillInterval
    status: string
    createdAt: number
    expiresAt: number
    failureMessage: string
    groupSharingPreference: string
    costCategoryGroupSharingPreferenceArn: string
end

local record UpdatePreferencesInput
    managementAccountRateTypeSelections: {string}
    memberAccountRateTypeSelections: {string}
    standaloneAccountRateTypeSelections: {string}
end

local record UpdatePreferencesOutput
    managementAccountRateTypeSelections: {string}
    memberAccountRateTypeSelections: {string}
    standaloneAccountRateTypeSelections: {string}
end

local record UpdateWorkloadEstimateInput
    identifier: string
    name: string
    expiresAt: number
end

local record UpdateWorkloadEstimateOutput
    id: string
    name: string
    createdAt: number
    expiresAt: number
    rateType: string
    rateTimestamp: number
    status: string
    totalCost: number
    costCurrency: string
    failureMessage: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record DataUnavailableException
    message: string
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
    retryAfterSeconds: number
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

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record DataUnavailableException
    message: string
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
    retryAfterSeconds: number
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

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record DataUnavailableException
    message: string
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
    retryAfterSeconds: number
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

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record DataUnavailableException
    message: string
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
    retryAfterSeconds: number
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

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record DataUnavailableException
    message: string
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
    retryAfterSeconds: number
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

local record DataUnavailableException
    message: string
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
    retryAfterSeconds: number
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

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record DataUnavailableException
    message: string
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
    retryAfterSeconds: number
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

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record DataUnavailableException
    message: string
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
    retryAfterSeconds: number
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

local record DataUnavailableException
    message: string
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
    retryAfterSeconds: number
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

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record DataUnavailableException
    message: string
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
    retryAfterSeconds: number
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

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record DataUnavailableException
    message: string
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
    retryAfterSeconds: number
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

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record DataUnavailableException
    message: string
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
    retryAfterSeconds: number
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

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record DataUnavailableException
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
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
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

local record DataUnavailableException
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
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record DataUnavailableException
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
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record DataUnavailableException
    message: string
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
    retryAfterSeconds: number
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

local record DataUnavailableException
    message: string
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
    retryAfterSeconds: number
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

local record DataUnavailableException
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
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record DataUnavailableException
    message: string
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
    retryAfterSeconds: number
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

local record DataUnavailableException
    message: string
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
    retryAfterSeconds: number
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

local record DataUnavailableException
    message: string
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
    retryAfterSeconds: number
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

local record DataUnavailableException
    message: string
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
    retryAfterSeconds: number
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

local record DataUnavailableException
    message: string
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
    retryAfterSeconds: number
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

local record DataUnavailableException
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
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record DataUnavailableException
    message: string
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
    retryAfterSeconds: number
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

local record DataUnavailableException
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
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record DataUnavailableException
    message: string
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
    retryAfterSeconds: number
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
    retryAfterSeconds: number
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

local record DataUnavailableException
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
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record DataUnavailableException
    message: string
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
    retryAfterSeconds: number
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
    retryAfterSeconds: number
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
    retryAfterSeconds: number
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

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record DataUnavailableException
    message: string
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
    retryAfterSeconds: number
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

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record DataUnavailableException
    message: string
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
    retryAfterSeconds: number
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

local record DataUnavailableException
    message: string
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
    retryAfterSeconds: number
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

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record DataUnavailableException
    message: string
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
    retryAfterSeconds: number
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

local type BillScenarioStatus = "READY" | "LOCKED" | "FAILED" | "STALE"

local type BillEstimateStatus = "IN_PROGRESS" | "COMPLETE" | "FAILED"

local type WorkloadEstimateStatus = "UPDATING" | "VALID" | "INVALID" | "ACTION_NEEDED"

local type WorkloadEstimateRateType = "BEFORE_DISCOUNTS" | "AFTER_DISCOUNTS" | "AFTER_DISCOUNTS_AND_COMMITMENTS"

local type GroupSharingPreferenceEnum = "OPEN" | "PRIORITIZED" | "RESTRICTED"

local type CurrencyCode = "USD"

local record M
    BatchCreateBillScenarioCommitmentModificationInput: BatchCreateBillScenarioCommitmentModificationInput
    BatchCreateBillScenarioCommitmentModificationOutput: BatchCreateBillScenarioCommitmentModificationOutput
    BatchCreateBillScenarioUsageModificationInput: BatchCreateBillScenarioUsageModificationInput
    BatchCreateBillScenarioUsageModificationOutput: BatchCreateBillScenarioUsageModificationOutput
    BatchCreateWorkloadEstimateUsageInput: BatchCreateWorkloadEstimateUsageInput
    BatchCreateWorkloadEstimateUsageOutput: BatchCreateWorkloadEstimateUsageOutput
    BatchDeleteBillScenarioCommitmentModificationInput: BatchDeleteBillScenarioCommitmentModificationInput
    BatchDeleteBillScenarioCommitmentModificationOutput: BatchDeleteBillScenarioCommitmentModificationOutput
    BatchDeleteBillScenarioUsageModificationInput: BatchDeleteBillScenarioUsageModificationInput
    BatchDeleteBillScenarioUsageModificationOutput: BatchDeleteBillScenarioUsageModificationOutput
    BatchDeleteWorkloadEstimateUsageInput: BatchDeleteWorkloadEstimateUsageInput
    BatchDeleteWorkloadEstimateUsageOutput: BatchDeleteWorkloadEstimateUsageOutput
    BatchUpdateBillScenarioCommitmentModificationInput: BatchUpdateBillScenarioCommitmentModificationInput
    BatchUpdateBillScenarioCommitmentModificationOutput: BatchUpdateBillScenarioCommitmentModificationOutput
    BatchUpdateBillScenarioUsageModificationInput: BatchUpdateBillScenarioUsageModificationInput
    BatchUpdateBillScenarioUsageModificationOutput: BatchUpdateBillScenarioUsageModificationOutput
    BatchUpdateWorkloadEstimateUsageInput: BatchUpdateWorkloadEstimateUsageInput
    BatchUpdateWorkloadEstimateUsageOutput: BatchUpdateWorkloadEstimateUsageOutput
    CreateBillEstimateInput: CreateBillEstimateInput
    CreateBillEstimateOutput: CreateBillEstimateOutput
    CreateBillScenarioInput: CreateBillScenarioInput
    CreateBillScenarioOutput: CreateBillScenarioOutput
    CreateWorkloadEstimateInput: CreateWorkloadEstimateInput
    CreateWorkloadEstimateOutput: CreateWorkloadEstimateOutput
    DeleteBillEstimateInput: DeleteBillEstimateInput
    DeleteBillEstimateOutput: DeleteBillEstimateOutput
    DeleteBillScenarioInput: DeleteBillScenarioInput
    DeleteBillScenarioOutput: DeleteBillScenarioOutput
    DeleteWorkloadEstimateInput: DeleteWorkloadEstimateInput
    DeleteWorkloadEstimateOutput: DeleteWorkloadEstimateOutput
    GetBillEstimateInput: GetBillEstimateInput
    GetBillEstimateOutput: GetBillEstimateOutput
    GetBillScenarioInput: GetBillScenarioInput
    GetBillScenarioOutput: GetBillScenarioOutput
    GetPreferencesInput: GetPreferencesInput
    GetPreferencesOutput: GetPreferencesOutput
    GetWorkloadEstimateInput: GetWorkloadEstimateInput
    GetWorkloadEstimateOutput: GetWorkloadEstimateOutput
    ListBillEstimateCommitmentsInput: ListBillEstimateCommitmentsInput
    ListBillEstimateCommitmentsOutput: ListBillEstimateCommitmentsOutput
    ListBillEstimateInputCommitmentModificationsInput: ListBillEstimateInputCommitmentModificationsInput
    ListBillEstimateInputCommitmentModificationsOutput: ListBillEstimateInputCommitmentModificationsOutput
    ListBillEstimateInputUsageModificationsInput: ListBillEstimateInputUsageModificationsInput
    ListBillEstimateInputUsageModificationsOutput: ListBillEstimateInputUsageModificationsOutput
    ListBillEstimateLineItemsInput: ListBillEstimateLineItemsInput
    ListBillEstimateLineItemsOutput: ListBillEstimateLineItemsOutput
    ListBillEstimatesInput: ListBillEstimatesInput
    ListBillEstimatesOutput: ListBillEstimatesOutput
    ListBillScenarioCommitmentModificationsInput: ListBillScenarioCommitmentModificationsInput
    ListBillScenarioCommitmentModificationsOutput: ListBillScenarioCommitmentModificationsOutput
    ListBillScenariosInput: ListBillScenariosInput
    ListBillScenariosOutput: ListBillScenariosOutput
    ListBillScenarioUsageModificationsInput: ListBillScenarioUsageModificationsInput
    ListBillScenarioUsageModificationsOutput: ListBillScenarioUsageModificationsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListWorkloadEstimatesInput: ListWorkloadEstimatesInput
    ListWorkloadEstimatesOutput: ListWorkloadEstimatesOutput
    ListWorkloadEstimateUsageInput: ListWorkloadEstimateUsageInput
    ListWorkloadEstimateUsageOutput: ListWorkloadEstimateUsageOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateBillEstimateInput: UpdateBillEstimateInput
    UpdateBillEstimateOutput: UpdateBillEstimateOutput
    UpdateBillScenarioInput: UpdateBillScenarioInput
    UpdateBillScenarioOutput: UpdateBillScenarioOutput
    UpdatePreferencesInput: UpdatePreferencesInput
    UpdatePreferencesOutput: UpdatePreferencesOutput
    UpdateWorkloadEstimateInput: UpdateWorkloadEstimateInput
    UpdateWorkloadEstimateOutput: UpdateWorkloadEstimateOutput
end

return M
