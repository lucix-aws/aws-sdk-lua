local record AssociateServiceRoleToAccountInput
    roleArn: string
end

local record AssociateServiceRoleToAccountOutput
    associatedAt: string
end

local record BatchAssociateClientDeviceWithCoreDeviceInput
    entries: {AssociateClientDeviceWithCoreDeviceEntry}
    coreDeviceThingName: string
end

local record BatchAssociateClientDeviceWithCoreDeviceOutput
    errorEntries: {AssociateClientDeviceWithCoreDeviceErrorEntry}
end

local record BatchDisassociateClientDeviceFromCoreDeviceInput
    entries: {DisassociateClientDeviceFromCoreDeviceEntry}
    coreDeviceThingName: string
end

local record BatchDisassociateClientDeviceFromCoreDeviceOutput
    errorEntries: {DisassociateClientDeviceFromCoreDeviceErrorEntry}
end

local record CancelDeploymentInput
    deploymentId: string
end

local record CancelDeploymentOutput
    message: string
end

local record CreateComponentVersionInput
    inlineRecipe: string
    lambdaFunction: LambdaFunctionRecipeSource
    tags: {string : string}
    clientToken: string
end

local record CreateComponentVersionOutput
    arn: string
    componentName: string
    componentVersion: string
    creationTimestamp: number
    status: CloudComponentStatus
end

local record CreateDeploymentInput
    targetArn: string
    deploymentName: string
    components: {string : ComponentDeploymentSpecification}
    iotJobConfiguration: DeploymentIoTJobConfiguration
    deploymentPolicies: DeploymentPolicies
    parentTargetArn: string
    tags: {string : string}
    clientToken: string
end

local record CreateDeploymentOutput
    deploymentId: string
    iotJobId: string
    iotJobArn: string
end

local record DeleteComponentInput
    arn: string
end

local record DeleteComponentOutput
end

local record DeleteCoreDeviceInput
    coreDeviceThingName: string
end

local record DeleteCoreDeviceOutput
end

local record DeleteDeploymentInput
    deploymentId: string
end

local record DeleteDeploymentOutput
end

local record DescribeComponentInput
    arn: string
end

local record DescribeComponentOutput
    arn: string
    componentName: string
    componentVersion: string
    creationTimestamp: number
    publisher: string
    description: string
    status: CloudComponentStatus
    platforms: {ComponentPlatform}
    tags: {string : string}
end

local record DisassociateServiceRoleFromAccountInput
end

local record DisassociateServiceRoleFromAccountOutput
    disassociatedAt: string
end

local record GetComponentInput
    recipeOutputFormat: string
    arn: string
end

local record GetComponentOutput
    recipeOutputFormat: string
    recipe: string
    tags: {string : string}
end

local record GetComponentVersionArtifactInput
    arn: string
    artifactName: string
    s3EndpointType: string
    iotEndpointType: string
end

local record GetComponentVersionArtifactOutput
    preSignedUrl: string
end

local record GetConnectivityInfoInput
    thingName: string
end

local record GetConnectivityInfoOutput
    connectivityInfo: {ConnectivityInfo}
    message: string
end

local record GetCoreDeviceInput
    coreDeviceThingName: string
end

local record GetCoreDeviceOutput
    coreDeviceThingName: string
    coreVersion: string
    platform: string
    architecture: string
    runtime: string
    status: string
    lastStatusUpdateTimestamp: number
    tags: {string : string}
end

local record GetDeploymentInput
    deploymentId: string
end

local record GetDeploymentOutput
    targetArn: string
    revisionId: string
    deploymentId: string
    deploymentName: string
    deploymentStatus: string
    iotJobId: string
    iotJobArn: string
    components: {string : ComponentDeploymentSpecification}
    deploymentPolicies: DeploymentPolicies
    iotJobConfiguration: DeploymentIoTJobConfiguration
    creationTimestamp: number
    isLatestForTarget: boolean
    parentTargetArn: string
    tags: {string : string}
end

local record GetServiceRoleForAccountInput
end

local record GetServiceRoleForAccountOutput
    associatedAt: string
    roleArn: string
end

local record ListClientDevicesAssociatedWithCoreDeviceInput
    coreDeviceThingName: string
    maxResults: number
    nextToken: string
end

local record ListClientDevicesAssociatedWithCoreDeviceOutput
    associatedClientDevices: {AssociatedClientDevice}
    nextToken: string
end

local record ListComponentsInput
    scope: string
    maxResults: number
    nextToken: string
end

local record ListComponentsOutput
    components: {Component}
    nextToken: string
end

local record ListComponentVersionsInput
    arn: string
    maxResults: number
    nextToken: string
end

local record ListComponentVersionsOutput
    componentVersions: {ComponentVersionListItem}
    nextToken: string
end

local record ListCoreDevicesInput
    thingGroupArn: string
    status: string
    maxResults: number
    nextToken: string
    runtime: string
end

local record ListCoreDevicesOutput
    coreDevices: {CoreDevice}
    nextToken: string
end

local record ListDeploymentsInput
    targetArn: string
    historyFilter: string
    parentTargetArn: string
    maxResults: number
    nextToken: string
end

local record ListDeploymentsOutput
    deployments: {Deployment}
    nextToken: string
end

local record ListEffectiveDeploymentsInput
    coreDeviceThingName: string
    maxResults: number
    nextToken: string
end

local record ListEffectiveDeploymentsOutput
    effectiveDeployments: {EffectiveDeployment}
    nextToken: string
end

local record ListInstalledComponentsInput
    coreDeviceThingName: string
    maxResults: number
    nextToken: string
    topologyFilter: string
end

local record ListInstalledComponentsOutput
    installedComponents: {InstalledComponent}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ResolveComponentCandidatesInput
    platform: ComponentPlatform
    componentCandidates: {ComponentCandidate}
end

local record ResolveComponentCandidatesOutput
    resolvedComponentVersions: {ResolvedComponentVersion}
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

local record UpdateConnectivityInfoInput
    thingName: string
    connectivityInfo: {ConnectivityInfo}
end

local record UpdateConnectivityInfoOutput
    version: string
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record RequestAlreadyInProgressException
    message: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    quotaCode: string
    serviceCode: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record RequestAlreadyInProgressException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
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
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
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
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
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
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
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
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
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

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local type ComponentVisibilityScope = "PRIVATE" | "PUBLIC"

local type DeploymentHistoryFilter = "ALL" | "LATEST_ONLY"

local type S3EndpointType = "REGIONAL" | "GLOBAL"

local type CoreDeviceStatus = "HEALTHY" | "UNHEALTHY"

local type IotEndpointType = "fips" | "standard"

local type RecipeOutputFormat = "JSON" | "YAML"

local type DeploymentStatus = "ACTIVE" | "COMPLETED" | "CANCELED" | "FAILED" | "INACTIVE"

local type InstalledComponentTopologyFilter = "ALL" | "ROOT"

local record M
    AssociateServiceRoleToAccountInput: AssociateServiceRoleToAccountInput
    AssociateServiceRoleToAccountOutput: AssociateServiceRoleToAccountOutput
    BatchAssociateClientDeviceWithCoreDeviceInput: BatchAssociateClientDeviceWithCoreDeviceInput
    BatchAssociateClientDeviceWithCoreDeviceOutput: BatchAssociateClientDeviceWithCoreDeviceOutput
    BatchDisassociateClientDeviceFromCoreDeviceInput: BatchDisassociateClientDeviceFromCoreDeviceInput
    BatchDisassociateClientDeviceFromCoreDeviceOutput: BatchDisassociateClientDeviceFromCoreDeviceOutput
    CancelDeploymentInput: CancelDeploymentInput
    CancelDeploymentOutput: CancelDeploymentOutput
    CreateComponentVersionInput: CreateComponentVersionInput
    CreateComponentVersionOutput: CreateComponentVersionOutput
    CreateDeploymentInput: CreateDeploymentInput
    CreateDeploymentOutput: CreateDeploymentOutput
    DeleteComponentInput: DeleteComponentInput
    DeleteComponentOutput: DeleteComponentOutput
    DeleteCoreDeviceInput: DeleteCoreDeviceInput
    DeleteCoreDeviceOutput: DeleteCoreDeviceOutput
    DeleteDeploymentInput: DeleteDeploymentInput
    DeleteDeploymentOutput: DeleteDeploymentOutput
    DescribeComponentInput: DescribeComponentInput
    DescribeComponentOutput: DescribeComponentOutput
    DisassociateServiceRoleFromAccountInput: DisassociateServiceRoleFromAccountInput
    DisassociateServiceRoleFromAccountOutput: DisassociateServiceRoleFromAccountOutput
    GetComponentInput: GetComponentInput
    GetComponentOutput: GetComponentOutput
    GetComponentVersionArtifactInput: GetComponentVersionArtifactInput
    GetComponentVersionArtifactOutput: GetComponentVersionArtifactOutput
    GetConnectivityInfoInput: GetConnectivityInfoInput
    GetConnectivityInfoOutput: GetConnectivityInfoOutput
    GetCoreDeviceInput: GetCoreDeviceInput
    GetCoreDeviceOutput: GetCoreDeviceOutput
    GetDeploymentInput: GetDeploymentInput
    GetDeploymentOutput: GetDeploymentOutput
    GetServiceRoleForAccountInput: GetServiceRoleForAccountInput
    GetServiceRoleForAccountOutput: GetServiceRoleForAccountOutput
    ListClientDevicesAssociatedWithCoreDeviceInput: ListClientDevicesAssociatedWithCoreDeviceInput
    ListClientDevicesAssociatedWithCoreDeviceOutput: ListClientDevicesAssociatedWithCoreDeviceOutput
    ListComponentsInput: ListComponentsInput
    ListComponentsOutput: ListComponentsOutput
    ListComponentVersionsInput: ListComponentVersionsInput
    ListComponentVersionsOutput: ListComponentVersionsOutput
    ListCoreDevicesInput: ListCoreDevicesInput
    ListCoreDevicesOutput: ListCoreDevicesOutput
    ListDeploymentsInput: ListDeploymentsInput
    ListDeploymentsOutput: ListDeploymentsOutput
    ListEffectiveDeploymentsInput: ListEffectiveDeploymentsInput
    ListEffectiveDeploymentsOutput: ListEffectiveDeploymentsOutput
    ListInstalledComponentsInput: ListInstalledComponentsInput
    ListInstalledComponentsOutput: ListInstalledComponentsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ResolveComponentCandidatesInput: ResolveComponentCandidatesInput
    ResolveComponentCandidatesOutput: ResolveComponentCandidatesOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateConnectivityInfoInput: UpdateConnectivityInfoInput
    UpdateConnectivityInfoOutput: UpdateConnectivityInfoOutput
end

return M
