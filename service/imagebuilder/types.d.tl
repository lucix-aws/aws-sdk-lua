local record CancelImageCreationInput
    imageBuildVersionArn: string
    clientToken: string
end

local record CancelImageCreationOutput
    requestId: string
    clientToken: string
    imageBuildVersionArn: string
end

local record CancelLifecycleExecutionInput
    lifecycleExecutionId: string
    clientToken: string
end

local record CancelLifecycleExecutionOutput
    lifecycleExecutionId: string
end

local record CreateComponentInput
    name: string
    semanticVersion: string
    description: string
    changeDescription: string
    platform: string
    supportedOsVersions: {string}
    data: string
    uri: string
    kmsKeyId: string
    tags: {string : string}
    clientToken: string
    dryRun: boolean
end

local record CreateComponentOutput
    requestId: string
    clientToken: string
    componentBuildVersionArn: string
    latestVersionReferences: LatestVersionReferences
end

local record CreateContainerRecipeInput
    containerType: string
    name: string
    description: string
    semanticVersion: string
    components: {ComponentConfiguration}
    instanceConfiguration: InstanceConfiguration
    dockerfileTemplateData: string
    dockerfileTemplateUri: string
    platformOverride: string
    imageOsVersionOverride: string
    parentImage: string
    tags: {string : string}
    workingDirectory: string
    targetRepository: TargetContainerRepository
    kmsKeyId: string
    clientToken: string
end

local record CreateContainerRecipeOutput
    requestId: string
    clientToken: string
    containerRecipeArn: string
    latestVersionReferences: LatestVersionReferences
end

local record CreateDistributionConfigurationInput
    name: string
    description: string
    distributions: {Distribution}
    tags: {string : string}
    clientToken: string
end

local record CreateDistributionConfigurationOutput
    requestId: string
    clientToken: string
    distributionConfigurationArn: string
end

local record CreateImageInput
    imageRecipeArn: string
    containerRecipeArn: string
    distributionConfigurationArn: string
    infrastructureConfigurationArn: string
    imageTestsConfiguration: ImageTestsConfiguration
    enhancedImageMetadataEnabled: boolean
    tags: {string : string}
    clientToken: string
    imageScanningConfiguration: ImageScanningConfiguration
    workflows: {WorkflowConfiguration}
    executionRole: string
    loggingConfiguration: ImageLoggingConfiguration
end

local record CreateImageOutput
    requestId: string
    clientToken: string
    imageBuildVersionArn: string
    latestVersionReferences: LatestVersionReferences
end

local record CreateImagePipelineInput
    name: string
    description: string
    imageRecipeArn: string
    containerRecipeArn: string
    infrastructureConfigurationArn: string
    distributionConfigurationArn: string
    imageTestsConfiguration: ImageTestsConfiguration
    enhancedImageMetadataEnabled: boolean
    schedule: Schedule
    status: string
    tags: {string : string}
    imageTags: {string : string}
    clientToken: string
    imageScanningConfiguration: ImageScanningConfiguration
    workflows: {WorkflowConfiguration}
    executionRole: string
    loggingConfiguration: PipelineLoggingConfiguration
end

local record CreateImagePipelineOutput
    requestId: string
    clientToken: string
    imagePipelineArn: string
end

local record CreateImageRecipeInput
    name: string
    description: string
    semanticVersion: string
    components: {ComponentConfiguration}
    parentImage: string
    blockDeviceMappings: {InstanceBlockDeviceMapping}
    tags: {string : string}
    workingDirectory: string
    additionalInstanceConfiguration: AdditionalInstanceConfiguration
    amiTags: {string : string}
    clientToken: string
end

local record CreateImageRecipeOutput
    requestId: string
    clientToken: string
    imageRecipeArn: string
    latestVersionReferences: LatestVersionReferences
end

local record CreateInfrastructureConfigurationInput
    name: string
    description: string
    instanceTypes: {string}
    instanceProfileName: string
    securityGroupIds: {string}
    subnetId: string
    logging: Logging
    keyPair: string
    terminateInstanceOnFailure: boolean
    snsTopicArn: string
    resourceTags: {string : string}
    instanceMetadataOptions: InstanceMetadataOptions
    tags: {string : string}
    placement: Placement
    clientToken: string
end

local record CreateInfrastructureConfigurationOutput
    requestId: string
    clientToken: string
    infrastructureConfigurationArn: string
end

local record CreateLifecyclePolicyInput
    name: string
    description: string
    status: string
    executionRole: string
    resourceType: string
    policyDetails: {LifecyclePolicyDetail}
    resourceSelection: LifecyclePolicyResourceSelection
    tags: {string : string}
    clientToken: string
end

local record CreateLifecyclePolicyOutput
    clientToken: string
    lifecyclePolicyArn: string
end

local record CreateWorkflowInput
    name: string
    semanticVersion: string
    description: string
    changeDescription: string
    data: string
    uri: string
    kmsKeyId: string
    tags: {string : string}
    clientToken: string
    type: string
    dryRun: boolean
end

local record CreateWorkflowOutput
    clientToken: string
    workflowBuildVersionArn: string
    latestVersionReferences: LatestVersionReferences
end

local record DeleteComponentInput
    componentBuildVersionArn: string
end

local record DeleteComponentOutput
    requestId: string
    componentBuildVersionArn: string
end

local record DeleteContainerRecipeInput
    containerRecipeArn: string
end

local record DeleteContainerRecipeOutput
    requestId: string
    containerRecipeArn: string
end

local record DeleteDistributionConfigurationInput
    distributionConfigurationArn: string
end

local record DeleteDistributionConfigurationOutput
    requestId: string
    distributionConfigurationArn: string
end

local record DeleteImageInput
    imageBuildVersionArn: string
end

local record DeleteImageOutput
    requestId: string
    imageBuildVersionArn: string
end

local record DeleteImagePipelineInput
    imagePipelineArn: string
end

local record DeleteImagePipelineOutput
    requestId: string
    imagePipelineArn: string
end

local record DeleteImageRecipeInput
    imageRecipeArn: string
end

local record DeleteImageRecipeOutput
    requestId: string
    imageRecipeArn: string
end

local record DeleteInfrastructureConfigurationInput
    infrastructureConfigurationArn: string
end

local record DeleteInfrastructureConfigurationOutput
    requestId: string
    infrastructureConfigurationArn: string
end

local record DeleteLifecyclePolicyInput
    lifecyclePolicyArn: string
end

local record DeleteLifecyclePolicyOutput
    lifecyclePolicyArn: string
end

local record DeleteWorkflowInput
    workflowBuildVersionArn: string
end

local record DeleteWorkflowOutput
    workflowBuildVersionArn: string
end

local record DistributeImageInput
    sourceImage: string
    distributionConfigurationArn: string
    executionRole: string
    tags: {string : string}
    clientToken: string
    loggingConfiguration: ImageLoggingConfiguration
end

local record DistributeImageOutput
    clientToken: string
    imageBuildVersionArn: string
end

local record GetComponentInput
    componentBuildVersionArn: string
end

local record GetComponentOutput
    requestId: string
    component: Component
    latestVersionReferences: LatestVersionReferences
end

local record GetComponentPolicyInput
    componentArn: string
end

local record GetComponentPolicyOutput
    requestId: string
    policy: string
end

local record GetContainerRecipeInput
    containerRecipeArn: string
end

local record GetContainerRecipeOutput
    requestId: string
    containerRecipe: ContainerRecipe
    latestVersionReferences: LatestVersionReferences
end

local record GetContainerRecipePolicyInput
    containerRecipeArn: string
end

local record GetContainerRecipePolicyOutput
    requestId: string
    policy: string
end

local record GetDistributionConfigurationInput
    distributionConfigurationArn: string
end

local record GetDistributionConfigurationOutput
    requestId: string
    distributionConfiguration: DistributionConfiguration
end

local record GetImageInput
    imageBuildVersionArn: string
end

local record GetImageOutput
    requestId: string
    image: Image
    latestVersionReferences: LatestVersionReferences
end

local record GetImagePipelineInput
    imagePipelineArn: string
end

local record GetImagePipelineOutput
    requestId: string
    imagePipeline: ImagePipeline
end

local record GetImagePolicyInput
    imageArn: string
end

local record GetImagePolicyOutput
    requestId: string
    policy: string
end

local record GetImageRecipeInput
    imageRecipeArn: string
end

local record GetImageRecipeOutput
    requestId: string
    imageRecipe: ImageRecipe
    latestVersionReferences: LatestVersionReferences
end

local record GetImageRecipePolicyInput
    imageRecipeArn: string
end

local record GetImageRecipePolicyOutput
    requestId: string
    policy: string
end

local record GetInfrastructureConfigurationInput
    infrastructureConfigurationArn: string
end

local record GetInfrastructureConfigurationOutput
    requestId: string
    infrastructureConfiguration: InfrastructureConfiguration
end

local record GetLifecycleExecutionInput
    lifecycleExecutionId: string
end

local record GetLifecycleExecutionOutput
    lifecycleExecution: LifecycleExecution
end

local record GetLifecyclePolicyInput
    lifecyclePolicyArn: string
end

local record GetLifecyclePolicyOutput
    lifecyclePolicy: LifecyclePolicy
end

local record GetMarketplaceResourceInput
    resourceType: string
    resourceArn: string
    resourceLocation: string
end

local record GetMarketplaceResourceOutput
    resourceArn: string
    url: string
    data: string
end

local record GetWorkflowInput
    workflowBuildVersionArn: string
end

local record GetWorkflowOutput
    workflow: Workflow
    latestVersionReferences: LatestVersionReferences
end

local record GetWorkflowExecutionInput
    workflowExecutionId: string
end

local record GetWorkflowExecutionOutput
    requestId: string
    workflowBuildVersionArn: string
    workflowExecutionId: string
    imageBuildVersionArn: string
    type: string
    status: string
    message: string
    totalStepCount: number
    totalStepsSucceeded: number
    totalStepsFailed: number
    totalStepsSkipped: number
    startTime: string
    endTime: string
    parallelGroup: string
end

local record GetWorkflowStepExecutionInput
    stepExecutionId: string
end

local record GetWorkflowStepExecutionOutput
    requestId: string
    stepExecutionId: string
    workflowBuildVersionArn: string
    workflowExecutionId: string
    imageBuildVersionArn: string
    name: string
    description: string
    action: string
    status: string
    rollbackStatus: string
    message: string
    inputs: string
    outputs: string
    startTime: string
    endTime: string
    onFailure: string
    timeoutSeconds: number
end

local record ImportComponentInput
    name: string
    semanticVersion: string
    description: string
    changeDescription: string
    type: string
    format: string
    platform: string
    data: string
    uri: string
    kmsKeyId: string
    tags: {string : string}
    clientToken: string
end

local record ImportComponentOutput
    requestId: string
    clientToken: string
    componentBuildVersionArn: string
end

local record ImportDiskImageInput
    name: string
    semanticVersion: string
    description: string
    platform: string
    osVersion: string
    executionRole: string
    infrastructureConfigurationArn: string
    uri: string
    loggingConfiguration: ImageLoggingConfiguration
    tags: {string : string}
    registerImageOptions: RegisterImageOptions
    windowsConfiguration: WindowsConfiguration
    clientToken: string
end

local record ImportDiskImageOutput
    clientToken: string
    imageBuildVersionArn: string
end

local record ImportVmImageInput
    name: string
    semanticVersion: string
    description: string
    platform: string
    osVersion: string
    vmImportTaskId: string
    loggingConfiguration: ImageLoggingConfiguration
    tags: {string : string}
    clientToken: string
end

local record ImportVmImageOutput
    requestId: string
    imageArn: string
    clientToken: string
end

local record ListComponentBuildVersionsInput
    componentVersionArn: string
    maxResults: number
    nextToken: string
end

local record ListComponentBuildVersionsOutput
    requestId: string
    componentSummaryList: {ComponentSummary}
    nextToken: string
end

local record ListComponentsInput
    owner: string
    filters: {Filter}
    byName: boolean
    maxResults: number
    nextToken: string
end

local record ListComponentsOutput
    requestId: string
    componentVersionList: {ComponentVersion}
    nextToken: string
end

local record ListContainerRecipesInput
    owner: string
    filters: {Filter}
    maxResults: number
    nextToken: string
end

local record ListContainerRecipesOutput
    requestId: string
    containerRecipeSummaryList: {ContainerRecipeSummary}
    nextToken: string
end

local record ListDistributionConfigurationsInput
    filters: {Filter}
    maxResults: number
    nextToken: string
end

local record ListDistributionConfigurationsOutput
    requestId: string
    distributionConfigurationSummaryList: {DistributionConfigurationSummary}
    nextToken: string
end

local record ListImageBuildVersionsInput
    imageVersionArn: string
    filters: {Filter}
    maxResults: number
    nextToken: string
end

local record ListImageBuildVersionsOutput
    requestId: string
    imageSummaryList: {ImageSummary}
    nextToken: string
end

local record ListImagePackagesInput
    imageBuildVersionArn: string
    maxResults: number
    nextToken: string
end

local record ListImagePackagesOutput
    requestId: string
    imagePackageList: {ImagePackage}
    nextToken: string
end

local record ListImagePipelineImagesInput
    imagePipelineArn: string
    filters: {Filter}
    maxResults: number
    nextToken: string
end

local record ListImagePipelineImagesOutput
    requestId: string
    imageSummaryList: {ImageSummary}
    nextToken: string
end

local record ListImagePipelinesInput
    filters: {Filter}
    maxResults: number
    nextToken: string
end

local record ListImagePipelinesOutput
    requestId: string
    imagePipelineList: {ImagePipeline}
    nextToken: string
end

local record ListImageRecipesInput
    owner: string
    filters: {Filter}
    maxResults: number
    nextToken: string
end

local record ListImageRecipesOutput
    requestId: string
    imageRecipeSummaryList: {ImageRecipeSummary}
    nextToken: string
end

local record ListImagesInput
    owner: string
    filters: {Filter}
    byName: boolean
    maxResults: number
    nextToken: string
    includeDeprecated: boolean
end

local record ListImagesOutput
    requestId: string
    imageVersionList: {ImageVersion}
    nextToken: string
end

local record ListImageScanFindingAggregationsInput
    filter: Filter
    nextToken: string
end

local record ListImageScanFindingAggregationsOutput
    requestId: string
    aggregationType: string
    responses: {ImageScanFindingAggregation}
    nextToken: string
end

local record ListImageScanFindingsInput
    filters: {ImageScanFindingsFilter}
    maxResults: number
    nextToken: string
end

local record ListImageScanFindingsOutput
    requestId: string
    findings: {ImageScanFinding}
    nextToken: string
end

local record ListInfrastructureConfigurationsInput
    filters: {Filter}
    maxResults: number
    nextToken: string
end

local record ListInfrastructureConfigurationsOutput
    requestId: string
    infrastructureConfigurationSummaryList: {InfrastructureConfigurationSummary}
    nextToken: string
end

local record ListLifecycleExecutionResourcesInput
    lifecycleExecutionId: string
    parentResourceId: string
    maxResults: number
    nextToken: string
end

local record ListLifecycleExecutionResourcesOutput
    lifecycleExecutionId: string
    lifecycleExecutionState: LifecycleExecutionState
    resources: {LifecycleExecutionResource}
    nextToken: string
end

local record ListLifecycleExecutionsInput
    maxResults: number
    nextToken: string
    resourceArn: string
end

local record ListLifecycleExecutionsOutput
    lifecycleExecutions: {LifecycleExecution}
    nextToken: string
end

local record ListLifecyclePoliciesInput
    filters: {Filter}
    maxResults: number
    nextToken: string
end

local record ListLifecyclePoliciesOutput
    lifecyclePolicySummaryList: {LifecyclePolicySummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListWaitingWorkflowStepsInput
    maxResults: number
    nextToken: string
end

local record ListWaitingWorkflowStepsOutput
    steps: {WorkflowStepExecution}
    nextToken: string
end

local record ListWorkflowBuildVersionsInput
    workflowVersionArn: string
    maxResults: number
    nextToken: string
end

local record ListWorkflowBuildVersionsOutput
    workflowSummaryList: {WorkflowSummary}
    nextToken: string
end

local record ListWorkflowExecutionsInput
    maxResults: number
    nextToken: string
    imageBuildVersionArn: string
end

local record ListWorkflowExecutionsOutput
    requestId: string
    workflowExecutions: {WorkflowExecutionMetadata}
    imageBuildVersionArn: string
    message: string
    nextToken: string
end

local record ListWorkflowsInput
    owner: string
    filters: {Filter}
    byName: boolean
    maxResults: number
    nextToken: string
end

local record ListWorkflowsOutput
    workflowVersionList: {WorkflowVersion}
    nextToken: string
end

local record ListWorkflowStepExecutionsInput
    maxResults: number
    nextToken: string
    workflowExecutionId: string
end

local record ListWorkflowStepExecutionsOutput
    requestId: string
    steps: {WorkflowStepMetadata}
    workflowBuildVersionArn: string
    workflowExecutionId: string
    imageBuildVersionArn: string
    message: string
    nextToken: string
end

local record PutComponentPolicyInput
    componentArn: string
    policy: string
end

local record PutComponentPolicyOutput
    requestId: string
    componentArn: string
end

local record PutContainerRecipePolicyInput
    containerRecipeArn: string
    policy: string
end

local record PutContainerRecipePolicyOutput
    requestId: string
    containerRecipeArn: string
end

local record PutImagePolicyInput
    imageArn: string
    policy: string
end

local record PutImagePolicyOutput
    requestId: string
    imageArn: string
end

local record PutImageRecipePolicyInput
    imageRecipeArn: string
    policy: string
end

local record PutImageRecipePolicyOutput
    requestId: string
    imageRecipeArn: string
end

local record RetryImageInput
    imageBuildVersionArn: string
    clientToken: string
end

local record RetryImageOutput
    clientToken: string
    imageBuildVersionArn: string
end

local record SendWorkflowStepActionInput
    stepExecutionId: string
    imageBuildVersionArn: string
    action: string
    reason: string
    clientToken: string
end

local record SendWorkflowStepActionOutput
    stepExecutionId: string
    imageBuildVersionArn: string
    clientToken: string
end

local record StartImagePipelineExecutionInput
    imagePipelineArn: string
    clientToken: string
    tags: {string : string}
end

local record StartImagePipelineExecutionOutput
    requestId: string
    clientToken: string
    imageBuildVersionArn: string
end

local record StartResourceStateUpdateInput
    resourceArn: string
    state: ResourceState
    executionRole: string
    includeResources: ResourceStateUpdateIncludeResources
    exclusionRules: ResourceStateUpdateExclusionRules
    updateAt: number
    clientToken: string
end

local record StartResourceStateUpdateOutput
    lifecycleExecutionId: string
    resourceArn: string
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

local record UpdateDistributionConfigurationInput
    distributionConfigurationArn: string
    description: string
    distributions: {Distribution}
    clientToken: string
end

local record UpdateDistributionConfigurationOutput
    requestId: string
    clientToken: string
    distributionConfigurationArn: string
end

local record UpdateImagePipelineInput
    imagePipelineArn: string
    description: string
    imageRecipeArn: string
    containerRecipeArn: string
    infrastructureConfigurationArn: string
    distributionConfigurationArn: string
    imageTestsConfiguration: ImageTestsConfiguration
    enhancedImageMetadataEnabled: boolean
    schedule: Schedule
    status: string
    clientToken: string
    imageScanningConfiguration: ImageScanningConfiguration
    workflows: {WorkflowConfiguration}
    loggingConfiguration: PipelineLoggingConfiguration
    executionRole: string
    imageTags: {string : string}
end

local record UpdateImagePipelineOutput
    requestId: string
    clientToken: string
    imagePipelineArn: string
end

local record UpdateInfrastructureConfigurationInput
    infrastructureConfigurationArn: string
    description: string
    instanceTypes: {string}
    instanceProfileName: string
    securityGroupIds: {string}
    subnetId: string
    logging: Logging
    keyPair: string
    terminateInstanceOnFailure: boolean
    snsTopicArn: string
    resourceTags: {string : string}
    instanceMetadataOptions: InstanceMetadataOptions
    placement: Placement
    clientToken: string
end

local record UpdateInfrastructureConfigurationOutput
    requestId: string
    clientToken: string
    infrastructureConfigurationArn: string
end

local record UpdateLifecyclePolicyInput
    lifecyclePolicyArn: string
    description: string
    status: string
    executionRole: string
    resourceType: string
    policyDetails: {LifecyclePolicyDetail}
    resourceSelection: LifecyclePolicyResourceSelection
    clientToken: string
end

local record UpdateLifecyclePolicyOutput
    lifecyclePolicyArn: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record DryRunOperationException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidRequestException
    message: string
end

local record InvalidVersionNumberException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidRequestException
    message: string
end

local record InvalidVersionNumberException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidRequestException
    message: string
end

local record InvalidVersionNumberException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record DryRunOperationException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidRequestException
    message: string
end

local record InvalidVersionNumberException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceDependencyException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceDependencyException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceDependencyException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceDependencyException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceDependencyException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceDependencyException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceDependencyException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceDependencyException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceDependencyException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidRequestException
    message: string
end

local record InvalidVersionNumberException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ClientException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ClientException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record CallRateLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidParameterCombinationException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local type WorkflowType = "BUILD" | "TEST" | "DISTRIBUTION"

local type LifecyclePolicyResourceType = "AMI_IMAGE" | "CONTAINER_IMAGE"

local type WorkflowStepExecutionRollbackStatus = "RUNNING" | "COMPLETED" | "SKIPPED" | "FAILED"

local type MarketplaceResourceType = "COMPONENT_DATA" | "COMPONENT_ARTIFACT"

local type Ownership = "Self" | "Shared" | "Amazon" | "ThirdParty" | "AWSMarketplace"

local type ContainerType = "DOCKER"

local type LifecyclePolicyStatus = "DISABLED" | "ENABLED"

local type ComponentFormat = "SHELL"

local type PipelineStatus = "DISABLED" | "ENABLED"

local type ComponentType = "BUILD" | "TEST"

local type WorkflowExecutionStatus = "PENDING" | "SKIPPED" | "RUNNING" | "COMPLETED" | "FAILED" | "ROLLBACK_IN_PROGRESS" | "ROLLBACK_COMPLETED" | "CANCELLED"

local type WorkflowStepExecutionStatus = "PENDING" | "SKIPPED" | "RUNNING" | "COMPLETED" | "FAILED" | "CANCELLED"

local type Platform = "Windows" | "Linux" | "macOS"

local type WorkflowStepActionType = "RESUME" | "STOP"

local record M
    CancelImageCreationInput: CancelImageCreationInput
    CancelImageCreationOutput: CancelImageCreationOutput
    CancelLifecycleExecutionInput: CancelLifecycleExecutionInput
    CancelLifecycleExecutionOutput: CancelLifecycleExecutionOutput
    CreateComponentInput: CreateComponentInput
    CreateComponentOutput: CreateComponentOutput
    CreateContainerRecipeInput: CreateContainerRecipeInput
    CreateContainerRecipeOutput: CreateContainerRecipeOutput
    CreateDistributionConfigurationInput: CreateDistributionConfigurationInput
    CreateDistributionConfigurationOutput: CreateDistributionConfigurationOutput
    CreateImageInput: CreateImageInput
    CreateImageOutput: CreateImageOutput
    CreateImagePipelineInput: CreateImagePipelineInput
    CreateImagePipelineOutput: CreateImagePipelineOutput
    CreateImageRecipeInput: CreateImageRecipeInput
    CreateImageRecipeOutput: CreateImageRecipeOutput
    CreateInfrastructureConfigurationInput: CreateInfrastructureConfigurationInput
    CreateInfrastructureConfigurationOutput: CreateInfrastructureConfigurationOutput
    CreateLifecyclePolicyInput: CreateLifecyclePolicyInput
    CreateLifecyclePolicyOutput: CreateLifecyclePolicyOutput
    CreateWorkflowInput: CreateWorkflowInput
    CreateWorkflowOutput: CreateWorkflowOutput
    DeleteComponentInput: DeleteComponentInput
    DeleteComponentOutput: DeleteComponentOutput
    DeleteContainerRecipeInput: DeleteContainerRecipeInput
    DeleteContainerRecipeOutput: DeleteContainerRecipeOutput
    DeleteDistributionConfigurationInput: DeleteDistributionConfigurationInput
    DeleteDistributionConfigurationOutput: DeleteDistributionConfigurationOutput
    DeleteImageInput: DeleteImageInput
    DeleteImageOutput: DeleteImageOutput
    DeleteImagePipelineInput: DeleteImagePipelineInput
    DeleteImagePipelineOutput: DeleteImagePipelineOutput
    DeleteImageRecipeInput: DeleteImageRecipeInput
    DeleteImageRecipeOutput: DeleteImageRecipeOutput
    DeleteInfrastructureConfigurationInput: DeleteInfrastructureConfigurationInput
    DeleteInfrastructureConfigurationOutput: DeleteInfrastructureConfigurationOutput
    DeleteLifecyclePolicyInput: DeleteLifecyclePolicyInput
    DeleteLifecyclePolicyOutput: DeleteLifecyclePolicyOutput
    DeleteWorkflowInput: DeleteWorkflowInput
    DeleteWorkflowOutput: DeleteWorkflowOutput
    DistributeImageInput: DistributeImageInput
    DistributeImageOutput: DistributeImageOutput
    GetComponentInput: GetComponentInput
    GetComponentOutput: GetComponentOutput
    GetComponentPolicyInput: GetComponentPolicyInput
    GetComponentPolicyOutput: GetComponentPolicyOutput
    GetContainerRecipeInput: GetContainerRecipeInput
    GetContainerRecipeOutput: GetContainerRecipeOutput
    GetContainerRecipePolicyInput: GetContainerRecipePolicyInput
    GetContainerRecipePolicyOutput: GetContainerRecipePolicyOutput
    GetDistributionConfigurationInput: GetDistributionConfigurationInput
    GetDistributionConfigurationOutput: GetDistributionConfigurationOutput
    GetImageInput: GetImageInput
    GetImageOutput: GetImageOutput
    GetImagePipelineInput: GetImagePipelineInput
    GetImagePipelineOutput: GetImagePipelineOutput
    GetImagePolicyInput: GetImagePolicyInput
    GetImagePolicyOutput: GetImagePolicyOutput
    GetImageRecipeInput: GetImageRecipeInput
    GetImageRecipeOutput: GetImageRecipeOutput
    GetImageRecipePolicyInput: GetImageRecipePolicyInput
    GetImageRecipePolicyOutput: GetImageRecipePolicyOutput
    GetInfrastructureConfigurationInput: GetInfrastructureConfigurationInput
    GetInfrastructureConfigurationOutput: GetInfrastructureConfigurationOutput
    GetLifecycleExecutionInput: GetLifecycleExecutionInput
    GetLifecycleExecutionOutput: GetLifecycleExecutionOutput
    GetLifecyclePolicyInput: GetLifecyclePolicyInput
    GetLifecyclePolicyOutput: GetLifecyclePolicyOutput
    GetMarketplaceResourceInput: GetMarketplaceResourceInput
    GetMarketplaceResourceOutput: GetMarketplaceResourceOutput
    GetWorkflowInput: GetWorkflowInput
    GetWorkflowOutput: GetWorkflowOutput
    GetWorkflowExecutionInput: GetWorkflowExecutionInput
    GetWorkflowExecutionOutput: GetWorkflowExecutionOutput
    GetWorkflowStepExecutionInput: GetWorkflowStepExecutionInput
    GetWorkflowStepExecutionOutput: GetWorkflowStepExecutionOutput
    ImportComponentInput: ImportComponentInput
    ImportComponentOutput: ImportComponentOutput
    ImportDiskImageInput: ImportDiskImageInput
    ImportDiskImageOutput: ImportDiskImageOutput
    ImportVmImageInput: ImportVmImageInput
    ImportVmImageOutput: ImportVmImageOutput
    ListComponentBuildVersionsInput: ListComponentBuildVersionsInput
    ListComponentBuildVersionsOutput: ListComponentBuildVersionsOutput
    ListComponentsInput: ListComponentsInput
    ListComponentsOutput: ListComponentsOutput
    ListContainerRecipesInput: ListContainerRecipesInput
    ListContainerRecipesOutput: ListContainerRecipesOutput
    ListDistributionConfigurationsInput: ListDistributionConfigurationsInput
    ListDistributionConfigurationsOutput: ListDistributionConfigurationsOutput
    ListImageBuildVersionsInput: ListImageBuildVersionsInput
    ListImageBuildVersionsOutput: ListImageBuildVersionsOutput
    ListImagePackagesInput: ListImagePackagesInput
    ListImagePackagesOutput: ListImagePackagesOutput
    ListImagePipelineImagesInput: ListImagePipelineImagesInput
    ListImagePipelineImagesOutput: ListImagePipelineImagesOutput
    ListImagePipelinesInput: ListImagePipelinesInput
    ListImagePipelinesOutput: ListImagePipelinesOutput
    ListImageRecipesInput: ListImageRecipesInput
    ListImageRecipesOutput: ListImageRecipesOutput
    ListImagesInput: ListImagesInput
    ListImagesOutput: ListImagesOutput
    ListImageScanFindingAggregationsInput: ListImageScanFindingAggregationsInput
    ListImageScanFindingAggregationsOutput: ListImageScanFindingAggregationsOutput
    ListImageScanFindingsInput: ListImageScanFindingsInput
    ListImageScanFindingsOutput: ListImageScanFindingsOutput
    ListInfrastructureConfigurationsInput: ListInfrastructureConfigurationsInput
    ListInfrastructureConfigurationsOutput: ListInfrastructureConfigurationsOutput
    ListLifecycleExecutionResourcesInput: ListLifecycleExecutionResourcesInput
    ListLifecycleExecutionResourcesOutput: ListLifecycleExecutionResourcesOutput
    ListLifecycleExecutionsInput: ListLifecycleExecutionsInput
    ListLifecycleExecutionsOutput: ListLifecycleExecutionsOutput
    ListLifecyclePoliciesInput: ListLifecyclePoliciesInput
    ListLifecyclePoliciesOutput: ListLifecyclePoliciesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListWaitingWorkflowStepsInput: ListWaitingWorkflowStepsInput
    ListWaitingWorkflowStepsOutput: ListWaitingWorkflowStepsOutput
    ListWorkflowBuildVersionsInput: ListWorkflowBuildVersionsInput
    ListWorkflowBuildVersionsOutput: ListWorkflowBuildVersionsOutput
    ListWorkflowExecutionsInput: ListWorkflowExecutionsInput
    ListWorkflowExecutionsOutput: ListWorkflowExecutionsOutput
    ListWorkflowsInput: ListWorkflowsInput
    ListWorkflowsOutput: ListWorkflowsOutput
    ListWorkflowStepExecutionsInput: ListWorkflowStepExecutionsInput
    ListWorkflowStepExecutionsOutput: ListWorkflowStepExecutionsOutput
    PutComponentPolicyInput: PutComponentPolicyInput
    PutComponentPolicyOutput: PutComponentPolicyOutput
    PutContainerRecipePolicyInput: PutContainerRecipePolicyInput
    PutContainerRecipePolicyOutput: PutContainerRecipePolicyOutput
    PutImagePolicyInput: PutImagePolicyInput
    PutImagePolicyOutput: PutImagePolicyOutput
    PutImageRecipePolicyInput: PutImageRecipePolicyInput
    PutImageRecipePolicyOutput: PutImageRecipePolicyOutput
    RetryImageInput: RetryImageInput
    RetryImageOutput: RetryImageOutput
    SendWorkflowStepActionInput: SendWorkflowStepActionInput
    SendWorkflowStepActionOutput: SendWorkflowStepActionOutput
    StartImagePipelineExecutionInput: StartImagePipelineExecutionInput
    StartImagePipelineExecutionOutput: StartImagePipelineExecutionOutput
    StartResourceStateUpdateInput: StartResourceStateUpdateInput
    StartResourceStateUpdateOutput: StartResourceStateUpdateOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateDistributionConfigurationInput: UpdateDistributionConfigurationInput
    UpdateDistributionConfigurationOutput: UpdateDistributionConfigurationOutput
    UpdateImagePipelineInput: UpdateImagePipelineInput
    UpdateImagePipelineOutput: UpdateImagePipelineOutput
    UpdateInfrastructureConfigurationInput: UpdateInfrastructureConfigurationInput
    UpdateInfrastructureConfigurationOutput: UpdateInfrastructureConfigurationOutput
    UpdateLifecyclePolicyInput: UpdateLifecyclePolicyInput
    UpdateLifecyclePolicyOutput: UpdateLifecyclePolicyOutput
end

return M
