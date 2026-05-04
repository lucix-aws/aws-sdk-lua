local record CancelSolNetworkOperationInput
    nsLcmOpOccId: string
end

local record CancelSolNetworkOperationOutput
end

local record CreateSolFunctionPackageInput
    tags: {string : string}
end

local record CreateSolFunctionPackageOutput
    id: string
    arn: string
    onboardingState: string
    operationalState: string
    usageState: string
    tags: {string : string}
end

local record CreateSolNetworkInstanceInput
    nsdInfoId: string
    nsName: string
    nsDescription: string
    tags: {string : string}
end

local record CreateSolNetworkInstanceOutput
    id: string
    arn: string
    nsdInfoId: string
    nsInstanceName: string
    tags: {string : string}
end

local record CreateSolNetworkPackageInput
    tags: {string : string}
end

local record CreateSolNetworkPackageOutput
    id: string
    arn: string
    nsdOnboardingState: string
    nsdOperationalState: string
    nsdUsageState: string
    tags: {string : string}
end

local record DeleteSolFunctionPackageInput
    vnfPkgId: string
end

local record DeleteSolFunctionPackageOutput
end

local record DeleteSolNetworkInstanceInput
    nsInstanceId: string
end

local record DeleteSolNetworkInstanceOutput
end

local record DeleteSolNetworkPackageInput
    nsdInfoId: string
end

local record DeleteSolNetworkPackageOutput
end

local record GetSolFunctionInstanceInput
    vnfInstanceId: string
end

local record GetSolFunctionInstanceOutput
    id: string
    arn: string
    nsInstanceId: string
    vnfPkgId: string
    vnfdId: string
    vnfProvider: string
    vnfProductName: string
    vnfdVersion: string
    instantiationState: string
    instantiatedVnfInfo: GetSolVnfInfo
    metadata: GetSolFunctionInstanceMetadata
    tags: {string : string}
end

local record GetSolFunctionPackageInput
    vnfPkgId: string
end

local record GetSolFunctionPackageOutput
    id: string
    arn: string
    onboardingState: string
    operationalState: string
    usageState: string
    vnfdId: string
    vnfProvider: string
    vnfProductName: string
    vnfdVersion: string
    metadata: GetSolFunctionPackageMetadata
    tags: {string : string}
end

local record GetSolFunctionPackageContentInput
    vnfPkgId: string
    accept: string
end

local record GetSolFunctionPackageContentOutput
    contentType: string
    packageContent: string
end

local record GetSolFunctionPackageDescriptorInput
    vnfPkgId: string
    accept: string
end

local record GetSolFunctionPackageDescriptorOutput
    contentType: string
    vnfd: string
end

local record GetSolNetworkInstanceInput
    nsInstanceId: string
end

local record GetSolNetworkInstanceOutput
    id: string
    arn: string
    nsInstanceName: string
    nsInstanceDescription: string
    nsdId: string
    nsdInfoId: string
    nsState: string
    lcmOpInfo: LcmOperationInfo
    metadata: GetSolNetworkInstanceMetadata
    tags: {string : string}
end

local record GetSolNetworkOperationInput
    nsLcmOpOccId: string
end

local record GetSolNetworkOperationOutput
    id: string
    arn: string
    operationState: string
    nsInstanceId: string
    lcmOperationType: string
    updateType: string
    error: ProblemDetails
    metadata: GetSolNetworkOperationMetadata
    tasks: {GetSolNetworkOperationTaskDetails}
    tags: {string : string}
end

local record GetSolNetworkPackageInput
    nsdInfoId: string
end

local record GetSolNetworkPackageOutput
    id: string
    arn: string
    nsdOnboardingState: string
    nsdOperationalState: string
    nsdUsageState: string
    nsdId: string
    nsdName: string
    nsdVersion: string
    vnfPkgIds: {string}
    metadata: GetSolNetworkPackageMetadata
    tags: {string : string}
end

local record GetSolNetworkPackageContentInput
    nsdInfoId: string
    accept: string
end

local record GetSolNetworkPackageContentOutput
    contentType: string
    nsdContent: string
end

local record GetSolNetworkPackageDescriptorInput
    nsdInfoId: string
end

local record GetSolNetworkPackageDescriptorOutput
    contentType: string
    nsd: string
end

local record InstantiateSolNetworkInstanceInput
    nsInstanceId: string
    dryRun: boolean
    additionalParamsForNs: any
    tags: {string : string}
end

local record InstantiateSolNetworkInstanceOutput
    nsLcmOpOccId: string
    tags: {string : string}
end

local record ListSolFunctionInstancesInput
    maxResults: number
    nextToken: string
end

local record ListSolFunctionInstancesOutput
    nextToken: string
    functionInstances: {ListSolFunctionInstanceInfo}
end

local record ListSolFunctionPackagesInput
    maxResults: number
    nextToken: string
end

local record ListSolFunctionPackagesOutput
    nextToken: string
    functionPackages: {ListSolFunctionPackageInfo}
end

local record ListSolNetworkInstancesInput
    maxResults: number
    nextToken: string
end

local record ListSolNetworkInstancesOutput
    nextToken: string
    networkInstances: {ListSolNetworkInstanceInfo}
end

local record ListSolNetworkOperationsInput
    nsInstanceId: string
    maxResults: number
    nextToken: string
end

local record ListSolNetworkOperationsOutput
    nextToken: string
    networkOperations: {ListSolNetworkOperationsInfo}
end

local record ListSolNetworkPackagesInput
    maxResults: number
    nextToken: string
end

local record ListSolNetworkPackagesOutput
    nextToken: string
    networkPackages: {ListSolNetworkPackageInfo}
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record PutSolFunctionPackageContentInput
    vnfPkgId: string
    contentType: string
    file: string
end

local record PutSolFunctionPackageContentOutput
    id: string
    vnfdId: string
    vnfProductName: string
    vnfProvider: string
    vnfdVersion: string
    metadata: PutSolFunctionPackageContentMetadata
end

local record PutSolNetworkPackageContentInput
    nsdInfoId: string
    contentType: string
    file: string
end

local record PutSolNetworkPackageContentOutput
    id: string
    arn: string
    nsdId: string
    nsdName: string
    nsdVersion: string
    vnfPkgIds: {string}
    metadata: PutSolNetworkPackageContentMetadata
end

local record TagResourceInput
    resourceArn: string
    tags: {string : string}
end

local record TagResourceOutput
end

local record TerminateSolNetworkInstanceInput
    nsInstanceId: string
    tags: {string : string}
end

local record TerminateSolNetworkInstanceOutput
    nsLcmOpOccId: string
    tags: {string : string}
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateSolFunctionPackageInput
    vnfPkgId: string
    operationalState: string
end

local record UpdateSolFunctionPackageOutput
    operationalState: string
end

local record UpdateSolNetworkInstanceInput
    nsInstanceId: string
    updateType: string
    modifyVnfInfoData: UpdateSolNetworkModify
    updateNs: UpdateSolNetworkServiceData
    tags: {string : string}
end

local record UpdateSolNetworkInstanceOutput
    nsLcmOpOccId: string
    tags: {string : string}
end

local record UpdateSolNetworkPackageInput
    nsdInfoId: string
    nsdOperationalState: string
end

local record UpdateSolNetworkPackageOutput
    nsdOperationalState: string
end

local record ValidateSolFunctionPackageContentInput
    vnfPkgId: string
    contentType: string
    file: string
end

local record ValidateSolFunctionPackageContentOutput
    id: string
    vnfdId: string
    vnfProductName: string
    vnfProvider: string
    vnfdVersion: string
    metadata: ValidateSolFunctionPackageContentMetadata
end

local record ValidateSolNetworkPackageContentInput
    nsdInfoId: string
    contentType: string
    file: string
end

local record ValidateSolNetworkPackageContentOutput
    id: string
    arn: string
    nsdId: string
    nsdName: string
    nsdVersion: string
    vnfPkgIds: {string}
    metadata: ValidateSolNetworkPackageContentMetadata
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
end

local record ResourceNotFoundException
    message: string
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

local record ResourceNotFoundException
    message: string
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

local record ResourceNotFoundException
    message: string
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

local record ResourceNotFoundException
    message: string
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

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local type NsdOperationalState = "ENABLED" | "DISABLED"

local type VnfInstantiationState = "INSTANTIATED" | "NOT_INSTANTIATED"

local type NsLcmOperationState = "PROCESSING" | "COMPLETED" | "FAILED" | "CANCELLING" | "CANCELLED"

local type DescriptorContentType = "text/plain"

local type UsageState = "IN_USE" | "NOT_IN_USE"

local type OperationalState = "ENABLED" | "DISABLED"

local type PackageContentType = "application/zip"

local type NsdUsageState = "IN_USE" | "NOT_IN_USE"

local type NsState = "INSTANTIATED" | "NOT_INSTANTIATED" | "UPDATED" | "IMPAIRED" | "UPDATE_FAILED" | "STOPPED" | "DELETED" | "INSTANTIATE_IN_PROGRESS" | "INTENT_TO_UPDATE_IN_PROGRESS" | "UPDATE_IN_PROGRESS" | "TERMINATE_IN_PROGRESS"

local type LcmOperationType = "INSTANTIATE" | "UPDATE" | "TERMINATE"

local type OnboardingState = "CREATED" | "ONBOARDED" | "ERROR"

local type UpdateSolNetworkType = "MODIFY_VNF_INFORMATION" | "UPDATE_NS"

local type NsdOnboardingState = "CREATED" | "ONBOARDED" | "ERROR"

local record M
    CancelSolNetworkOperationInput: CancelSolNetworkOperationInput
    CancelSolNetworkOperationOutput: CancelSolNetworkOperationOutput
    CreateSolFunctionPackageInput: CreateSolFunctionPackageInput
    CreateSolFunctionPackageOutput: CreateSolFunctionPackageOutput
    CreateSolNetworkInstanceInput: CreateSolNetworkInstanceInput
    CreateSolNetworkInstanceOutput: CreateSolNetworkInstanceOutput
    CreateSolNetworkPackageInput: CreateSolNetworkPackageInput
    CreateSolNetworkPackageOutput: CreateSolNetworkPackageOutput
    DeleteSolFunctionPackageInput: DeleteSolFunctionPackageInput
    DeleteSolFunctionPackageOutput: DeleteSolFunctionPackageOutput
    DeleteSolNetworkInstanceInput: DeleteSolNetworkInstanceInput
    DeleteSolNetworkInstanceOutput: DeleteSolNetworkInstanceOutput
    DeleteSolNetworkPackageInput: DeleteSolNetworkPackageInput
    DeleteSolNetworkPackageOutput: DeleteSolNetworkPackageOutput
    GetSolFunctionInstanceInput: GetSolFunctionInstanceInput
    GetSolFunctionInstanceOutput: GetSolFunctionInstanceOutput
    GetSolFunctionPackageInput: GetSolFunctionPackageInput
    GetSolFunctionPackageOutput: GetSolFunctionPackageOutput
    GetSolFunctionPackageContentInput: GetSolFunctionPackageContentInput
    GetSolFunctionPackageContentOutput: GetSolFunctionPackageContentOutput
    GetSolFunctionPackageDescriptorInput: GetSolFunctionPackageDescriptorInput
    GetSolFunctionPackageDescriptorOutput: GetSolFunctionPackageDescriptorOutput
    GetSolNetworkInstanceInput: GetSolNetworkInstanceInput
    GetSolNetworkInstanceOutput: GetSolNetworkInstanceOutput
    GetSolNetworkOperationInput: GetSolNetworkOperationInput
    GetSolNetworkOperationOutput: GetSolNetworkOperationOutput
    GetSolNetworkPackageInput: GetSolNetworkPackageInput
    GetSolNetworkPackageOutput: GetSolNetworkPackageOutput
    GetSolNetworkPackageContentInput: GetSolNetworkPackageContentInput
    GetSolNetworkPackageContentOutput: GetSolNetworkPackageContentOutput
    GetSolNetworkPackageDescriptorInput: GetSolNetworkPackageDescriptorInput
    GetSolNetworkPackageDescriptorOutput: GetSolNetworkPackageDescriptorOutput
    InstantiateSolNetworkInstanceInput: InstantiateSolNetworkInstanceInput
    InstantiateSolNetworkInstanceOutput: InstantiateSolNetworkInstanceOutput
    ListSolFunctionInstancesInput: ListSolFunctionInstancesInput
    ListSolFunctionInstancesOutput: ListSolFunctionInstancesOutput
    ListSolFunctionPackagesInput: ListSolFunctionPackagesInput
    ListSolFunctionPackagesOutput: ListSolFunctionPackagesOutput
    ListSolNetworkInstancesInput: ListSolNetworkInstancesInput
    ListSolNetworkInstancesOutput: ListSolNetworkInstancesOutput
    ListSolNetworkOperationsInput: ListSolNetworkOperationsInput
    ListSolNetworkOperationsOutput: ListSolNetworkOperationsOutput
    ListSolNetworkPackagesInput: ListSolNetworkPackagesInput
    ListSolNetworkPackagesOutput: ListSolNetworkPackagesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutSolFunctionPackageContentInput: PutSolFunctionPackageContentInput
    PutSolFunctionPackageContentOutput: PutSolFunctionPackageContentOutput
    PutSolNetworkPackageContentInput: PutSolNetworkPackageContentInput
    PutSolNetworkPackageContentOutput: PutSolNetworkPackageContentOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    TerminateSolNetworkInstanceInput: TerminateSolNetworkInstanceInput
    TerminateSolNetworkInstanceOutput: TerminateSolNetworkInstanceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateSolFunctionPackageInput: UpdateSolFunctionPackageInput
    UpdateSolFunctionPackageOutput: UpdateSolFunctionPackageOutput
    UpdateSolNetworkInstanceInput: UpdateSolNetworkInstanceInput
    UpdateSolNetworkInstanceOutput: UpdateSolNetworkInstanceOutput
    UpdateSolNetworkPackageInput: UpdateSolNetworkPackageInput
    UpdateSolNetworkPackageOutput: UpdateSolNetworkPackageOutput
    ValidateSolFunctionPackageContentInput: ValidateSolFunctionPackageContentInput
    ValidateSolFunctionPackageContentOutput: ValidateSolFunctionPackageContentOutput
    ValidateSolNetworkPackageContentInput: ValidateSolNetworkPackageContentInput
    ValidateSolNetworkPackageContentOutput: ValidateSolNetworkPackageContentOutput
end

return M
