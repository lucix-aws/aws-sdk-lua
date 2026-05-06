local record BatchDeleteEvaluationJobInput
    jobIdentifiers: {string}
end

local record BatchDeleteEvaluationJobOutput
    errors: {BatchDeleteEvaluationJobError}
    evaluationJobs: {BatchDeleteEvaluationJobItem}
end

local record CancelAutomatedReasoningPolicyBuildWorkflowInput
    policyArn: string
    buildWorkflowId: string
end

local record CancelAutomatedReasoningPolicyBuildWorkflowOutput
end

local record CreateAutomatedReasoningPolicyInput
    name: string
    description: string
    clientRequestToken: string
    policyDefinition: AutomatedReasoningPolicyDefinition
    kmsKeyId: string
    tags: {Tag}
end

local record CreateAutomatedReasoningPolicyOutput
    policyArn: string
    version: string
    name: string
    description: string
    definitionHash: string
    createdAt: number
    updatedAt: number
end

local record CreateAutomatedReasoningPolicyTestCaseInput
    policyArn: string
    guardContent: string
    queryContent: string
    expectedAggregatedFindingsResult: string
    clientRequestToken: string
    confidenceThreshold: number
end

local record CreateAutomatedReasoningPolicyTestCaseOutput
    policyArn: string
    testCaseId: string
end

local record CreateAutomatedReasoningPolicyVersionInput
    policyArn: string
    clientRequestToken: string
    lastUpdatedDefinitionHash: string
    tags: {Tag}
end

local record CreateAutomatedReasoningPolicyVersionOutput
    policyArn: string
    version: string
    name: string
    description: string
    definitionHash: string
    createdAt: number
end

local record CreateCustomModelInput
    modelName: string
    modelSourceConfig: ModelDataSource
    modelKmsKeyArn: string
    roleArn: string
    modelTags: {Tag}
    clientRequestToken: string
end

local record CreateCustomModelOutput
    modelArn: string
end

local record CreateCustomModelDeploymentInput
    modelDeploymentName: string
    modelArn: string
    description: string
    tags: {Tag}
    clientRequestToken: string
end

local record CreateCustomModelDeploymentOutput
    customModelDeploymentArn: string
end

local record CreateEvaluationJobInput
    jobName: string
    jobDescription: string
    clientRequestToken: string
    roleArn: string
    customerEncryptionKeyId: string
    jobTags: {Tag}
    applicationType: string
    evaluationConfig: EvaluationConfig
    inferenceConfig: EvaluationInferenceConfig
    outputDataConfig: EvaluationOutputDataConfig
end

local record CreateEvaluationJobOutput
    jobArn: string
end

local record CreateFoundationModelAgreementInput
    offerToken: string
    modelId: string
end

local record CreateFoundationModelAgreementOutput
    modelId: string
end

local record CreateGuardrailInput
    name: string
    description: string
    topicPolicyConfig: GuardrailTopicPolicyConfig
    contentPolicyConfig: GuardrailContentPolicyConfig
    wordPolicyConfig: GuardrailWordPolicyConfig
    sensitiveInformationPolicyConfig: GuardrailSensitiveInformationPolicyConfig
    contextualGroundingPolicyConfig: GuardrailContextualGroundingPolicyConfig
    automatedReasoningPolicyConfig: GuardrailAutomatedReasoningPolicyConfig
    crossRegionConfig: GuardrailCrossRegionConfig
    blockedInputMessaging: string
    blockedOutputsMessaging: string
    kmsKeyId: string
    tags: {Tag}
    clientRequestToken: string
end

local record CreateGuardrailOutput
    guardrailId: string
    guardrailArn: string
    version: string
    createdAt: number
end

local record CreateGuardrailVersionInput
    guardrailIdentifier: string
    description: string
    clientRequestToken: string
end

local record CreateGuardrailVersionOutput
    guardrailId: string
    version: string
end

local record CreateInferenceProfileInput
    inferenceProfileName: string
    description: string
    clientRequestToken: string
    modelSource: InferenceProfileModelSource
    tags: {Tag}
end

local record CreateInferenceProfileOutput
    inferenceProfileArn: string
    status: string
end

local record CreateMarketplaceModelEndpointInput
    modelSourceIdentifier: string
    endpointConfig: EndpointConfig
    acceptEula: boolean
    endpointName: string
    clientRequestToken: string
    tags: {Tag}
end

local record CreateMarketplaceModelEndpointOutput
    marketplaceModelEndpoint: MarketplaceModelEndpoint
end

local record CreateModelCopyJobInput
    sourceModelArn: string
    targetModelName: string
    modelKmsKeyId: string
    targetModelTags: {Tag}
    clientRequestToken: string
end

local record CreateModelCopyJobOutput
    jobArn: string
end

local record CreateModelCustomizationJobInput
    jobName: string
    customModelName: string
    roleArn: string
    clientRequestToken: string
    baseModelIdentifier: string
    customizationType: string
    customModelKmsKeyId: string
    jobTags: {Tag}
    customModelTags: {Tag}
    trainingDataConfig: TrainingDataConfig
    validationDataConfig: ValidationDataConfig
    outputDataConfig: OutputDataConfig
    hyperParameters: {string : string}
    vpcConfig: VpcConfig
    customizationConfig: CustomizationConfig
end

local record CreateModelCustomizationJobOutput
    jobArn: string
end

local record CreateModelImportJobInput
    jobName: string
    importedModelName: string
    roleArn: string
    modelDataSource: ModelDataSource
    jobTags: {Tag}
    importedModelTags: {Tag}
    clientRequestToken: string
    vpcConfig: VpcConfig
    importedModelKmsKeyId: string
end

local record CreateModelImportJobOutput
    jobArn: string
end

local record CreateModelInvocationJobInput
    jobName: string
    roleArn: string
    clientRequestToken: string
    modelId: string
    inputDataConfig: ModelInvocationJobInputDataConfig
    outputDataConfig: ModelInvocationJobOutputDataConfig
    vpcConfig: VpcConfig
    timeoutDurationInHours: number
    tags: {Tag}
    modelInvocationType: string
end

local record CreateModelInvocationJobOutput
    jobArn: string
end

local record CreatePromptRouterInput
    clientRequestToken: string
    promptRouterName: string
    models: {PromptRouterTargetModel}
    description: string
    routingCriteria: RoutingCriteria
    fallbackModel: PromptRouterTargetModel
    tags: {Tag}
end

local record CreatePromptRouterOutput
    promptRouterArn: string
end

local record CreateProvisionedModelThroughputInput
    clientRequestToken: string
    modelUnits: number
    provisionedModelName: string
    modelId: string
    commitmentDuration: string
    tags: {Tag}
end

local record CreateProvisionedModelThroughputOutput
    provisionedModelArn: string
end

local record DeleteAutomatedReasoningPolicyInput
    policyArn: string
    force: boolean
end

local record DeleteAutomatedReasoningPolicyOutput
end

local record DeleteAutomatedReasoningPolicyBuildWorkflowInput
    policyArn: string
    buildWorkflowId: string
    lastUpdatedAt: number
end

local record DeleteAutomatedReasoningPolicyBuildWorkflowOutput
end

local record DeleteAutomatedReasoningPolicyTestCaseInput
    policyArn: string
    testCaseId: string
    lastUpdatedAt: number
end

local record DeleteAutomatedReasoningPolicyTestCaseOutput
end

local record DeleteCustomModelInput
    modelIdentifier: string
end

local record DeleteCustomModelOutput
end

local record DeleteCustomModelDeploymentInput
    customModelDeploymentIdentifier: string
end

local record DeleteCustomModelDeploymentOutput
end

local record DeleteEnforcedGuardrailConfigurationInput
    configId: string
end

local record DeleteEnforcedGuardrailConfigurationOutput
end

local record DeleteFoundationModelAgreementInput
    modelId: string
end

local record DeleteFoundationModelAgreementOutput
end

local record DeleteGuardrailInput
    guardrailIdentifier: string
    guardrailVersion: string
end

local record DeleteGuardrailOutput
end

local record DeleteImportedModelInput
    modelIdentifier: string
end

local record DeleteImportedModelOutput
end

local record DeleteInferenceProfileInput
    inferenceProfileIdentifier: string
end

local record DeleteInferenceProfileOutput
end

local record DeleteMarketplaceModelEndpointInput
    endpointArn: string
end

local record DeleteMarketplaceModelEndpointOutput
end

local record DeleteModelInvocationLoggingConfigurationInput
end

local record DeleteModelInvocationLoggingConfigurationOutput
end

local record DeletePromptRouterInput
    promptRouterArn: string
end

local record DeletePromptRouterOutput
end

local record DeleteProvisionedModelThroughputInput
    provisionedModelId: string
end

local record DeleteProvisionedModelThroughputOutput
end

local record DeleteResourcePolicyInput
    resourceArn: string
end

local record DeleteResourcePolicyOutput
end

local record DeregisterMarketplaceModelEndpointInput
    endpointArn: string
end

local record DeregisterMarketplaceModelEndpointOutput
end

local record ExportAutomatedReasoningPolicyVersionInput
    policyArn: string
end

local record ExportAutomatedReasoningPolicyVersionOutput
    policyDefinition: AutomatedReasoningPolicyDefinition
end

local record GetAutomatedReasoningPolicyInput
    policyArn: string
end

local record GetAutomatedReasoningPolicyOutput
    policyArn: string
    name: string
    version: string
    policyId: string
    description: string
    definitionHash: string
    kmsKeyArn: string
    createdAt: number
    updatedAt: number
end

local record GetAutomatedReasoningPolicyAnnotationsInput
    policyArn: string
    buildWorkflowId: string
end

local record GetAutomatedReasoningPolicyAnnotationsOutput
    policyArn: string
    name: string
    buildWorkflowId: string
    annotations: {AutomatedReasoningPolicyAnnotation}
    annotationSetHash: string
    updatedAt: number
end

local record GetAutomatedReasoningPolicyBuildWorkflowInput
    policyArn: string
    buildWorkflowId: string
end

local record GetAutomatedReasoningPolicyBuildWorkflowOutput
    policyArn: string
    buildWorkflowId: string
    status: string
    buildWorkflowType: string
    documentName: string
    documentContentType: string
    documentDescription: string
    createdAt: number
    updatedAt: number
end

local record GetAutomatedReasoningPolicyBuildWorkflowResultAssetsInput
    policyArn: string
    buildWorkflowId: string
    assetType: string
    assetId: string
end

local record GetAutomatedReasoningPolicyBuildWorkflowResultAssetsOutput
    policyArn: string
    buildWorkflowId: string
    buildWorkflowAssets: AutomatedReasoningPolicyBuildResultAssets
end

local record GetAutomatedReasoningPolicyNextScenarioInput
    policyArn: string
    buildWorkflowId: string
end

local record GetAutomatedReasoningPolicyNextScenarioOutput
    policyArn: string
    scenario: AutomatedReasoningPolicyScenario
end

local record GetAutomatedReasoningPolicyTestCaseInput
    policyArn: string
    testCaseId: string
end

local record GetAutomatedReasoningPolicyTestCaseOutput
    policyArn: string
    testCase: AutomatedReasoningPolicyTestCase
end

local record GetAutomatedReasoningPolicyTestResultInput
    policyArn: string
    buildWorkflowId: string
    testCaseId: string
end

local record GetAutomatedReasoningPolicyTestResultOutput
    testResult: AutomatedReasoningPolicyTestResult
end

local record GetCustomModelInput
    modelIdentifier: string
end

local record GetCustomModelOutput
    modelArn: string
    modelName: string
    jobName: string
    jobArn: string
    baseModelArn: string
    customizationType: string
    modelKmsKeyArn: string
    hyperParameters: {string : string}
    trainingDataConfig: TrainingDataConfig
    validationDataConfig: ValidationDataConfig
    outputDataConfig: OutputDataConfig
    trainingMetrics: TrainingMetrics
    validationMetrics: {ValidatorMetric}
    creationTime: number
    customizationConfig: CustomizationConfig
    modelStatus: string
    failureMessage: string
end

local record GetCustomModelDeploymentInput
    customModelDeploymentIdentifier: string
end

local record GetCustomModelDeploymentOutput
    customModelDeploymentArn: string
    modelDeploymentName: string
    modelArn: string
    createdAt: number
    status: string
    description: string
    updateDetails: CustomModelDeploymentUpdateDetails
    failureMessage: string
    lastUpdatedAt: number
end

local record GetEvaluationJobInput
    jobIdentifier: string
end

local record GetEvaluationJobOutput
    jobName: string
    status: string
    jobArn: string
    jobDescription: string
    roleArn: string
    customerEncryptionKeyId: string
    jobType: string
    applicationType: string
    evaluationConfig: EvaluationConfig
    inferenceConfig: EvaluationInferenceConfig
    outputDataConfig: EvaluationOutputDataConfig
    creationTime: number
    lastModifiedTime: number
    failureMessages: {string}
end

local record GetFoundationModelInput
    modelIdentifier: string
end

local record GetFoundationModelOutput
    modelDetails: FoundationModelDetails
end

local record GetFoundationModelAvailabilityInput
    modelId: string
end

local record GetFoundationModelAvailabilityOutput
    modelId: string
    agreementAvailability: AgreementAvailability
    authorizationStatus: string
    entitlementAvailability: string
    regionAvailability: string
end

local record GetGuardrailInput
    guardrailIdentifier: string
    guardrailVersion: string
end

local record GetGuardrailOutput
    name: string
    description: string
    guardrailId: string
    guardrailArn: string
    version: string
    status: string
    topicPolicy: GuardrailTopicPolicy
    contentPolicy: GuardrailContentPolicy
    wordPolicy: GuardrailWordPolicy
    sensitiveInformationPolicy: GuardrailSensitiveInformationPolicy
    contextualGroundingPolicy: GuardrailContextualGroundingPolicy
    automatedReasoningPolicy: GuardrailAutomatedReasoningPolicy
    crossRegionDetails: GuardrailCrossRegionDetails
    createdAt: number
    updatedAt: number
    statusReasons: {string}
    failureRecommendations: {string}
    blockedInputMessaging: string
    blockedOutputsMessaging: string
    kmsKeyArn: string
end

local record GetImportedModelInput
    modelIdentifier: string
end

local record GetImportedModelOutput
    modelArn: string
    modelName: string
    jobName: string
    jobArn: string
    modelDataSource: ModelDataSource
    creationTime: number
    modelArchitecture: string
    modelKmsKeyArn: string
    instructSupported: boolean
    customModelUnits: CustomModelUnits
end

local record GetInferenceProfileInput
    inferenceProfileIdentifier: string
end

local record GetInferenceProfileOutput
    inferenceProfileName: string
    description: string
    createdAt: number
    updatedAt: number
    inferenceProfileArn: string
    models: {InferenceProfileModel}
    inferenceProfileId: string
    status: string
    type: string
end

local record GetMarketplaceModelEndpointInput
    endpointArn: string
end

local record GetMarketplaceModelEndpointOutput
    marketplaceModelEndpoint: MarketplaceModelEndpoint
end

local record GetModelCopyJobInput
    jobArn: string
end

local record GetModelCopyJobOutput
    jobArn: string
    status: string
    creationTime: number
    targetModelArn: string
    targetModelName: string
    sourceAccountId: string
    sourceModelArn: string
    targetModelKmsKeyArn: string
    targetModelTags: {Tag}
    failureMessage: string
    sourceModelName: string
end

local record GetModelCustomizationJobInput
    jobIdentifier: string
end

local record GetModelCustomizationJobOutput
    jobArn: string
    jobName: string
    outputModelName: string
    outputModelArn: string
    clientRequestToken: string
    roleArn: string
    status: string
    statusDetails: StatusDetails
    failureMessage: string
    creationTime: number
    lastModifiedTime: number
    endTime: number
    baseModelArn: string
    hyperParameters: {string : string}
    trainingDataConfig: TrainingDataConfig
    validationDataConfig: ValidationDataConfig
    outputDataConfig: OutputDataConfig
    customizationType: string
    outputModelKmsKeyArn: string
    trainingMetrics: TrainingMetrics
    validationMetrics: {ValidatorMetric}
    vpcConfig: VpcConfig
    customizationConfig: CustomizationConfig
end

local record GetModelImportJobInput
    jobIdentifier: string
end

local record GetModelImportJobOutput
    jobArn: string
    jobName: string
    importedModelName: string
    importedModelArn: string
    roleArn: string
    modelDataSource: ModelDataSource
    status: string
    failureMessage: string
    creationTime: number
    lastModifiedTime: number
    endTime: number
    vpcConfig: VpcConfig
    importedModelKmsKeyArn: string
end

local record GetModelInvocationJobInput
    jobIdentifier: string
end

local record GetModelInvocationJobOutput
    jobArn: string
    jobName: string
    modelId: string
    clientRequestToken: string
    roleArn: string
    status: string
    message: string
    submitTime: number
    lastModifiedTime: number
    endTime: number
    inputDataConfig: ModelInvocationJobInputDataConfig
    outputDataConfig: ModelInvocationJobOutputDataConfig
    vpcConfig: VpcConfig
    timeoutDurationInHours: number
    jobExpirationTime: number
    modelInvocationType: string
    totalRecordCount: number
    processedRecordCount: number
    successRecordCount: number
    errorRecordCount: number
end

local record GetModelInvocationLoggingConfigurationInput
end

local record GetModelInvocationLoggingConfigurationOutput
    loggingConfig: LoggingConfig
end

local record GetPromptRouterInput
    promptRouterArn: string
end

local record GetPromptRouterOutput
    promptRouterName: string
    routingCriteria: RoutingCriteria
    description: string
    createdAt: number
    updatedAt: number
    promptRouterArn: string
    models: {PromptRouterTargetModel}
    fallbackModel: PromptRouterTargetModel
    status: string
    type: string
end

local record GetProvisionedModelThroughputInput
    provisionedModelId: string
end

local record GetProvisionedModelThroughputOutput
    modelUnits: number
    desiredModelUnits: number
    provisionedModelName: string
    provisionedModelArn: string
    modelArn: string
    desiredModelArn: string
    foundationModelArn: string
    status: string
    creationTime: number
    lastModifiedTime: number
    failureMessage: string
    commitmentDuration: string
    commitmentExpirationTime: number
end

local record GetResourcePolicyInput
    resourceArn: string
end

local record GetResourcePolicyOutput
    resourcePolicy: string
end

local record GetUseCaseForModelAccessInput
end

local record GetUseCaseForModelAccessOutput
    formData: string
end

local record ListAutomatedReasoningPoliciesInput
    policyArn: string
    nextToken: string
    maxResults: number
end

local record ListAutomatedReasoningPoliciesOutput
    automatedReasoningPolicySummaries: {AutomatedReasoningPolicySummary}
    nextToken: string
end

local record ListAutomatedReasoningPolicyBuildWorkflowsInput
    policyArn: string
    nextToken: string
    maxResults: number
end

local record ListAutomatedReasoningPolicyBuildWorkflowsOutput
    automatedReasoningPolicyBuildWorkflowSummaries: {AutomatedReasoningPolicyBuildWorkflowSummary}
    nextToken: string
end

local record ListAutomatedReasoningPolicyTestCasesInput
    policyArn: string
    nextToken: string
    maxResults: number
end

local record ListAutomatedReasoningPolicyTestCasesOutput
    testCases: {AutomatedReasoningPolicyTestCase}
    nextToken: string
end

local record ListAutomatedReasoningPolicyTestResultsInput
    policyArn: string
    buildWorkflowId: string
    nextToken: string
    maxResults: number
end

local record ListAutomatedReasoningPolicyTestResultsOutput
    testResults: {AutomatedReasoningPolicyTestResult}
    nextToken: string
end

local record ListCustomModelDeploymentsInput
    createdBefore: number
    createdAfter: number
    nameContains: string
    maxResults: number
    nextToken: string
    sortBy: string
    sortOrder: string
    statusEquals: string
    modelArnEquals: string
end

local record ListCustomModelDeploymentsOutput
    nextToken: string
    modelDeploymentSummaries: {CustomModelDeploymentSummary}
end

local record ListCustomModelsInput
    creationTimeBefore: number
    creationTimeAfter: number
    nameContains: string
    baseModelArnEquals: string
    foundationModelArnEquals: string
    maxResults: number
    nextToken: string
    sortBy: string
    sortOrder: string
    isOwned: boolean
    modelStatus: string
end

local record ListCustomModelsOutput
    nextToken: string
    modelSummaries: {CustomModelSummary}
end

local record ListEnforcedGuardrailsConfigurationInput
    nextToken: string
end

local record ListEnforcedGuardrailsConfigurationOutput
    guardrailsConfig: {AccountEnforcedGuardrailOutputConfiguration}
    nextToken: string
end

local record ListEvaluationJobsInput
    creationTimeAfter: number
    creationTimeBefore: number
    statusEquals: string
    applicationTypeEquals: string
    nameContains: string
    maxResults: number
    nextToken: string
    sortBy: string
    sortOrder: string
end

local record ListEvaluationJobsOutput
    nextToken: string
    jobSummaries: {EvaluationSummary}
end

local record ListFoundationModelAgreementOffersInput
    modelId: string
    offerType: string
end

local record ListFoundationModelAgreementOffersOutput
    modelId: string
    offers: {Offer}
end

local record ListFoundationModelsInput
    byProvider: string
    byCustomizationType: string
    byOutputModality: string
    byInferenceType: string
end

local record ListFoundationModelsOutput
    modelSummaries: {FoundationModelSummary}
end

local record ListGuardrailsInput
    guardrailIdentifier: string
    maxResults: number
    nextToken: string
end

local record ListGuardrailsOutput
    guardrails: {GuardrailSummary}
    nextToken: string
end

local record ListImportedModelsInput
    creationTimeBefore: number
    creationTimeAfter: number
    nameContains: string
    maxResults: number
    nextToken: string
    sortBy: string
    sortOrder: string
end

local record ListImportedModelsOutput
    nextToken: string
    modelSummaries: {ImportedModelSummary}
end

local record ListInferenceProfilesInput
    maxResults: number
    nextToken: string
    typeEquals: string
end

local record ListInferenceProfilesOutput
    inferenceProfileSummaries: {InferenceProfileSummary}
    nextToken: string
end

local record ListMarketplaceModelEndpointsInput
    maxResults: number
    nextToken: string
    modelSourceEquals: string
end

local record ListMarketplaceModelEndpointsOutput
    marketplaceModelEndpoints: {MarketplaceModelEndpointSummary}
    nextToken: string
end

local record ListModelCopyJobsInput
    creationTimeAfter: number
    creationTimeBefore: number
    statusEquals: string
    sourceAccountEquals: string
    sourceModelArnEquals: string
    targetModelNameContains: string
    maxResults: number
    nextToken: string
    sortBy: string
    sortOrder: string
end

local record ListModelCopyJobsOutput
    nextToken: string
    modelCopyJobSummaries: {ModelCopyJobSummary}
end

local record ListModelCustomizationJobsInput
    creationTimeAfter: number
    creationTimeBefore: number
    statusEquals: string
    nameContains: string
    maxResults: number
    nextToken: string
    sortBy: string
    sortOrder: string
end

local record ListModelCustomizationJobsOutput
    nextToken: string
    modelCustomizationJobSummaries: {ModelCustomizationJobSummary}
end

local record ListModelImportJobsInput
    creationTimeAfter: number
    creationTimeBefore: number
    statusEquals: string
    nameContains: string
    maxResults: number
    nextToken: string
    sortBy: string
    sortOrder: string
end

local record ListModelImportJobsOutput
    nextToken: string
    modelImportJobSummaries: {ModelImportJobSummary}
end

local record ListModelInvocationJobsInput
    submitTimeAfter: number
    submitTimeBefore: number
    statusEquals: string
    nameContains: string
    maxResults: number
    nextToken: string
    sortBy: string
    sortOrder: string
end

local record ListModelInvocationJobsOutput
    nextToken: string
    invocationJobSummaries: {ModelInvocationJobSummary}
end

local record ListPromptRoutersInput
    maxResults: number
    nextToken: string
    type: string
end

local record ListPromptRoutersOutput
    promptRouterSummaries: {PromptRouterSummary}
    nextToken: string
end

local record ListProvisionedModelThroughputsInput
    creationTimeAfter: number
    creationTimeBefore: number
    statusEquals: string
    modelArnEquals: string
    nameContains: string
    maxResults: number
    nextToken: string
    sortBy: string
    sortOrder: string
end

local record ListProvisionedModelThroughputsOutput
    nextToken: string
    provisionedModelSummaries: {ProvisionedModelSummary}
end

local record ListTagsForResourceInput
    resourceARN: string
end

local record ListTagsForResourceOutput
    tags: {Tag}
end

local record PutEnforcedGuardrailConfigurationInput
    configId: string
    guardrailInferenceConfig: AccountEnforcedGuardrailInferenceInputConfiguration
end

local record PutEnforcedGuardrailConfigurationOutput
    configId: string
    updatedAt: number
    updatedBy: string
end

local record PutModelInvocationLoggingConfigurationInput
    loggingConfig: LoggingConfig
end

local record PutModelInvocationLoggingConfigurationOutput
end

local record PutResourcePolicyInput
    resourceArn: string
    resourcePolicy: string
end

local record PutResourcePolicyOutput
    resourceArn: string
end

local record PutUseCaseForModelAccessInput
    formData: string
end

local record PutUseCaseForModelAccessOutput
end

local record RegisterMarketplaceModelEndpointInput
    endpointIdentifier: string
    modelSourceIdentifier: string
end

local record RegisterMarketplaceModelEndpointOutput
    marketplaceModelEndpoint: MarketplaceModelEndpoint
end

local record StartAutomatedReasoningPolicyBuildWorkflowInput
    policyArn: string
    buildWorkflowType: string
    clientRequestToken: string
    sourceContent: AutomatedReasoningPolicyBuildWorkflowSource
end

local record StartAutomatedReasoningPolicyBuildWorkflowOutput
    policyArn: string
    buildWorkflowId: string
end

local record StartAutomatedReasoningPolicyTestWorkflowInput
    policyArn: string
    buildWorkflowId: string
    testCaseIds: {string}
    clientRequestToken: string
end

local record StartAutomatedReasoningPolicyTestWorkflowOutput
    policyArn: string
end

local record StopEvaluationJobInput
    jobIdentifier: string
end

local record StopEvaluationJobOutput
end

local record StopModelCustomizationJobInput
    jobIdentifier: string
end

local record StopModelCustomizationJobOutput
end

local record StopModelInvocationJobInput
    jobIdentifier: string
end

local record StopModelInvocationJobOutput
end

local record TagResourceInput
    resourceARN: string
    tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceARN: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateAutomatedReasoningPolicyInput
    policyArn: string
    policyDefinition: AutomatedReasoningPolicyDefinition
    name: string
    description: string
end

local record UpdateAutomatedReasoningPolicyOutput
    policyArn: string
    name: string
    definitionHash: string
    updatedAt: number
end

local record UpdateAutomatedReasoningPolicyAnnotationsInput
    policyArn: string
    buildWorkflowId: string
    annotations: {AutomatedReasoningPolicyAnnotation}
    lastUpdatedAnnotationSetHash: string
end

local record UpdateAutomatedReasoningPolicyAnnotationsOutput
    policyArn: string
    buildWorkflowId: string
    annotationSetHash: string
    updatedAt: number
end

local record UpdateAutomatedReasoningPolicyTestCaseInput
    policyArn: string
    testCaseId: string
    guardContent: string
    queryContent: string
    lastUpdatedAt: number
    expectedAggregatedFindingsResult: string
    confidenceThreshold: number
    clientRequestToken: string
end

local record UpdateAutomatedReasoningPolicyTestCaseOutput
    policyArn: string
    testCaseId: string
end

local record UpdateCustomModelDeploymentInput
    modelArn: string
    customModelDeploymentIdentifier: string
end

local record UpdateCustomModelDeploymentOutput
    customModelDeploymentArn: string
end

local record UpdateGuardrailInput
    guardrailIdentifier: string
    name: string
    description: string
    topicPolicyConfig: GuardrailTopicPolicyConfig
    contentPolicyConfig: GuardrailContentPolicyConfig
    wordPolicyConfig: GuardrailWordPolicyConfig
    sensitiveInformationPolicyConfig: GuardrailSensitiveInformationPolicyConfig
    contextualGroundingPolicyConfig: GuardrailContextualGroundingPolicyConfig
    automatedReasoningPolicyConfig: GuardrailAutomatedReasoningPolicyConfig
    crossRegionConfig: GuardrailCrossRegionConfig
    blockedInputMessaging: string
    blockedOutputsMessaging: string
    kmsKeyId: string
end

local record UpdateGuardrailOutput
    guardrailId: string
    guardrailArn: string
    version: string
    updatedAt: number
end

local record UpdateMarketplaceModelEndpointInput
    endpointArn: string
    endpointConfig: EndpointConfig
    clientRequestToken: string
end

local record UpdateMarketplaceModelEndpointOutput
    marketplaceModelEndpoint: MarketplaceModelEndpoint
end

local record UpdateProvisionedModelThroughputInput
    provisionedModelId: string
    desiredProvisionedModelName: string
    desiredModelId: string
end

local record UpdateProvisionedModelThroughputOutput
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

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record TooManyTagsException
    message: string
    resourceName: string
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

local record ConflictException
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

local record TooManyTagsException
    message: string
    resourceName: string
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

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record TooManyTagsException
    message: string
    resourceName: string
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

local record TooManyTagsException
    message: string
    resourceName: string
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

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record TooManyTagsException
    message: string
    resourceName: string
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

local record ConflictException
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

local record TooManyTagsException
    message: string
    resourceName: string
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

local record TooManyTagsException
    message: string
    resourceName: string
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

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record TooManyTagsException
    message: string
    resourceName: string
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

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record TooManyTagsException
    message: string
    resourceName: string
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

local record ConflictException
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

local record TooManyTagsException
    message: string
    resourceName: string
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

local record TooManyTagsException
    message: string
    resourceName: string
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

local record ResourceInUseException
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

local record ResourceInUseException
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

local record ResourceInUseException
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

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceInUseException
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

local record ServiceUnavailableException
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

local record ThrottlingException
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

local record ServiceUnavailableException
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

local record ResourceInUseException
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

local record ResourceInUseException
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

local record TooManyTagsException
    message: string
    resourceName: string
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

local record TooManyTagsException
    message: string
    resourceName: string
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

local record ResourceInUseException
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

local record ConflictException
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

local record ConflictException
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

local type ApplicationType = "ModelEvaluation" | "RagEvaluation"

local type AuthorizationStatus = "AUTHORIZED" | "NOT_AUTHORIZED"

local type AutomatedReasoningCheckResult = "VALID" | "INVALID" | "SATISFIABLE" | "IMPOSSIBLE" | "TRANSLATION_AMBIGUOUS" | "TOO_COMPLEX" | "NO_TRANSLATION"

local type AutomatedReasoningPolicyBuildDocumentContentType = "pdf" | "txt"

local type AutomatedReasoningPolicyBuildResultAssetType = "BUILD_LOG" | "QUALITY_REPORT" | "POLICY_DEFINITION" | "GENERATED_TEST_CASES" | "POLICY_SCENARIOS" | "FIDELITY_REPORT" | "ASSET_MANIFEST" | "SOURCE_DOCUMENT"

local type AutomatedReasoningPolicyBuildWorkflowStatus = "SCHEDULED" | "CANCEL_REQUESTED" | "PREPROCESSING" | "BUILDING" | "TESTING" | "COMPLETED" | "FAILED" | "CANCELLED"

local type AutomatedReasoningPolicyBuildWorkflowType = "INGEST_CONTENT" | "REFINE_POLICY" | "IMPORT_POLICY" | "GENERATE_FIDELITY_REPORT" | "GENERATE_POLICY_SCENARIOS"

local type CommitmentDuration = "OneMonth" | "SixMonths"

local type CustomModelDeploymentStatus = "Creating" | "Active" | "Failed"

local type CustomizationType = "FINE_TUNING" | "CONTINUED_PRE_TRAINING" | "DISTILLATION" | "REINFORCEMENT_FINE_TUNING" | "IMPORTED"

local type EntitlementAvailability = "AVAILABLE" | "NOT_AVAILABLE"

local type EvaluationJobStatus = "InProgress" | "Completed" | "Failed" | "Stopping" | "Stopped" | "Deleting"

local type EvaluationJobType = "Human" | "Automated"

local type FineTuningJobStatus = "InProgress" | "Completed" | "Failed" | "Stopping" | "Stopped"

local type GuardrailStatus = "CREATING" | "UPDATING" | "VERSIONING" | "READY" | "FAILED" | "DELETING"

local type InferenceProfileStatus = "ACTIVE"

local type InferenceProfileType = "SYSTEM_DEFINED" | "APPLICATION"

local type InferenceType = "ON_DEMAND" | "PROVISIONED"

local type ModelCopyJobStatus = "InProgress" | "Completed" | "Failed"

local type ModelCustomization = "FINE_TUNING" | "CONTINUED_PRE_TRAINING" | "DISTILLATION"

local type ModelCustomizationJobStatus = "InProgress" | "Completed" | "Failed" | "Stopping" | "Stopped"

local type ModelImportJobStatus = "InProgress" | "Completed" | "Failed"

local type ModelInvocationJobStatus = "Submitted" | "InProgress" | "Completed" | "Failed" | "Stopping" | "Stopped" | "PartiallyCompleted" | "Expired" | "Validating" | "Scheduled"

local type ModelInvocationType = "InvokeModel" | "Converse"

local type ModelModality = "TEXT" | "IMAGE" | "EMBEDDING"

local type ModelStatus = "Active" | "Creating" | "Failed"

local type OfferType = "ALL" | "PUBLIC"

local type PromptRouterStatus = "AVAILABLE"

local type PromptRouterType = "custom" | "default"

local type ProvisionedModelStatus = "Creating" | "InService" | "Updating" | "Failed"

local type RegionAvailability = "AVAILABLE" | "NOT_AVAILABLE"

local type SortByProvisionedModels = "CreationTime"

local type SortJobsBy = "CreationTime"

local type SortModelsBy = "CreationTime"

local type SortOrder = "Ascending" | "Descending"

local record M
    BatchDeleteEvaluationJobInput: BatchDeleteEvaluationJobInput
    BatchDeleteEvaluationJobOutput: BatchDeleteEvaluationJobOutput
    CancelAutomatedReasoningPolicyBuildWorkflowInput: CancelAutomatedReasoningPolicyBuildWorkflowInput
    CancelAutomatedReasoningPolicyBuildWorkflowOutput: CancelAutomatedReasoningPolicyBuildWorkflowOutput
    CreateAutomatedReasoningPolicyInput: CreateAutomatedReasoningPolicyInput
    CreateAutomatedReasoningPolicyOutput: CreateAutomatedReasoningPolicyOutput
    CreateAutomatedReasoningPolicyTestCaseInput: CreateAutomatedReasoningPolicyTestCaseInput
    CreateAutomatedReasoningPolicyTestCaseOutput: CreateAutomatedReasoningPolicyTestCaseOutput
    CreateAutomatedReasoningPolicyVersionInput: CreateAutomatedReasoningPolicyVersionInput
    CreateAutomatedReasoningPolicyVersionOutput: CreateAutomatedReasoningPolicyVersionOutput
    CreateCustomModelInput: CreateCustomModelInput
    CreateCustomModelOutput: CreateCustomModelOutput
    CreateCustomModelDeploymentInput: CreateCustomModelDeploymentInput
    CreateCustomModelDeploymentOutput: CreateCustomModelDeploymentOutput
    CreateEvaluationJobInput: CreateEvaluationJobInput
    CreateEvaluationJobOutput: CreateEvaluationJobOutput
    CreateFoundationModelAgreementInput: CreateFoundationModelAgreementInput
    CreateFoundationModelAgreementOutput: CreateFoundationModelAgreementOutput
    CreateGuardrailInput: CreateGuardrailInput
    CreateGuardrailOutput: CreateGuardrailOutput
    CreateGuardrailVersionInput: CreateGuardrailVersionInput
    CreateGuardrailVersionOutput: CreateGuardrailVersionOutput
    CreateInferenceProfileInput: CreateInferenceProfileInput
    CreateInferenceProfileOutput: CreateInferenceProfileOutput
    CreateMarketplaceModelEndpointInput: CreateMarketplaceModelEndpointInput
    CreateMarketplaceModelEndpointOutput: CreateMarketplaceModelEndpointOutput
    CreateModelCopyJobInput: CreateModelCopyJobInput
    CreateModelCopyJobOutput: CreateModelCopyJobOutput
    CreateModelCustomizationJobInput: CreateModelCustomizationJobInput
    CreateModelCustomizationJobOutput: CreateModelCustomizationJobOutput
    CreateModelImportJobInput: CreateModelImportJobInput
    CreateModelImportJobOutput: CreateModelImportJobOutput
    CreateModelInvocationJobInput: CreateModelInvocationJobInput
    CreateModelInvocationJobOutput: CreateModelInvocationJobOutput
    CreatePromptRouterInput: CreatePromptRouterInput
    CreatePromptRouterOutput: CreatePromptRouterOutput
    CreateProvisionedModelThroughputInput: CreateProvisionedModelThroughputInput
    CreateProvisionedModelThroughputOutput: CreateProvisionedModelThroughputOutput
    DeleteAutomatedReasoningPolicyInput: DeleteAutomatedReasoningPolicyInput
    DeleteAutomatedReasoningPolicyOutput: DeleteAutomatedReasoningPolicyOutput
    DeleteAutomatedReasoningPolicyBuildWorkflowInput: DeleteAutomatedReasoningPolicyBuildWorkflowInput
    DeleteAutomatedReasoningPolicyBuildWorkflowOutput: DeleteAutomatedReasoningPolicyBuildWorkflowOutput
    DeleteAutomatedReasoningPolicyTestCaseInput: DeleteAutomatedReasoningPolicyTestCaseInput
    DeleteAutomatedReasoningPolicyTestCaseOutput: DeleteAutomatedReasoningPolicyTestCaseOutput
    DeleteCustomModelInput: DeleteCustomModelInput
    DeleteCustomModelOutput: DeleteCustomModelOutput
    DeleteCustomModelDeploymentInput: DeleteCustomModelDeploymentInput
    DeleteCustomModelDeploymentOutput: DeleteCustomModelDeploymentOutput
    DeleteEnforcedGuardrailConfigurationInput: DeleteEnforcedGuardrailConfigurationInput
    DeleteEnforcedGuardrailConfigurationOutput: DeleteEnforcedGuardrailConfigurationOutput
    DeleteFoundationModelAgreementInput: DeleteFoundationModelAgreementInput
    DeleteFoundationModelAgreementOutput: DeleteFoundationModelAgreementOutput
    DeleteGuardrailInput: DeleteGuardrailInput
    DeleteGuardrailOutput: DeleteGuardrailOutput
    DeleteImportedModelInput: DeleteImportedModelInput
    DeleteImportedModelOutput: DeleteImportedModelOutput
    DeleteInferenceProfileInput: DeleteInferenceProfileInput
    DeleteInferenceProfileOutput: DeleteInferenceProfileOutput
    DeleteMarketplaceModelEndpointInput: DeleteMarketplaceModelEndpointInput
    DeleteMarketplaceModelEndpointOutput: DeleteMarketplaceModelEndpointOutput
    DeleteModelInvocationLoggingConfigurationInput: DeleteModelInvocationLoggingConfigurationInput
    DeleteModelInvocationLoggingConfigurationOutput: DeleteModelInvocationLoggingConfigurationOutput
    DeletePromptRouterInput: DeletePromptRouterInput
    DeletePromptRouterOutput: DeletePromptRouterOutput
    DeleteProvisionedModelThroughputInput: DeleteProvisionedModelThroughputInput
    DeleteProvisionedModelThroughputOutput: DeleteProvisionedModelThroughputOutput
    DeleteResourcePolicyInput: DeleteResourcePolicyInput
    DeleteResourcePolicyOutput: DeleteResourcePolicyOutput
    DeregisterMarketplaceModelEndpointInput: DeregisterMarketplaceModelEndpointInput
    DeregisterMarketplaceModelEndpointOutput: DeregisterMarketplaceModelEndpointOutput
    ExportAutomatedReasoningPolicyVersionInput: ExportAutomatedReasoningPolicyVersionInput
    ExportAutomatedReasoningPolicyVersionOutput: ExportAutomatedReasoningPolicyVersionOutput
    GetAutomatedReasoningPolicyInput: GetAutomatedReasoningPolicyInput
    GetAutomatedReasoningPolicyOutput: GetAutomatedReasoningPolicyOutput
    GetAutomatedReasoningPolicyAnnotationsInput: GetAutomatedReasoningPolicyAnnotationsInput
    GetAutomatedReasoningPolicyAnnotationsOutput: GetAutomatedReasoningPolicyAnnotationsOutput
    GetAutomatedReasoningPolicyBuildWorkflowInput: GetAutomatedReasoningPolicyBuildWorkflowInput
    GetAutomatedReasoningPolicyBuildWorkflowOutput: GetAutomatedReasoningPolicyBuildWorkflowOutput
    GetAutomatedReasoningPolicyBuildWorkflowResultAssetsInput: GetAutomatedReasoningPolicyBuildWorkflowResultAssetsInput
    GetAutomatedReasoningPolicyBuildWorkflowResultAssetsOutput: GetAutomatedReasoningPolicyBuildWorkflowResultAssetsOutput
    GetAutomatedReasoningPolicyNextScenarioInput: GetAutomatedReasoningPolicyNextScenarioInput
    GetAutomatedReasoningPolicyNextScenarioOutput: GetAutomatedReasoningPolicyNextScenarioOutput
    GetAutomatedReasoningPolicyTestCaseInput: GetAutomatedReasoningPolicyTestCaseInput
    GetAutomatedReasoningPolicyTestCaseOutput: GetAutomatedReasoningPolicyTestCaseOutput
    GetAutomatedReasoningPolicyTestResultInput: GetAutomatedReasoningPolicyTestResultInput
    GetAutomatedReasoningPolicyTestResultOutput: GetAutomatedReasoningPolicyTestResultOutput
    GetCustomModelInput: GetCustomModelInput
    GetCustomModelOutput: GetCustomModelOutput
    GetCustomModelDeploymentInput: GetCustomModelDeploymentInput
    GetCustomModelDeploymentOutput: GetCustomModelDeploymentOutput
    GetEvaluationJobInput: GetEvaluationJobInput
    GetEvaluationJobOutput: GetEvaluationJobOutput
    GetFoundationModelInput: GetFoundationModelInput
    GetFoundationModelOutput: GetFoundationModelOutput
    GetFoundationModelAvailabilityInput: GetFoundationModelAvailabilityInput
    GetFoundationModelAvailabilityOutput: GetFoundationModelAvailabilityOutput
    GetGuardrailInput: GetGuardrailInput
    GetGuardrailOutput: GetGuardrailOutput
    GetImportedModelInput: GetImportedModelInput
    GetImportedModelOutput: GetImportedModelOutput
    GetInferenceProfileInput: GetInferenceProfileInput
    GetInferenceProfileOutput: GetInferenceProfileOutput
    GetMarketplaceModelEndpointInput: GetMarketplaceModelEndpointInput
    GetMarketplaceModelEndpointOutput: GetMarketplaceModelEndpointOutput
    GetModelCopyJobInput: GetModelCopyJobInput
    GetModelCopyJobOutput: GetModelCopyJobOutput
    GetModelCustomizationJobInput: GetModelCustomizationJobInput
    GetModelCustomizationJobOutput: GetModelCustomizationJobOutput
    GetModelImportJobInput: GetModelImportJobInput
    GetModelImportJobOutput: GetModelImportJobOutput
    GetModelInvocationJobInput: GetModelInvocationJobInput
    GetModelInvocationJobOutput: GetModelInvocationJobOutput
    GetModelInvocationLoggingConfigurationInput: GetModelInvocationLoggingConfigurationInput
    GetModelInvocationLoggingConfigurationOutput: GetModelInvocationLoggingConfigurationOutput
    GetPromptRouterInput: GetPromptRouterInput
    GetPromptRouterOutput: GetPromptRouterOutput
    GetProvisionedModelThroughputInput: GetProvisionedModelThroughputInput
    GetProvisionedModelThroughputOutput: GetProvisionedModelThroughputOutput
    GetResourcePolicyInput: GetResourcePolicyInput
    GetResourcePolicyOutput: GetResourcePolicyOutput
    GetUseCaseForModelAccessInput: GetUseCaseForModelAccessInput
    GetUseCaseForModelAccessOutput: GetUseCaseForModelAccessOutput
    ListAutomatedReasoningPoliciesInput: ListAutomatedReasoningPoliciesInput
    ListAutomatedReasoningPoliciesOutput: ListAutomatedReasoningPoliciesOutput
    ListAutomatedReasoningPolicyBuildWorkflowsInput: ListAutomatedReasoningPolicyBuildWorkflowsInput
    ListAutomatedReasoningPolicyBuildWorkflowsOutput: ListAutomatedReasoningPolicyBuildWorkflowsOutput
    ListAutomatedReasoningPolicyTestCasesInput: ListAutomatedReasoningPolicyTestCasesInput
    ListAutomatedReasoningPolicyTestCasesOutput: ListAutomatedReasoningPolicyTestCasesOutput
    ListAutomatedReasoningPolicyTestResultsInput: ListAutomatedReasoningPolicyTestResultsInput
    ListAutomatedReasoningPolicyTestResultsOutput: ListAutomatedReasoningPolicyTestResultsOutput
    ListCustomModelDeploymentsInput: ListCustomModelDeploymentsInput
    ListCustomModelDeploymentsOutput: ListCustomModelDeploymentsOutput
    ListCustomModelsInput: ListCustomModelsInput
    ListCustomModelsOutput: ListCustomModelsOutput
    ListEnforcedGuardrailsConfigurationInput: ListEnforcedGuardrailsConfigurationInput
    ListEnforcedGuardrailsConfigurationOutput: ListEnforcedGuardrailsConfigurationOutput
    ListEvaluationJobsInput: ListEvaluationJobsInput
    ListEvaluationJobsOutput: ListEvaluationJobsOutput
    ListFoundationModelAgreementOffersInput: ListFoundationModelAgreementOffersInput
    ListFoundationModelAgreementOffersOutput: ListFoundationModelAgreementOffersOutput
    ListFoundationModelsInput: ListFoundationModelsInput
    ListFoundationModelsOutput: ListFoundationModelsOutput
    ListGuardrailsInput: ListGuardrailsInput
    ListGuardrailsOutput: ListGuardrailsOutput
    ListImportedModelsInput: ListImportedModelsInput
    ListImportedModelsOutput: ListImportedModelsOutput
    ListInferenceProfilesInput: ListInferenceProfilesInput
    ListInferenceProfilesOutput: ListInferenceProfilesOutput
    ListMarketplaceModelEndpointsInput: ListMarketplaceModelEndpointsInput
    ListMarketplaceModelEndpointsOutput: ListMarketplaceModelEndpointsOutput
    ListModelCopyJobsInput: ListModelCopyJobsInput
    ListModelCopyJobsOutput: ListModelCopyJobsOutput
    ListModelCustomizationJobsInput: ListModelCustomizationJobsInput
    ListModelCustomizationJobsOutput: ListModelCustomizationJobsOutput
    ListModelImportJobsInput: ListModelImportJobsInput
    ListModelImportJobsOutput: ListModelImportJobsOutput
    ListModelInvocationJobsInput: ListModelInvocationJobsInput
    ListModelInvocationJobsOutput: ListModelInvocationJobsOutput
    ListPromptRoutersInput: ListPromptRoutersInput
    ListPromptRoutersOutput: ListPromptRoutersOutput
    ListProvisionedModelThroughputsInput: ListProvisionedModelThroughputsInput
    ListProvisionedModelThroughputsOutput: ListProvisionedModelThroughputsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutEnforcedGuardrailConfigurationInput: PutEnforcedGuardrailConfigurationInput
    PutEnforcedGuardrailConfigurationOutput: PutEnforcedGuardrailConfigurationOutput
    PutModelInvocationLoggingConfigurationInput: PutModelInvocationLoggingConfigurationInput
    PutModelInvocationLoggingConfigurationOutput: PutModelInvocationLoggingConfigurationOutput
    PutResourcePolicyInput: PutResourcePolicyInput
    PutResourcePolicyOutput: PutResourcePolicyOutput
    PutUseCaseForModelAccessInput: PutUseCaseForModelAccessInput
    PutUseCaseForModelAccessOutput: PutUseCaseForModelAccessOutput
    RegisterMarketplaceModelEndpointInput: RegisterMarketplaceModelEndpointInput
    RegisterMarketplaceModelEndpointOutput: RegisterMarketplaceModelEndpointOutput
    StartAutomatedReasoningPolicyBuildWorkflowInput: StartAutomatedReasoningPolicyBuildWorkflowInput
    StartAutomatedReasoningPolicyBuildWorkflowOutput: StartAutomatedReasoningPolicyBuildWorkflowOutput
    StartAutomatedReasoningPolicyTestWorkflowInput: StartAutomatedReasoningPolicyTestWorkflowInput
    StartAutomatedReasoningPolicyTestWorkflowOutput: StartAutomatedReasoningPolicyTestWorkflowOutput
    StopEvaluationJobInput: StopEvaluationJobInput
    StopEvaluationJobOutput: StopEvaluationJobOutput
    StopModelCustomizationJobInput: StopModelCustomizationJobInput
    StopModelCustomizationJobOutput: StopModelCustomizationJobOutput
    StopModelInvocationJobInput: StopModelInvocationJobInput
    StopModelInvocationJobOutput: StopModelInvocationJobOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAutomatedReasoningPolicyInput: UpdateAutomatedReasoningPolicyInput
    UpdateAutomatedReasoningPolicyOutput: UpdateAutomatedReasoningPolicyOutput
    UpdateAutomatedReasoningPolicyAnnotationsInput: UpdateAutomatedReasoningPolicyAnnotationsInput
    UpdateAutomatedReasoningPolicyAnnotationsOutput: UpdateAutomatedReasoningPolicyAnnotationsOutput
    UpdateAutomatedReasoningPolicyTestCaseInput: UpdateAutomatedReasoningPolicyTestCaseInput
    UpdateAutomatedReasoningPolicyTestCaseOutput: UpdateAutomatedReasoningPolicyTestCaseOutput
    UpdateCustomModelDeploymentInput: UpdateCustomModelDeploymentInput
    UpdateCustomModelDeploymentOutput: UpdateCustomModelDeploymentOutput
    UpdateGuardrailInput: UpdateGuardrailInput
    UpdateGuardrailOutput: UpdateGuardrailOutput
    UpdateMarketplaceModelEndpointInput: UpdateMarketplaceModelEndpointInput
    UpdateMarketplaceModelEndpointOutput: UpdateMarketplaceModelEndpointOutput
    UpdateProvisionedModelThroughputInput: UpdateProvisionedModelThroughputInput
    UpdateProvisionedModelThroughputOutput: UpdateProvisionedModelThroughputOutput
end

return M
