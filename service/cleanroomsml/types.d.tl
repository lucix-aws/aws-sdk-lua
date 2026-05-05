local record CancelTrainedModelInput
    membershipIdentifier: string
    trainedModelArn: string
    versionIdentifier: string
end

local record CancelTrainedModelOutput
end

local record CancelTrainedModelInferenceJobInput
    membershipIdentifier: string
    trainedModelInferenceJobArn: string
end

local record CancelTrainedModelInferenceJobOutput
end

local record CreateAudienceModelInput
    trainingDataStartTime: number
    trainingDataEndTime: number
    name: string
    trainingDatasetArn: string
    kmsKeyArn: string
    tags: {string : string}
    description: string
end

local record CreateAudienceModelOutput
    audienceModelArn: string
end

local record CreateConfiguredAudienceModelInput
    name: string
    audienceModelArn: string
    outputConfig: ConfiguredAudienceModelOutputConfig
    description: string
    sharedAudienceMetrics: {string}
    minMatchingSeedSize: number
    audienceSizeConfig: AudienceSizeConfig
    tags: {string : string}
    childResourceTagOnCreatePolicy: string
end

local record CreateConfiguredAudienceModelOutput
    configuredAudienceModelArn: string
end

local record CreateConfiguredModelAlgorithmInput
    name: string
    description: string
    roleArn: string
    trainingContainerConfig: ContainerConfig
    inferenceContainerConfig: InferenceContainerConfig
    tags: {string : string}
    kmsKeyArn: string
end

local record CreateConfiguredModelAlgorithmOutput
    configuredModelAlgorithmArn: string
end

local record CreateConfiguredModelAlgorithmAssociationInput
    membershipIdentifier: string
    configuredModelAlgorithmArn: string
    name: string
    description: string
    privacyConfiguration: PrivacyConfiguration
    tags: {string : string}
end

local record CreateConfiguredModelAlgorithmAssociationOutput
    configuredModelAlgorithmAssociationArn: string
end

local record CreateMLInputChannelInput
    membershipIdentifier: string
    configuredModelAlgorithmAssociations: {string}
    inputChannel: InputChannel
    name: string
    retentionInDays: number
    description: string
    kmsKeyArn: string
    tags: {string : string}
end

local record CreateMLInputChannelOutput
    mlInputChannelArn: string
end

local record CreateTrainedModelInput
    membershipIdentifier: string
    name: string
    configuredModelAlgorithmAssociationArn: string
    hyperparameters: {string : string}
    environment: {string : string}
    resourceConfig: ResourceConfig
    stoppingCondition: StoppingCondition
    incrementalTrainingDataChannels: {IncrementalTrainingDataChannel}
    dataChannels: {ModelTrainingDataChannel}
    trainingInputMode: string
    description: string
    kmsKeyArn: string
    tags: {string : string}
end

local record CreateTrainedModelOutput
    trainedModelArn: string
    versionIdentifier: string
end

local record CreateTrainingDatasetInput
    name: string
    roleArn: string
    trainingData: {Dataset}
    tags: {string : string}
    description: string
end

local record CreateTrainingDatasetOutput
    trainingDatasetArn: string
end

local record DeleteAudienceGenerationJobInput
    audienceGenerationJobArn: string
end

local record DeleteAudienceGenerationJobOutput
end

local record DeleteAudienceModelInput
    audienceModelArn: string
end

local record DeleteAudienceModelOutput
end

local record DeleteConfiguredAudienceModelInput
    configuredAudienceModelArn: string
end

local record DeleteConfiguredAudienceModelOutput
end

local record DeleteConfiguredAudienceModelPolicyInput
    configuredAudienceModelArn: string
end

local record DeleteConfiguredAudienceModelPolicyOutput
end

local record DeleteConfiguredModelAlgorithmInput
    configuredModelAlgorithmArn: string
end

local record DeleteConfiguredModelAlgorithmOutput
end

local record DeleteConfiguredModelAlgorithmAssociationInput
    configuredModelAlgorithmAssociationArn: string
    membershipIdentifier: string
end

local record DeleteConfiguredModelAlgorithmAssociationOutput
end

local record DeleteMLConfigurationInput
    membershipIdentifier: string
end

local record DeleteMLConfigurationOutput
end

local record DeleteMLInputChannelDataInput
    mlInputChannelArn: string
    membershipIdentifier: string
end

local record DeleteMLInputChannelDataOutput
end

local record DeleteTrainedModelOutputInput
    trainedModelArn: string
    membershipIdentifier: string
    versionIdentifier: string
end

local record DeleteTrainedModelOutputOutput
end

local record DeleteTrainingDatasetInput
    trainingDatasetArn: string
end

local record DeleteTrainingDatasetOutput
end

local record GetAudienceGenerationJobInput
    audienceGenerationJobArn: string
end

local record GetAudienceGenerationJobOutput
    createTime: number
    updateTime: number
    audienceGenerationJobArn: string
    name: string
    description: string
    status: string
    statusDetails: StatusDetails
    configuredAudienceModelArn: string
    seedAudience: AudienceGenerationJobDataSource
    includeSeedInOutput: boolean
    collaborationId: string
    metrics: AudienceQualityMetrics
    startedBy: string
    tags: {string : string}
    protectedQueryIdentifier: string
end

local record GetAudienceModelInput
    audienceModelArn: string
end

local record GetAudienceModelOutput
    createTime: number
    updateTime: number
    trainingDataStartTime: number
    trainingDataEndTime: number
    audienceModelArn: string
    name: string
    trainingDatasetArn: string
    status: string
    statusDetails: StatusDetails
    kmsKeyArn: string
    tags: {string : string}
    description: string
end

local record GetCollaborationConfiguredModelAlgorithmAssociationInput
    configuredModelAlgorithmAssociationArn: string
    collaborationIdentifier: string
end

local record GetCollaborationConfiguredModelAlgorithmAssociationOutput
    createTime: number
    updateTime: number
    configuredModelAlgorithmAssociationArn: string
    membershipIdentifier: string
    collaborationIdentifier: string
    configuredModelAlgorithmArn: string
    name: string
    description: string
    creatorAccountId: string
    privacyConfiguration: PrivacyConfiguration
end

local record GetCollaborationMLInputChannelInput
    mlInputChannelArn: string
    collaborationIdentifier: string
end

local record GetCollaborationMLInputChannelOutput
    membershipIdentifier: string
    collaborationIdentifier: string
    mlInputChannelArn: string
    name: string
    configuredModelAlgorithmAssociations: {string}
    status: string
    statusDetails: StatusDetails
    retentionInDays: number
    numberOfRecords: number
    privacyBudgets: PrivacyBudgets
    description: string
    syntheticDataConfiguration: SyntheticDataConfiguration
    createTime: number
    updateTime: number
    creatorAccountId: string
end

local record GetCollaborationTrainedModelInput
    trainedModelArn: string
    collaborationIdentifier: string
    versionIdentifier: string
end

local record GetCollaborationTrainedModelOutput
    membershipIdentifier: string
    collaborationIdentifier: string
    trainedModelArn: string
    versionIdentifier: string
    incrementalTrainingDataChannels: {IncrementalTrainingDataChannelOutput}
    name: string
    description: string
    status: string
    statusDetails: StatusDetails
    configuredModelAlgorithmAssociationArn: string
    resourceConfig: ResourceConfig
    trainingInputMode: string
    stoppingCondition: StoppingCondition
    metricsStatus: string
    metricsStatusDetails: string
    logsStatus: string
    logsStatusDetails: string
    trainingContainerImageDigest: string
    createTime: number
    updateTime: number
    creatorAccountId: string
end

local record GetConfiguredAudienceModelInput
    configuredAudienceModelArn: string
end

local record GetConfiguredAudienceModelOutput
    createTime: number
    updateTime: number
    configuredAudienceModelArn: string
    name: string
    audienceModelArn: string
    outputConfig: ConfiguredAudienceModelOutputConfig
    description: string
    status: string
    sharedAudienceMetrics: {string}
    minMatchingSeedSize: number
    audienceSizeConfig: AudienceSizeConfig
    tags: {string : string}
    childResourceTagOnCreatePolicy: string
end

local record GetConfiguredAudienceModelPolicyInput
    configuredAudienceModelArn: string
end

local record GetConfiguredAudienceModelPolicyOutput
    configuredAudienceModelArn: string
    configuredAudienceModelPolicy: string
    policyHash: string
end

local record GetConfiguredModelAlgorithmInput
    configuredModelAlgorithmArn: string
end

local record GetConfiguredModelAlgorithmOutput
    createTime: number
    updateTime: number
    configuredModelAlgorithmArn: string
    name: string
    trainingContainerConfig: ContainerConfig
    inferenceContainerConfig: InferenceContainerConfig
    roleArn: string
    description: string
    tags: {string : string}
    kmsKeyArn: string
end

local record GetConfiguredModelAlgorithmAssociationInput
    configuredModelAlgorithmAssociationArn: string
    membershipIdentifier: string
end

local record GetConfiguredModelAlgorithmAssociationOutput
    createTime: number
    updateTime: number
    configuredModelAlgorithmAssociationArn: string
    membershipIdentifier: string
    collaborationIdentifier: string
    configuredModelAlgorithmArn: string
    name: string
    privacyConfiguration: PrivacyConfiguration
    description: string
    tags: {string : string}
end

local record GetMLConfigurationInput
    membershipIdentifier: string
end

local record GetMLConfigurationOutput
    membershipIdentifier: string
    defaultOutputLocation: MLOutputConfiguration
    createTime: number
    updateTime: number
end

local record GetMLInputChannelInput
    mlInputChannelArn: string
    membershipIdentifier: string
end

local record GetMLInputChannelOutput
    membershipIdentifier: string
    collaborationIdentifier: string
    mlInputChannelArn: string
    name: string
    configuredModelAlgorithmAssociations: {string}
    status: string
    statusDetails: StatusDetails
    retentionInDays: number
    numberOfRecords: number
    privacyBudgets: PrivacyBudgets
    description: string
    syntheticDataConfiguration: SyntheticDataConfiguration
    createTime: number
    updateTime: number
    inputChannel: InputChannel
    protectedQueryIdentifier: string
    numberOfFiles: number
    sizeInGb: number
    kmsKeyArn: string
    tags: {string : string}
end

local record GetTrainedModelInput
    trainedModelArn: string
    membershipIdentifier: string
    versionIdentifier: string
end

local record GetTrainedModelOutput
    membershipIdentifier: string
    collaborationIdentifier: string
    trainedModelArn: string
    versionIdentifier: string
    incrementalTrainingDataChannels: {IncrementalTrainingDataChannelOutput}
    name: string
    description: string
    status: string
    statusDetails: StatusDetails
    configuredModelAlgorithmAssociationArn: string
    resourceConfig: ResourceConfig
    trainingInputMode: string
    stoppingCondition: StoppingCondition
    metricsStatus: string
    metricsStatusDetails: string
    logsStatus: string
    logsStatusDetails: string
    trainingContainerImageDigest: string
    createTime: number
    updateTime: number
    hyperparameters: {string : string}
    environment: {string : string}
    kmsKeyArn: string
    tags: {string : string}
    dataChannels: {ModelTrainingDataChannel}
end

local record GetTrainedModelInferenceJobInput
    membershipIdentifier: string
    trainedModelInferenceJobArn: string
end

local record GetTrainedModelInferenceJobOutput
    createTime: number
    updateTime: number
    trainedModelInferenceJobArn: string
    configuredModelAlgorithmAssociationArn: string
    name: string
    status: string
    trainedModelArn: string
    trainedModelVersionIdentifier: string
    resourceConfig: InferenceResourceConfig
    outputConfiguration: InferenceOutputConfiguration
    membershipIdentifier: string
    dataSource: ModelInferenceDataSource
    containerExecutionParameters: InferenceContainerExecutionParameters
    statusDetails: StatusDetails
    description: string
    inferenceContainerImageDigest: string
    environment: {string : string}
    kmsKeyArn: string
    metricsStatus: string
    metricsStatusDetails: string
    logsStatus: string
    logsStatusDetails: string
    tags: {string : string}
end

local record GetTrainingDatasetInput
    trainingDatasetArn: string
end

local record GetTrainingDatasetOutput
    createTime: number
    updateTime: number
    trainingDatasetArn: string
    name: string
    trainingData: {Dataset}
    status: string
    roleArn: string
    tags: {string : string}
    description: string
end

local record ListAudienceExportJobsInput
    nextToken: string
    maxResults: number
    audienceGenerationJobArn: string
end

local record ListAudienceExportJobsOutput
    nextToken: string
    audienceExportJobs: {AudienceExportJobSummary}
end

local record ListAudienceGenerationJobsInput
    nextToken: string
    maxResults: number
    configuredAudienceModelArn: string
    collaborationId: string
end

local record ListAudienceGenerationJobsOutput
    nextToken: string
    audienceGenerationJobs: {AudienceGenerationJobSummary}
end

local record ListAudienceModelsInput
    nextToken: string
    maxResults: number
end

local record ListAudienceModelsOutput
    nextToken: string
    audienceModels: {AudienceModelSummary}
end

local record ListCollaborationConfiguredModelAlgorithmAssociationsInput
    nextToken: string
    maxResults: number
    collaborationIdentifier: string
end

local record ListCollaborationConfiguredModelAlgorithmAssociationsOutput
    nextToken: string
    collaborationConfiguredModelAlgorithmAssociations: {CollaborationConfiguredModelAlgorithmAssociationSummary}
end

local record ListCollaborationMLInputChannelsInput
    nextToken: string
    maxResults: number
    collaborationIdentifier: string
end

local record ListCollaborationMLInputChannelsOutput
    nextToken: string
    collaborationMLInputChannelsList: {CollaborationMLInputChannelSummary}
end

local record ListCollaborationTrainedModelExportJobsInput
    nextToken: string
    maxResults: number
    collaborationIdentifier: string
    trainedModelArn: string
    trainedModelVersionIdentifier: string
end

local record ListCollaborationTrainedModelExportJobsOutput
    nextToken: string
    collaborationTrainedModelExportJobs: {CollaborationTrainedModelExportJobSummary}
end

local record ListCollaborationTrainedModelInferenceJobsInput
    nextToken: string
    maxResults: number
    collaborationIdentifier: string
    trainedModelArn: string
    trainedModelVersionIdentifier: string
end

local record ListCollaborationTrainedModelInferenceJobsOutput
    nextToken: string
    collaborationTrainedModelInferenceJobs: {CollaborationTrainedModelInferenceJobSummary}
end

local record ListCollaborationTrainedModelsInput
    nextToken: string
    maxResults: number
    collaborationIdentifier: string
end

local record ListCollaborationTrainedModelsOutput
    nextToken: string
    collaborationTrainedModels: {CollaborationTrainedModelSummary}
end

local record ListConfiguredAudienceModelsInput
    nextToken: string
    maxResults: number
end

local record ListConfiguredAudienceModelsOutput
    nextToken: string
    configuredAudienceModels: {ConfiguredAudienceModelSummary}
end

local record ListConfiguredModelAlgorithmAssociationsInput
    nextToken: string
    maxResults: number
    membershipIdentifier: string
end

local record ListConfiguredModelAlgorithmAssociationsOutput
    nextToken: string
    configuredModelAlgorithmAssociations: {ConfiguredModelAlgorithmAssociationSummary}
end

local record ListConfiguredModelAlgorithmsInput
    nextToken: string
    maxResults: number
end

local record ListConfiguredModelAlgorithmsOutput
    nextToken: string
    configuredModelAlgorithms: {ConfiguredModelAlgorithmSummary}
end

local record ListMLInputChannelsInput
    nextToken: string
    maxResults: number
    membershipIdentifier: string
end

local record ListMLInputChannelsOutput
    nextToken: string
    mlInputChannelsList: {MLInputChannelSummary}
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListTrainedModelInferenceJobsInput
    nextToken: string
    maxResults: number
    membershipIdentifier: string
    trainedModelArn: string
    trainedModelVersionIdentifier: string
end

local record ListTrainedModelInferenceJobsOutput
    nextToken: string
    trainedModelInferenceJobs: {TrainedModelInferenceJobSummary}
end

local record ListTrainedModelsInput
    nextToken: string
    maxResults: number
    membershipIdentifier: string
end

local record ListTrainedModelsOutput
    nextToken: string
    trainedModels: {TrainedModelSummary}
end

local record ListTrainedModelVersionsInput
    nextToken: string
    maxResults: number
    membershipIdentifier: string
    trainedModelArn: string
    status: string
end

local record ListTrainedModelVersionsOutput
    nextToken: string
    trainedModels: {TrainedModelSummary}
end

local record ListTrainingDatasetsInput
    nextToken: string
    maxResults: number
end

local record ListTrainingDatasetsOutput
    nextToken: string
    trainingDatasets: {TrainingDatasetSummary}
end

local record PutConfiguredAudienceModelPolicyInput
    configuredAudienceModelArn: string
    configuredAudienceModelPolicy: string
    previousPolicyHash: string
    policyExistenceCondition: string
end

local record PutConfiguredAudienceModelPolicyOutput
    configuredAudienceModelPolicy: string
    policyHash: string
end

local record PutMLConfigurationInput
    membershipIdentifier: string
    defaultOutputLocation: MLOutputConfiguration
end

local record PutMLConfigurationOutput
end

local record StartAudienceExportJobInput
    name: string
    audienceGenerationJobArn: string
    audienceSize: AudienceSize
    description: string
end

local record StartAudienceExportJobOutput
end

local record StartAudienceGenerationJobInput
    name: string
    configuredAudienceModelArn: string
    seedAudience: AudienceGenerationJobDataSource
    includeSeedInOutput: boolean
    collaborationId: string
    description: string
    tags: {string : string}
end

local record StartAudienceGenerationJobOutput
    audienceGenerationJobArn: string
end

local record StartTrainedModelExportJobInput
    name: string
    trainedModelArn: string
    trainedModelVersionIdentifier: string
    membershipIdentifier: string
    outputConfiguration: TrainedModelExportOutputConfiguration
    description: string
end

local record StartTrainedModelExportJobOutput
end

local record StartTrainedModelInferenceJobInput
    membershipIdentifier: string
    name: string
    trainedModelArn: string
    trainedModelVersionIdentifier: string
    configuredModelAlgorithmAssociationArn: string
    resourceConfig: InferenceResourceConfig
    outputConfiguration: InferenceOutputConfiguration
    dataSource: ModelInferenceDataSource
    description: string
    containerExecutionParameters: InferenceContainerExecutionParameters
    environment: {string : string}
    kmsKeyArn: string
    tags: {string : string}
end

local record StartTrainedModelInferenceJobOutput
    trainedModelInferenceJobArn: string
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

local record UpdateConfiguredAudienceModelInput
    configuredAudienceModelArn: string
    outputConfig: ConfiguredAudienceModelOutputConfig
    audienceModelArn: string
    sharedAudienceMetrics: {string}
    minMatchingSeedSize: number
    audienceSizeConfig: AudienceSizeConfig
    description: string
end

local record UpdateConfiguredAudienceModelOutput
    configuredAudienceModelArn: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
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

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
    quotaName: string
    quotaValue: number
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

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
    quotaName: string
    quotaValue: number
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

local record ServiceQuotaExceededException
    message: string
    quotaName: string
    quotaValue: number
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

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
    quotaName: string
    quotaValue: number
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

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
    quotaName: string
    quotaValue: number
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

local record InternalServiceException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
    quotaName: string
    quotaValue: number
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

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ResourceNotFoundException
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

local record ResourceNotFoundException
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

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
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

local record ResourceNotFoundException
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

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
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

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
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

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
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

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
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

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
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

local record ValidationException
    message: string
end

local record AccessDeniedException
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

local record ValidationException
    message: string
end

local record AccessDeniedException
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

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
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

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
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

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
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

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
    quotaName: string
    quotaValue: number
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

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
    quotaName: string
    quotaValue: number
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

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
    quotaName: string
    quotaValue: number
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

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
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

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local type TrainingDatasetStatus = "ACTIVE"

local type PolicyExistenceCondition = "POLICY_MUST_EXIST" | "POLICY_MUST_NOT_EXIST"

local type TagOnCreatePolicy = "FROM_PARENT_RESOURCE" | "NONE"

local type TrainedModelInferenceJobStatus = "CREATE_PENDING" | "CREATE_IN_PROGRESS" | "CREATE_FAILED" | "ACTIVE" | "CANCEL_PENDING" | "CANCEL_IN_PROGRESS" | "CANCEL_FAILED" | "INACTIVE"

local type TrainingInputMode = "File" | "FastFile" | "Pipe"

local type AudienceModelStatus = "CREATE_PENDING" | "CREATE_IN_PROGRESS" | "CREATE_FAILED" | "ACTIVE" | "DELETE_PENDING" | "DELETE_IN_PROGRESS" | "DELETE_FAILED"

local type ConfiguredAudienceModelStatus = "ACTIVE"

local type AudienceGenerationJobStatus = "CREATE_PENDING" | "CREATE_IN_PROGRESS" | "CREATE_FAILED" | "ACTIVE" | "DELETE_PENDING" | "DELETE_IN_PROGRESS" | "DELETE_FAILED"

local type LogsStatus = "PUBLISH_SUCCEEDED" | "PUBLISH_FAILED"

local type MetricsStatus = "PUBLISH_SUCCEEDED" | "PUBLISH_FAILED"

local type TrainedModelStatus = "CREATE_PENDING" | "CREATE_IN_PROGRESS" | "CREATE_FAILED" | "ACTIVE" | "DELETE_PENDING" | "DELETE_IN_PROGRESS" | "DELETE_FAILED" | "INACTIVE" | "CANCEL_PENDING" | "CANCEL_IN_PROGRESS" | "CANCEL_FAILED"

local type MLInputChannelStatus = "CREATE_PENDING" | "CREATE_IN_PROGRESS" | "CREATE_FAILED" | "ACTIVE" | "DELETE_PENDING" | "DELETE_IN_PROGRESS" | "DELETE_FAILED" | "INACTIVE"

local record M
    CancelTrainedModelInput: CancelTrainedModelInput
    CancelTrainedModelOutput: CancelTrainedModelOutput
    CancelTrainedModelInferenceJobInput: CancelTrainedModelInferenceJobInput
    CancelTrainedModelInferenceJobOutput: CancelTrainedModelInferenceJobOutput
    CreateAudienceModelInput: CreateAudienceModelInput
    CreateAudienceModelOutput: CreateAudienceModelOutput
    CreateConfiguredAudienceModelInput: CreateConfiguredAudienceModelInput
    CreateConfiguredAudienceModelOutput: CreateConfiguredAudienceModelOutput
    CreateConfiguredModelAlgorithmInput: CreateConfiguredModelAlgorithmInput
    CreateConfiguredModelAlgorithmOutput: CreateConfiguredModelAlgorithmOutput
    CreateConfiguredModelAlgorithmAssociationInput: CreateConfiguredModelAlgorithmAssociationInput
    CreateConfiguredModelAlgorithmAssociationOutput: CreateConfiguredModelAlgorithmAssociationOutput
    CreateMLInputChannelInput: CreateMLInputChannelInput
    CreateMLInputChannelOutput: CreateMLInputChannelOutput
    CreateTrainedModelInput: CreateTrainedModelInput
    CreateTrainedModelOutput: CreateTrainedModelOutput
    CreateTrainingDatasetInput: CreateTrainingDatasetInput
    CreateTrainingDatasetOutput: CreateTrainingDatasetOutput
    DeleteAudienceGenerationJobInput: DeleteAudienceGenerationJobInput
    DeleteAudienceGenerationJobOutput: DeleteAudienceGenerationJobOutput
    DeleteAudienceModelInput: DeleteAudienceModelInput
    DeleteAudienceModelOutput: DeleteAudienceModelOutput
    DeleteConfiguredAudienceModelInput: DeleteConfiguredAudienceModelInput
    DeleteConfiguredAudienceModelOutput: DeleteConfiguredAudienceModelOutput
    DeleteConfiguredAudienceModelPolicyInput: DeleteConfiguredAudienceModelPolicyInput
    DeleteConfiguredAudienceModelPolicyOutput: DeleteConfiguredAudienceModelPolicyOutput
    DeleteConfiguredModelAlgorithmInput: DeleteConfiguredModelAlgorithmInput
    DeleteConfiguredModelAlgorithmOutput: DeleteConfiguredModelAlgorithmOutput
    DeleteConfiguredModelAlgorithmAssociationInput: DeleteConfiguredModelAlgorithmAssociationInput
    DeleteConfiguredModelAlgorithmAssociationOutput: DeleteConfiguredModelAlgorithmAssociationOutput
    DeleteMLConfigurationInput: DeleteMLConfigurationInput
    DeleteMLConfigurationOutput: DeleteMLConfigurationOutput
    DeleteMLInputChannelDataInput: DeleteMLInputChannelDataInput
    DeleteMLInputChannelDataOutput: DeleteMLInputChannelDataOutput
    DeleteTrainedModelOutputInput: DeleteTrainedModelOutputInput
    DeleteTrainedModelOutputOutput: DeleteTrainedModelOutputOutput
    DeleteTrainingDatasetInput: DeleteTrainingDatasetInput
    DeleteTrainingDatasetOutput: DeleteTrainingDatasetOutput
    GetAudienceGenerationJobInput: GetAudienceGenerationJobInput
    GetAudienceGenerationJobOutput: GetAudienceGenerationJobOutput
    GetAudienceModelInput: GetAudienceModelInput
    GetAudienceModelOutput: GetAudienceModelOutput
    GetCollaborationConfiguredModelAlgorithmAssociationInput: GetCollaborationConfiguredModelAlgorithmAssociationInput
    GetCollaborationConfiguredModelAlgorithmAssociationOutput: GetCollaborationConfiguredModelAlgorithmAssociationOutput
    GetCollaborationMLInputChannelInput: GetCollaborationMLInputChannelInput
    GetCollaborationMLInputChannelOutput: GetCollaborationMLInputChannelOutput
    GetCollaborationTrainedModelInput: GetCollaborationTrainedModelInput
    GetCollaborationTrainedModelOutput: GetCollaborationTrainedModelOutput
    GetConfiguredAudienceModelInput: GetConfiguredAudienceModelInput
    GetConfiguredAudienceModelOutput: GetConfiguredAudienceModelOutput
    GetConfiguredAudienceModelPolicyInput: GetConfiguredAudienceModelPolicyInput
    GetConfiguredAudienceModelPolicyOutput: GetConfiguredAudienceModelPolicyOutput
    GetConfiguredModelAlgorithmInput: GetConfiguredModelAlgorithmInput
    GetConfiguredModelAlgorithmOutput: GetConfiguredModelAlgorithmOutput
    GetConfiguredModelAlgorithmAssociationInput: GetConfiguredModelAlgorithmAssociationInput
    GetConfiguredModelAlgorithmAssociationOutput: GetConfiguredModelAlgorithmAssociationOutput
    GetMLConfigurationInput: GetMLConfigurationInput
    GetMLConfigurationOutput: GetMLConfigurationOutput
    GetMLInputChannelInput: GetMLInputChannelInput
    GetMLInputChannelOutput: GetMLInputChannelOutput
    GetTrainedModelInput: GetTrainedModelInput
    GetTrainedModelOutput: GetTrainedModelOutput
    GetTrainedModelInferenceJobInput: GetTrainedModelInferenceJobInput
    GetTrainedModelInferenceJobOutput: GetTrainedModelInferenceJobOutput
    GetTrainingDatasetInput: GetTrainingDatasetInput
    GetTrainingDatasetOutput: GetTrainingDatasetOutput
    ListAudienceExportJobsInput: ListAudienceExportJobsInput
    ListAudienceExportJobsOutput: ListAudienceExportJobsOutput
    ListAudienceGenerationJobsInput: ListAudienceGenerationJobsInput
    ListAudienceGenerationJobsOutput: ListAudienceGenerationJobsOutput
    ListAudienceModelsInput: ListAudienceModelsInput
    ListAudienceModelsOutput: ListAudienceModelsOutput
    ListCollaborationConfiguredModelAlgorithmAssociationsInput: ListCollaborationConfiguredModelAlgorithmAssociationsInput
    ListCollaborationConfiguredModelAlgorithmAssociationsOutput: ListCollaborationConfiguredModelAlgorithmAssociationsOutput
    ListCollaborationMLInputChannelsInput: ListCollaborationMLInputChannelsInput
    ListCollaborationMLInputChannelsOutput: ListCollaborationMLInputChannelsOutput
    ListCollaborationTrainedModelExportJobsInput: ListCollaborationTrainedModelExportJobsInput
    ListCollaborationTrainedModelExportJobsOutput: ListCollaborationTrainedModelExportJobsOutput
    ListCollaborationTrainedModelInferenceJobsInput: ListCollaborationTrainedModelInferenceJobsInput
    ListCollaborationTrainedModelInferenceJobsOutput: ListCollaborationTrainedModelInferenceJobsOutput
    ListCollaborationTrainedModelsInput: ListCollaborationTrainedModelsInput
    ListCollaborationTrainedModelsOutput: ListCollaborationTrainedModelsOutput
    ListConfiguredAudienceModelsInput: ListConfiguredAudienceModelsInput
    ListConfiguredAudienceModelsOutput: ListConfiguredAudienceModelsOutput
    ListConfiguredModelAlgorithmAssociationsInput: ListConfiguredModelAlgorithmAssociationsInput
    ListConfiguredModelAlgorithmAssociationsOutput: ListConfiguredModelAlgorithmAssociationsOutput
    ListConfiguredModelAlgorithmsInput: ListConfiguredModelAlgorithmsInput
    ListConfiguredModelAlgorithmsOutput: ListConfiguredModelAlgorithmsOutput
    ListMLInputChannelsInput: ListMLInputChannelsInput
    ListMLInputChannelsOutput: ListMLInputChannelsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTrainedModelInferenceJobsInput: ListTrainedModelInferenceJobsInput
    ListTrainedModelInferenceJobsOutput: ListTrainedModelInferenceJobsOutput
    ListTrainedModelsInput: ListTrainedModelsInput
    ListTrainedModelsOutput: ListTrainedModelsOutput
    ListTrainedModelVersionsInput: ListTrainedModelVersionsInput
    ListTrainedModelVersionsOutput: ListTrainedModelVersionsOutput
    ListTrainingDatasetsInput: ListTrainingDatasetsInput
    ListTrainingDatasetsOutput: ListTrainingDatasetsOutput
    PutConfiguredAudienceModelPolicyInput: PutConfiguredAudienceModelPolicyInput
    PutConfiguredAudienceModelPolicyOutput: PutConfiguredAudienceModelPolicyOutput
    PutMLConfigurationInput: PutMLConfigurationInput
    PutMLConfigurationOutput: PutMLConfigurationOutput
    StartAudienceExportJobInput: StartAudienceExportJobInput
    StartAudienceExportJobOutput: StartAudienceExportJobOutput
    StartAudienceGenerationJobInput: StartAudienceGenerationJobInput
    StartAudienceGenerationJobOutput: StartAudienceGenerationJobOutput
    StartTrainedModelExportJobInput: StartTrainedModelExportJobInput
    StartTrainedModelExportJobOutput: StartTrainedModelExportJobOutput
    StartTrainedModelInferenceJobInput: StartTrainedModelInferenceJobInput
    StartTrainedModelInferenceJobOutput: StartTrainedModelInferenceJobOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateConfiguredAudienceModelInput: UpdateConfiguredAudienceModelInput
    UpdateConfiguredAudienceModelOutput: UpdateConfiguredAudienceModelOutput
end

return M
