local record AddAssociationInput
    SourceArn: string
    DestinationArn: string
    AssociationType: string
end

local record AddAssociationOutput
    SourceArn: string
    DestinationArn: string
end

local record AddTagsInput
    ResourceArn: string
    Tags: {Tag}
end

local record AddTagsOutput
    Tags: {Tag}
end

local record AssociateTrialComponentInput
    TrialComponentName: string
    TrialName: string
end

local record AssociateTrialComponentOutput
    TrialComponentArn: string
    TrialArn: string
end

local record AttachClusterNodeVolumeInput
    ClusterArn: string
    NodeId: string
    VolumeId: string
end

local record AttachClusterNodeVolumeOutput
    ClusterArn: string
    NodeId: string
    VolumeId: string
    AttachTime: number
    Status: string
    DeviceName: string
end

local record BatchAddClusterNodesInput
    ClusterName: string
    ClientToken: string
    NodesToAdd: {AddClusterNodeSpecification}
end

local record BatchAddClusterNodesOutput
    Successful: {NodeAdditionResult}
    Failed: {BatchAddClusterNodesError}
end

local record BatchDeleteClusterNodesInput
    ClusterName: string
    NodeIds: {string}
    NodeLogicalIds: {string}
end

local record BatchDeleteClusterNodesOutput
    Failed: {BatchDeleteClusterNodesError}
    Successful: {string}
    FailedNodeLogicalIds: {BatchDeleteClusterNodeLogicalIdsError}
    SuccessfulNodeLogicalIds: {string}
end

local record BatchDescribeModelPackageInput
    ModelPackageArnList: {string}
end

local record BatchDescribeModelPackageOutput
    ModelPackageSummaries: {string : BatchDescribeModelPackageSummary}
    BatchDescribeModelPackageErrorMap: {string : BatchDescribeModelPackageError}
end

local record BatchRebootClusterNodesInput
    ClusterName: string
    NodeIds: {string}
    NodeLogicalIds: {string}
end

local record BatchRebootClusterNodesOutput
    Successful: {string}
    Failed: {BatchRebootClusterNodesError}
    FailedNodeLogicalIds: {BatchRebootClusterNodeLogicalIdsError}
    SuccessfulNodeLogicalIds: {string}
end

local record BatchReplaceClusterNodesInput
    ClusterName: string
    NodeIds: {string}
    NodeLogicalIds: {string}
end

local record BatchReplaceClusterNodesOutput
    Successful: {string}
    Failed: {BatchReplaceClusterNodesError}
    FailedNodeLogicalIds: {BatchReplaceClusterNodeLogicalIdsError}
    SuccessfulNodeLogicalIds: {string}
end

local record CreateActionInput
    ActionName: string
    Source: ActionSource
    ActionType: string
    Description: string
    Status: string
    Properties: {string : string}
    MetadataProperties: MetadataProperties
    Tags: {Tag}
end

local record CreateActionOutput
    ActionArn: string
end

local record CreateAIBenchmarkJobInput
    AIBenchmarkJobName: string
    BenchmarkTarget: AIBenchmarkTarget
    OutputConfig: AIBenchmarkOutputConfig
    AIWorkloadConfigIdentifier: string
    RoleArn: string
    NetworkConfig: AIBenchmarkNetworkConfig
    Tags: {Tag}
end

local record CreateAIBenchmarkJobOutput
    AIBenchmarkJobArn: string
end

local record CreateAIRecommendationJobInput
    AIRecommendationJobName: string
    ModelSource: AIModelSource
    OutputConfig: AIRecommendationOutputConfig
    AIWorkloadConfigIdentifier: string
    PerformanceTarget: AIRecommendationPerformanceTarget
    RoleArn: string
    InferenceSpecification: AIRecommendationInferenceSpecification
    OptimizeModel: boolean
    ComputeSpec: AIRecommendationComputeSpec
    Tags: {Tag}
end

local record CreateAIRecommendationJobOutput
    AIRecommendationJobArn: string
end

local record CreateAIWorkloadConfigInput
    AIWorkloadConfigName: string
    DatasetConfig: AIDatasetConfig
    AIWorkloadConfigs: AIWorkloadConfigs
    Tags: {Tag}
end

local record CreateAIWorkloadConfigOutput
    AIWorkloadConfigArn: string
end

local record CreateAlgorithmInput
    AlgorithmName: string
    AlgorithmDescription: string
    TrainingSpecification: TrainingSpecification
    InferenceSpecification: InferenceSpecification
    ValidationSpecification: AlgorithmValidationSpecification
    CertifyForMarketplace: boolean
    Tags: {Tag}
end

local record CreateAlgorithmOutput
    AlgorithmArn: string
end

local record CreateAppInput
    DomainId: string
    UserProfileName: string
    SpaceName: string
    AppType: string
    AppName: string
    Tags: {Tag}
    ResourceSpec: ResourceSpec
    RecoveryMode: boolean
end

local record CreateAppOutput
    AppArn: string
end

local record CreateAppImageConfigInput
    AppImageConfigName: string
    Tags: {Tag}
    KernelGatewayImageConfig: KernelGatewayImageConfig
    JupyterLabAppImageConfig: JupyterLabAppImageConfig
    CodeEditorAppImageConfig: CodeEditorAppImageConfig
end

local record CreateAppImageConfigOutput
    AppImageConfigArn: string
end

local record CreateArtifactInput
    ArtifactName: string
    Source: ArtifactSource
    ArtifactType: string
    Properties: {string : string}
    MetadataProperties: MetadataProperties
    Tags: {Tag}
end

local record CreateArtifactOutput
    ArtifactArn: string
end

local record CreateAutoMLJobInput
    AutoMLJobName: string
    InputDataConfig: {AutoMLChannel}
    OutputDataConfig: AutoMLOutputDataConfig
    ProblemType: string
    AutoMLJobObjective: AutoMLJobObjective
    AutoMLJobConfig: AutoMLJobConfig
    RoleArn: string
    GenerateCandidateDefinitionsOnly: boolean
    Tags: {Tag}
    ModelDeployConfig: ModelDeployConfig
end

local record CreateAutoMLJobOutput
    AutoMLJobArn: string
end

local record CreateAutoMLJobV2Input
    AutoMLJobName: string
    AutoMLJobInputDataConfig: {AutoMLJobChannel}
    OutputDataConfig: AutoMLOutputDataConfig
    AutoMLProblemTypeConfig: AutoMLProblemTypeConfig
    RoleArn: string
    Tags: {Tag}
    SecurityConfig: AutoMLSecurityConfig
    AutoMLJobObjective: AutoMLJobObjective
    ModelDeployConfig: ModelDeployConfig
    DataSplitConfig: AutoMLDataSplitConfig
    AutoMLComputeConfig: AutoMLComputeConfig
end

local record CreateAutoMLJobV2Output
    AutoMLJobArn: string
end

local record CreateClusterInput
    ClusterName: string
    InstanceGroups: {ClusterInstanceGroupSpecification}
    RestrictedInstanceGroups: {ClusterRestrictedInstanceGroupSpecification}
    VpcConfig: VpcConfig
    Tags: {Tag}
    Orchestrator: ClusterOrchestrator
    NodeRecovery: string
    TieredStorageConfig: ClusterTieredStorageConfig
    NodeProvisioningMode: string
    ClusterRole: string
    AutoScaling: ClusterAutoScalingConfig
end

local record CreateClusterOutput
    ClusterArn: string
end

local record CreateClusterSchedulerConfigInput
    Name: string
    ClusterArn: string
    SchedulerConfig: SchedulerConfig
    Description: string
    Tags: {Tag}
end

local record CreateClusterSchedulerConfigOutput
    ClusterSchedulerConfigArn: string
    ClusterSchedulerConfigId: string
end

local record CreateCodeRepositoryInput
    CodeRepositoryName: string
    GitConfig: GitConfig
    Tags: {Tag}
end

local record CreateCodeRepositoryOutput
    CodeRepositoryArn: string
end

local record CreateCompilationJobInput
    CompilationJobName: string
    RoleArn: string
    ModelPackageVersionArn: string
    InputConfig: InputConfig
    OutputConfig: OutputConfig
    VpcConfig: NeoVpcConfig
    StoppingCondition: StoppingCondition
    Tags: {Tag}
end

local record CreateCompilationJobOutput
    CompilationJobArn: string
end

local record CreateComputeQuotaInput
    Name: string
    Description: string
    ClusterArn: string
    ComputeQuotaConfig: ComputeQuotaConfig
    ComputeQuotaTarget: ComputeQuotaTarget
    ActivationState: string
    Tags: {Tag}
end

local record CreateComputeQuotaOutput
    ComputeQuotaArn: string
    ComputeQuotaId: string
end

local record CreateContextInput
    ContextName: string
    Source: ContextSource
    ContextType: string
    Description: string
    Properties: {string : string}
    Tags: {Tag}
end

local record CreateContextOutput
    ContextArn: string
end

local record CreateDataQualityJobDefinitionInput
    JobDefinitionName: string
    DataQualityBaselineConfig: DataQualityBaselineConfig
    DataQualityAppSpecification: DataQualityAppSpecification
    DataQualityJobInput: DataQualityJobInput
    DataQualityJobOutputConfig: MonitoringOutputConfig
    JobResources: MonitoringResources
    NetworkConfig: MonitoringNetworkConfig
    RoleArn: string
    StoppingCondition: MonitoringStoppingCondition
    Tags: {Tag}
end

local record CreateDataQualityJobDefinitionOutput
    JobDefinitionArn: string
end

local record CreateDeviceFleetInput
    DeviceFleetName: string
    RoleArn: string
    Description: string
    OutputConfig: EdgeOutputConfig
    Tags: {Tag}
    EnableIotRoleAlias: boolean
end

local record CreateDeviceFleetOutput
end

local record CreateDomainInput
    DomainName: string
    AuthMode: string
    DefaultUserSettings: UserSettings
    DomainSettings: DomainSettings
    SubnetIds: {string}
    VpcId: string
    Tags: {Tag}
    AppNetworkAccessType: string
    HomeEfsFileSystemKmsKeyId: string
    KmsKeyId: string
    AppSecurityGroupManagement: string
    TagPropagation: string
    DefaultSpaceSettings: DefaultSpaceSettings
end

local record CreateDomainOutput
    DomainArn: string
    DomainId: string
    Url: string
end

local record CreateEdgeDeploymentPlanInput
    EdgeDeploymentPlanName: string
    ModelConfigs: {EdgeDeploymentModelConfig}
    DeviceFleetName: string
    Stages: {DeploymentStage}
    Tags: {Tag}
end

local record CreateEdgeDeploymentPlanOutput
    EdgeDeploymentPlanArn: string
end

local record CreateEdgeDeploymentStageInput
    EdgeDeploymentPlanName: string
    Stages: {DeploymentStage}
end

local record CreateEdgeDeploymentStageOutput
end

local record CreateEdgePackagingJobInput
    EdgePackagingJobName: string
    CompilationJobName: string
    ModelName: string
    ModelVersion: string
    RoleArn: string
    OutputConfig: EdgeOutputConfig
    ResourceKey: string
    Tags: {Tag}
end

local record CreateEdgePackagingJobOutput
end

local record CreateEndpointInput
    EndpointName: string
    EndpointConfigName: string
    DeploymentConfig: DeploymentConfig
    Tags: {Tag}
end

local record CreateEndpointOutput
    EndpointArn: string
end

local record CreateEndpointConfigInput
    EndpointConfigName: string
    ProductionVariants: {ProductionVariant}
    DataCaptureConfig: DataCaptureConfig
    Tags: {Tag}
    KmsKeyId: string
    AsyncInferenceConfig: AsyncInferenceConfig
    ExplainerConfig: ExplainerConfig
    ShadowProductionVariants: {ProductionVariant}
    ExecutionRoleArn: string
    VpcConfig: VpcConfig
    EnableNetworkIsolation: boolean
    MetricsConfig: MetricsConfig
end

local record CreateEndpointConfigOutput
    EndpointConfigArn: string
end

local record CreateExperimentInput
    ExperimentName: string
    DisplayName: string
    Description: string
    Tags: {Tag}
end

local record CreateExperimentOutput
    ExperimentArn: string
end

local record CreateFeatureGroupInput
    FeatureGroupName: string
    RecordIdentifierFeatureName: string
    EventTimeFeatureName: string
    FeatureDefinitions: {FeatureDefinition}
    OnlineStoreConfig: OnlineStoreConfig
    OfflineStoreConfig: OfflineStoreConfig
    ThroughputConfig: ThroughputConfig
    RoleArn: string
    Description: string
    Tags: {Tag}
end

local record CreateFeatureGroupOutput
    FeatureGroupArn: string
end

local record CreateFlowDefinitionInput
    FlowDefinitionName: string
    HumanLoopRequestSource: HumanLoopRequestSource
    HumanLoopActivationConfig: HumanLoopActivationConfig
    HumanLoopConfig: HumanLoopConfig
    OutputConfig: FlowDefinitionOutputConfig
    RoleArn: string
    Tags: {Tag}
end

local record CreateFlowDefinitionOutput
    FlowDefinitionArn: string
end

local record CreateHubInput
    HubName: string
    HubDescription: string
    HubDisplayName: string
    HubSearchKeywords: {string}
    S3StorageConfig: HubS3StorageConfig
    Tags: {Tag}
end

local record CreateHubOutput
    HubArn: string
end

local record CreateHubContentPresignedUrlsInput
    HubName: string
    HubContentType: string
    HubContentName: string
    HubContentVersion: string
    AccessConfig: PresignedUrlAccessConfig
    MaxResults: number
    NextToken: string
end

local record CreateHubContentPresignedUrlsOutput
    AuthorizedUrlConfigs: {AuthorizedUrl}
    NextToken: string
end

local record CreateHubContentReferenceInput
    HubName: string
    SageMakerPublicHubContentArn: string
    HubContentName: string
    MinVersion: string
    Tags: {Tag}
end

local record CreateHubContentReferenceOutput
    HubArn: string
    HubContentArn: string
end

local record CreateHumanTaskUiInput
    HumanTaskUiName: string
    UiTemplate: UiTemplate
    Tags: {Tag}
end

local record CreateHumanTaskUiOutput
    HumanTaskUiArn: string
end

local record CreateHyperParameterTuningJobInput
    HyperParameterTuningJobName: string
    HyperParameterTuningJobConfig: HyperParameterTuningJobConfig
    TrainingJobDefinition: HyperParameterTrainingJobDefinition
    TrainingJobDefinitions: {HyperParameterTrainingJobDefinition}
    WarmStartConfig: HyperParameterTuningJobWarmStartConfig
    Tags: {Tag}
    Autotune: Autotune
end

local record CreateHyperParameterTuningJobOutput
    HyperParameterTuningJobArn: string
end

local record CreateImageInput
    Description: string
    DisplayName: string
    ImageName: string
    RoleArn: string
    Tags: {Tag}
end

local record CreateImageOutput
    ImageArn: string
end

local record CreateImageVersionInput
    BaseImage: string
    ClientToken: string
    ImageName: string
    Aliases: {string}
    VendorGuidance: string
    JobType: string
    MLFramework: string
    ProgrammingLang: string
    Processor: string
    Horovod: boolean
    ReleaseNotes: string
end

local record CreateImageVersionOutput
    ImageVersionArn: string
end

local record CreateInferenceComponentInput
    InferenceComponentName: string
    EndpointName: string
    VariantName: string
    Specification: InferenceComponentSpecification
    Specifications: {InferenceComponentSpecification}
    RuntimeConfig: InferenceComponentRuntimeConfig
    Tags: {Tag}
end

local record CreateInferenceComponentOutput
    InferenceComponentArn: string
end

local record CreateInferenceExperimentInput
    Name: string
    Type: string
    Schedule: InferenceExperimentSchedule
    Description: string
    RoleArn: string
    EndpointName: string
    ModelVariants: {ModelVariantConfig}
    DataStorageConfig: InferenceExperimentDataStorageConfig
    ShadowModeConfig: ShadowModeConfig
    KmsKey: string
    Tags: {Tag}
end

local record CreateInferenceExperimentOutput
    InferenceExperimentArn: string
end

local record CreateInferenceRecommendationsJobInput
    JobName: string
    JobType: string
    RoleArn: string
    InputConfig: RecommendationJobInputConfig
    JobDescription: string
    StoppingConditions: RecommendationJobStoppingConditions
    OutputConfig: RecommendationJobOutputConfig
    Tags: {Tag}
end

local record CreateInferenceRecommendationsJobOutput
    JobArn: string
end

local record CreateLabelingJobInput
    LabelingJobName: string
    LabelAttributeName: string
    InputConfig: LabelingJobInputConfig
    OutputConfig: LabelingJobOutputConfig
    RoleArn: string
    LabelCategoryConfigS3Uri: string
    StoppingConditions: LabelingJobStoppingConditions
    LabelingJobAlgorithmsConfig: LabelingJobAlgorithmsConfig
    HumanTaskConfig: HumanTaskConfig
    Tags: {Tag}
end

local record CreateLabelingJobOutput
    LabelingJobArn: string
end

local record CreateMlflowAppInput
    Name: string
    ArtifactStoreUri: string
    RoleArn: string
    ModelRegistrationMode: string
    WeeklyMaintenanceWindowStart: string
    AccountDefaultStatus: string
    DefaultDomainIdList: {string}
    Tags: {Tag}
end

local record CreateMlflowAppOutput
    Arn: string
end

local record CreateMlflowTrackingServerInput
    TrackingServerName: string
    ArtifactStoreUri: string
    TrackingServerSize: string
    MlflowVersion: string
    RoleArn: string
    AutomaticModelRegistration: boolean
    WeeklyMaintenanceWindowStart: string
    Tags: {Tag}
    S3BucketOwnerAccountId: string
    S3BucketOwnerVerification: boolean
end

local record CreateMlflowTrackingServerOutput
    TrackingServerArn: string
end

local record CreateModelInput
    ModelName: string
    PrimaryContainer: ContainerDefinition
    Containers: {ContainerDefinition}
    InferenceExecutionConfig: InferenceExecutionConfig
    ExecutionRoleArn: string
    Tags: {Tag}
    VpcConfig: VpcConfig
    EnableNetworkIsolation: boolean
end

local record CreateModelOutput
    ModelArn: string
end

local record CreateModelBiasJobDefinitionInput
    JobDefinitionName: string
    ModelBiasBaselineConfig: ModelBiasBaselineConfig
    ModelBiasAppSpecification: ModelBiasAppSpecification
    ModelBiasJobInput: ModelBiasJobInput
    ModelBiasJobOutputConfig: MonitoringOutputConfig
    JobResources: MonitoringResources
    NetworkConfig: MonitoringNetworkConfig
    RoleArn: string
    StoppingCondition: MonitoringStoppingCondition
    Tags: {Tag}
end

local record CreateModelBiasJobDefinitionOutput
    JobDefinitionArn: string
end

local record CreateModelCardInput
    ModelCardName: string
    SecurityConfig: ModelCardSecurityConfig
    Content: string
    ModelCardStatus: string
    Tags: {Tag}
end

local record CreateModelCardOutput
    ModelCardArn: string
end

local record CreateModelCardExportJobInput
    ModelCardName: string
    ModelCardVersion: number
    ModelCardExportJobName: string
    OutputConfig: ModelCardExportOutputConfig
end

local record CreateModelCardExportJobOutput
    ModelCardExportJobArn: string
end

local record CreateModelExplainabilityJobDefinitionInput
    JobDefinitionName: string
    ModelExplainabilityBaselineConfig: ModelExplainabilityBaselineConfig
    ModelExplainabilityAppSpecification: ModelExplainabilityAppSpecification
    ModelExplainabilityJobInput: ModelExplainabilityJobInput
    ModelExplainabilityJobOutputConfig: MonitoringOutputConfig
    JobResources: MonitoringResources
    NetworkConfig: MonitoringNetworkConfig
    RoleArn: string
    StoppingCondition: MonitoringStoppingCondition
    Tags: {Tag}
end

local record CreateModelExplainabilityJobDefinitionOutput
    JobDefinitionArn: string
end

local record CreateModelPackageInput
    ModelPackageName: string
    ModelPackageGroupName: string
    ModelPackageDescription: string
    ModelPackageRegistrationType: string
    InferenceSpecification: InferenceSpecification
    ValidationSpecification: ModelPackageValidationSpecification
    SourceAlgorithmSpecification: SourceAlgorithmSpecification
    CertifyForMarketplace: boolean
    Tags: {Tag}
    ModelApprovalStatus: string
    MetadataProperties: MetadataProperties
    ModelMetrics: ModelMetrics
    ClientToken: string
    Domain: string
    Task: string
    SamplePayloadUrl: string
    CustomerMetadataProperties: {string : string}
    DriftCheckBaselines: DriftCheckBaselines
    AdditionalInferenceSpecifications: {AdditionalInferenceSpecificationDefinition}
    SkipModelValidation: string
    SourceUri: string
    SecurityConfig: ModelPackageSecurityConfig
    ModelCard: ModelPackageModelCard
    ModelLifeCycle: ModelLifeCycle
end

local record CreateModelPackageOutput
    ModelPackageArn: string
end

local record CreateModelPackageGroupInput
    ModelPackageGroupName: string
    ModelPackageGroupDescription: string
    Tags: {Tag}
end

local record CreateModelPackageGroupOutput
    ModelPackageGroupArn: string
end

local record CreateModelQualityJobDefinitionInput
    JobDefinitionName: string
    ModelQualityBaselineConfig: ModelQualityBaselineConfig
    ModelQualityAppSpecification: ModelQualityAppSpecification
    ModelQualityJobInput: ModelQualityJobInput
    ModelQualityJobOutputConfig: MonitoringOutputConfig
    JobResources: MonitoringResources
    NetworkConfig: MonitoringNetworkConfig
    RoleArn: string
    StoppingCondition: MonitoringStoppingCondition
    Tags: {Tag}
end

local record CreateModelQualityJobDefinitionOutput
    JobDefinitionArn: string
end

local record CreateMonitoringScheduleInput
    MonitoringScheduleName: string
    MonitoringScheduleConfig: MonitoringScheduleConfig
    Tags: {Tag}
end

local record CreateMonitoringScheduleOutput
    MonitoringScheduleArn: string
end

local record CreateNotebookInstanceInput
    NotebookInstanceName: string
    InstanceType: string
    SubnetId: string
    SecurityGroupIds: {string}
    IpAddressType: string
    RoleArn: string
    KmsKeyId: string
    Tags: {Tag}
    LifecycleConfigName: string
    DirectInternetAccess: string
    VolumeSizeInGB: number
    AcceleratorTypes: {string}
    DefaultCodeRepository: string
    AdditionalCodeRepositories: {string}
    RootAccess: string
    PlatformIdentifier: string
    InstanceMetadataServiceConfiguration: InstanceMetadataServiceConfiguration
end

local record CreateNotebookInstanceOutput
    NotebookInstanceArn: string
end

local record CreateNotebookInstanceLifecycleConfigInput
    NotebookInstanceLifecycleConfigName: string
    OnCreate: {NotebookInstanceLifecycleHook}
    OnStart: {NotebookInstanceLifecycleHook}
    Tags: {Tag}
end

local record CreateNotebookInstanceLifecycleConfigOutput
    NotebookInstanceLifecycleConfigArn: string
end

local record CreateOptimizationJobInput
    OptimizationJobName: string
    RoleArn: string
    ModelSource: OptimizationJobModelSource
    DeploymentInstanceType: string
    MaxInstanceCount: number
    OptimizationEnvironment: {string : string}
    OptimizationConfigs: {OptimizationConfig}
    OutputConfig: OptimizationJobOutputConfig
    StoppingCondition: StoppingCondition
    Tags: {Tag}
    VpcConfig: OptimizationVpcConfig
end

local record CreateOptimizationJobOutput
    OptimizationJobArn: string
end

local record CreatePartnerAppInput
    Name: string
    Type: string
    ExecutionRoleArn: string
    KmsKeyId: string
    MaintenanceConfig: PartnerAppMaintenanceConfig
    Tier: string
    ApplicationConfig: PartnerAppConfig
    AuthType: string
    EnableIamSessionBasedIdentity: boolean
    EnableAutoMinorVersionUpgrade: boolean
    ClientToken: string
    Tags: {Tag}
end

local record CreatePartnerAppOutput
    Arn: string
end

local record CreatePartnerAppPresignedUrlInput
    Arn: string
    ExpiresInSeconds: number
    SessionExpirationDurationInSeconds: number
end

local record CreatePartnerAppPresignedUrlOutput
    Url: string
end

local record CreatePipelineInput
    PipelineName: string
    PipelineDisplayName: string
    PipelineDefinition: string
    PipelineDefinitionS3Location: PipelineDefinitionS3Location
    PipelineDescription: string
    ClientRequestToken: string
    RoleArn: string
    Tags: {Tag}
    ParallelismConfiguration: ParallelismConfiguration
end

local record CreatePipelineOutput
    PipelineArn: string
end

local record CreatePresignedDomainUrlInput
    DomainId: string
    UserProfileName: string
    SessionExpirationDurationInSeconds: number
    ExpiresInSeconds: number
    SpaceName: string
    LandingUri: string
end

local record CreatePresignedDomainUrlOutput
    AuthorizedUrl: string
end

local record CreatePresignedMlflowAppUrlInput
    Arn: string
    ExpiresInSeconds: number
    SessionExpirationDurationInSeconds: number
end

local record CreatePresignedMlflowAppUrlOutput
    AuthorizedUrl: string
end

local record CreatePresignedMlflowTrackingServerUrlInput
    TrackingServerName: string
    ExpiresInSeconds: number
    SessionExpirationDurationInSeconds: number
end

local record CreatePresignedMlflowTrackingServerUrlOutput
    AuthorizedUrl: string
end

local record CreatePresignedNotebookInstanceUrlInput
    NotebookInstanceName: string
    SessionExpirationDurationInSeconds: number
end

local record CreatePresignedNotebookInstanceUrlOutput
    AuthorizedUrl: string
end

local record CreateProcessingJobInput
    ProcessingInputs: {ProcessingInput}
    ProcessingOutputConfig: ProcessingOutputConfig
    ProcessingJobName: string
    ProcessingResources: ProcessingResources
    StoppingCondition: ProcessingStoppingCondition
    AppSpecification: AppSpecification
    Environment: {string : string}
    NetworkConfig: NetworkConfig
    RoleArn: string
    Tags: {Tag}
    ExperimentConfig: ExperimentConfig
end

local record CreateProcessingJobOutput
    ProcessingJobArn: string
end

local record CreateProjectInput
    ProjectName: string
    ProjectDescription: string
    ServiceCatalogProvisioningDetails: ServiceCatalogProvisioningDetails
    Tags: {Tag}
    TemplateProviders: {CreateTemplateProvider}
end

local record CreateProjectOutput
    ProjectArn: string
    ProjectId: string
end

local record CreateSpaceInput
    DomainId: string
    SpaceName: string
    Tags: {Tag}
    SpaceSettings: SpaceSettings
    OwnershipSettings: OwnershipSettings
    SpaceSharingSettings: SpaceSharingSettings
    SpaceDisplayName: string
end

local record CreateSpaceOutput
    SpaceArn: string
end

local record CreateStudioLifecycleConfigInput
    StudioLifecycleConfigName: string
    StudioLifecycleConfigContent: string
    StudioLifecycleConfigAppType: string
    Tags: {Tag}
end

local record CreateStudioLifecycleConfigOutput
    StudioLifecycleConfigArn: string
end

local record CreateTrainingJobInput
    TrainingJobName: string
    HyperParameters: {string : string}
    AlgorithmSpecification: AlgorithmSpecification
    RoleArn: string
    InputDataConfig: {Channel}
    OutputDataConfig: OutputDataConfig
    ResourceConfig: ResourceConfig
    VpcConfig: VpcConfig
    StoppingCondition: StoppingCondition
    Tags: {Tag}
    EnableNetworkIsolation: boolean
    EnableInterContainerTrafficEncryption: boolean
    EnableManagedSpotTraining: boolean
    CheckpointConfig: CheckpointConfig
    DebugHookConfig: DebugHookConfig
    DebugRuleConfigurations: {DebugRuleConfiguration}
    TensorBoardOutputConfig: TensorBoardOutputConfig
    ExperimentConfig: ExperimentConfig
    ProfilerConfig: ProfilerConfig
    ProfilerRuleConfigurations: {ProfilerRuleConfiguration}
    Environment: {string : string}
    RetryStrategy: RetryStrategy
    RemoteDebugConfig: RemoteDebugConfig
    InfraCheckConfig: InfraCheckConfig
    SessionChainingConfig: SessionChainingConfig
    ServerlessJobConfig: ServerlessJobConfig
    MlflowConfig: MlflowConfig
    ModelPackageConfig: ModelPackageConfig
end

local record CreateTrainingJobOutput
    TrainingJobArn: string
end

local record CreateTrainingPlanInput
    TrainingPlanName: string
    TrainingPlanOfferingId: string
    SpareInstanceCountPerUltraServer: number
    Tags: {Tag}
end

local record CreateTrainingPlanOutput
    TrainingPlanArn: string
end

local record CreateTransformJobInput
    TransformJobName: string
    ModelName: string
    MaxConcurrentTransforms: number
    ModelClientConfig: ModelClientConfig
    MaxPayloadInMB: number
    BatchStrategy: string
    Environment: {string : string}
    TransformInput: TransformInput
    TransformOutput: TransformOutput
    DataCaptureConfig: BatchDataCaptureConfig
    TransformResources: TransformResources
    DataProcessing: DataProcessing
    Tags: {Tag}
    ExperimentConfig: ExperimentConfig
end

local record CreateTransformJobOutput
    TransformJobArn: string
end

local record CreateTrialInput
    TrialName: string
    DisplayName: string
    ExperimentName: string
    MetadataProperties: MetadataProperties
    Tags: {Tag}
end

local record CreateTrialOutput
    TrialArn: string
end

local record CreateTrialComponentInput
    TrialComponentName: string
    DisplayName: string
    Status: TrialComponentStatus
    StartTime: number
    EndTime: number
    Parameters: {string : TrialComponentParameterValue}
    InputArtifacts: {string : TrialComponentArtifact}
    OutputArtifacts: {string : TrialComponentArtifact}
    MetadataProperties: MetadataProperties
    Tags: {Tag}
end

local record CreateTrialComponentOutput
    TrialComponentArn: string
end

local record CreateUserProfileInput
    DomainId: string
    UserProfileName: string
    SingleSignOnUserIdentifier: string
    SingleSignOnUserValue: string
    Tags: {Tag}
    UserSettings: UserSettings
end

local record CreateUserProfileOutput
    UserProfileArn: string
end

local record CreateWorkforceInput
    CognitoConfig: CognitoConfig
    OidcConfig: OidcConfig
    SourceIpConfig: SourceIpConfig
    WorkforceName: string
    Tags: {Tag}
    WorkforceVpcConfig: WorkforceVpcConfigRequest
    IpAddressType: string
end

local record CreateWorkforceOutput
    WorkforceArn: string
end

local record CreateWorkteamInput
    WorkteamName: string
    WorkforceName: string
    MemberDefinitions: {MemberDefinition}
    Description: string
    NotificationConfiguration: NotificationConfiguration
    WorkerAccessConfiguration: WorkerAccessConfiguration
    Tags: {Tag}
end

local record CreateWorkteamOutput
    WorkteamArn: string
end

local record DeleteActionInput
    ActionName: string
end

local record DeleteActionOutput
    ActionArn: string
end

local record DeleteAIBenchmarkJobInput
    AIBenchmarkJobName: string
end

local record DeleteAIBenchmarkJobOutput
    AIBenchmarkJobArn: string
end

local record DeleteAIRecommendationJobInput
    AIRecommendationJobName: string
end

local record DeleteAIRecommendationJobOutput
    AIRecommendationJobArn: string
end

local record DeleteAIWorkloadConfigInput
    AIWorkloadConfigName: string
end

local record DeleteAIWorkloadConfigOutput
    AIWorkloadConfigArn: string
end

local record DeleteAlgorithmInput
    AlgorithmName: string
end

local record DeleteAlgorithmOutput
end

local record DeleteAppInput
    DomainId: string
    UserProfileName: string
    SpaceName: string
    AppType: string
    AppName: string
end

local record DeleteAppOutput
end

local record DeleteAppImageConfigInput
    AppImageConfigName: string
end

local record DeleteAppImageConfigOutput
end

local record DeleteArtifactInput
    ArtifactArn: string
    Source: ArtifactSource
end

local record DeleteArtifactOutput
    ArtifactArn: string
end

local record DeleteAssociationInput
    SourceArn: string
    DestinationArn: string
end

local record DeleteAssociationOutput
    SourceArn: string
    DestinationArn: string
end

local record DeleteClusterInput
    ClusterName: string
end

local record DeleteClusterOutput
    ClusterArn: string
end

local record DeleteClusterSchedulerConfigInput
    ClusterSchedulerConfigId: string
end

local record DeleteClusterSchedulerConfigOutput
end

local record DeleteCodeRepositoryInput
    CodeRepositoryName: string
end

local record DeleteCodeRepositoryOutput
end

local record DeleteCompilationJobInput
    CompilationJobName: string
end

local record DeleteCompilationJobOutput
end

local record DeleteComputeQuotaInput
    ComputeQuotaId: string
end

local record DeleteComputeQuotaOutput
end

local record DeleteContextInput
    ContextName: string
end

local record DeleteContextOutput
    ContextArn: string
end

local record DeleteDataQualityJobDefinitionInput
    JobDefinitionName: string
end

local record DeleteDataQualityJobDefinitionOutput
end

local record DeleteDeviceFleetInput
    DeviceFleetName: string
end

local record DeleteDeviceFleetOutput
end

local record DeleteDomainInput
    DomainId: string
    RetentionPolicy: RetentionPolicy
end

local record DeleteDomainOutput
end

local record DeleteEdgeDeploymentPlanInput
    EdgeDeploymentPlanName: string
end

local record DeleteEdgeDeploymentPlanOutput
end

local record DeleteEdgeDeploymentStageInput
    EdgeDeploymentPlanName: string
    StageName: string
end

local record DeleteEdgeDeploymentStageOutput
end

local record DeleteEndpointInput
    EndpointName: string
end

local record DeleteEndpointOutput
end

local record DeleteEndpointConfigInput
    EndpointConfigName: string
end

local record DeleteEndpointConfigOutput
end

local record DeleteExperimentInput
    ExperimentName: string
end

local record DeleteExperimentOutput
    ExperimentArn: string
end

local record DeleteFeatureGroupInput
    FeatureGroupName: string
end

local record DeleteFeatureGroupOutput
end

local record DeleteFlowDefinitionInput
    FlowDefinitionName: string
end

local record DeleteFlowDefinitionOutput
end

local record DeleteHubInput
    HubName: string
end

local record DeleteHubOutput
end

local record DeleteHubContentInput
    HubName: string
    HubContentType: string
    HubContentName: string
    HubContentVersion: string
end

local record DeleteHubContentOutput
end

local record DeleteHubContentReferenceInput
    HubName: string
    HubContentType: string
    HubContentName: string
end

local record DeleteHubContentReferenceOutput
end

local record DeleteHumanTaskUiInput
    HumanTaskUiName: string
end

local record DeleteHumanTaskUiOutput
end

local record DeleteHyperParameterTuningJobInput
    HyperParameterTuningJobName: string
end

local record DeleteHyperParameterTuningJobOutput
end

local record DeleteImageInput
    ImageName: string
end

local record DeleteImageOutput
end

local record DeleteImageVersionInput
    ImageName: string
    Version: number
    Alias: string
end

local record DeleteImageVersionOutput
end

local record DeleteInferenceComponentInput
    InferenceComponentName: string
end

local record DeleteInferenceComponentOutput
end

local record DeleteInferenceExperimentInput
    Name: string
end

local record DeleteInferenceExperimentOutput
    InferenceExperimentArn: string
end

local record DeleteMlflowAppInput
    Arn: string
end

local record DeleteMlflowAppOutput
    Arn: string
end

local record DeleteMlflowTrackingServerInput
    TrackingServerName: string
end

local record DeleteMlflowTrackingServerOutput
    TrackingServerArn: string
end

local record DeleteModelInput
    ModelName: string
end

local record DeleteModelOutput
end

local record DeleteModelBiasJobDefinitionInput
    JobDefinitionName: string
end

local record DeleteModelBiasJobDefinitionOutput
end

local record DeleteModelCardInput
    ModelCardName: string
end

local record DeleteModelCardOutput
end

local record DeleteModelExplainabilityJobDefinitionInput
    JobDefinitionName: string
end

local record DeleteModelExplainabilityJobDefinitionOutput
end

local record DeleteModelPackageInput
    ModelPackageName: string
end

local record DeleteModelPackageOutput
end

local record DeleteModelPackageGroupInput
    ModelPackageGroupName: string
end

local record DeleteModelPackageGroupOutput
end

local record DeleteModelPackageGroupPolicyInput
    ModelPackageGroupName: string
end

local record DeleteModelPackageGroupPolicyOutput
end

local record DeleteModelQualityJobDefinitionInput
    JobDefinitionName: string
end

local record DeleteModelQualityJobDefinitionOutput
end

local record DeleteMonitoringScheduleInput
    MonitoringScheduleName: string
end

local record DeleteMonitoringScheduleOutput
end

local record DeleteNotebookInstanceInput
    NotebookInstanceName: string
end

local record DeleteNotebookInstanceOutput
end

local record DeleteNotebookInstanceLifecycleConfigInput
    NotebookInstanceLifecycleConfigName: string
end

local record DeleteNotebookInstanceLifecycleConfigOutput
end

local record DeleteOptimizationJobInput
    OptimizationJobName: string
end

local record DeleteOptimizationJobOutput
end

local record DeletePartnerAppInput
    Arn: string
    ClientToken: string
end

local record DeletePartnerAppOutput
    Arn: string
end

local record DeletePipelineInput
    PipelineName: string
    ClientRequestToken: string
end

local record DeletePipelineOutput
    PipelineArn: string
end

local record DeleteProcessingJobInput
    ProcessingJobName: string
end

local record DeleteProcessingJobOutput
end

local record DeleteProjectInput
    ProjectName: string
end

local record DeleteProjectOutput
end

local record DeleteSpaceInput
    DomainId: string
    SpaceName: string
end

local record DeleteSpaceOutput
end

local record DeleteStudioLifecycleConfigInput
    StudioLifecycleConfigName: string
end

local record DeleteStudioLifecycleConfigOutput
end

local record DeleteTagsInput
    ResourceArn: string
    TagKeys: {string}
end

local record DeleteTagsOutput
end

local record DeleteTrainingJobInput
    TrainingJobName: string
end

local record DeleteTrainingJobOutput
end

local record DeleteTrialInput
    TrialName: string
end

local record DeleteTrialOutput
    TrialArn: string
end

local record DeleteTrialComponentInput
    TrialComponentName: string
end

local record DeleteTrialComponentOutput
    TrialComponentArn: string
end

local record DeleteUserProfileInput
    DomainId: string
    UserProfileName: string
end

local record DeleteUserProfileOutput
end

local record DeleteWorkforceInput
    WorkforceName: string
end

local record DeleteWorkforceOutput
end

local record DeleteWorkteamInput
    WorkteamName: string
end

local record DeleteWorkteamOutput
    Success: boolean
end

local record DeregisterDevicesInput
    DeviceFleetName: string
    DeviceNames: {string}
end

local record DeregisterDevicesOutput
end

local record DescribeActionInput
    ActionName: string
end

local record DescribeActionOutput
    ActionName: string
    ActionArn: string
    Source: ActionSource
    ActionType: string
    Description: string
    Status: string
    Properties: {string : string}
    CreationTime: number
    CreatedBy: UserContext
    LastModifiedTime: number
    LastModifiedBy: UserContext
    MetadataProperties: MetadataProperties
    LineageGroupArn: string
end

local record DescribeAIBenchmarkJobInput
    AIBenchmarkJobName: string
end

local record DescribeAIBenchmarkJobOutput
    AIBenchmarkJobName: string
    AIBenchmarkJobArn: string
    AIBenchmarkJobStatus: string
    FailureReason: string
    BenchmarkTarget: AIBenchmarkTarget
    OutputConfig: AIBenchmarkOutputResult
    AIWorkloadConfigIdentifier: string
    RoleArn: string
    NetworkConfig: AIBenchmarkNetworkConfig
    CreationTime: number
    StartTime: number
    EndTime: number
    Tags: {Tag}
end

local record DescribeAIRecommendationJobInput
    AIRecommendationJobName: string
end

local record DescribeAIRecommendationJobOutput
    AIRecommendationJobName: string
    AIRecommendationJobArn: string
    AIRecommendationJobStatus: string
    FailureReason: string
    ModelSource: AIModelSource
    OutputConfig: AIRecommendationOutputResult
    InferenceSpecification: AIRecommendationInferenceSpecification
    AIWorkloadConfigIdentifier: string
    OptimizeModel: boolean
    PerformanceTarget: AIRecommendationPerformanceTarget
    Recommendations: {AIRecommendation}
    RoleArn: string
    ComputeSpec: AIRecommendationComputeSpec
    CreationTime: number
    StartTime: number
    EndTime: number
    Tags: {Tag}
end

local record DescribeAIWorkloadConfigInput
    AIWorkloadConfigName: string
end

local record DescribeAIWorkloadConfigOutput
    AIWorkloadConfigName: string
    AIWorkloadConfigArn: string
    DatasetConfig: AIDatasetConfig
    AIWorkloadConfigs: AIWorkloadConfigs
    Tags: {Tag}
    CreationTime: number
end

local record DescribeAlgorithmInput
    AlgorithmName: string
end

local record DescribeAlgorithmOutput
    AlgorithmName: string
    AlgorithmArn: string
    AlgorithmDescription: string
    CreationTime: number
    TrainingSpecification: TrainingSpecification
    InferenceSpecification: InferenceSpecification
    ValidationSpecification: AlgorithmValidationSpecification
    AlgorithmStatus: string
    AlgorithmStatusDetails: AlgorithmStatusDetails
    ProductId: string
    CertifyForMarketplace: boolean
end

local record DescribeAppInput
    DomainId: string
    UserProfileName: string
    SpaceName: string
    AppType: string
    AppName: string
end

local record DescribeAppOutput
    AppArn: string
    AppType: string
    AppName: string
    DomainId: string
    UserProfileName: string
    SpaceName: string
    Status: string
    EffectiveTrustedIdentityPropagationStatus: string
    RecoveryMode: boolean
    LastHealthCheckTimestamp: number
    LastUserActivityTimestamp: number
    CreationTime: number
    FailureReason: string
    ResourceSpec: ResourceSpec
    BuiltInLifecycleConfigArn: string
end

local record DescribeAppImageConfigInput
    AppImageConfigName: string
end

local record DescribeAppImageConfigOutput
    AppImageConfigArn: string
    AppImageConfigName: string
    CreationTime: number
    LastModifiedTime: number
    KernelGatewayImageConfig: KernelGatewayImageConfig
    JupyterLabAppImageConfig: JupyterLabAppImageConfig
    CodeEditorAppImageConfig: CodeEditorAppImageConfig
end

local record DescribeArtifactInput
    ArtifactArn: string
end

local record DescribeArtifactOutput
    ArtifactName: string
    ArtifactArn: string
    Source: ArtifactSource
    ArtifactType: string
    Properties: {string : string}
    CreationTime: number
    CreatedBy: UserContext
    LastModifiedTime: number
    LastModifiedBy: UserContext
    MetadataProperties: MetadataProperties
    LineageGroupArn: string
end

local record DescribeAutoMLJobInput
    AutoMLJobName: string
end

local record DescribeAutoMLJobOutput
    AutoMLJobName: string
    AutoMLJobArn: string
    InputDataConfig: {AutoMLChannel}
    OutputDataConfig: AutoMLOutputDataConfig
    RoleArn: string
    AutoMLJobObjective: AutoMLJobObjective
    ProblemType: string
    AutoMLJobConfig: AutoMLJobConfig
    CreationTime: number
    EndTime: number
    LastModifiedTime: number
    FailureReason: string
    PartialFailureReasons: {AutoMLPartialFailureReason}
    BestCandidate: AutoMLCandidate
    AutoMLJobStatus: string
    AutoMLJobSecondaryStatus: string
    GenerateCandidateDefinitionsOnly: boolean
    AutoMLJobArtifacts: AutoMLJobArtifacts
    ResolvedAttributes: ResolvedAttributes
    ModelDeployConfig: ModelDeployConfig
    ModelDeployResult: ModelDeployResult
end

local record DescribeAutoMLJobV2Input
    AutoMLJobName: string
end

local record DescribeAutoMLJobV2Output
    AutoMLJobName: string
    AutoMLJobArn: string
    AutoMLJobInputDataConfig: {AutoMLJobChannel}
    OutputDataConfig: AutoMLOutputDataConfig
    RoleArn: string
    AutoMLJobObjective: AutoMLJobObjective
    AutoMLProblemTypeConfig: AutoMLProblemTypeConfig
    AutoMLProblemTypeConfigName: string
    CreationTime: number
    EndTime: number
    LastModifiedTime: number
    FailureReason: string
    PartialFailureReasons: {AutoMLPartialFailureReason}
    BestCandidate: AutoMLCandidate
    AutoMLJobStatus: string
    AutoMLJobSecondaryStatus: string
    AutoMLJobArtifacts: AutoMLJobArtifacts
    ResolvedAttributes: AutoMLResolvedAttributes
    ModelDeployConfig: ModelDeployConfig
    ModelDeployResult: ModelDeployResult
    DataSplitConfig: AutoMLDataSplitConfig
    SecurityConfig: AutoMLSecurityConfig
    AutoMLComputeConfig: AutoMLComputeConfig
end

local record DescribeClusterInput
    ClusterName: string
end

local record DescribeClusterOutput
    ClusterArn: string
    ClusterName: string
    ClusterStatus: string
    CreationTime: number
    FailureMessage: string
    InstanceGroups: {ClusterInstanceGroupDetails}
    RestrictedInstanceGroups: {ClusterRestrictedInstanceGroupDetails}
    VpcConfig: VpcConfig
    Orchestrator: ClusterOrchestrator
    TieredStorageConfig: ClusterTieredStorageConfig
    NodeRecovery: string
    NodeProvisioningMode: string
    ClusterRole: string
    AutoScaling: ClusterAutoScalingConfigOutput
end

local record DescribeClusterEventInput
    EventId: string
    ClusterName: string
end

local record DescribeClusterEventOutput
    EventDetails: ClusterEventDetail
end

local record DescribeClusterNodeInput
    ClusterName: string
    NodeId: string
    NodeLogicalId: string
end

local record DescribeClusterNodeOutput
    NodeDetails: ClusterNodeDetails
end

local record DescribeClusterSchedulerConfigInput
    ClusterSchedulerConfigId: string
    ClusterSchedulerConfigVersion: number
end

local record DescribeClusterSchedulerConfigOutput
    ClusterSchedulerConfigArn: string
    ClusterSchedulerConfigId: string
    Name: string
    ClusterSchedulerConfigVersion: number
    Status: string
    FailureReason: string
    StatusDetails: {string : string}
    ClusterArn: string
    SchedulerConfig: SchedulerConfig
    Description: string
    CreationTime: number
    CreatedBy: UserContext
    LastModifiedTime: number
    LastModifiedBy: UserContext
end

local record DescribeCodeRepositoryInput
    CodeRepositoryName: string
end

local record DescribeCodeRepositoryOutput
    CodeRepositoryName: string
    CodeRepositoryArn: string
    CreationTime: number
    LastModifiedTime: number
    GitConfig: GitConfig
end

local record DescribeCompilationJobInput
    CompilationJobName: string
end

local record DescribeCompilationJobOutput
    CompilationJobName: string
    CompilationJobArn: string
    CompilationJobStatus: string
    CompilationStartTime: number
    CompilationEndTime: number
    StoppingCondition: StoppingCondition
    InferenceImage: string
    ModelPackageVersionArn: string
    CreationTime: number
    LastModifiedTime: number
    FailureReason: string
    ModelArtifacts: ModelArtifacts
    ModelDigests: ModelDigests
    RoleArn: string
    InputConfig: InputConfig
    OutputConfig: OutputConfig
    VpcConfig: NeoVpcConfig
    DerivedInformation: DerivedInformation
end

local record DescribeComputeQuotaInput
    ComputeQuotaId: string
    ComputeQuotaVersion: number
end

local record DescribeComputeQuotaOutput
    ComputeQuotaArn: string
    ComputeQuotaId: string
    Name: string
    Description: string
    ComputeQuotaVersion: number
    Status: string
    FailureReason: string
    ClusterArn: string
    ComputeQuotaConfig: ComputeQuotaConfig
    ComputeQuotaTarget: ComputeQuotaTarget
    ActivationState: string
    CreationTime: number
    CreatedBy: UserContext
    LastModifiedTime: number
    LastModifiedBy: UserContext
end

local record DescribeContextInput
    ContextName: string
end

local record DescribeContextOutput
    ContextName: string
    ContextArn: string
    Source: ContextSource
    ContextType: string
    Description: string
    Properties: {string : string}
    CreationTime: number
    CreatedBy: UserContext
    LastModifiedTime: number
    LastModifiedBy: UserContext
    LineageGroupArn: string
end

local record DescribeDataQualityJobDefinitionInput
    JobDefinitionName: string
end

local record DescribeDataQualityJobDefinitionOutput
    JobDefinitionArn: string
    JobDefinitionName: string
    CreationTime: number
    DataQualityBaselineConfig: DataQualityBaselineConfig
    DataQualityAppSpecification: DataQualityAppSpecification
    DataQualityJobInput: DataQualityJobInput
    DataQualityJobOutputConfig: MonitoringOutputConfig
    JobResources: MonitoringResources
    NetworkConfig: MonitoringNetworkConfig
    RoleArn: string
    StoppingCondition: MonitoringStoppingCondition
end

local record DescribeDeviceInput
    NextToken: string
    DeviceName: string
    DeviceFleetName: string
end

local record DescribeDeviceOutput
    DeviceArn: string
    DeviceName: string
    Description: string
    DeviceFleetName: string
    IotThingName: string
    RegistrationTime: number
    LatestHeartbeat: number
    Models: {EdgeModel}
    MaxModels: number
    NextToken: string
    AgentVersion: string
end

local record DescribeDeviceFleetInput
    DeviceFleetName: string
end

local record DescribeDeviceFleetOutput
    DeviceFleetName: string
    DeviceFleetArn: string
    OutputConfig: EdgeOutputConfig
    Description: string
    CreationTime: number
    LastModifiedTime: number
    RoleArn: string
    IotRoleAlias: string
end

local record DescribeDomainInput
    DomainId: string
end

local record DescribeDomainOutput
    DomainArn: string
    DomainId: string
    DomainName: string
    HomeEfsFileSystemId: string
    SingleSignOnManagedApplicationInstanceId: string
    SingleSignOnApplicationArn: string
    Status: string
    CreationTime: number
    LastModifiedTime: number
    FailureReason: string
    SecurityGroupIdForDomainBoundary: string
    AuthMode: string
    DefaultUserSettings: UserSettings
    DomainSettings: DomainSettings
    AppNetworkAccessType: string
    HomeEfsFileSystemKmsKeyId: string
    SubnetIds: {string}
    Url: string
    VpcId: string
    KmsKeyId: string
    AppSecurityGroupManagement: string
    TagPropagation: string
    DefaultSpaceSettings: DefaultSpaceSettings
end

local record DescribeEdgeDeploymentPlanInput
    EdgeDeploymentPlanName: string
    NextToken: string
    MaxResults: number
end

local record DescribeEdgeDeploymentPlanOutput
    EdgeDeploymentPlanArn: string
    EdgeDeploymentPlanName: string
    ModelConfigs: {EdgeDeploymentModelConfig}
    DeviceFleetName: string
    EdgeDeploymentSuccess: number
    EdgeDeploymentPending: number
    EdgeDeploymentFailed: number
    Stages: {DeploymentStageStatusSummary}
    NextToken: string
    CreationTime: number
    LastModifiedTime: number
end

local record DescribeEdgePackagingJobInput
    EdgePackagingJobName: string
end

local record DescribeEdgePackagingJobOutput
    EdgePackagingJobArn: string
    EdgePackagingJobName: string
    CompilationJobName: string
    ModelName: string
    ModelVersion: string
    RoleArn: string
    OutputConfig: EdgeOutputConfig
    ResourceKey: string
    EdgePackagingJobStatus: string
    EdgePackagingJobStatusMessage: string
    CreationTime: number
    LastModifiedTime: number
    ModelArtifact: string
    ModelSignature: string
    PresetDeploymentOutput: EdgePresetDeploymentOutput
end

local record DescribeEndpointInput
    EndpointName: string
end

local record DescribeEndpointOutput
    EndpointName: string
    EndpointArn: string
    EndpointConfigName: string
    ProductionVariants: {ProductionVariantSummary}
    DataCaptureConfig: DataCaptureConfigSummary
    EndpointStatus: string
    FailureReason: string
    CreationTime: number
    LastModifiedTime: number
    LastDeploymentConfig: DeploymentConfig
    AsyncInferenceConfig: AsyncInferenceConfig
    PendingDeploymentSummary: PendingDeploymentSummary
    ExplainerConfig: ExplainerConfig
    ShadowProductionVariants: {ProductionVariantSummary}
    MetricsConfig: MetricsConfig
end

local record DescribeEndpointConfigInput
    EndpointConfigName: string
end

local record DescribeEndpointConfigOutput
    EndpointConfigName: string
    EndpointConfigArn: string
    ProductionVariants: {ProductionVariant}
    DataCaptureConfig: DataCaptureConfig
    KmsKeyId: string
    CreationTime: number
    AsyncInferenceConfig: AsyncInferenceConfig
    ExplainerConfig: ExplainerConfig
    ShadowProductionVariants: {ProductionVariant}
    ExecutionRoleArn: string
    VpcConfig: VpcConfig
    EnableNetworkIsolation: boolean
    MetricsConfig: MetricsConfig
end

local record DescribeExperimentInput
    ExperimentName: string
end

local record DescribeExperimentOutput
    ExperimentName: string
    ExperimentArn: string
    DisplayName: string
    Source: ExperimentSource
    Description: string
    CreationTime: number
    CreatedBy: UserContext
    LastModifiedTime: number
    LastModifiedBy: UserContext
end

local record DescribeFeatureGroupInput
    FeatureGroupName: string
    NextToken: string
end

local record DescribeFeatureGroupOutput
    FeatureGroupArn: string
    FeatureGroupName: string
    RecordIdentifierFeatureName: string
    EventTimeFeatureName: string
    FeatureDefinitions: {FeatureDefinition}
    CreationTime: number
    LastModifiedTime: number
    OnlineStoreConfig: OnlineStoreConfig
    OfflineStoreConfig: OfflineStoreConfig
    ThroughputConfig: ThroughputConfigDescription
    RoleArn: string
    FeatureGroupStatus: string
    OfflineStoreStatus: OfflineStoreStatus
    LastUpdateStatus: LastUpdateStatus
    FailureReason: string
    Description: string
    NextToken: string
    OnlineStoreTotalSizeBytes: number
end

local record DescribeFeatureMetadataInput
    FeatureGroupName: string
    FeatureName: string
end

local record DescribeFeatureMetadataOutput
    FeatureGroupArn: string
    FeatureGroupName: string
    FeatureName: string
    FeatureType: string
    CreationTime: number
    LastModifiedTime: number
    Description: string
    Parameters: {FeatureParameter}
end

local record DescribeFlowDefinitionInput
    FlowDefinitionName: string
end

local record DescribeFlowDefinitionOutput
    FlowDefinitionArn: string
    FlowDefinitionName: string
    FlowDefinitionStatus: string
    CreationTime: number
    HumanLoopRequestSource: HumanLoopRequestSource
    HumanLoopActivationConfig: HumanLoopActivationConfig
    HumanLoopConfig: HumanLoopConfig
    OutputConfig: FlowDefinitionOutputConfig
    RoleArn: string
    FailureReason: string
end

local record DescribeHubInput
    HubName: string
end

local record DescribeHubOutput
    HubName: string
    HubArn: string
    HubDisplayName: string
    HubDescription: string
    HubSearchKeywords: {string}
    S3StorageConfig: HubS3StorageConfig
    HubStatus: string
    FailureReason: string
    CreationTime: number
    LastModifiedTime: number
end

local record DescribeHubContentInput
    HubName: string
    HubContentType: string
    HubContentName: string
    HubContentVersion: string
end

local record DescribeHubContentOutput
    HubContentName: string
    HubContentArn: string
    HubContentVersion: string
    HubContentType: string
    DocumentSchemaVersion: string
    HubName: string
    HubArn: string
    HubContentDisplayName: string
    HubContentDescription: string
    HubContentMarkdown: string
    HubContentDocument: string
    SageMakerPublicHubContentArn: string
    ReferenceMinVersion: string
    SupportStatus: string
    HubContentSearchKeywords: {string}
    HubContentDependencies: {HubContentDependency}
    HubContentStatus: string
    FailureReason: string
    CreationTime: number
    LastModifiedTime: number
end

local record DescribeHumanTaskUiInput
    HumanTaskUiName: string
end

local record DescribeHumanTaskUiOutput
    HumanTaskUiArn: string
    HumanTaskUiName: string
    HumanTaskUiStatus: string
    CreationTime: number
    UiTemplate: UiTemplateInfo
end

local record DescribeHyperParameterTuningJobInput
    HyperParameterTuningJobName: string
end

local record DescribeHyperParameterTuningJobOutput
    HyperParameterTuningJobName: string
    HyperParameterTuningJobArn: string
    HyperParameterTuningJobConfig: HyperParameterTuningJobConfig
    TrainingJobDefinition: HyperParameterTrainingJobDefinition
    TrainingJobDefinitions: {HyperParameterTrainingJobDefinition}
    HyperParameterTuningJobStatus: string
    CreationTime: number
    HyperParameterTuningEndTime: number
    LastModifiedTime: number
    TrainingJobStatusCounters: TrainingJobStatusCounters
    ObjectiveStatusCounters: ObjectiveStatusCounters
    BestTrainingJob: HyperParameterTrainingJobSummary
    OverallBestTrainingJob: HyperParameterTrainingJobSummary
    WarmStartConfig: HyperParameterTuningJobWarmStartConfig
    Autotune: Autotune
    FailureReason: string
    TuningJobCompletionDetails: HyperParameterTuningJobCompletionDetails
    ConsumedResources: HyperParameterTuningJobConsumedResources
end

local record DescribeImageInput
    ImageName: string
end

local record DescribeImageOutput
    CreationTime: number
    Description: string
    DisplayName: string
    FailureReason: string
    ImageArn: string
    ImageName: string
    ImageStatus: string
    LastModifiedTime: number
    RoleArn: string
end

local record DescribeImageVersionInput
    ImageName: string
    Version: number
    Alias: string
end

local record DescribeImageVersionOutput
    BaseImage: string
    ContainerImage: string
    CreationTime: number
    FailureReason: string
    ImageArn: string
    ImageVersionArn: string
    ImageVersionStatus: string
    LastModifiedTime: number
    Version: number
    VendorGuidance: string
    JobType: string
    MLFramework: string
    ProgrammingLang: string
    Processor: string
    Horovod: boolean
    ReleaseNotes: string
end

local record DescribeInferenceComponentInput
    InferenceComponentName: string
end

local record DescribeInferenceComponentOutput
    InferenceComponentName: string
    InferenceComponentArn: string
    EndpointName: string
    EndpointArn: string
    VariantName: string
    FailureReason: string
    Specification: InferenceComponentSpecificationSummary
    Specifications: {InferenceComponentSpecificationSummary}
    RuntimeConfig: InferenceComponentRuntimeConfigSummary
    CreationTime: number
    LastModifiedTime: number
    InferenceComponentStatus: string
    LastDeploymentConfig: InferenceComponentDeploymentConfig
end

local record DescribeInferenceExperimentInput
    Name: string
end

local record DescribeInferenceExperimentOutput
    Arn: string
    Name: string
    Type: string
    Schedule: InferenceExperimentSchedule
    Status: string
    StatusReason: string
    Description: string
    CreationTime: number
    CompletionTime: number
    LastModifiedTime: number
    RoleArn: string
    EndpointMetadata: EndpointMetadata
    ModelVariants: {ModelVariantConfigSummary}
    DataStorageConfig: InferenceExperimentDataStorageConfig
    ShadowModeConfig: ShadowModeConfig
    KmsKey: string
end

local record DescribeInferenceRecommendationsJobInput
    JobName: string
end

local record DescribeInferenceRecommendationsJobOutput
    JobName: string
    JobDescription: string
    JobType: string
    JobArn: string
    RoleArn: string
    Status: string
    CreationTime: number
    CompletionTime: number
    LastModifiedTime: number
    FailureReason: string
    InputConfig: RecommendationJobInputConfig
    StoppingConditions: RecommendationJobStoppingConditions
    InferenceRecommendations: {InferenceRecommendation}
    EndpointPerformances: {EndpointPerformance}
end

local record DescribeLabelingJobInput
    LabelingJobName: string
end

local record DescribeLabelingJobOutput
    LabelingJobStatus: string
    LabelCounters: LabelCounters
    FailureReason: string
    CreationTime: number
    LastModifiedTime: number
    JobReferenceCode: string
    LabelingJobName: string
    LabelingJobArn: string
    LabelAttributeName: string
    InputConfig: LabelingJobInputConfig
    OutputConfig: LabelingJobOutputConfig
    RoleArn: string
    LabelCategoryConfigS3Uri: string
    StoppingConditions: LabelingJobStoppingConditions
    LabelingJobAlgorithmsConfig: LabelingJobAlgorithmsConfig
    HumanTaskConfig: HumanTaskConfig
    Tags: {Tag}
    LabelingJobOutput: LabelingJobOutput
end

local record DescribeLineageGroupInput
    LineageGroupName: string
end

local record DescribeLineageGroupOutput
    LineageGroupName: string
    LineageGroupArn: string
    DisplayName: string
    Description: string
    CreationTime: number
    CreatedBy: UserContext
    LastModifiedTime: number
    LastModifiedBy: UserContext
end

local record DescribeMlflowAppInput
    Arn: string
end

local record DescribeMlflowAppOutput
    Arn: string
    Name: string
    ArtifactStoreUri: string
    MlflowVersion: string
    RoleArn: string
    Status: string
    ModelRegistrationMode: string
    AccountDefaultStatus: string
    DefaultDomainIdList: {string}
    CreationTime: number
    CreatedBy: UserContext
    LastModifiedTime: number
    LastModifiedBy: UserContext
    WeeklyMaintenanceWindowStart: string
    MaintenanceStatus: string
end

local record DescribeMlflowTrackingServerInput
    TrackingServerName: string
end

local record DescribeMlflowTrackingServerOutput
    TrackingServerArn: string
    TrackingServerName: string
    ArtifactStoreUri: string
    TrackingServerSize: string
    MlflowVersion: string
    RoleArn: string
    TrackingServerStatus: string
    TrackingServerMaintenanceStatus: string
    IsActive: string
    TrackingServerUrl: string
    WeeklyMaintenanceWindowStart: string
    AutomaticModelRegistration: boolean
    CreationTime: number
    CreatedBy: UserContext
    LastModifiedTime: number
    LastModifiedBy: UserContext
    S3BucketOwnerAccountId: string
    S3BucketOwnerVerification: boolean
end

local record DescribeModelInput
    ModelName: string
end

local record DescribeModelOutput
    ModelName: string
    PrimaryContainer: ContainerDefinition
    Containers: {ContainerDefinition}
    InferenceExecutionConfig: InferenceExecutionConfig
    ExecutionRoleArn: string
    VpcConfig: VpcConfig
    CreationTime: number
    ModelArn: string
    EnableNetworkIsolation: boolean
    DeploymentRecommendation: DeploymentRecommendation
end

local record DescribeModelBiasJobDefinitionInput
    JobDefinitionName: string
end

local record DescribeModelBiasJobDefinitionOutput
    JobDefinitionArn: string
    JobDefinitionName: string
    CreationTime: number
    ModelBiasBaselineConfig: ModelBiasBaselineConfig
    ModelBiasAppSpecification: ModelBiasAppSpecification
    ModelBiasJobInput: ModelBiasJobInput
    ModelBiasJobOutputConfig: MonitoringOutputConfig
    JobResources: MonitoringResources
    NetworkConfig: MonitoringNetworkConfig
    RoleArn: string
    StoppingCondition: MonitoringStoppingCondition
end

local record DescribeModelCardInput
    ModelCardName: string
    ModelCardVersion: number
end

local record DescribeModelCardOutput
    ModelCardArn: string
    ModelCardName: string
    ModelCardVersion: number
    Content: string
    ModelCardStatus: string
    SecurityConfig: ModelCardSecurityConfig
    CreationTime: number
    CreatedBy: UserContext
    LastModifiedTime: number
    LastModifiedBy: UserContext
    ModelCardProcessingStatus: string
end

local record DescribeModelCardExportJobInput
    ModelCardExportJobArn: string
end

local record DescribeModelCardExportJobOutput
    ModelCardExportJobName: string
    ModelCardExportJobArn: string
    Status: string
    ModelCardName: string
    ModelCardVersion: number
    OutputConfig: ModelCardExportOutputConfig
    CreatedAt: number
    LastModifiedAt: number
    FailureReason: string
    ExportArtifacts: ModelCardExportArtifacts
end

local record DescribeModelExplainabilityJobDefinitionInput
    JobDefinitionName: string
end

local record DescribeModelExplainabilityJobDefinitionOutput
    JobDefinitionArn: string
    JobDefinitionName: string
    CreationTime: number
    ModelExplainabilityBaselineConfig: ModelExplainabilityBaselineConfig
    ModelExplainabilityAppSpecification: ModelExplainabilityAppSpecification
    ModelExplainabilityJobInput: ModelExplainabilityJobInput
    ModelExplainabilityJobOutputConfig: MonitoringOutputConfig
    JobResources: MonitoringResources
    NetworkConfig: MonitoringNetworkConfig
    RoleArn: string
    StoppingCondition: MonitoringStoppingCondition
end

local record DescribeModelPackageInput
    ModelPackageName: string
end

local record DescribeModelPackageOutput
    ModelPackageName: string
    ModelPackageGroupName: string
    ModelPackageVersion: number
    ModelPackageRegistrationType: string
    ModelPackageArn: string
    ModelPackageDescription: string
    CreationTime: number
    InferenceSpecification: InferenceSpecification
    SourceAlgorithmSpecification: SourceAlgorithmSpecification
    ValidationSpecification: ModelPackageValidationSpecification
    ModelPackageStatus: string
    ModelPackageStatusDetails: ModelPackageStatusDetails
    CertifyForMarketplace: boolean
    ModelApprovalStatus: string
    CreatedBy: UserContext
    MetadataProperties: MetadataProperties
    ModelMetrics: ModelMetrics
    LastModifiedTime: number
    LastModifiedBy: UserContext
    ApprovalDescription: string
    Domain: string
    Task: string
    SamplePayloadUrl: string
    CustomerMetadataProperties: {string : string}
    DriftCheckBaselines: DriftCheckBaselines
    AdditionalInferenceSpecifications: {AdditionalInferenceSpecificationDefinition}
    SkipModelValidation: string
    SourceUri: string
    SecurityConfig: ModelPackageSecurityConfig
    ModelCard: ModelPackageModelCard
    ModelLifeCycle: ModelLifeCycle
end

local record DescribeModelPackageGroupInput
    ModelPackageGroupName: string
end

local record DescribeModelPackageGroupOutput
    ModelPackageGroupName: string
    ModelPackageGroupArn: string
    ModelPackageGroupDescription: string
    CreationTime: number
    CreatedBy: UserContext
    ModelPackageGroupStatus: string
end

local record DescribeModelQualityJobDefinitionInput
    JobDefinitionName: string
end

local record DescribeModelQualityJobDefinitionOutput
    JobDefinitionArn: string
    JobDefinitionName: string
    CreationTime: number
    ModelQualityBaselineConfig: ModelQualityBaselineConfig
    ModelQualityAppSpecification: ModelQualityAppSpecification
    ModelQualityJobInput: ModelQualityJobInput
    ModelQualityJobOutputConfig: MonitoringOutputConfig
    JobResources: MonitoringResources
    NetworkConfig: MonitoringNetworkConfig
    RoleArn: string
    StoppingCondition: MonitoringStoppingCondition
end

local record DescribeMonitoringScheduleInput
    MonitoringScheduleName: string
end

local record DescribeMonitoringScheduleOutput
    MonitoringScheduleArn: string
    MonitoringScheduleName: string
    MonitoringScheduleStatus: string
    MonitoringType: string
    FailureReason: string
    CreationTime: number
    LastModifiedTime: number
    MonitoringScheduleConfig: MonitoringScheduleConfig
    EndpointName: string
    LastMonitoringExecutionSummary: MonitoringExecutionSummary
end

local record DescribeNotebookInstanceInput
    NotebookInstanceName: string
end

local record DescribeNotebookInstanceOutput
    NotebookInstanceArn: string
    NotebookInstanceName: string
    NotebookInstanceStatus: string
    FailureReason: string
    Url: string
    InstanceType: string
    IpAddressType: string
    SubnetId: string
    SecurityGroups: {string}
    RoleArn: string
    KmsKeyId: string
    NetworkInterfaceId: string
    LastModifiedTime: number
    CreationTime: number
    NotebookInstanceLifecycleConfigName: string
    DirectInternetAccess: string
    VolumeSizeInGB: number
    AcceleratorTypes: {string}
    DefaultCodeRepository: string
    AdditionalCodeRepositories: {string}
    RootAccess: string
    PlatformIdentifier: string
    InstanceMetadataServiceConfiguration: InstanceMetadataServiceConfiguration
end

local record DescribeNotebookInstanceLifecycleConfigInput
    NotebookInstanceLifecycleConfigName: string
end

local record DescribeNotebookInstanceLifecycleConfigOutput
    NotebookInstanceLifecycleConfigArn: string
    NotebookInstanceLifecycleConfigName: string
    OnCreate: {NotebookInstanceLifecycleHook}
    OnStart: {NotebookInstanceLifecycleHook}
    LastModifiedTime: number
    CreationTime: number
end

local record DescribeOptimizationJobInput
    OptimizationJobName: string
end

local record DescribeOptimizationJobOutput
    OptimizationJobArn: string
    OptimizationJobStatus: string
    OptimizationStartTime: number
    OptimizationEndTime: number
    CreationTime: number
    LastModifiedTime: number
    FailureReason: string
    OptimizationJobName: string
    ModelSource: OptimizationJobModelSource
    OptimizationEnvironment: {string : string}
    DeploymentInstanceType: string
    MaxInstanceCount: number
    OptimizationConfigs: {OptimizationConfig}
    OutputConfig: OptimizationJobOutputConfig
    OptimizationOutput: OptimizationOutput
    RoleArn: string
    StoppingCondition: StoppingCondition
    VpcConfig: OptimizationVpcConfig
end

local record DescribePartnerAppInput
    Arn: string
    IncludeAvailableUpgrade: boolean
end

local record DescribePartnerAppOutput
    Arn: string
    Name: string
    Type: string
    Status: string
    CreationTime: number
    LastModifiedTime: number
    ExecutionRoleArn: string
    KmsKeyId: string
    BaseUrl: string
    MaintenanceConfig: PartnerAppMaintenanceConfig
    Tier: string
    Version: string
    ApplicationConfig: PartnerAppConfig
    AuthType: string
    EnableIamSessionBasedIdentity: boolean
    Error: ErrorInfo
    EnableAutoMinorVersionUpgrade: boolean
    CurrentVersionEolDate: number
    AvailableUpgrade: AvailableUpgrade
end

local record DescribePipelineInput
    PipelineName: string
    PipelineVersionId: number
end

local record DescribePipelineOutput
    PipelineArn: string
    PipelineName: string
    PipelineDisplayName: string
    PipelineDefinition: string
    PipelineDescription: string
    RoleArn: string
    PipelineStatus: string
    CreationTime: number
    LastModifiedTime: number
    LastRunTime: number
    CreatedBy: UserContext
    LastModifiedBy: UserContext
    ParallelismConfiguration: ParallelismConfiguration
    PipelineVersionDisplayName: string
    PipelineVersionDescription: string
end

local record DescribePipelineDefinitionForExecutionInput
    PipelineExecutionArn: string
end

local record DescribePipelineDefinitionForExecutionOutput
    PipelineDefinition: string
    CreationTime: number
end

local record DescribePipelineExecutionInput
    PipelineExecutionArn: string
end

local record DescribePipelineExecutionOutput
    PipelineArn: string
    PipelineExecutionArn: string
    PipelineExecutionDisplayName: string
    PipelineExecutionStatus: string
    PipelineExecutionDescription: string
    PipelineExperimentConfig: PipelineExperimentConfig
    FailureReason: string
    CreationTime: number
    LastModifiedTime: number
    CreatedBy: UserContext
    LastModifiedBy: UserContext
    ParallelismConfiguration: ParallelismConfiguration
    SelectiveExecutionConfig: SelectiveExecutionConfig
    PipelineVersionId: number
    MLflowConfig: MLflowConfiguration
end

local record DescribeProcessingJobInput
    ProcessingJobName: string
end

local record DescribeProcessingJobOutput
    ProcessingInputs: {ProcessingInput}
    ProcessingOutputConfig: ProcessingOutputConfig
    ProcessingJobName: string
    ProcessingResources: ProcessingResources
    StoppingCondition: ProcessingStoppingCondition
    AppSpecification: AppSpecification
    Environment: {string : string}
    NetworkConfig: NetworkConfig
    RoleArn: string
    ExperimentConfig: ExperimentConfig
    ProcessingJobArn: string
    ProcessingJobStatus: string
    ExitMessage: string
    FailureReason: string
    ProcessingEndTime: number
    ProcessingStartTime: number
    LastModifiedTime: number
    CreationTime: number
    MonitoringScheduleArn: string
    AutoMLJobArn: string
    TrainingJobArn: string
end

local record DescribeProjectInput
    ProjectName: string
end

local record DescribeProjectOutput
    ProjectArn: string
    ProjectName: string
    ProjectId: string
    ProjectDescription: string
    ServiceCatalogProvisioningDetails: ServiceCatalogProvisioningDetails
    ServiceCatalogProvisionedProductDetails: ServiceCatalogProvisionedProductDetails
    ProjectStatus: string
    TemplateProviderDetails: {TemplateProviderDetail}
    CreatedBy: UserContext
    CreationTime: number
    LastModifiedTime: number
    LastModifiedBy: UserContext
end

local record DescribeReservedCapacityInput
    ReservedCapacityArn: string
end

local record DescribeReservedCapacityOutput
    ReservedCapacityArn: string
    ReservedCapacityType: string
    Status: string
    AvailabilityZone: string
    DurationHours: number
    DurationMinutes: number
    StartTime: number
    EndTime: number
    InstanceType: string
    TotalInstanceCount: number
    AvailableInstanceCount: number
    InUseInstanceCount: number
    UltraServerSummary: UltraServerSummary
end

local record DescribeSpaceInput
    DomainId: string
    SpaceName: string
end

local record DescribeSpaceOutput
    DomainId: string
    SpaceArn: string
    SpaceName: string
    HomeEfsFileSystemUid: string
    Status: string
    LastModifiedTime: number
    CreationTime: number
    FailureReason: string
    SpaceSettings: SpaceSettings
    OwnershipSettings: OwnershipSettings
    SpaceSharingSettings: SpaceSharingSettings
    SpaceDisplayName: string
    Url: string
end

local record DescribeStudioLifecycleConfigInput
    StudioLifecycleConfigName: string
end

local record DescribeStudioLifecycleConfigOutput
    StudioLifecycleConfigArn: string
    StudioLifecycleConfigName: string
    CreationTime: number
    LastModifiedTime: number
    StudioLifecycleConfigContent: string
    StudioLifecycleConfigAppType: string
end

local record DescribeSubscribedWorkteamInput
    WorkteamArn: string
end

local record DescribeSubscribedWorkteamOutput
    SubscribedWorkteam: SubscribedWorkteam
end

local record DescribeTrainingJobInput
    TrainingJobName: string
end

local record DescribeTrainingJobOutput
    TrainingJobName: string
    TrainingJobArn: string
    TuningJobArn: string
    LabelingJobArn: string
    AutoMLJobArn: string
    ModelArtifacts: ModelArtifacts
    TrainingJobStatus: string
    SecondaryStatus: string
    FailureReason: string
    HyperParameters: {string : string}
    AlgorithmSpecification: AlgorithmSpecification
    RoleArn: string
    InputDataConfig: {Channel}
    OutputDataConfig: OutputDataConfig
    ResourceConfig: ResourceConfig
    WarmPoolStatus: WarmPoolStatus
    VpcConfig: VpcConfig
    StoppingCondition: StoppingCondition
    CreationTime: number
    TrainingStartTime: number
    TrainingEndTime: number
    LastModifiedTime: number
    SecondaryStatusTransitions: {SecondaryStatusTransition}
    FinalMetricDataList: {MetricData}
    EnableNetworkIsolation: boolean
    EnableInterContainerTrafficEncryption: boolean
    EnableManagedSpotTraining: boolean
    CheckpointConfig: CheckpointConfig
    TrainingTimeInSeconds: number
    BillableTimeInSeconds: number
    BillableTokenCount: number
    DebugHookConfig: DebugHookConfig
    ExperimentConfig: ExperimentConfig
    DebugRuleConfigurations: {DebugRuleConfiguration}
    TensorBoardOutputConfig: TensorBoardOutputConfig
    DebugRuleEvaluationStatuses: {DebugRuleEvaluationStatus}
    ProfilerConfig: ProfilerConfig
    ProfilerRuleConfigurations: {ProfilerRuleConfiguration}
    ProfilerRuleEvaluationStatuses: {ProfilerRuleEvaluationStatus}
    ProfilingStatus: string
    Environment: {string : string}
    RetryStrategy: RetryStrategy
    RemoteDebugConfig: RemoteDebugConfig
    InfraCheckConfig: InfraCheckConfig
    ServerlessJobConfig: ServerlessJobConfig
    MlflowConfig: MlflowConfig
    ModelPackageConfig: ModelPackageConfig
    MlflowDetails: MlflowDetails
    ProgressInfo: TrainingProgressInfo
    OutputModelPackageArn: string
end

local record DescribeTrainingPlanInput
    TrainingPlanName: string
end

local record DescribeTrainingPlanOutput
    TrainingPlanArn: string
    TrainingPlanName: string
    Status: string
    StatusMessage: string
    DurationHours: number
    DurationMinutes: number
    StartTime: number
    EndTime: number
    UpfrontFee: string
    CurrencyCode: string
    TotalInstanceCount: number
    AvailableInstanceCount: number
    InUseInstanceCount: number
    UnhealthyInstanceCount: number
    AvailableSpareInstanceCount: number
    TotalUltraServerCount: number
    TargetResources: {string}
    ReservedCapacitySummaries: {ReservedCapacitySummary}
end

local record DescribeTrainingPlanExtensionHistoryInput
    TrainingPlanArn: string
    NextToken: string
    MaxResults: number
end

local record DescribeTrainingPlanExtensionHistoryOutput
    TrainingPlanExtensions: {TrainingPlanExtension}
    NextToken: string
end

local record DescribeTransformJobInput
    TransformJobName: string
end

local record DescribeTransformJobOutput
    TransformJobName: string
    TransformJobArn: string
    TransformJobStatus: string
    FailureReason: string
    ModelName: string
    MaxConcurrentTransforms: number
    ModelClientConfig: ModelClientConfig
    MaxPayloadInMB: number
    BatchStrategy: string
    Environment: {string : string}
    TransformInput: TransformInput
    TransformOutput: TransformOutput
    DataCaptureConfig: BatchDataCaptureConfig
    TransformResources: TransformResources
    CreationTime: number
    TransformStartTime: number
    TransformEndTime: number
    LabelingJobArn: string
    AutoMLJobArn: string
    DataProcessing: DataProcessing
    ExperimentConfig: ExperimentConfig
end

local record DescribeTrialInput
    TrialName: string
end

local record DescribeTrialOutput
    TrialName: string
    TrialArn: string
    DisplayName: string
    ExperimentName: string
    Source: TrialSource
    CreationTime: number
    CreatedBy: UserContext
    LastModifiedTime: number
    LastModifiedBy: UserContext
    MetadataProperties: MetadataProperties
end

local record DescribeTrialComponentInput
    TrialComponentName: string
end

local record DescribeTrialComponentOutput
    TrialComponentName: string
    TrialComponentArn: string
    DisplayName: string
    Source: TrialComponentSource
    Status: TrialComponentStatus
    StartTime: number
    EndTime: number
    CreationTime: number
    CreatedBy: UserContext
    LastModifiedTime: number
    LastModifiedBy: UserContext
    Parameters: {string : TrialComponentParameterValue}
    InputArtifacts: {string : TrialComponentArtifact}
    OutputArtifacts: {string : TrialComponentArtifact}
    MetadataProperties: MetadataProperties
    Metrics: {TrialComponentMetricSummary}
    LineageGroupArn: string
    Sources: {TrialComponentSource}
end

local record DescribeUserProfileInput
    DomainId: string
    UserProfileName: string
end

local record DescribeUserProfileOutput
    DomainId: string
    UserProfileArn: string
    UserProfileName: string
    HomeEfsFileSystemUid: string
    Status: string
    LastModifiedTime: number
    CreationTime: number
    FailureReason: string
    SingleSignOnUserIdentifier: string
    SingleSignOnUserValue: string
    UserSettings: UserSettings
end

local record DescribeWorkforceInput
    WorkforceName: string
end

local record DescribeWorkforceOutput
    Workforce: Workforce
end

local record DescribeWorkteamInput
    WorkteamName: string
end

local record DescribeWorkteamOutput
    Workteam: Workteam
end

local record DetachClusterNodeVolumeInput
    ClusterArn: string
    NodeId: string
    VolumeId: string
end

local record DetachClusterNodeVolumeOutput
    ClusterArn: string
    NodeId: string
    VolumeId: string
    AttachTime: number
    Status: string
    DeviceName: string
end

local record DisableSagemakerServicecatalogPortfolioInput
end

local record DisableSagemakerServicecatalogPortfolioOutput
end

local record DisassociateTrialComponentInput
    TrialComponentName: string
    TrialName: string
end

local record DisassociateTrialComponentOutput
    TrialComponentArn: string
    TrialArn: string
end

local record EnableSagemakerServicecatalogPortfolioInput
end

local record EnableSagemakerServicecatalogPortfolioOutput
end

local record ExtendTrainingPlanInput
    TrainingPlanExtensionOfferingId: string
end

local record ExtendTrainingPlanOutput
    TrainingPlanExtensions: {TrainingPlanExtension}
end

local record GetDeviceFleetReportInput
    DeviceFleetName: string
end

local record GetDeviceFleetReportOutput
    DeviceFleetArn: string
    DeviceFleetName: string
    OutputConfig: EdgeOutputConfig
    Description: string
    ReportGenerated: number
    DeviceStats: DeviceStats
    AgentVersions: {AgentVersion}
    ModelStats: {EdgeModelStat}
end

local record GetLineageGroupPolicyInput
    LineageGroupName: string
end

local record GetLineageGroupPolicyOutput
    LineageGroupArn: string
    ResourcePolicy: string
end

local record GetModelPackageGroupPolicyInput
    ModelPackageGroupName: string
end

local record GetModelPackageGroupPolicyOutput
    ResourcePolicy: string
end

local record GetSagemakerServicecatalogPortfolioStatusInput
end

local record GetSagemakerServicecatalogPortfolioStatusOutput
    Status: string
end

local record GetScalingConfigurationRecommendationInput
    InferenceRecommendationsJobName: string
    RecommendationId: string
    EndpointName: string
    TargetCpuUtilizationPerCore: number
    ScalingPolicyObjective: ScalingPolicyObjective
end

local record GetScalingConfigurationRecommendationOutput
    InferenceRecommendationsJobName: string
    RecommendationId: string
    EndpointName: string
    TargetCpuUtilizationPerCore: number
    ScalingPolicyObjective: ScalingPolicyObjective
    Metric: ScalingPolicyMetric
    DynamicScalingConfiguration: DynamicScalingConfiguration
end

local record GetSearchSuggestionsInput
    Resource: string
    SuggestionQuery: SuggestionQuery
end

local record GetSearchSuggestionsOutput
    PropertyNameSuggestions: {PropertyNameSuggestion}
end

local record ImportHubContentInput
    HubContentName: string
    HubContentVersion: string
    HubContentType: string
    DocumentSchemaVersion: string
    HubName: string
    HubContentDisplayName: string
    HubContentDescription: string
    HubContentMarkdown: string
    HubContentDocument: string
    SupportStatus: string
    HubContentSearchKeywords: {string}
    Tags: {Tag}
end

local record ImportHubContentOutput
    HubArn: string
    HubContentArn: string
end

local record ListActionsInput
    SourceUri: string
    ActionType: string
    CreatedAfter: number
    CreatedBefore: number
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
end

local record ListActionsOutput
    ActionSummaries: {ActionSummary}
    NextToken: string
end

local record ListAIBenchmarkJobsInput
    MaxResults: number
    NextToken: string
    NameContains: string
    StatusEquals: string
    CreationTimeAfter: number
    CreationTimeBefore: number
    SortBy: string
    SortOrder: string
end

local record ListAIBenchmarkJobsOutput
    AIBenchmarkJobs: {AIBenchmarkJobSummary}
    NextToken: string
end

local record ListAIRecommendationJobsInput
    MaxResults: number
    NextToken: string
    NameContains: string
    StatusEquals: string
    CreationTimeAfter: number
    CreationTimeBefore: number
    SortBy: string
    SortOrder: string
end

local record ListAIRecommendationJobsOutput
    AIRecommendationJobs: {AIRecommendationJobSummary}
    NextToken: string
end

local record ListAIWorkloadConfigsInput
    MaxResults: number
    NextToken: string
    NameContains: string
    CreationTimeAfter: number
    CreationTimeBefore: number
    SortBy: string
    SortOrder: string
end

local record ListAIWorkloadConfigsOutput
    AIWorkloadConfigs: {AIWorkloadConfigSummary}
    NextToken: string
end

local record ListAlgorithmsInput
    CreationTimeAfter: number
    CreationTimeBefore: number
    MaxResults: number
    NameContains: string
    NextToken: string
    SortBy: string
    SortOrder: string
end

local record ListAlgorithmsOutput
    AlgorithmSummaryList: {AlgorithmSummary}
    NextToken: string
end

local record ListAliasesInput
    ImageName: string
    Alias: string
    Version: number
    MaxResults: number
    NextToken: string
end

local record ListAliasesOutput
    SageMakerImageVersionAliases: {string}
    NextToken: string
end

local record ListAppImageConfigsInput
    MaxResults: number
    NextToken: string
    NameContains: string
    CreationTimeBefore: number
    CreationTimeAfter: number
    ModifiedTimeBefore: number
    ModifiedTimeAfter: number
    SortBy: string
    SortOrder: string
end

local record ListAppImageConfigsOutput
    NextToken: string
    AppImageConfigs: {AppImageConfigDetails}
end

local record ListAppsInput
    NextToken: string
    MaxResults: number
    SortOrder: string
    SortBy: string
    DomainIdEquals: string
    UserProfileNameEquals: string
    SpaceNameEquals: string
end

local record ListAppsOutput
    Apps: {AppDetails}
    NextToken: string
end

local record ListArtifactsInput
    SourceUri: string
    ArtifactType: string
    CreatedAfter: number
    CreatedBefore: number
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
end

local record ListArtifactsOutput
    ArtifactSummaries: {ArtifactSummary}
    NextToken: string
end

local record ListAssociationsInput
    SourceArn: string
    DestinationArn: string
    SourceType: string
    DestinationType: string
    AssociationType: string
    CreatedAfter: number
    CreatedBefore: number
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
end

local record ListAssociationsOutput
    AssociationSummaries: {AssociationSummary}
    NextToken: string
end

local record ListAutoMLJobsInput
    CreationTimeAfter: number
    CreationTimeBefore: number
    LastModifiedTimeAfter: number
    LastModifiedTimeBefore: number
    NameContains: string
    StatusEquals: string
    SortOrder: string
    SortBy: string
    MaxResults: number
    NextToken: string
end

local record ListAutoMLJobsOutput
    AutoMLJobSummaries: {AutoMLJobSummary}
    NextToken: string
end

local record ListCandidatesForAutoMLJobInput
    AutoMLJobName: string
    StatusEquals: string
    CandidateNameEquals: string
    SortOrder: string
    SortBy: string
    MaxResults: number
    NextToken: string
end

local record ListCandidatesForAutoMLJobOutput
    Candidates: {AutoMLCandidate}
    NextToken: string
end

local record ListClusterEventsInput
    ClusterName: string
    InstanceGroupName: string
    NodeId: string
    EventTimeAfter: number
    EventTimeBefore: number
    SortBy: string
    SortOrder: string
    ResourceType: string
    MaxResults: number
    NextToken: string
end

local record ListClusterEventsOutput
    NextToken: string
    Events: {ClusterEventSummary}
end

local record ListClusterNodesInput
    ClusterName: string
    CreationTimeAfter: number
    CreationTimeBefore: number
    InstanceGroupNameContains: string
    MaxResults: number
    NextToken: string
    SortBy: string
    SortOrder: string
    IncludeNodeLogicalIds: boolean
end

local record ListClusterNodesOutput
    NextToken: string
    ClusterNodeSummaries: {ClusterNodeSummary}
end

local record ListClustersInput
    CreationTimeAfter: number
    CreationTimeBefore: number
    MaxResults: number
    NameContains: string
    NextToken: string
    SortBy: string
    SortOrder: string
    TrainingPlanArn: string
end

local record ListClustersOutput
    NextToken: string
    ClusterSummaries: {ClusterSummary}
end

local record ListClusterSchedulerConfigsInput
    CreatedAfter: number
    CreatedBefore: number
    NameContains: string
    ClusterArn: string
    Status: string
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
end

local record ListClusterSchedulerConfigsOutput
    ClusterSchedulerConfigSummaries: {ClusterSchedulerConfigSummary}
    NextToken: string
end

local record ListCodeRepositoriesInput
    CreationTimeAfter: number
    CreationTimeBefore: number
    LastModifiedTimeAfter: number
    LastModifiedTimeBefore: number
    MaxResults: number
    NameContains: string
    NextToken: string
    SortBy: string
    SortOrder: string
end

local record ListCodeRepositoriesOutput
    CodeRepositorySummaryList: {CodeRepositorySummary}
    NextToken: string
end

local record ListCompilationJobsInput
    NextToken: string
    MaxResults: number
    CreationTimeAfter: number
    CreationTimeBefore: number
    LastModifiedTimeAfter: number
    LastModifiedTimeBefore: number
    NameContains: string
    StatusEquals: string
    SortBy: string
    SortOrder: string
end

local record ListCompilationJobsOutput
    CompilationJobSummaries: {CompilationJobSummary}
    NextToken: string
end

local record ListComputeQuotasInput
    CreatedAfter: number
    CreatedBefore: number
    NameContains: string
    Status: string
    ClusterArn: string
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
end

local record ListComputeQuotasOutput
    ComputeQuotaSummaries: {ComputeQuotaSummary}
    NextToken: string
end

local record ListContextsInput
    SourceUri: string
    ContextType: string
    CreatedAfter: number
    CreatedBefore: number
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
end

local record ListContextsOutput
    ContextSummaries: {ContextSummary}
    NextToken: string
end

local record ListDataQualityJobDefinitionsInput
    EndpointName: string
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
    NameContains: string
    CreationTimeBefore: number
    CreationTimeAfter: number
end

local record ListDataQualityJobDefinitionsOutput
    JobDefinitionSummaries: {MonitoringJobDefinitionSummary}
    NextToken: string
end

local record ListDeviceFleetsInput
    NextToken: string
    MaxResults: number
    CreationTimeAfter: number
    CreationTimeBefore: number
    LastModifiedTimeAfter: number
    LastModifiedTimeBefore: number
    NameContains: string
    SortBy: string
    SortOrder: string
end

local record ListDeviceFleetsOutput
    DeviceFleetSummaries: {DeviceFleetSummary}
    NextToken: string
end

local record ListDevicesInput
    NextToken: string
    MaxResults: number
    LatestHeartbeatAfter: number
    ModelName: string
    DeviceFleetName: string
end

local record ListDevicesOutput
    DeviceSummaries: {DeviceSummary}
    NextToken: string
end

local record ListDomainsInput
    NextToken: string
    MaxResults: number
end

local record ListDomainsOutput
    Domains: {DomainDetails}
    NextToken: string
end

local record ListEdgeDeploymentPlansInput
    NextToken: string
    MaxResults: number
    CreationTimeAfter: number
    CreationTimeBefore: number
    LastModifiedTimeAfter: number
    LastModifiedTimeBefore: number
    NameContains: string
    DeviceFleetNameContains: string
    SortBy: string
    SortOrder: string
end

local record ListEdgeDeploymentPlansOutput
    EdgeDeploymentPlanSummaries: {EdgeDeploymentPlanSummary}
    NextToken: string
end

local record ListEdgePackagingJobsInput
    NextToken: string
    MaxResults: number
    CreationTimeAfter: number
    CreationTimeBefore: number
    LastModifiedTimeAfter: number
    LastModifiedTimeBefore: number
    NameContains: string
    ModelNameContains: string
    StatusEquals: string
    SortBy: string
    SortOrder: string
end

local record ListEdgePackagingJobsOutput
    EdgePackagingJobSummaries: {EdgePackagingJobSummary}
    NextToken: string
end

local record ListEndpointConfigsInput
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
    NameContains: string
    CreationTimeBefore: number
    CreationTimeAfter: number
end

local record ListEndpointConfigsOutput
    EndpointConfigs: {EndpointConfigSummary}
    NextToken: string
end

local record ListEndpointsInput
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
    NameContains: string
    CreationTimeBefore: number
    CreationTimeAfter: number
    LastModifiedTimeBefore: number
    LastModifiedTimeAfter: number
    StatusEquals: string
end

local record ListEndpointsOutput
    Endpoints: {EndpointSummary}
    NextToken: string
end

local record ListExperimentsInput
    CreatedAfter: number
    CreatedBefore: number
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
end

local record ListExperimentsOutput
    ExperimentSummaries: {ExperimentSummary}
    NextToken: string
end

local record ListFeatureGroupsInput
    NameContains: string
    FeatureGroupStatusEquals: string
    OfflineStoreStatusEquals: string
    CreationTimeAfter: number
    CreationTimeBefore: number
    SortOrder: string
    SortBy: string
    MaxResults: number
    NextToken: string
end

local record ListFeatureGroupsOutput
    FeatureGroupSummaries: {FeatureGroupSummary}
    NextToken: string
end

local record ListFlowDefinitionsInput
    CreationTimeAfter: number
    CreationTimeBefore: number
    SortOrder: string
    NextToken: string
    MaxResults: number
end

local record ListFlowDefinitionsOutput
    FlowDefinitionSummaries: {FlowDefinitionSummary}
    NextToken: string
end

local record ListHubContentsInput
    HubName: string
    HubContentType: string
    NameContains: string
    MaxSchemaVersion: string
    CreationTimeBefore: number
    CreationTimeAfter: number
    SortBy: string
    SortOrder: string
    MaxResults: number
    NextToken: string
end

local record ListHubContentsOutput
    HubContentSummaries: {HubContentInfo}
    NextToken: string
end

local record ListHubContentVersionsInput
    HubName: string
    HubContentType: string
    HubContentName: string
    MinVersion: string
    MaxSchemaVersion: string
    CreationTimeBefore: number
    CreationTimeAfter: number
    SortBy: string
    SortOrder: string
    MaxResults: number
    NextToken: string
end

local record ListHubContentVersionsOutput
    HubContentSummaries: {HubContentInfo}
    NextToken: string
end

local record ListHubsInput
    NameContains: string
    CreationTimeBefore: number
    CreationTimeAfter: number
    LastModifiedTimeBefore: number
    LastModifiedTimeAfter: number
    SortBy: string
    SortOrder: string
    MaxResults: number
    NextToken: string
end

local record ListHubsOutput
    HubSummaries: {HubInfo}
    NextToken: string
end

local record ListHumanTaskUisInput
    CreationTimeAfter: number
    CreationTimeBefore: number
    SortOrder: string
    NextToken: string
    MaxResults: number
end

local record ListHumanTaskUisOutput
    HumanTaskUiSummaries: {HumanTaskUiSummary}
    NextToken: string
end

local record ListHyperParameterTuningJobsInput
    NextToken: string
    MaxResults: number
    SortBy: string
    SortOrder: string
    NameContains: string
    CreationTimeAfter: number
    CreationTimeBefore: number
    LastModifiedTimeAfter: number
    LastModifiedTimeBefore: number
    StatusEquals: string
end

local record ListHyperParameterTuningJobsOutput
    HyperParameterTuningJobSummaries: {HyperParameterTuningJobSummary}
    NextToken: string
end

local record ListImagesInput
    CreationTimeAfter: number
    CreationTimeBefore: number
    LastModifiedTimeAfter: number
    LastModifiedTimeBefore: number
    MaxResults: number
    NameContains: string
    NextToken: string
    SortBy: string
    SortOrder: string
end

local record ListImagesOutput
    Images: {Image}
    NextToken: string
end

local record ListImageVersionsInput
    CreationTimeAfter: number
    CreationTimeBefore: number
    ImageName: string
    LastModifiedTimeAfter: number
    LastModifiedTimeBefore: number
    MaxResults: number
    NextToken: string
    SortBy: string
    SortOrder: string
end

local record ListImageVersionsOutput
    ImageVersions: {ImageVersion}
    NextToken: string
end

local record ListInferenceComponentsInput
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
    NameContains: string
    CreationTimeBefore: number
    CreationTimeAfter: number
    LastModifiedTimeBefore: number
    LastModifiedTimeAfter: number
    StatusEquals: string
    EndpointNameEquals: string
    VariantNameEquals: string
end

local record ListInferenceComponentsOutput
    InferenceComponents: {InferenceComponentSummary}
    NextToken: string
end

local record ListInferenceExperimentsInput
    NameContains: string
    Type: string
    StatusEquals: string
    CreationTimeAfter: number
    CreationTimeBefore: number
    LastModifiedTimeAfter: number
    LastModifiedTimeBefore: number
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
end

local record ListInferenceExperimentsOutput
    InferenceExperiments: {InferenceExperimentSummary}
    NextToken: string
end

local record ListInferenceRecommendationsJobsInput
    CreationTimeAfter: number
    CreationTimeBefore: number
    LastModifiedTimeAfter: number
    LastModifiedTimeBefore: number
    NameContains: string
    StatusEquals: string
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
    ModelNameEquals: string
    ModelPackageVersionArnEquals: string
end

local record ListInferenceRecommendationsJobsOutput
    InferenceRecommendationsJobs: {InferenceRecommendationsJob}
    NextToken: string
end

local record ListInferenceRecommendationsJobStepsInput
    JobName: string
    Status: string
    StepType: string
    MaxResults: number
    NextToken: string
end

local record ListInferenceRecommendationsJobStepsOutput
    Steps: {InferenceRecommendationsJobStep}
    NextToken: string
end

local record ListLabelingJobsInput
    CreationTimeAfter: number
    CreationTimeBefore: number
    LastModifiedTimeAfter: number
    LastModifiedTimeBefore: number
    MaxResults: number
    NextToken: string
    NameContains: string
    SortBy: string
    SortOrder: string
    StatusEquals: string
end

local record ListLabelingJobsOutput
    LabelingJobSummaryList: {LabelingJobSummary}
    NextToken: string
end

local record ListLabelingJobsForWorkteamInput
    WorkteamArn: string
    MaxResults: number
    NextToken: string
    CreationTimeAfter: number
    CreationTimeBefore: number
    JobReferenceCodeContains: string
    SortBy: string
    SortOrder: string
end

local record ListLabelingJobsForWorkteamOutput
    LabelingJobSummaryList: {LabelingJobForWorkteamSummary}
    NextToken: string
end

local record ListLineageGroupsInput
    CreatedAfter: number
    CreatedBefore: number
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
end

local record ListLineageGroupsOutput
    LineageGroupSummaries: {LineageGroupSummary}
    NextToken: string
end

local record ListMlflowAppsInput
    CreatedAfter: number
    CreatedBefore: number
    Status: string
    MlflowVersion: string
    DefaultForDomainId: string
    AccountDefaultStatus: string
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
end

local record ListMlflowAppsOutput
    Summaries: {MlflowAppSummary}
    NextToken: string
end

local record ListMlflowTrackingServersInput
    CreatedAfter: number
    CreatedBefore: number
    TrackingServerStatus: string
    MlflowVersion: string
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
end

local record ListMlflowTrackingServersOutput
    TrackingServerSummaries: {TrackingServerSummary}
    NextToken: string
end

local record ListModelBiasJobDefinitionsInput
    EndpointName: string
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
    NameContains: string
    CreationTimeBefore: number
    CreationTimeAfter: number
end

local record ListModelBiasJobDefinitionsOutput
    JobDefinitionSummaries: {MonitoringJobDefinitionSummary}
    NextToken: string
end

local record ListModelCardExportJobsInput
    ModelCardName: string
    ModelCardVersion: number
    CreationTimeAfter: number
    CreationTimeBefore: number
    ModelCardExportJobNameContains: string
    StatusEquals: string
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
end

local record ListModelCardExportJobsOutput
    ModelCardExportJobSummaries: {ModelCardExportJobSummary}
    NextToken: string
end

local record ListModelCardsInput
    CreationTimeAfter: number
    CreationTimeBefore: number
    MaxResults: number
    NameContains: string
    ModelCardStatus: string
    NextToken: string
    SortBy: string
    SortOrder: string
end

local record ListModelCardsOutput
    ModelCardSummaries: {ModelCardSummary}
    NextToken: string
end

local record ListModelCardVersionsInput
    CreationTimeAfter: number
    CreationTimeBefore: number
    MaxResults: number
    ModelCardName: string
    ModelCardStatus: string
    NextToken: string
    SortBy: string
    SortOrder: string
end

local record ListModelCardVersionsOutput
    ModelCardVersionSummaryList: {ModelCardVersionSummary}
    NextToken: string
end

local record ListModelExplainabilityJobDefinitionsInput
    EndpointName: string
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
    NameContains: string
    CreationTimeBefore: number
    CreationTimeAfter: number
end

local record ListModelExplainabilityJobDefinitionsOutput
    JobDefinitionSummaries: {MonitoringJobDefinitionSummary}
    NextToken: string
end

local record ListModelMetadataInput
    SearchExpression: ModelMetadataSearchExpression
    NextToken: string
    MaxResults: number
end

local record ListModelMetadataOutput
    ModelMetadataSummaries: {ModelMetadataSummary}
    NextToken: string
end

local record ListModelPackageGroupsInput
    CreationTimeAfter: number
    CreationTimeBefore: number
    MaxResults: number
    NameContains: string
    NextToken: string
    SortBy: string
    SortOrder: string
    CrossAccountFilterOption: string
end

local record ListModelPackageGroupsOutput
    ModelPackageGroupSummaryList: {ModelPackageGroupSummary}
    NextToken: string
end

local record ListModelPackagesInput
    CreationTimeAfter: number
    CreationTimeBefore: number
    MaxResults: number
    NameContains: string
    ModelApprovalStatus: string
    ModelPackageGroupName: string
    ModelPackageType: string
    NextToken: string
    SortBy: string
    SortOrder: string
end

local record ListModelPackagesOutput
    ModelPackageSummaryList: {ModelPackageSummary}
    NextToken: string
end

local record ListModelQualityJobDefinitionsInput
    EndpointName: string
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
    NameContains: string
    CreationTimeBefore: number
    CreationTimeAfter: number
end

local record ListModelQualityJobDefinitionsOutput
    JobDefinitionSummaries: {MonitoringJobDefinitionSummary}
    NextToken: string
end

local record ListModelsInput
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
    NameContains: string
    CreationTimeBefore: number
    CreationTimeAfter: number
end

local record ListModelsOutput
    Models: {ModelSummary}
    NextToken: string
end

local record ListMonitoringAlertHistoryInput
    MonitoringScheduleName: string
    MonitoringAlertName: string
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
    CreationTimeBefore: number
    CreationTimeAfter: number
    StatusEquals: string
end

local record ListMonitoringAlertHistoryOutput
    MonitoringAlertHistory: {MonitoringAlertHistorySummary}
    NextToken: string
end

local record ListMonitoringAlertsInput
    MonitoringScheduleName: string
    NextToken: string
    MaxResults: number
end

local record ListMonitoringAlertsOutput
    MonitoringAlertSummaries: {MonitoringAlertSummary}
    NextToken: string
end

local record ListMonitoringExecutionsInput
    MonitoringScheduleName: string
    EndpointName: string
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
    ScheduledTimeBefore: number
    ScheduledTimeAfter: number
    CreationTimeBefore: number
    CreationTimeAfter: number
    LastModifiedTimeBefore: number
    LastModifiedTimeAfter: number
    StatusEquals: string
    MonitoringJobDefinitionName: string
    MonitoringTypeEquals: string
end

local record ListMonitoringExecutionsOutput
    MonitoringExecutionSummaries: {MonitoringExecutionSummary}
    NextToken: string
end

local record ListMonitoringSchedulesInput
    EndpointName: string
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
    NameContains: string
    CreationTimeBefore: number
    CreationTimeAfter: number
    LastModifiedTimeBefore: number
    LastModifiedTimeAfter: number
    StatusEquals: string
    MonitoringJobDefinitionName: string
    MonitoringTypeEquals: string
end

local record ListMonitoringSchedulesOutput
    MonitoringScheduleSummaries: {MonitoringScheduleSummary}
    NextToken: string
end

local record ListNotebookInstanceLifecycleConfigsInput
    NextToken: string
    MaxResults: number
    SortBy: string
    SortOrder: string
    NameContains: string
    CreationTimeBefore: number
    CreationTimeAfter: number
    LastModifiedTimeBefore: number
    LastModifiedTimeAfter: number
end

local record ListNotebookInstanceLifecycleConfigsOutput
    NextToken: string
    NotebookInstanceLifecycleConfigs: {NotebookInstanceLifecycleConfigSummary}
end

local record ListNotebookInstancesInput
    NextToken: string
    MaxResults: number
    SortBy: string
    SortOrder: string
    NameContains: string
    CreationTimeBefore: number
    CreationTimeAfter: number
    LastModifiedTimeBefore: number
    LastModifiedTimeAfter: number
    StatusEquals: string
    NotebookInstanceLifecycleConfigNameContains: string
    DefaultCodeRepositoryContains: string
    AdditionalCodeRepositoryEquals: string
end

local record ListNotebookInstancesOutput
    NextToken: string
    NotebookInstances: {NotebookInstanceSummary}
end

local record ListOptimizationJobsInput
    NextToken: string
    MaxResults: number
    CreationTimeAfter: number
    CreationTimeBefore: number
    LastModifiedTimeAfter: number
    LastModifiedTimeBefore: number
    OptimizationContains: string
    NameContains: string
    StatusEquals: string
    SortBy: string
    SortOrder: string
end

local record ListOptimizationJobsOutput
    OptimizationJobSummaries: {OptimizationJobSummary}
    NextToken: string
end

local record ListPartnerAppsInput
    MaxResults: number
    NextToken: string
end

local record ListPartnerAppsOutput
    Summaries: {PartnerAppSummary}
    NextToken: string
end

local record ListPipelineExecutionsInput
    PipelineName: string
    CreatedAfter: number
    CreatedBefore: number
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
end

local record ListPipelineExecutionsOutput
    PipelineExecutionSummaries: {PipelineExecutionSummary}
    NextToken: string
end

local record ListPipelineExecutionStepsInput
    PipelineExecutionArn: string
    NextToken: string
    MaxResults: number
    SortOrder: string
end

local record ListPipelineExecutionStepsOutput
    PipelineExecutionSteps: {PipelineExecutionStep}
    NextToken: string
end

local record ListPipelineParametersForExecutionInput
    PipelineExecutionArn: string
    NextToken: string
    MaxResults: number
end

local record ListPipelineParametersForExecutionOutput
    PipelineParameters: {Parameter}
    NextToken: string
end

local record ListPipelinesInput
    PipelineNamePrefix: string
    CreatedAfter: number
    CreatedBefore: number
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
end

local record ListPipelinesOutput
    PipelineSummaries: {PipelineSummary}
    NextToken: string
end

local record ListPipelineVersionsInput
    PipelineName: string
    CreatedAfter: number
    CreatedBefore: number
    SortOrder: string
    NextToken: string
    MaxResults: number
end

local record ListPipelineVersionsOutput
    PipelineVersionSummaries: {PipelineVersionSummary}
    NextToken: string
end

local record ListProcessingJobsInput
    CreationTimeAfter: number
    CreationTimeBefore: number
    LastModifiedTimeAfter: number
    LastModifiedTimeBefore: number
    NameContains: string
    StatusEquals: string
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
end

local record ListProcessingJobsOutput
    ProcessingJobSummaries: {ProcessingJobSummary}
    NextToken: string
end

local record ListProjectsInput
    CreationTimeAfter: number
    CreationTimeBefore: number
    MaxResults: number
    NameContains: string
    NextToken: string
    SortBy: string
    SortOrder: string
end

local record ListProjectsOutput
    ProjectSummaryList: {ProjectSummary}
    NextToken: string
end

local record ListResourceCatalogsInput
    NameContains: string
    CreationTimeAfter: number
    CreationTimeBefore: number
    SortOrder: string
    SortBy: string
    MaxResults: number
    NextToken: string
end

local record ListResourceCatalogsOutput
    ResourceCatalogs: {ResourceCatalog}
    NextToken: string
end

local record ListSpacesInput
    NextToken: string
    MaxResults: number
    SortOrder: string
    SortBy: string
    DomainIdEquals: string
    SpaceNameContains: string
end

local record ListSpacesOutput
    Spaces: {SpaceDetails}
    NextToken: string
end

local record ListStageDevicesInput
    NextToken: string
    MaxResults: number
    EdgeDeploymentPlanName: string
    ExcludeDevicesDeployedInOtherStage: boolean
    StageName: string
end

local record ListStageDevicesOutput
    DeviceDeploymentSummaries: {DeviceDeploymentSummary}
    NextToken: string
end

local record ListStudioLifecycleConfigsInput
    MaxResults: number
    NextToken: string
    NameContains: string
    AppTypeEquals: string
    CreationTimeBefore: number
    CreationTimeAfter: number
    ModifiedTimeBefore: number
    ModifiedTimeAfter: number
    SortBy: string
    SortOrder: string
end

local record ListStudioLifecycleConfigsOutput
    NextToken: string
    StudioLifecycleConfigs: {StudioLifecycleConfigDetails}
end

local record ListSubscribedWorkteamsInput
    NameContains: string
    NextToken: string
    MaxResults: number
end

local record ListSubscribedWorkteamsOutput
    SubscribedWorkteams: {SubscribedWorkteam}
    NextToken: string
end

local record ListTagsInput
    ResourceArn: string
    NextToken: string
    MaxResults: number
end

local record ListTagsOutput
    Tags: {Tag}
    NextToken: string
end

local record ListTrainingJobsInput
    NextToken: string
    MaxResults: number
    CreationTimeAfter: number
    CreationTimeBefore: number
    LastModifiedTimeAfter: number
    LastModifiedTimeBefore: number
    NameContains: string
    StatusEquals: string
    SortBy: string
    SortOrder: string
    WarmPoolStatusEquals: string
    TrainingPlanArnEquals: string
end

local record ListTrainingJobsOutput
    TrainingJobSummaries: {TrainingJobSummary}
    NextToken: string
end

local record ListTrainingJobsForHyperParameterTuningJobInput
    HyperParameterTuningJobName: string
    NextToken: string
    MaxResults: number
    StatusEquals: string
    SortBy: string
    SortOrder: string
end

local record ListTrainingJobsForHyperParameterTuningJobOutput
    TrainingJobSummaries: {HyperParameterTrainingJobSummary}
    NextToken: string
end

local record ListTrainingPlansInput
    NextToken: string
    MaxResults: number
    StartTimeAfter: number
    StartTimeBefore: number
    SortBy: string
    SortOrder: string
    Filters: {TrainingPlanFilter}
end

local record ListTrainingPlansOutput
    NextToken: string
    TrainingPlanSummaries: {TrainingPlanSummary}
end

local record ListTransformJobsInput
    CreationTimeAfter: number
    CreationTimeBefore: number
    LastModifiedTimeAfter: number
    LastModifiedTimeBefore: number
    NameContains: string
    StatusEquals: string
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
end

local record ListTransformJobsOutput
    TransformJobSummaries: {TransformJobSummary}
    NextToken: string
end

local record ListTrialComponentsInput
    ExperimentName: string
    TrialName: string
    SourceArn: string
    CreatedAfter: number
    CreatedBefore: number
    SortBy: string
    SortOrder: string
    MaxResults: number
    NextToken: string
end

local record ListTrialComponentsOutput
    TrialComponentSummaries: {TrialComponentSummary}
    NextToken: string
end

local record ListTrialsInput
    ExperimentName: string
    TrialComponentName: string
    CreatedAfter: number
    CreatedBefore: number
    SortBy: string
    SortOrder: string
    MaxResults: number
    NextToken: string
end

local record ListTrialsOutput
    TrialSummaries: {TrialSummary}
    NextToken: string
end

local record ListUltraServersByReservedCapacityInput
    ReservedCapacityArn: string
    MaxResults: number
    NextToken: string
end

local record ListUltraServersByReservedCapacityOutput
    NextToken: string
    UltraServers: {UltraServer}
end

local record ListUserProfilesInput
    NextToken: string
    MaxResults: number
    SortOrder: string
    SortBy: string
    DomainIdEquals: string
    UserProfileNameContains: string
end

local record ListUserProfilesOutput
    UserProfiles: {UserProfileDetails}
    NextToken: string
end

local record ListWorkforcesInput
    SortBy: string
    SortOrder: string
    NameContains: string
    NextToken: string
    MaxResults: number
end

local record ListWorkforcesOutput
    Workforces: {Workforce}
    NextToken: string
end

local record ListWorkteamsInput
    SortBy: string
    SortOrder: string
    NameContains: string
    NextToken: string
    MaxResults: number
end

local record ListWorkteamsOutput
    Workteams: {Workteam}
    NextToken: string
end

local record PutModelPackageGroupPolicyInput
    ModelPackageGroupName: string
    ResourcePolicy: string
end

local record PutModelPackageGroupPolicyOutput
    ModelPackageGroupArn: string
end

local record QueryLineageInput
    StartArns: {string}
    Direction: string
    IncludeEdges: boolean
    Filters: QueryFilters
    MaxDepth: number
    MaxResults: number
    NextToken: string
end

local record QueryLineageOutput
    Vertices: {Vertex}
    Edges: {Edge}
    NextToken: string
end

local record RegisterDevicesInput
    DeviceFleetName: string
    Devices: {Device}
    Tags: {Tag}
end

local record RegisterDevicesOutput
end

local record RenderUiTemplateInput
    UiTemplate: UiTemplate
    Task: RenderableTask
    RoleArn: string
    HumanTaskUiArn: string
end

local record RenderUiTemplateOutput
    RenderedContent: string
    Errors: {RenderingError}
end

local record RetryPipelineExecutionInput
    PipelineExecutionArn: string
    ClientRequestToken: string
    ParallelismConfiguration: ParallelismConfiguration
end

local record RetryPipelineExecutionOutput
    PipelineExecutionArn: string
end

local record SearchInput
    Resource: string
    SearchExpression: SearchExpression
    SortBy: string
    SortOrder: string
    NextToken: string
    MaxResults: number
    CrossAccountFilterOption: string
    VisibilityConditions: {VisibilityConditions}
end

local record SearchOutput
    Results: {SearchRecord}
    NextToken: string
    TotalHits: TotalHits
end

local record SearchTrainingPlanOfferingsInput
    InstanceType: string
    InstanceCount: number
    UltraServerType: string
    UltraServerCount: number
    StartTimeAfter: number
    EndTimeBefore: number
    DurationHours: number
    TargetResources: {string}
    TrainingPlanArn: string
end

local record SearchTrainingPlanOfferingsOutput
    TrainingPlanOfferings: {TrainingPlanOffering}
    TrainingPlanExtensionOfferings: {TrainingPlanExtensionOffering}
end

local record SendPipelineExecutionStepFailureInput
    CallbackToken: string
    FailureReason: string
    ClientRequestToken: string
end

local record SendPipelineExecutionStepFailureOutput
    PipelineExecutionArn: string
end

local record SendPipelineExecutionStepSuccessInput
    CallbackToken: string
    OutputParameters: {OutputParameter}
    ClientRequestToken: string
end

local record SendPipelineExecutionStepSuccessOutput
    PipelineExecutionArn: string
end

local record StartClusterHealthCheckInput
    ClusterName: string
    DeepHealthCheckConfigurations: {InstanceGroupHealthCheckConfiguration}
end

local record StartClusterHealthCheckOutput
    ClusterArn: string
end

local record StartEdgeDeploymentStageInput
    EdgeDeploymentPlanName: string
    StageName: string
end

local record StartEdgeDeploymentStageOutput
end

local record StartInferenceExperimentInput
    Name: string
end

local record StartInferenceExperimentOutput
    InferenceExperimentArn: string
end

local record StartMlflowTrackingServerInput
    TrackingServerName: string
end

local record StartMlflowTrackingServerOutput
    TrackingServerArn: string
end

local record StartMonitoringScheduleInput
    MonitoringScheduleName: string
end

local record StartMonitoringScheduleOutput
end

local record StartNotebookInstanceInput
    NotebookInstanceName: string
end

local record StartNotebookInstanceOutput
end

local record StartPipelineExecutionInput
    PipelineName: string
    PipelineExecutionDisplayName: string
    PipelineParameters: {Parameter}
    PipelineExecutionDescription: string
    ClientRequestToken: string
    ParallelismConfiguration: ParallelismConfiguration
    SelectiveExecutionConfig: SelectiveExecutionConfig
    PipelineVersionId: number
    MlflowExperimentName: string
end

local record StartPipelineExecutionOutput
    PipelineExecutionArn: string
end

local record StartSessionInput
    ResourceIdentifier: string
end

local record StartSessionOutput
    SessionId: string
    StreamUrl: string
    TokenValue: string
end

local record StopAIBenchmarkJobInput
    AIBenchmarkJobName: string
end

local record StopAIBenchmarkJobOutput
    AIBenchmarkJobArn: string
end

local record StopAIRecommendationJobInput
    AIRecommendationJobName: string
end

local record StopAIRecommendationJobOutput
    AIRecommendationJobArn: string
end

local record StopAutoMLJobInput
    AutoMLJobName: string
end

local record StopAutoMLJobOutput
end

local record StopCompilationJobInput
    CompilationJobName: string
end

local record StopCompilationJobOutput
end

local record StopEdgeDeploymentStageInput
    EdgeDeploymentPlanName: string
    StageName: string
end

local record StopEdgeDeploymentStageOutput
end

local record StopEdgePackagingJobInput
    EdgePackagingJobName: string
end

local record StopEdgePackagingJobOutput
end

local record StopHyperParameterTuningJobInput
    HyperParameterTuningJobName: string
end

local record StopHyperParameterTuningJobOutput
end

local record StopInferenceExperimentInput
    Name: string
    ModelVariantActions: {string : string}
    DesiredModelVariants: {ModelVariantConfig}
    DesiredState: string
    Reason: string
end

local record StopInferenceExperimentOutput
    InferenceExperimentArn: string
end

local record StopInferenceRecommendationsJobInput
    JobName: string
end

local record StopInferenceRecommendationsJobOutput
end

local record StopLabelingJobInput
    LabelingJobName: string
end

local record StopLabelingJobOutput
end

local record StopMlflowTrackingServerInput
    TrackingServerName: string
end

local record StopMlflowTrackingServerOutput
    TrackingServerArn: string
end

local record StopMonitoringScheduleInput
    MonitoringScheduleName: string
end

local record StopMonitoringScheduleOutput
end

local record StopNotebookInstanceInput
    NotebookInstanceName: string
end

local record StopNotebookInstanceOutput
end

local record StopOptimizationJobInput
    OptimizationJobName: string
end

local record StopOptimizationJobOutput
end

local record StopPipelineExecutionInput
    PipelineExecutionArn: string
    ClientRequestToken: string
end

local record StopPipelineExecutionOutput
    PipelineExecutionArn: string
end

local record StopProcessingJobInput
    ProcessingJobName: string
end

local record StopProcessingJobOutput
end

local record StopTrainingJobInput
    TrainingJobName: string
end

local record StopTrainingJobOutput
end

local record StopTransformJobInput
    TransformJobName: string
end

local record StopTransformJobOutput
end

local record UpdateActionInput
    ActionName: string
    Description: string
    Status: string
    Properties: {string : string}
    PropertiesToRemove: {string}
end

local record UpdateActionOutput
    ActionArn: string
end

local record UpdateAppImageConfigInput
    AppImageConfigName: string
    KernelGatewayImageConfig: KernelGatewayImageConfig
    JupyterLabAppImageConfig: JupyterLabAppImageConfig
    CodeEditorAppImageConfig: CodeEditorAppImageConfig
end

local record UpdateAppImageConfigOutput
    AppImageConfigArn: string
end

local record UpdateArtifactInput
    ArtifactArn: string
    ArtifactName: string
    Properties: {string : string}
    PropertiesToRemove: {string}
end

local record UpdateArtifactOutput
    ArtifactArn: string
end

local record UpdateClusterInput
    ClusterName: string
    InstanceGroups: {ClusterInstanceGroupSpecification}
    RestrictedInstanceGroups: {ClusterRestrictedInstanceGroupSpecification}
    TieredStorageConfig: ClusterTieredStorageConfig
    NodeRecovery: string
    InstanceGroupsToDelete: {string}
    NodeProvisioningMode: string
    ClusterRole: string
    AutoScaling: ClusterAutoScalingConfig
    Orchestrator: ClusterOrchestrator
end

local record UpdateClusterOutput
    ClusterArn: string
end

local record UpdateClusterSchedulerConfigInput
    ClusterSchedulerConfigId: string
    TargetVersion: number
    SchedulerConfig: SchedulerConfig
    Description: string
end

local record UpdateClusterSchedulerConfigOutput
    ClusterSchedulerConfigArn: string
    ClusterSchedulerConfigVersion: number
end

local record UpdateClusterSoftwareInput
    ClusterName: string
    InstanceGroups: {UpdateClusterSoftwareInstanceGroupSpecification}
    DeploymentConfig: DeploymentConfiguration
    ImageId: string
end

local record UpdateClusterSoftwareOutput
    ClusterArn: string
end

local record UpdateCodeRepositoryInput
    CodeRepositoryName: string
    GitConfig: GitConfigForUpdate
end

local record UpdateCodeRepositoryOutput
    CodeRepositoryArn: string
end

local record UpdateComputeQuotaInput
    ComputeQuotaId: string
    TargetVersion: number
    ComputeQuotaConfig: ComputeQuotaConfig
    ComputeQuotaTarget: ComputeQuotaTarget
    ActivationState: string
    Description: string
end

local record UpdateComputeQuotaOutput
    ComputeQuotaArn: string
    ComputeQuotaVersion: number
end

local record UpdateContextInput
    ContextName: string
    Description: string
    Properties: {string : string}
    PropertiesToRemove: {string}
end

local record UpdateContextOutput
    ContextArn: string
end

local record UpdateDeviceFleetInput
    DeviceFleetName: string
    RoleArn: string
    Description: string
    OutputConfig: EdgeOutputConfig
    EnableIotRoleAlias: boolean
end

local record UpdateDeviceFleetOutput
end

local record UpdateDevicesInput
    DeviceFleetName: string
    Devices: {Device}
end

local record UpdateDevicesOutput
end

local record UpdateDomainInput
    DomainId: string
    DefaultUserSettings: UserSettings
    DomainSettingsForUpdate: DomainSettingsForUpdate
    AppSecurityGroupManagement: string
    DefaultSpaceSettings: DefaultSpaceSettings
    SubnetIds: {string}
    AppNetworkAccessType: string
    TagPropagation: string
    VpcId: string
end

local record UpdateDomainOutput
    DomainArn: string
end

local record UpdateEndpointInput
    EndpointName: string
    EndpointConfigName: string
    RetainAllVariantProperties: boolean
    ExcludeRetainedVariantProperties: {VariantProperty}
    DeploymentConfig: DeploymentConfig
    RetainDeploymentConfig: boolean
end

local record UpdateEndpointOutput
    EndpointArn: string
end

local record UpdateEndpointWeightsAndCapacitiesInput
    EndpointName: string
    DesiredWeightsAndCapacities: {DesiredWeightAndCapacity}
end

local record UpdateEndpointWeightsAndCapacitiesOutput
    EndpointArn: string
end

local record UpdateExperimentInput
    ExperimentName: string
    DisplayName: string
    Description: string
end

local record UpdateExperimentOutput
    ExperimentArn: string
end

local record UpdateFeatureGroupInput
    FeatureGroupName: string
    FeatureAdditions: {FeatureDefinition}
    OnlineStoreConfig: OnlineStoreConfigUpdate
    ThroughputConfig: ThroughputConfigUpdate
end

local record UpdateFeatureGroupOutput
    FeatureGroupArn: string
end

local record UpdateFeatureMetadataInput
    FeatureGroupName: string
    FeatureName: string
    Description: string
    ParameterAdditions: {FeatureParameter}
    ParameterRemovals: {string}
end

local record UpdateFeatureMetadataOutput
end

local record UpdateHubInput
    HubName: string
    HubDescription: string
    HubDisplayName: string
    HubSearchKeywords: {string}
end

local record UpdateHubOutput
    HubArn: string
end

local record UpdateHubContentInput
    HubName: string
    HubContentName: string
    HubContentType: string
    HubContentVersion: string
    HubContentDisplayName: string
    HubContentDescription: string
    HubContentMarkdown: string
    HubContentSearchKeywords: {string}
    SupportStatus: string
end

local record UpdateHubContentOutput
    HubArn: string
    HubContentArn: string
end

local record UpdateHubContentReferenceInput
    HubName: string
    HubContentName: string
    HubContentType: string
    MinVersion: string
end

local record UpdateHubContentReferenceOutput
    HubArn: string
    HubContentArn: string
end

local record UpdateImageInput
    DeleteProperties: {string}
    Description: string
    DisplayName: string
    ImageName: string
    RoleArn: string
end

local record UpdateImageOutput
    ImageArn: string
end

local record UpdateImageVersionInput
    ImageName: string
    Alias: string
    Version: number
    AliasesToAdd: {string}
    AliasesToDelete: {string}
    VendorGuidance: string
    JobType: string
    MLFramework: string
    ProgrammingLang: string
    Processor: string
    Horovod: boolean
    ReleaseNotes: string
end

local record UpdateImageVersionOutput
    ImageVersionArn: string
end

local record UpdateInferenceComponentInput
    InferenceComponentName: string
    Specification: InferenceComponentSpecification
    Specifications: {InferenceComponentSpecification}
    RuntimeConfig: InferenceComponentRuntimeConfig
    DeploymentConfig: InferenceComponentDeploymentConfig
end

local record UpdateInferenceComponentOutput
    InferenceComponentArn: string
end

local record UpdateInferenceComponentRuntimeConfigInput
    InferenceComponentName: string
    DesiredRuntimeConfig: InferenceComponentRuntimeConfig
end

local record UpdateInferenceComponentRuntimeConfigOutput
    InferenceComponentArn: string
end

local record UpdateInferenceExperimentInput
    Name: string
    Schedule: InferenceExperimentSchedule
    Description: string
    ModelVariants: {ModelVariantConfig}
    DataStorageConfig: InferenceExperimentDataStorageConfig
    ShadowModeConfig: ShadowModeConfig
end

local record UpdateInferenceExperimentOutput
    InferenceExperimentArn: string
end

local record UpdateMlflowAppInput
    Arn: string
    Name: string
    ArtifactStoreUri: string
    ModelRegistrationMode: string
    WeeklyMaintenanceWindowStart: string
    DefaultDomainIdList: {string}
    AccountDefaultStatus: string
end

local record UpdateMlflowAppOutput
    Arn: string
end

local record UpdateMlflowTrackingServerInput
    TrackingServerName: string
    ArtifactStoreUri: string
    TrackingServerSize: string
    AutomaticModelRegistration: boolean
    WeeklyMaintenanceWindowStart: string
    S3BucketOwnerAccountId: string
    S3BucketOwnerVerification: boolean
end

local record UpdateMlflowTrackingServerOutput
    TrackingServerArn: string
end

local record UpdateModelCardInput
    ModelCardName: string
    Content: string
    ModelCardStatus: string
end

local record UpdateModelCardOutput
    ModelCardArn: string
end

local record UpdateModelPackageInput
    ModelPackageArn: string
    ModelApprovalStatus: string
    ModelPackageRegistrationType: string
    ApprovalDescription: string
    CustomerMetadataProperties: {string : string}
    CustomerMetadataPropertiesToRemove: {string}
    AdditionalInferenceSpecificationsToAdd: {AdditionalInferenceSpecificationDefinition}
    InferenceSpecification: InferenceSpecification
    SourceUri: string
    ModelCard: ModelPackageModelCard
    ModelLifeCycle: ModelLifeCycle
    ClientToken: string
end

local record UpdateModelPackageOutput
    ModelPackageArn: string
end

local record UpdateMonitoringAlertInput
    MonitoringScheduleName: string
    MonitoringAlertName: string
    DatapointsToAlert: number
    EvaluationPeriod: number
end

local record UpdateMonitoringAlertOutput
    MonitoringScheduleArn: string
    MonitoringAlertName: string
end

local record UpdateMonitoringScheduleInput
    MonitoringScheduleName: string
    MonitoringScheduleConfig: MonitoringScheduleConfig
end

local record UpdateMonitoringScheduleOutput
    MonitoringScheduleArn: string
end

local record UpdateNotebookInstanceInput
    NotebookInstanceName: string
    InstanceType: string
    IpAddressType: string
    PlatformIdentifier: string
    RoleArn: string
    LifecycleConfigName: string
    DisassociateLifecycleConfig: boolean
    VolumeSizeInGB: number
    DefaultCodeRepository: string
    AdditionalCodeRepositories: {string}
    AcceleratorTypes: {string}
    DisassociateAcceleratorTypes: boolean
    DisassociateDefaultCodeRepository: boolean
    DisassociateAdditionalCodeRepositories: boolean
    RootAccess: string
    InstanceMetadataServiceConfiguration: InstanceMetadataServiceConfiguration
end

local record UpdateNotebookInstanceOutput
end

local record UpdateNotebookInstanceLifecycleConfigInput
    NotebookInstanceLifecycleConfigName: string
    OnCreate: {NotebookInstanceLifecycleHook}
    OnStart: {NotebookInstanceLifecycleHook}
end

local record UpdateNotebookInstanceLifecycleConfigOutput
end

local record UpdatePartnerAppInput
    Arn: string
    MaintenanceConfig: PartnerAppMaintenanceConfig
    Tier: string
    ApplicationConfig: PartnerAppConfig
    EnableIamSessionBasedIdentity: boolean
    EnableAutoMinorVersionUpgrade: boolean
    AppVersion: string
    ClientToken: string
    Tags: {Tag}
end

local record UpdatePartnerAppOutput
    Arn: string
end

local record UpdatePipelineInput
    PipelineName: string
    PipelineDisplayName: string
    PipelineDefinition: string
    PipelineDefinitionS3Location: PipelineDefinitionS3Location
    PipelineDescription: string
    RoleArn: string
    ParallelismConfiguration: ParallelismConfiguration
end

local record UpdatePipelineOutput
    PipelineArn: string
    PipelineVersionId: number
end

local record UpdatePipelineExecutionInput
    PipelineExecutionArn: string
    PipelineExecutionDescription: string
    PipelineExecutionDisplayName: string
    ParallelismConfiguration: ParallelismConfiguration
end

local record UpdatePipelineExecutionOutput
    PipelineExecutionArn: string
end

local record UpdatePipelineVersionInput
    PipelineArn: string
    PipelineVersionId: number
    PipelineVersionDisplayName: string
    PipelineVersionDescription: string
end

local record UpdatePipelineVersionOutput
    PipelineArn: string
    PipelineVersionId: number
end

local record UpdateProjectInput
    ProjectName: string
    ProjectDescription: string
    ServiceCatalogProvisioningUpdateDetails: ServiceCatalogProvisioningUpdateDetails
    Tags: {Tag}
    TemplateProvidersToUpdate: {UpdateTemplateProvider}
end

local record UpdateProjectOutput
    ProjectArn: string
end

local record UpdateSpaceInput
    DomainId: string
    SpaceName: string
    SpaceSettings: SpaceSettings
    SpaceDisplayName: string
end

local record UpdateSpaceOutput
    SpaceArn: string
end

local record UpdateTrainingJobInput
    TrainingJobName: string
    ProfilerConfig: ProfilerConfigForUpdate
    ProfilerRuleConfigurations: {ProfilerRuleConfiguration}
    ResourceConfig: ResourceConfigForUpdate
    RemoteDebugConfig: RemoteDebugConfigForUpdate
end

local record UpdateTrainingJobOutput
    TrainingJobArn: string
end

local record UpdateTrialInput
    TrialName: string
    DisplayName: string
end

local record UpdateTrialOutput
    TrialArn: string
end

local record UpdateTrialComponentInput
    TrialComponentName: string
    DisplayName: string
    Status: TrialComponentStatus
    StartTime: number
    EndTime: number
    Parameters: {string : TrialComponentParameterValue}
    ParametersToRemove: {string}
    InputArtifacts: {string : TrialComponentArtifact}
    InputArtifactsToRemove: {string}
    OutputArtifacts: {string : TrialComponentArtifact}
    OutputArtifactsToRemove: {string}
end

local record UpdateTrialComponentOutput
    TrialComponentArn: string
end

local record UpdateUserProfileInput
    DomainId: string
    UserProfileName: string
    UserSettings: UserSettings
end

local record UpdateUserProfileOutput
    UserProfileArn: string
end

local record UpdateWorkforceInput
    WorkforceName: string
    SourceIpConfig: SourceIpConfig
    OidcConfig: OidcConfig
    WorkforceVpcConfig: WorkforceVpcConfigRequest
    IpAddressType: string
end

local record UpdateWorkforceOutput
    Workforce: Workforce
end

local record UpdateWorkteamInput
    WorkteamName: string
    MemberDefinitions: {MemberDefinition}
    Description: string
    NotificationConfiguration: NotificationConfiguration
    WorkerAccessConfiguration: WorkerAccessConfiguration
end

local record UpdateWorkteamOutput
    Workteam: Workteam
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ResourceInUse
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local record ResourceNotFound
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceLimitExceeded
    Message: string
end

local type NotebookInstanceSortKey = "Name" | "CreationTime" | "Status"

local type Processor = "CPU" | "GPU"

local type ActionStatus = "Unknown" | "InProgress" | "Completed" | "Failed" | "Stopping" | "Stopped"

local type AppSecurityGroupManagement = "Service" | "Customer"

local type SortActionsBy = "Name" | "CreationTime"

local type NotebookInstanceLifecycleConfigSortKey = "Name" | "CreationTime" | "LastModifiedTime"

local type SortTrialsBy = "Name" | "CreationTime"

local type HubStatus = "InService" | "Creating" | "Updating" | "Deleting" | "CreateFailed" | "UpdateFailed" | "DeleteFailed"

local type ListCompilationJobsSortBy = "Name" | "CreationTime" | "Status"

local type ListInferenceRecommendationsJobsSortBy = "Name" | "CreationTime" | "Status"

local type SortLineageGroupsBy = "Name" | "CreationTime"

local type HubContentSortBy = "HubContentName" | "CreationTime" | "HubContentStatus"

local type ModelPackageGroupSortBy = "Name" | "CreationTime"

local type FeatureType = "Integral" | "Fractional" | "String"

local type TagPropagation = "ENABLED" | "DISABLED"

local type AppType = "JupyterServer" | "KernelGateway" | "DetailedProfiler" | "TensorBoard" | "CodeEditor" | "JupyterLab" | "RStudioServerPro" | "RSessionGateway" | "Canvas"

local type ProjectStatus = "Pending" | "CreateInProgress" | "CreateCompleted" | "CreateFailed" | "DeleteInProgress" | "DeleteFailed" | "DeleteCompleted" | "UpdateInProgress" | "UpdateCompleted" | "UpdateFailed"

local type TrackingServerMaintenanceStatus = "MaintenanceInProgress" | "MaintenanceComplete" | "MaintenanceFailed"

local type MonitoringType = "DataQuality" | "ModelQuality" | "ModelBias" | "ModelExplainability"

local type MonitoringScheduleSortKey = "Name" | "CreationTime" | "Status"

local type AIBenchmarkJobStatus = "InProgress" | "Completed" | "Failed" | "Stopping" | "Stopped"

local type PipelineExecutionStatus = "Executing" | "Stopping" | "Stopped" | "Failed" | "Succeeded"

local type FeatureGroupStatus = "Creating" | "Created" | "CreateFailed" | "Deleting" | "DeleteFailed"

local type FeatureStatus = "ENABLED" | "DISABLED"

local type CandidateSortBy = "CreationTime" | "Status" | "FinalObjectiveMetricValue"

local type SortAssociationsBy = "SourceArn" | "DestinationArn" | "SourceType" | "DestinationType" | "CreationTime"

local type TrainingPlanSortOrder = "Ascending" | "Descending"

local type ReservedCapacityType = "UltraServer" | "Instance"

local type ListEdgeDeploymentPlansSortBy = "NAME" | "DEVICE_FLEET_NAME" | "CREATION_TIME" | "LAST_MODIFIED_TIME"

local type ModelSortKey = "Name" | "CreationTime"

local type SchedulerResourceStatus = "Creating" | "CreateFailed" | "CreateRollbackFailed" | "Created" | "Updating" | "UpdateFailed" | "UpdateRollbackFailed" | "Updated" | "Deleting" | "DeleteFailed" | "DeleteRollbackFailed" | "Deleted"

local type AlgorithmStatus = "Pending" | "InProgress" | "Completed" | "Failed" | "Deleting"

local type ResourceType = "TrainingJob" | "Experiment" | "ExperimentTrial" | "ExperimentTrialComponent" | "Endpoint" | "Model" | "ModelPackage" | "ModelPackageGroup" | "Pipeline" | "PipelineExecution" | "FeatureGroup" | "FeatureMetadata" | "Image" | "ImageVersion" | "Project" | "HyperParameterTuningJob" | "ModelCard" | "PipelineVersion"

local type ModelCardProcessingStatus = "DeleteInProgress" | "DeletePending" | "ContentDeleted" | "ExportJobsDeleted" | "DeleteCompleted" | "DeleteFailed"

local type DomainStatus = "Deleting" | "Failed" | "InService" | "Pending" | "Updating" | "Update_Failed" | "Delete_Failed"

local type ActivationState = "Enabled" | "Disabled"

local type TrackingServerStatus = "Creating" | "Created" | "CreateFailed" | "Updating" | "Updated" | "UpdateFailed" | "Deleting" | "DeleteFailed" | "Stopping" | "Stopped" | "StopFailed" | "Starting" | "Started" | "StartFailed" | "MaintenanceInProgress" | "MaintenanceComplete" | "MaintenanceFailed"

local type ImageVersionStatus = "CREATING" | "CREATED" | "CREATE_FAILED" | "DELETING" | "DELETE_FAILED"

local type AutoMLSortOrder = "Ascending" | "Descending"

local type MaintenanceStatus = "MaintenanceInProgress" | "MaintenanceComplete" | "MaintenanceFailed"

local type SortTrackingServerBy = "Name" | "CreationTime" | "Status"

local type MlflowAppStatus = "Creating" | "Created" | "CreateFailed" | "Updating" | "Updated" | "UpdateFailed" | "Deleting" | "DeleteFailed" | "Deleted"

local type BatchStrategy = "MultiRecord" | "SingleRecord"

local type NotebookInstanceSortOrder = "Ascending" | "Descending"

local type SortBy = "Name" | "CreationTime" | "Status"

local type IPAddressType = "ipv4" | "dualstack"

local type TrackingServerSize = "Small" | "Medium" | "Large"

local type ModelCardStatus = "Draft" | "PendingReview" | "Approved" | "Archived"

local type InferenceComponentStatus = "InService" | "Creating" | "Updating" | "Failed" | "Deleting"

local type CodeRepositorySortBy = "Name" | "CreationTime" | "LastModifiedTime"

local type SortMlflowAppBy = "Name" | "CreationTime" | "Status"

local type ClusterSortBy = "CREATION_TIME" | "NAME"

local type ModelCardExportJobStatus = "InProgress" | "Completed" | "Failed"

local type CandidateStatus = "Completed" | "InProgress" | "Failed" | "Stopped" | "Stopping"

local type HubContentType = "Model" | "Notebook" | "ModelReference" | "DataSet" | "JsonDoc"

local type ListEdgePackagingJobsSortBy = "NAME" | "MODEL_NAME" | "CREATION_TIME" | "LAST_MODIFIED_TIME" | "STATUS"

local type NotebookInstanceLifecycleConfigSortOrder = "Ascending" | "Descending"

local type MonitoringAlertStatus = "InAlert" | "OK"

local type InferenceExperimentStopDesiredState = "Completed" | "Cancelled"

local type ModelCardVersionSortBy = "Version"

local type AppNetworkAccessType = "PublicInternetOnly" | "VpcOnly"

local type SearchSortOrder = "Ascending" | "Descending"

local type TrainingPlanSortBy = "TrainingPlanName" | "StartTime" | "Status"

local type TrainingJobStatus = "InProgress" | "Completed" | "Failed" | "Stopping" | "Stopped" | "Deleting"

local type ListAIWorkloadConfigsSortBy = "Name" | "CreationTime"

local type FeatureGroupSortOrder = "Ascending" | "Descending"

local type ResourceCatalogSortOrder = "Ascending" | "Descending"

local type ListOptimizationJobsSortBy = "Name" | "CreationTime" | "Status"

local type JobType = "TRAINING" | "INFERENCE" | "NOTEBOOK_KERNEL"

local type TransformJobStatus = "InProgress" | "Completed" | "Failed" | "Stopping" | "Stopped"

local type AutoMLProblemTypeConfigName = "ImageClassification" | "TextClassification" | "TimeSeriesForecasting" | "Tabular" | "TextGeneration"

local type OptimizationJobStatus = "INPROGRESS" | "COMPLETED" | "FAILED" | "STARTING" | "STOPPING" | "STOPPED"

local type ScheduleStatus = "Pending" | "Failed" | "Scheduled" | "Stopped"

local type HubContentSupportStatus = "Supported" | "Deprecated" | "Restricted"

local type InstanceType = "ml.t2.medium" | "ml.t2.large" | "ml.t2.xlarge" | "ml.t2.2xlarge" | "ml.t3.medium" | "ml.t3.large" | "ml.t3.xlarge" | "ml.t3.2xlarge" | "ml.m4.xlarge" | "ml.m4.2xlarge" | "ml.m4.4xlarge" | "ml.m4.10xlarge" | "ml.m4.16xlarge" | "ml.m5.xlarge" | "ml.m5.2xlarge" | "ml.m5.4xlarge" | "ml.m5.12xlarge" | "ml.m5.24xlarge" | "ml.m5d.large" | "ml.m5d.xlarge" | "ml.m5d.2xlarge" | "ml.m5d.4xlarge" | "ml.m5d.8xlarge" | "ml.m5d.12xlarge" | "ml.m5d.16xlarge" | "ml.m5d.24xlarge" | "ml.c4.xlarge" | "ml.c4.2xlarge" | "ml.c4.4xlarge" | "ml.c4.8xlarge" | "ml.c5.xlarge" | "ml.c5.2xlarge" | "ml.c5.4xlarge" | "ml.c5.9xlarge" | "ml.c5.18xlarge" | "ml.c5d.xlarge" | "ml.c5d.2xlarge" | "ml.c5d.4xlarge" | "ml.c5d.9xlarge" | "ml.c5d.18xlarge" | "ml.p2.xlarge" | "ml.p2.8xlarge" | "ml.p2.16xlarge" | "ml.p3.2xlarge" | "ml.p3.8xlarge" | "ml.p3.16xlarge" | "ml.p3dn.24xlarge" | "ml.g4dn.xlarge" | "ml.g4dn.2xlarge" | "ml.g4dn.4xlarge" | "ml.g4dn.8xlarge" | "ml.g4dn.12xlarge" | "ml.g4dn.16xlarge" | "ml.r5.large" | "ml.r5.xlarge" | "ml.r5.2xlarge" | "ml.r5.4xlarge" | "ml.r5.8xlarge" | "ml.r5.12xlarge" | "ml.r5.16xlarge" | "ml.r5.24xlarge" | "ml.g5.xlarge" | "ml.g5.2xlarge" | "ml.g5.4xlarge" | "ml.g5.8xlarge" | "ml.g5.16xlarge" | "ml.g5.12xlarge" | "ml.g5.24xlarge" | "ml.g5.48xlarge" | "ml.inf1.xlarge" | "ml.inf1.2xlarge" | "ml.inf1.6xlarge" | "ml.inf1.24xlarge" | "ml.trn1.2xlarge" | "ml.trn1.32xlarge" | "ml.trn1n.32xlarge" | "ml.inf2.xlarge" | "ml.inf2.8xlarge" | "ml.inf2.24xlarge" | "ml.inf2.48xlarge" | "ml.p4d.24xlarge" | "ml.p4de.24xlarge" | "ml.p5.48xlarge" | "ml.p6-b200.48xlarge" | "ml.m6i.large" | "ml.m6i.xlarge" | "ml.m6i.2xlarge" | "ml.m6i.4xlarge" | "ml.m6i.8xlarge" | "ml.m6i.12xlarge" | "ml.m6i.16xlarge" | "ml.m6i.24xlarge" | "ml.m6i.32xlarge" | "ml.m7i.large" | "ml.m7i.xlarge" | "ml.m7i.2xlarge" | "ml.m7i.4xlarge" | "ml.m7i.8xlarge" | "ml.m7i.12xlarge" | "ml.m7i.16xlarge" | "ml.m7i.24xlarge" | "ml.m7i.48xlarge" | "ml.c6i.large" | "ml.c6i.xlarge" | "ml.c6i.2xlarge" | "ml.c6i.4xlarge" | "ml.c6i.8xlarge" | "ml.c6i.12xlarge" | "ml.c6i.16xlarge" | "ml.c6i.24xlarge" | "ml.c6i.32xlarge" | "ml.c7i.large" | "ml.c7i.xlarge" | "ml.c7i.2xlarge" | "ml.c7i.4xlarge" | "ml.c7i.8xlarge" | "ml.c7i.12xlarge" | "ml.c7i.16xlarge" | "ml.c7i.24xlarge" | "ml.c7i.48xlarge" | "ml.r6i.large" | "ml.r6i.xlarge" | "ml.r6i.2xlarge" | "ml.r6i.4xlarge" | "ml.r6i.8xlarge" | "ml.r6i.12xlarge" | "ml.r6i.16xlarge" | "ml.r6i.24xlarge" | "ml.r6i.32xlarge" | "ml.r7i.large" | "ml.r7i.xlarge" | "ml.r7i.2xlarge" | "ml.r7i.4xlarge" | "ml.r7i.8xlarge" | "ml.r7i.12xlarge" | "ml.r7i.16xlarge" | "ml.r7i.24xlarge" | "ml.r7i.48xlarge" | "ml.m6id.large" | "ml.m6id.xlarge" | "ml.m6id.2xlarge" | "ml.m6id.4xlarge" | "ml.m6id.8xlarge" | "ml.m6id.12xlarge" | "ml.m6id.16xlarge" | "ml.m6id.24xlarge" | "ml.m6id.32xlarge" | "ml.c6id.large" | "ml.c6id.xlarge" | "ml.c6id.2xlarge" | "ml.c6id.4xlarge" | "ml.c6id.8xlarge" | "ml.c6id.12xlarge" | "ml.c6id.16xlarge" | "ml.c6id.24xlarge" | "ml.c6id.32xlarge" | "ml.r6id.large" | "ml.r6id.xlarge" | "ml.r6id.2xlarge" | "ml.r6id.4xlarge" | "ml.r6id.8xlarge" | "ml.r6id.12xlarge" | "ml.r6id.16xlarge" | "ml.r6id.24xlarge" | "ml.r6id.32xlarge" | "ml.g6.xlarge" | "ml.g6.2xlarge" | "ml.g6.4xlarge" | "ml.g6.8xlarge" | "ml.g6.12xlarge" | "ml.g6.16xlarge" | "ml.g6.24xlarge" | "ml.g6.48xlarge"

local type HubSortBy = "HubName" | "CreationTime" | "HubStatus" | "AccountIdOwner"

local type AssociationEdgeType = "ContributedTo" | "AssociatedWith" | "DerivedFrom" | "Produced" | "SameAs"

local type ImageStatus = "CREATING" | "CREATED" | "CREATE_FAILED" | "UPDATING" | "UPDATE_FAILED" | "DELETING" | "DELETE_FAILED"

local type PartnerAppType = "lakera-guard" | "comet" | "deepchecks-llm-evaluation" | "fiddler"

local type ModelRegistrationMode = "AutoModelRegistrationEnabled" | "AutoModelRegistrationDisabled"

local type EdgePackagingJobStatus = "STARTING" | "INPROGRESS" | "COMPLETED" | "FAILED" | "STOPPING" | "STOPPED"

local type OrderKey = "Ascending" | "Descending"

local type CrossAccountFilterOption = "SameAccount" | "CrossAccount"

local type SortArtifactsBy = "CreationTime"

local type RecommendationJobType = "Default" | "Advanced"

local type AlgorithmSortBy = "Name" | "CreationTime"

local type SortExperimentsBy = "Name" | "CreationTime"

local type AutoMLJobStatus = "Completed" | "InProgress" | "Failed" | "Stopped" | "Stopping"

local type CodeRepositorySortOrder = "Ascending" | "Descending"

local type EndpointStatus = "OutOfService" | "Creating" | "Updating" | "SystemUpdating" | "RollingBack" | "InService" | "Deleting" | "Failed" | "UpdateRollbackFailed"

local type ProblemType = "BinaryClassification" | "MulticlassClassification" | "Regression"

local type ModelCardSortOrder = "Ascending" | "Descending"

local type SortClusterSchedulerConfigBy = "Name" | "CreationTime" | "Status"

local type ListLabelingJobsForWorkteamSortByOptions = "CreationTime"

local type ListDeviceFleetsSortBy = "NAME" | "CREATION_TIME" | "LAST_MODIFIED_TIME"

local type ListAIBenchmarkJobsSortBy = "Name" | "CreationTime" | "Status"

local type RecommendationJobStatus = "PENDING" | "IN_PROGRESS" | "COMPLETED" | "FAILED" | "STOPPING" | "STOPPED" | "DELETING" | "DELETED"

local type RootAccess = "Enabled" | "Disabled"

local type TrainingJobSortByOptions = "Name" | "CreationTime" | "Status" | "FinalObjectiveMetricValue"

local type HumanTaskUiStatus = "Active" | "Deleting"

local type PartnerAppStatus = "Creating" | "Updating" | "Deleting" | "Available" | "Failed" | "UpdateFailed" | "Deleted"

local type HubContentStatus = "Available" | "Importing" | "Deleting" | "ImportFailed" | "DeleteFailed" | "PendingImport" | "PendingDelete"

local type StudioLifecycleConfigAppType = "JupyterServer" | "KernelGateway" | "CodeEditor" | "JupyterLab"

local type PipelineStatus = "Active" | "Deleting"

local type HyperParameterTuningJobSortByOptions = "Name" | "Status" | "CreationTime"

local type SpaceSortKey = "CreationTime" | "LastModifiedTime"

local type ImageSortBy = "CREATION_TIME" | "LAST_MODIFIED_TIME" | "IMAGE_NAME"

local type IsTrackingServerActive = "Active" | "Inactive"

local type ListWorkforcesSortByOptions = "Name" | "CreateDate"

local type MonitoringExecutionSortKey = "CreationTime" | "ScheduledTime" | "Status"

local type ClusterNodeProvisioningMode = "Continuous"

local type MonitoringJobDefinitionSortKey = "Name" | "CreationTime"

local type SortPipelinesBy = "Name" | "CreationTime"

local type SortTrialComponentsBy = "Name" | "CreationTime"

local type ReservedCapacityInstanceType = "ml.p4d.24xlarge" | "ml.p5.48xlarge" | "ml.p5e.48xlarge" | "ml.p5en.48xlarge" | "ml.trn1.32xlarge" | "ml.trn2.48xlarge" | "ml.p6-b200.48xlarge" | "ml.p4de.24xlarge" | "ml.p6e-gb200.36xlarge" | "ml.p5.4xlarge" | "ml.p6-b300.48xlarge"

local type SagemakerServicecatalogStatus = "Enabled" | "Disabled"

local type ProjectSortOrder = "Ascending" | "Descending"

local type ModelPackageGroupStatus = "Pending" | "InProgress" | "Completed" | "Failed" | "Deleting" | "DeleteFailed"

local type FlowDefinitionStatus = "Initializing" | "Active" | "Failed" | "Deleting"

local type ResourceCatalogSortBy = "CreationTime"

local type MonitoringAlertHistorySortKey = "CreationTime" | "Status"

local type VendorGuidance = "NOT_PROVIDED" | "STABLE" | "TO_BE_ARCHIVED" | "ARCHIVED"

local type SortContextsBy = "Name" | "CreationTime"

local type OfflineStoreStatusValue = "Active" | "Blocked" | "Disabled"

local type ListWorkteamsSortByOptions = "Name" | "CreateDate"

local type ModelPackageType = "Versioned" | "Unversioned" | "Both"

local type StudioLifecycleConfigSortKey = "CreationTime" | "LastModifiedTime" | "Name"

local type VolumeAttachmentStatus = "attaching" | "attached" | "detaching" | "detached" | "busy"

local type AIRecommendationJobStatus = "InProgress" | "Completed" | "Failed" | "Stopping" | "Stopped"

local type AccountDefaultStatus = "ENABLED" | "DISABLED"

local type SortInferenceExperimentsBy = "Name" | "CreationTime" | "Status"

local type EndpointConfigSortKey = "Name" | "CreationTime"

local type OptimizationJobDeploymentInstanceType = "ml.p4d.24xlarge" | "ml.p4de.24xlarge" | "ml.p5.48xlarge" | "ml.p5e.48xlarge" | "ml.p5en.48xlarge" | "ml.g4dn.xlarge" | "ml.g4dn.2xlarge" | "ml.g4dn.4xlarge" | "ml.g4dn.8xlarge" | "ml.g4dn.12xlarge" | "ml.g4dn.16xlarge" | "ml.g5.xlarge" | "ml.g5.2xlarge" | "ml.g5.4xlarge" | "ml.g5.8xlarge" | "ml.g5.12xlarge" | "ml.g5.16xlarge" | "ml.g5.24xlarge" | "ml.g5.48xlarge" | "ml.g6.xlarge" | "ml.g6.2xlarge" | "ml.g6.4xlarge" | "ml.g6.8xlarge" | "ml.g6.12xlarge" | "ml.g6.16xlarge" | "ml.g6.24xlarge" | "ml.g6.48xlarge" | "ml.g6e.xlarge" | "ml.g6e.2xlarge" | "ml.g6e.4xlarge" | "ml.g6e.8xlarge" | "ml.g6e.12xlarge" | "ml.g6e.16xlarge" | "ml.g6e.24xlarge" | "ml.g6e.48xlarge" | "ml.inf2.xlarge" | "ml.inf2.8xlarge" | "ml.inf2.24xlarge" | "ml.inf2.48xlarge" | "ml.trn1.2xlarge" | "ml.trn1.32xlarge" | "ml.trn1n.32xlarge"

local type UserProfileSortKey = "CreationTime" | "LastModifiedTime"

local type ModelPackageSortBy = "Name" | "CreationTime"

local type SkipModelValidation = "All" | "None"

local type WarmPoolResourceStatus = "Available" | "Terminated" | "Reused" | "InUse"

local type InferenceComponentSortKey = "Name" | "CreationTime" | "Status"

local type ImageVersionSortOrder = "ASCENDING" | "DESCENDING"

local type SortOrder = "Ascending" | "Descending"

local type EndpointSortKey = "Name" | "CreationTime" | "Status"

local type ImageVersionSortBy = "CREATION_TIME" | "LAST_MODIFIED_TIME" | "VERSION"

local type CompilationJobStatus = "INPROGRESS" | "COMPLETED" | "FAILED" | "STARTING" | "STOPPING" | "STOPPED"

local type AutoMLSortBy = "Name" | "CreationTime" | "Status"

local type UserProfileStatus = "Deleting" | "Failed" | "InService" | "Pending" | "Updating" | "Update_Failed" | "Delete_Failed"

local type ListAIRecommendationJobsSortBy = "Name" | "CreationTime" | "Status"

local type AppStatus = "Deleted" | "Deleting" | "Failed" | "InService" | "Pending"

local type ProfilingStatus = "Enabled" | "Disabled"

local type AuthMode = "SSO" | "IAM"

local type AutoMLJobSecondaryStatus = "Starting" | "MaxCandidatesReached" | "Failed" | "Stopped" | "MaxAutoMLJobRuntimeReached" | "Stopping" | "CandidateDefinitionsGenerated" | "Completed" | "ExplainabilityError" | "DeployingModel" | "ModelDeploymentError" | "GeneratingModelInsightsReport" | "ModelInsightsError" | "AnalyzingData" | "FeatureEngineering" | "ModelTuning" | "GeneratingExplainabilityReport" | "TrainingModels" | "PreTraining"

local type ModelCardSortBy = "Name" | "CreationTime"

local type ClusterEventResourceType = "Cluster" | "InstanceGroup" | "Instance"

local type ClusterNodeRecovery = "Automatic" | "None"

local type ModelApprovalStatus = "Approved" | "Rejected" | "PendingManualApproval"

local type SortQuotaBy = "Name" | "CreationTime" | "Status" | "ClusterArn"

local type HyperParameterTuningJobStatus = "Completed" | "InProgress" | "Failed" | "Stopped" | "Stopping" | "Deleting" | "DeleteFailed"

local type SortPipelineExecutionsBy = "CreationTime" | "PipelineExecutionArn"

local type SpaceStatus = "Deleting" | "Failed" | "InService" | "Pending" | "Updating" | "Update_Failed" | "Delete_Failed"

local type ModelPackageStatus = "Pending" | "InProgress" | "Completed" | "Failed" | "Deleting"

local type SecondaryStatus = "Starting" | "LaunchingMLInstances" | "PreparingTrainingStack" | "Downloading" | "DownloadingTrainingImage" | "Training" | "Uploading" | "Stopping" | "Stopped" | "MaxRuntimeExceeded" | "Completed" | "Failed" | "Interrupted" | "MaxWaitTimeExceeded" | "Updating" | "Restarting" | "Pending"

local type ExecutionStatus = "Pending" | "Completed" | "CompletedWithViolations" | "InProgress" | "Failed" | "Stopping" | "Stopped"

local type ImageSortOrder = "ASCENDING" | "DESCENDING"

local type Direction = "Both" | "Ascendants" | "Descendants"

local type WorkforceIpAddressType = "ipv4" | "dualstack"

local type ModelCardExportJobSortOrder = "Ascending" | "Descending"

local type ProcessingJobStatus = "InProgress" | "Completed" | "Failed" | "Stopping" | "Stopped"

local type ProjectSortBy = "Name" | "CreationTime"

local type TrainingPlanStatus = "Pending" | "Active" | "Scheduled" | "Expired" | "Failed"

local type DirectInternetAccess = "Enabled" | "Disabled"

local type RecommendationStepType = "BENCHMARK"

local type NotebookInstanceStatus = "Pending" | "InService" | "Stopping" | "Stopped" | "Failed" | "Deleting" | "Updating"

local type PartnerAppAuthType = "IAM"

local type AppSortKey = "CreationTime"

local type EventSortBy = "EventTime"

local type ModelPackageRegistrationType = "Logged" | "Registered"

local type ReservedCapacityStatus = "Pending" | "Active" | "Scheduled" | "Expired" | "Failed"

local type ModelCardExportJobSortBy = "Name" | "CreationTime" | "Status"

local type InferenceExperimentStatus = "Creating" | "Created" | "Updating" | "Running" | "Starting" | "Stopping" | "Completed" | "Cancelled"

local type ClusterStatus = "Creating" | "Deleting" | "Failed" | "InService" | "RollingBack" | "SystemUpdating" | "Updating"

local type LabelingJobStatus = "Initializing" | "InProgress" | "Completed" | "Failed" | "Stopping" | "Stopped"

local type FeatureGroupSortBy = "Name" | "FeatureGroupStatus" | "OfflineStoreStatus" | "CreationTime"

local type AppImageConfigSortKey = "CreationTime" | "LastModifiedTime" | "Name"

local type InferenceExperimentType = "ShadowMode"

local record M
    AddAssociationInput: AddAssociationInput
    AddAssociationOutput: AddAssociationOutput
    AddTagsInput: AddTagsInput
    AddTagsOutput: AddTagsOutput
    AssociateTrialComponentInput: AssociateTrialComponentInput
    AssociateTrialComponentOutput: AssociateTrialComponentOutput
    AttachClusterNodeVolumeInput: AttachClusterNodeVolumeInput
    AttachClusterNodeVolumeOutput: AttachClusterNodeVolumeOutput
    BatchAddClusterNodesInput: BatchAddClusterNodesInput
    BatchAddClusterNodesOutput: BatchAddClusterNodesOutput
    BatchDeleteClusterNodesInput: BatchDeleteClusterNodesInput
    BatchDeleteClusterNodesOutput: BatchDeleteClusterNodesOutput
    BatchDescribeModelPackageInput: BatchDescribeModelPackageInput
    BatchDescribeModelPackageOutput: BatchDescribeModelPackageOutput
    BatchRebootClusterNodesInput: BatchRebootClusterNodesInput
    BatchRebootClusterNodesOutput: BatchRebootClusterNodesOutput
    BatchReplaceClusterNodesInput: BatchReplaceClusterNodesInput
    BatchReplaceClusterNodesOutput: BatchReplaceClusterNodesOutput
    CreateActionInput: CreateActionInput
    CreateActionOutput: CreateActionOutput
    CreateAIBenchmarkJobInput: CreateAIBenchmarkJobInput
    CreateAIBenchmarkJobOutput: CreateAIBenchmarkJobOutput
    CreateAIRecommendationJobInput: CreateAIRecommendationJobInput
    CreateAIRecommendationJobOutput: CreateAIRecommendationJobOutput
    CreateAIWorkloadConfigInput: CreateAIWorkloadConfigInput
    CreateAIWorkloadConfigOutput: CreateAIWorkloadConfigOutput
    CreateAlgorithmInput: CreateAlgorithmInput
    CreateAlgorithmOutput: CreateAlgorithmOutput
    CreateAppInput: CreateAppInput
    CreateAppOutput: CreateAppOutput
    CreateAppImageConfigInput: CreateAppImageConfigInput
    CreateAppImageConfigOutput: CreateAppImageConfigOutput
    CreateArtifactInput: CreateArtifactInput
    CreateArtifactOutput: CreateArtifactOutput
    CreateAutoMLJobInput: CreateAutoMLJobInput
    CreateAutoMLJobOutput: CreateAutoMLJobOutput
    CreateAutoMLJobV2Input: CreateAutoMLJobV2Input
    CreateAutoMLJobV2Output: CreateAutoMLJobV2Output
    CreateClusterInput: CreateClusterInput
    CreateClusterOutput: CreateClusterOutput
    CreateClusterSchedulerConfigInput: CreateClusterSchedulerConfigInput
    CreateClusterSchedulerConfigOutput: CreateClusterSchedulerConfigOutput
    CreateCodeRepositoryInput: CreateCodeRepositoryInput
    CreateCodeRepositoryOutput: CreateCodeRepositoryOutput
    CreateCompilationJobInput: CreateCompilationJobInput
    CreateCompilationJobOutput: CreateCompilationJobOutput
    CreateComputeQuotaInput: CreateComputeQuotaInput
    CreateComputeQuotaOutput: CreateComputeQuotaOutput
    CreateContextInput: CreateContextInput
    CreateContextOutput: CreateContextOutput
    CreateDataQualityJobDefinitionInput: CreateDataQualityJobDefinitionInput
    CreateDataQualityJobDefinitionOutput: CreateDataQualityJobDefinitionOutput
    CreateDeviceFleetInput: CreateDeviceFleetInput
    CreateDeviceFleetOutput: CreateDeviceFleetOutput
    CreateDomainInput: CreateDomainInput
    CreateDomainOutput: CreateDomainOutput
    CreateEdgeDeploymentPlanInput: CreateEdgeDeploymentPlanInput
    CreateEdgeDeploymentPlanOutput: CreateEdgeDeploymentPlanOutput
    CreateEdgeDeploymentStageInput: CreateEdgeDeploymentStageInput
    CreateEdgeDeploymentStageOutput: CreateEdgeDeploymentStageOutput
    CreateEdgePackagingJobInput: CreateEdgePackagingJobInput
    CreateEdgePackagingJobOutput: CreateEdgePackagingJobOutput
    CreateEndpointInput: CreateEndpointInput
    CreateEndpointOutput: CreateEndpointOutput
    CreateEndpointConfigInput: CreateEndpointConfigInput
    CreateEndpointConfigOutput: CreateEndpointConfigOutput
    CreateExperimentInput: CreateExperimentInput
    CreateExperimentOutput: CreateExperimentOutput
    CreateFeatureGroupInput: CreateFeatureGroupInput
    CreateFeatureGroupOutput: CreateFeatureGroupOutput
    CreateFlowDefinitionInput: CreateFlowDefinitionInput
    CreateFlowDefinitionOutput: CreateFlowDefinitionOutput
    CreateHubInput: CreateHubInput
    CreateHubOutput: CreateHubOutput
    CreateHubContentPresignedUrlsInput: CreateHubContentPresignedUrlsInput
    CreateHubContentPresignedUrlsOutput: CreateHubContentPresignedUrlsOutput
    CreateHubContentReferenceInput: CreateHubContentReferenceInput
    CreateHubContentReferenceOutput: CreateHubContentReferenceOutput
    CreateHumanTaskUiInput: CreateHumanTaskUiInput
    CreateHumanTaskUiOutput: CreateHumanTaskUiOutput
    CreateHyperParameterTuningJobInput: CreateHyperParameterTuningJobInput
    CreateHyperParameterTuningJobOutput: CreateHyperParameterTuningJobOutput
    CreateImageInput: CreateImageInput
    CreateImageOutput: CreateImageOutput
    CreateImageVersionInput: CreateImageVersionInput
    CreateImageVersionOutput: CreateImageVersionOutput
    CreateInferenceComponentInput: CreateInferenceComponentInput
    CreateInferenceComponentOutput: CreateInferenceComponentOutput
    CreateInferenceExperimentInput: CreateInferenceExperimentInput
    CreateInferenceExperimentOutput: CreateInferenceExperimentOutput
    CreateInferenceRecommendationsJobInput: CreateInferenceRecommendationsJobInput
    CreateInferenceRecommendationsJobOutput: CreateInferenceRecommendationsJobOutput
    CreateLabelingJobInput: CreateLabelingJobInput
    CreateLabelingJobOutput: CreateLabelingJobOutput
    CreateMlflowAppInput: CreateMlflowAppInput
    CreateMlflowAppOutput: CreateMlflowAppOutput
    CreateMlflowTrackingServerInput: CreateMlflowTrackingServerInput
    CreateMlflowTrackingServerOutput: CreateMlflowTrackingServerOutput
    CreateModelInput: CreateModelInput
    CreateModelOutput: CreateModelOutput
    CreateModelBiasJobDefinitionInput: CreateModelBiasJobDefinitionInput
    CreateModelBiasJobDefinitionOutput: CreateModelBiasJobDefinitionOutput
    CreateModelCardInput: CreateModelCardInput
    CreateModelCardOutput: CreateModelCardOutput
    CreateModelCardExportJobInput: CreateModelCardExportJobInput
    CreateModelCardExportJobOutput: CreateModelCardExportJobOutput
    CreateModelExplainabilityJobDefinitionInput: CreateModelExplainabilityJobDefinitionInput
    CreateModelExplainabilityJobDefinitionOutput: CreateModelExplainabilityJobDefinitionOutput
    CreateModelPackageInput: CreateModelPackageInput
    CreateModelPackageOutput: CreateModelPackageOutput
    CreateModelPackageGroupInput: CreateModelPackageGroupInput
    CreateModelPackageGroupOutput: CreateModelPackageGroupOutput
    CreateModelQualityJobDefinitionInput: CreateModelQualityJobDefinitionInput
    CreateModelQualityJobDefinitionOutput: CreateModelQualityJobDefinitionOutput
    CreateMonitoringScheduleInput: CreateMonitoringScheduleInput
    CreateMonitoringScheduleOutput: CreateMonitoringScheduleOutput
    CreateNotebookInstanceInput: CreateNotebookInstanceInput
    CreateNotebookInstanceOutput: CreateNotebookInstanceOutput
    CreateNotebookInstanceLifecycleConfigInput: CreateNotebookInstanceLifecycleConfigInput
    CreateNotebookInstanceLifecycleConfigOutput: CreateNotebookInstanceLifecycleConfigOutput
    CreateOptimizationJobInput: CreateOptimizationJobInput
    CreateOptimizationJobOutput: CreateOptimizationJobOutput
    CreatePartnerAppInput: CreatePartnerAppInput
    CreatePartnerAppOutput: CreatePartnerAppOutput
    CreatePartnerAppPresignedUrlInput: CreatePartnerAppPresignedUrlInput
    CreatePartnerAppPresignedUrlOutput: CreatePartnerAppPresignedUrlOutput
    CreatePipelineInput: CreatePipelineInput
    CreatePipelineOutput: CreatePipelineOutput
    CreatePresignedDomainUrlInput: CreatePresignedDomainUrlInput
    CreatePresignedDomainUrlOutput: CreatePresignedDomainUrlOutput
    CreatePresignedMlflowAppUrlInput: CreatePresignedMlflowAppUrlInput
    CreatePresignedMlflowAppUrlOutput: CreatePresignedMlflowAppUrlOutput
    CreatePresignedMlflowTrackingServerUrlInput: CreatePresignedMlflowTrackingServerUrlInput
    CreatePresignedMlflowTrackingServerUrlOutput: CreatePresignedMlflowTrackingServerUrlOutput
    CreatePresignedNotebookInstanceUrlInput: CreatePresignedNotebookInstanceUrlInput
    CreatePresignedNotebookInstanceUrlOutput: CreatePresignedNotebookInstanceUrlOutput
    CreateProcessingJobInput: CreateProcessingJobInput
    CreateProcessingJobOutput: CreateProcessingJobOutput
    CreateProjectInput: CreateProjectInput
    CreateProjectOutput: CreateProjectOutput
    CreateSpaceInput: CreateSpaceInput
    CreateSpaceOutput: CreateSpaceOutput
    CreateStudioLifecycleConfigInput: CreateStudioLifecycleConfigInput
    CreateStudioLifecycleConfigOutput: CreateStudioLifecycleConfigOutput
    CreateTrainingJobInput: CreateTrainingJobInput
    CreateTrainingJobOutput: CreateTrainingJobOutput
    CreateTrainingPlanInput: CreateTrainingPlanInput
    CreateTrainingPlanOutput: CreateTrainingPlanOutput
    CreateTransformJobInput: CreateTransformJobInput
    CreateTransformJobOutput: CreateTransformJobOutput
    CreateTrialInput: CreateTrialInput
    CreateTrialOutput: CreateTrialOutput
    CreateTrialComponentInput: CreateTrialComponentInput
    CreateTrialComponentOutput: CreateTrialComponentOutput
    CreateUserProfileInput: CreateUserProfileInput
    CreateUserProfileOutput: CreateUserProfileOutput
    CreateWorkforceInput: CreateWorkforceInput
    CreateWorkforceOutput: CreateWorkforceOutput
    CreateWorkteamInput: CreateWorkteamInput
    CreateWorkteamOutput: CreateWorkteamOutput
    DeleteActionInput: DeleteActionInput
    DeleteActionOutput: DeleteActionOutput
    DeleteAIBenchmarkJobInput: DeleteAIBenchmarkJobInput
    DeleteAIBenchmarkJobOutput: DeleteAIBenchmarkJobOutput
    DeleteAIRecommendationJobInput: DeleteAIRecommendationJobInput
    DeleteAIRecommendationJobOutput: DeleteAIRecommendationJobOutput
    DeleteAIWorkloadConfigInput: DeleteAIWorkloadConfigInput
    DeleteAIWorkloadConfigOutput: DeleteAIWorkloadConfigOutput
    DeleteAlgorithmInput: DeleteAlgorithmInput
    DeleteAlgorithmOutput: DeleteAlgorithmOutput
    DeleteAppInput: DeleteAppInput
    DeleteAppOutput: DeleteAppOutput
    DeleteAppImageConfigInput: DeleteAppImageConfigInput
    DeleteAppImageConfigOutput: DeleteAppImageConfigOutput
    DeleteArtifactInput: DeleteArtifactInput
    DeleteArtifactOutput: DeleteArtifactOutput
    DeleteAssociationInput: DeleteAssociationInput
    DeleteAssociationOutput: DeleteAssociationOutput
    DeleteClusterInput: DeleteClusterInput
    DeleteClusterOutput: DeleteClusterOutput
    DeleteClusterSchedulerConfigInput: DeleteClusterSchedulerConfigInput
    DeleteClusterSchedulerConfigOutput: DeleteClusterSchedulerConfigOutput
    DeleteCodeRepositoryInput: DeleteCodeRepositoryInput
    DeleteCodeRepositoryOutput: DeleteCodeRepositoryOutput
    DeleteCompilationJobInput: DeleteCompilationJobInput
    DeleteCompilationJobOutput: DeleteCompilationJobOutput
    DeleteComputeQuotaInput: DeleteComputeQuotaInput
    DeleteComputeQuotaOutput: DeleteComputeQuotaOutput
    DeleteContextInput: DeleteContextInput
    DeleteContextOutput: DeleteContextOutput
    DeleteDataQualityJobDefinitionInput: DeleteDataQualityJobDefinitionInput
    DeleteDataQualityJobDefinitionOutput: DeleteDataQualityJobDefinitionOutput
    DeleteDeviceFleetInput: DeleteDeviceFleetInput
    DeleteDeviceFleetOutput: DeleteDeviceFleetOutput
    DeleteDomainInput: DeleteDomainInput
    DeleteDomainOutput: DeleteDomainOutput
    DeleteEdgeDeploymentPlanInput: DeleteEdgeDeploymentPlanInput
    DeleteEdgeDeploymentPlanOutput: DeleteEdgeDeploymentPlanOutput
    DeleteEdgeDeploymentStageInput: DeleteEdgeDeploymentStageInput
    DeleteEdgeDeploymentStageOutput: DeleteEdgeDeploymentStageOutput
    DeleteEndpointInput: DeleteEndpointInput
    DeleteEndpointOutput: DeleteEndpointOutput
    DeleteEndpointConfigInput: DeleteEndpointConfigInput
    DeleteEndpointConfigOutput: DeleteEndpointConfigOutput
    DeleteExperimentInput: DeleteExperimentInput
    DeleteExperimentOutput: DeleteExperimentOutput
    DeleteFeatureGroupInput: DeleteFeatureGroupInput
    DeleteFeatureGroupOutput: DeleteFeatureGroupOutput
    DeleteFlowDefinitionInput: DeleteFlowDefinitionInput
    DeleteFlowDefinitionOutput: DeleteFlowDefinitionOutput
    DeleteHubInput: DeleteHubInput
    DeleteHubOutput: DeleteHubOutput
    DeleteHubContentInput: DeleteHubContentInput
    DeleteHubContentOutput: DeleteHubContentOutput
    DeleteHubContentReferenceInput: DeleteHubContentReferenceInput
    DeleteHubContentReferenceOutput: DeleteHubContentReferenceOutput
    DeleteHumanTaskUiInput: DeleteHumanTaskUiInput
    DeleteHumanTaskUiOutput: DeleteHumanTaskUiOutput
    DeleteHyperParameterTuningJobInput: DeleteHyperParameterTuningJobInput
    DeleteHyperParameterTuningJobOutput: DeleteHyperParameterTuningJobOutput
    DeleteImageInput: DeleteImageInput
    DeleteImageOutput: DeleteImageOutput
    DeleteImageVersionInput: DeleteImageVersionInput
    DeleteImageVersionOutput: DeleteImageVersionOutput
    DeleteInferenceComponentInput: DeleteInferenceComponentInput
    DeleteInferenceComponentOutput: DeleteInferenceComponentOutput
    DeleteInferenceExperimentInput: DeleteInferenceExperimentInput
    DeleteInferenceExperimentOutput: DeleteInferenceExperimentOutput
    DeleteMlflowAppInput: DeleteMlflowAppInput
    DeleteMlflowAppOutput: DeleteMlflowAppOutput
    DeleteMlflowTrackingServerInput: DeleteMlflowTrackingServerInput
    DeleteMlflowTrackingServerOutput: DeleteMlflowTrackingServerOutput
    DeleteModelInput: DeleteModelInput
    DeleteModelOutput: DeleteModelOutput
    DeleteModelBiasJobDefinitionInput: DeleteModelBiasJobDefinitionInput
    DeleteModelBiasJobDefinitionOutput: DeleteModelBiasJobDefinitionOutput
    DeleteModelCardInput: DeleteModelCardInput
    DeleteModelCardOutput: DeleteModelCardOutput
    DeleteModelExplainabilityJobDefinitionInput: DeleteModelExplainabilityJobDefinitionInput
    DeleteModelExplainabilityJobDefinitionOutput: DeleteModelExplainabilityJobDefinitionOutput
    DeleteModelPackageInput: DeleteModelPackageInput
    DeleteModelPackageOutput: DeleteModelPackageOutput
    DeleteModelPackageGroupInput: DeleteModelPackageGroupInput
    DeleteModelPackageGroupOutput: DeleteModelPackageGroupOutput
    DeleteModelPackageGroupPolicyInput: DeleteModelPackageGroupPolicyInput
    DeleteModelPackageGroupPolicyOutput: DeleteModelPackageGroupPolicyOutput
    DeleteModelQualityJobDefinitionInput: DeleteModelQualityJobDefinitionInput
    DeleteModelQualityJobDefinitionOutput: DeleteModelQualityJobDefinitionOutput
    DeleteMonitoringScheduleInput: DeleteMonitoringScheduleInput
    DeleteMonitoringScheduleOutput: DeleteMonitoringScheduleOutput
    DeleteNotebookInstanceInput: DeleteNotebookInstanceInput
    DeleteNotebookInstanceOutput: DeleteNotebookInstanceOutput
    DeleteNotebookInstanceLifecycleConfigInput: DeleteNotebookInstanceLifecycleConfigInput
    DeleteNotebookInstanceLifecycleConfigOutput: DeleteNotebookInstanceLifecycleConfigOutput
    DeleteOptimizationJobInput: DeleteOptimizationJobInput
    DeleteOptimizationJobOutput: DeleteOptimizationJobOutput
    DeletePartnerAppInput: DeletePartnerAppInput
    DeletePartnerAppOutput: DeletePartnerAppOutput
    DeletePipelineInput: DeletePipelineInput
    DeletePipelineOutput: DeletePipelineOutput
    DeleteProcessingJobInput: DeleteProcessingJobInput
    DeleteProcessingJobOutput: DeleteProcessingJobOutput
    DeleteProjectInput: DeleteProjectInput
    DeleteProjectOutput: DeleteProjectOutput
    DeleteSpaceInput: DeleteSpaceInput
    DeleteSpaceOutput: DeleteSpaceOutput
    DeleteStudioLifecycleConfigInput: DeleteStudioLifecycleConfigInput
    DeleteStudioLifecycleConfigOutput: DeleteStudioLifecycleConfigOutput
    DeleteTagsInput: DeleteTagsInput
    DeleteTagsOutput: DeleteTagsOutput
    DeleteTrainingJobInput: DeleteTrainingJobInput
    DeleteTrainingJobOutput: DeleteTrainingJobOutput
    DeleteTrialInput: DeleteTrialInput
    DeleteTrialOutput: DeleteTrialOutput
    DeleteTrialComponentInput: DeleteTrialComponentInput
    DeleteTrialComponentOutput: DeleteTrialComponentOutput
    DeleteUserProfileInput: DeleteUserProfileInput
    DeleteUserProfileOutput: DeleteUserProfileOutput
    DeleteWorkforceInput: DeleteWorkforceInput
    DeleteWorkforceOutput: DeleteWorkforceOutput
    DeleteWorkteamInput: DeleteWorkteamInput
    DeleteWorkteamOutput: DeleteWorkteamOutput
    DeregisterDevicesInput: DeregisterDevicesInput
    DeregisterDevicesOutput: DeregisterDevicesOutput
    DescribeActionInput: DescribeActionInput
    DescribeActionOutput: DescribeActionOutput
    DescribeAIBenchmarkJobInput: DescribeAIBenchmarkJobInput
    DescribeAIBenchmarkJobOutput: DescribeAIBenchmarkJobOutput
    DescribeAIRecommendationJobInput: DescribeAIRecommendationJobInput
    DescribeAIRecommendationJobOutput: DescribeAIRecommendationJobOutput
    DescribeAIWorkloadConfigInput: DescribeAIWorkloadConfigInput
    DescribeAIWorkloadConfigOutput: DescribeAIWorkloadConfigOutput
    DescribeAlgorithmInput: DescribeAlgorithmInput
    DescribeAlgorithmOutput: DescribeAlgorithmOutput
    DescribeAppInput: DescribeAppInput
    DescribeAppOutput: DescribeAppOutput
    DescribeAppImageConfigInput: DescribeAppImageConfigInput
    DescribeAppImageConfigOutput: DescribeAppImageConfigOutput
    DescribeArtifactInput: DescribeArtifactInput
    DescribeArtifactOutput: DescribeArtifactOutput
    DescribeAutoMLJobInput: DescribeAutoMLJobInput
    DescribeAutoMLJobOutput: DescribeAutoMLJobOutput
    DescribeAutoMLJobV2Input: DescribeAutoMLJobV2Input
    DescribeAutoMLJobV2Output: DescribeAutoMLJobV2Output
    DescribeClusterInput: DescribeClusterInput
    DescribeClusterOutput: DescribeClusterOutput
    DescribeClusterEventInput: DescribeClusterEventInput
    DescribeClusterEventOutput: DescribeClusterEventOutput
    DescribeClusterNodeInput: DescribeClusterNodeInput
    DescribeClusterNodeOutput: DescribeClusterNodeOutput
    DescribeClusterSchedulerConfigInput: DescribeClusterSchedulerConfigInput
    DescribeClusterSchedulerConfigOutput: DescribeClusterSchedulerConfigOutput
    DescribeCodeRepositoryInput: DescribeCodeRepositoryInput
    DescribeCodeRepositoryOutput: DescribeCodeRepositoryOutput
    DescribeCompilationJobInput: DescribeCompilationJobInput
    DescribeCompilationJobOutput: DescribeCompilationJobOutput
    DescribeComputeQuotaInput: DescribeComputeQuotaInput
    DescribeComputeQuotaOutput: DescribeComputeQuotaOutput
    DescribeContextInput: DescribeContextInput
    DescribeContextOutput: DescribeContextOutput
    DescribeDataQualityJobDefinitionInput: DescribeDataQualityJobDefinitionInput
    DescribeDataQualityJobDefinitionOutput: DescribeDataQualityJobDefinitionOutput
    DescribeDeviceInput: DescribeDeviceInput
    DescribeDeviceOutput: DescribeDeviceOutput
    DescribeDeviceFleetInput: DescribeDeviceFleetInput
    DescribeDeviceFleetOutput: DescribeDeviceFleetOutput
    DescribeDomainInput: DescribeDomainInput
    DescribeDomainOutput: DescribeDomainOutput
    DescribeEdgeDeploymentPlanInput: DescribeEdgeDeploymentPlanInput
    DescribeEdgeDeploymentPlanOutput: DescribeEdgeDeploymentPlanOutput
    DescribeEdgePackagingJobInput: DescribeEdgePackagingJobInput
    DescribeEdgePackagingJobOutput: DescribeEdgePackagingJobOutput
    DescribeEndpointInput: DescribeEndpointInput
    DescribeEndpointOutput: DescribeEndpointOutput
    DescribeEndpointConfigInput: DescribeEndpointConfigInput
    DescribeEndpointConfigOutput: DescribeEndpointConfigOutput
    DescribeExperimentInput: DescribeExperimentInput
    DescribeExperimentOutput: DescribeExperimentOutput
    DescribeFeatureGroupInput: DescribeFeatureGroupInput
    DescribeFeatureGroupOutput: DescribeFeatureGroupOutput
    DescribeFeatureMetadataInput: DescribeFeatureMetadataInput
    DescribeFeatureMetadataOutput: DescribeFeatureMetadataOutput
    DescribeFlowDefinitionInput: DescribeFlowDefinitionInput
    DescribeFlowDefinitionOutput: DescribeFlowDefinitionOutput
    DescribeHubInput: DescribeHubInput
    DescribeHubOutput: DescribeHubOutput
    DescribeHubContentInput: DescribeHubContentInput
    DescribeHubContentOutput: DescribeHubContentOutput
    DescribeHumanTaskUiInput: DescribeHumanTaskUiInput
    DescribeHumanTaskUiOutput: DescribeHumanTaskUiOutput
    DescribeHyperParameterTuningJobInput: DescribeHyperParameterTuningJobInput
    DescribeHyperParameterTuningJobOutput: DescribeHyperParameterTuningJobOutput
    DescribeImageInput: DescribeImageInput
    DescribeImageOutput: DescribeImageOutput
    DescribeImageVersionInput: DescribeImageVersionInput
    DescribeImageVersionOutput: DescribeImageVersionOutput
    DescribeInferenceComponentInput: DescribeInferenceComponentInput
    DescribeInferenceComponentOutput: DescribeInferenceComponentOutput
    DescribeInferenceExperimentInput: DescribeInferenceExperimentInput
    DescribeInferenceExperimentOutput: DescribeInferenceExperimentOutput
    DescribeInferenceRecommendationsJobInput: DescribeInferenceRecommendationsJobInput
    DescribeInferenceRecommendationsJobOutput: DescribeInferenceRecommendationsJobOutput
    DescribeLabelingJobInput: DescribeLabelingJobInput
    DescribeLabelingJobOutput: DescribeLabelingJobOutput
    DescribeLineageGroupInput: DescribeLineageGroupInput
    DescribeLineageGroupOutput: DescribeLineageGroupOutput
    DescribeMlflowAppInput: DescribeMlflowAppInput
    DescribeMlflowAppOutput: DescribeMlflowAppOutput
    DescribeMlflowTrackingServerInput: DescribeMlflowTrackingServerInput
    DescribeMlflowTrackingServerOutput: DescribeMlflowTrackingServerOutput
    DescribeModelInput: DescribeModelInput
    DescribeModelOutput: DescribeModelOutput
    DescribeModelBiasJobDefinitionInput: DescribeModelBiasJobDefinitionInput
    DescribeModelBiasJobDefinitionOutput: DescribeModelBiasJobDefinitionOutput
    DescribeModelCardInput: DescribeModelCardInput
    DescribeModelCardOutput: DescribeModelCardOutput
    DescribeModelCardExportJobInput: DescribeModelCardExportJobInput
    DescribeModelCardExportJobOutput: DescribeModelCardExportJobOutput
    DescribeModelExplainabilityJobDefinitionInput: DescribeModelExplainabilityJobDefinitionInput
    DescribeModelExplainabilityJobDefinitionOutput: DescribeModelExplainabilityJobDefinitionOutput
    DescribeModelPackageInput: DescribeModelPackageInput
    DescribeModelPackageOutput: DescribeModelPackageOutput
    DescribeModelPackageGroupInput: DescribeModelPackageGroupInput
    DescribeModelPackageGroupOutput: DescribeModelPackageGroupOutput
    DescribeModelQualityJobDefinitionInput: DescribeModelQualityJobDefinitionInput
    DescribeModelQualityJobDefinitionOutput: DescribeModelQualityJobDefinitionOutput
    DescribeMonitoringScheduleInput: DescribeMonitoringScheduleInput
    DescribeMonitoringScheduleOutput: DescribeMonitoringScheduleOutput
    DescribeNotebookInstanceInput: DescribeNotebookInstanceInput
    DescribeNotebookInstanceOutput: DescribeNotebookInstanceOutput
    DescribeNotebookInstanceLifecycleConfigInput: DescribeNotebookInstanceLifecycleConfigInput
    DescribeNotebookInstanceLifecycleConfigOutput: DescribeNotebookInstanceLifecycleConfigOutput
    DescribeOptimizationJobInput: DescribeOptimizationJobInput
    DescribeOptimizationJobOutput: DescribeOptimizationJobOutput
    DescribePartnerAppInput: DescribePartnerAppInput
    DescribePartnerAppOutput: DescribePartnerAppOutput
    DescribePipelineInput: DescribePipelineInput
    DescribePipelineOutput: DescribePipelineOutput
    DescribePipelineDefinitionForExecutionInput: DescribePipelineDefinitionForExecutionInput
    DescribePipelineDefinitionForExecutionOutput: DescribePipelineDefinitionForExecutionOutput
    DescribePipelineExecutionInput: DescribePipelineExecutionInput
    DescribePipelineExecutionOutput: DescribePipelineExecutionOutput
    DescribeProcessingJobInput: DescribeProcessingJobInput
    DescribeProcessingJobOutput: DescribeProcessingJobOutput
    DescribeProjectInput: DescribeProjectInput
    DescribeProjectOutput: DescribeProjectOutput
    DescribeReservedCapacityInput: DescribeReservedCapacityInput
    DescribeReservedCapacityOutput: DescribeReservedCapacityOutput
    DescribeSpaceInput: DescribeSpaceInput
    DescribeSpaceOutput: DescribeSpaceOutput
    DescribeStudioLifecycleConfigInput: DescribeStudioLifecycleConfigInput
    DescribeStudioLifecycleConfigOutput: DescribeStudioLifecycleConfigOutput
    DescribeSubscribedWorkteamInput: DescribeSubscribedWorkteamInput
    DescribeSubscribedWorkteamOutput: DescribeSubscribedWorkteamOutput
    DescribeTrainingJobInput: DescribeTrainingJobInput
    DescribeTrainingJobOutput: DescribeTrainingJobOutput
    DescribeTrainingPlanInput: DescribeTrainingPlanInput
    DescribeTrainingPlanOutput: DescribeTrainingPlanOutput
    DescribeTrainingPlanExtensionHistoryInput: DescribeTrainingPlanExtensionHistoryInput
    DescribeTrainingPlanExtensionHistoryOutput: DescribeTrainingPlanExtensionHistoryOutput
    DescribeTransformJobInput: DescribeTransformJobInput
    DescribeTransformJobOutput: DescribeTransformJobOutput
    DescribeTrialInput: DescribeTrialInput
    DescribeTrialOutput: DescribeTrialOutput
    DescribeTrialComponentInput: DescribeTrialComponentInput
    DescribeTrialComponentOutput: DescribeTrialComponentOutput
    DescribeUserProfileInput: DescribeUserProfileInput
    DescribeUserProfileOutput: DescribeUserProfileOutput
    DescribeWorkforceInput: DescribeWorkforceInput
    DescribeWorkforceOutput: DescribeWorkforceOutput
    DescribeWorkteamInput: DescribeWorkteamInput
    DescribeWorkteamOutput: DescribeWorkteamOutput
    DetachClusterNodeVolumeInput: DetachClusterNodeVolumeInput
    DetachClusterNodeVolumeOutput: DetachClusterNodeVolumeOutput
    DisableSagemakerServicecatalogPortfolioInput: DisableSagemakerServicecatalogPortfolioInput
    DisableSagemakerServicecatalogPortfolioOutput: DisableSagemakerServicecatalogPortfolioOutput
    DisassociateTrialComponentInput: DisassociateTrialComponentInput
    DisassociateTrialComponentOutput: DisassociateTrialComponentOutput
    EnableSagemakerServicecatalogPortfolioInput: EnableSagemakerServicecatalogPortfolioInput
    EnableSagemakerServicecatalogPortfolioOutput: EnableSagemakerServicecatalogPortfolioOutput
    ExtendTrainingPlanInput: ExtendTrainingPlanInput
    ExtendTrainingPlanOutput: ExtendTrainingPlanOutput
    GetDeviceFleetReportInput: GetDeviceFleetReportInput
    GetDeviceFleetReportOutput: GetDeviceFleetReportOutput
    GetLineageGroupPolicyInput: GetLineageGroupPolicyInput
    GetLineageGroupPolicyOutput: GetLineageGroupPolicyOutput
    GetModelPackageGroupPolicyInput: GetModelPackageGroupPolicyInput
    GetModelPackageGroupPolicyOutput: GetModelPackageGroupPolicyOutput
    GetSagemakerServicecatalogPortfolioStatusInput: GetSagemakerServicecatalogPortfolioStatusInput
    GetSagemakerServicecatalogPortfolioStatusOutput: GetSagemakerServicecatalogPortfolioStatusOutput
    GetScalingConfigurationRecommendationInput: GetScalingConfigurationRecommendationInput
    GetScalingConfigurationRecommendationOutput: GetScalingConfigurationRecommendationOutput
    GetSearchSuggestionsInput: GetSearchSuggestionsInput
    GetSearchSuggestionsOutput: GetSearchSuggestionsOutput
    ImportHubContentInput: ImportHubContentInput
    ImportHubContentOutput: ImportHubContentOutput
    ListActionsInput: ListActionsInput
    ListActionsOutput: ListActionsOutput
    ListAIBenchmarkJobsInput: ListAIBenchmarkJobsInput
    ListAIBenchmarkJobsOutput: ListAIBenchmarkJobsOutput
    ListAIRecommendationJobsInput: ListAIRecommendationJobsInput
    ListAIRecommendationJobsOutput: ListAIRecommendationJobsOutput
    ListAIWorkloadConfigsInput: ListAIWorkloadConfigsInput
    ListAIWorkloadConfigsOutput: ListAIWorkloadConfigsOutput
    ListAlgorithmsInput: ListAlgorithmsInput
    ListAlgorithmsOutput: ListAlgorithmsOutput
    ListAliasesInput: ListAliasesInput
    ListAliasesOutput: ListAliasesOutput
    ListAppImageConfigsInput: ListAppImageConfigsInput
    ListAppImageConfigsOutput: ListAppImageConfigsOutput
    ListAppsInput: ListAppsInput
    ListAppsOutput: ListAppsOutput
    ListArtifactsInput: ListArtifactsInput
    ListArtifactsOutput: ListArtifactsOutput
    ListAssociationsInput: ListAssociationsInput
    ListAssociationsOutput: ListAssociationsOutput
    ListAutoMLJobsInput: ListAutoMLJobsInput
    ListAutoMLJobsOutput: ListAutoMLJobsOutput
    ListCandidatesForAutoMLJobInput: ListCandidatesForAutoMLJobInput
    ListCandidatesForAutoMLJobOutput: ListCandidatesForAutoMLJobOutput
    ListClusterEventsInput: ListClusterEventsInput
    ListClusterEventsOutput: ListClusterEventsOutput
    ListClusterNodesInput: ListClusterNodesInput
    ListClusterNodesOutput: ListClusterNodesOutput
    ListClustersInput: ListClustersInput
    ListClustersOutput: ListClustersOutput
    ListClusterSchedulerConfigsInput: ListClusterSchedulerConfigsInput
    ListClusterSchedulerConfigsOutput: ListClusterSchedulerConfigsOutput
    ListCodeRepositoriesInput: ListCodeRepositoriesInput
    ListCodeRepositoriesOutput: ListCodeRepositoriesOutput
    ListCompilationJobsInput: ListCompilationJobsInput
    ListCompilationJobsOutput: ListCompilationJobsOutput
    ListComputeQuotasInput: ListComputeQuotasInput
    ListComputeQuotasOutput: ListComputeQuotasOutput
    ListContextsInput: ListContextsInput
    ListContextsOutput: ListContextsOutput
    ListDataQualityJobDefinitionsInput: ListDataQualityJobDefinitionsInput
    ListDataQualityJobDefinitionsOutput: ListDataQualityJobDefinitionsOutput
    ListDeviceFleetsInput: ListDeviceFleetsInput
    ListDeviceFleetsOutput: ListDeviceFleetsOutput
    ListDevicesInput: ListDevicesInput
    ListDevicesOutput: ListDevicesOutput
    ListDomainsInput: ListDomainsInput
    ListDomainsOutput: ListDomainsOutput
    ListEdgeDeploymentPlansInput: ListEdgeDeploymentPlansInput
    ListEdgeDeploymentPlansOutput: ListEdgeDeploymentPlansOutput
    ListEdgePackagingJobsInput: ListEdgePackagingJobsInput
    ListEdgePackagingJobsOutput: ListEdgePackagingJobsOutput
    ListEndpointConfigsInput: ListEndpointConfigsInput
    ListEndpointConfigsOutput: ListEndpointConfigsOutput
    ListEndpointsInput: ListEndpointsInput
    ListEndpointsOutput: ListEndpointsOutput
    ListExperimentsInput: ListExperimentsInput
    ListExperimentsOutput: ListExperimentsOutput
    ListFeatureGroupsInput: ListFeatureGroupsInput
    ListFeatureGroupsOutput: ListFeatureGroupsOutput
    ListFlowDefinitionsInput: ListFlowDefinitionsInput
    ListFlowDefinitionsOutput: ListFlowDefinitionsOutput
    ListHubContentsInput: ListHubContentsInput
    ListHubContentsOutput: ListHubContentsOutput
    ListHubContentVersionsInput: ListHubContentVersionsInput
    ListHubContentVersionsOutput: ListHubContentVersionsOutput
    ListHubsInput: ListHubsInput
    ListHubsOutput: ListHubsOutput
    ListHumanTaskUisInput: ListHumanTaskUisInput
    ListHumanTaskUisOutput: ListHumanTaskUisOutput
    ListHyperParameterTuningJobsInput: ListHyperParameterTuningJobsInput
    ListHyperParameterTuningJobsOutput: ListHyperParameterTuningJobsOutput
    ListImagesInput: ListImagesInput
    ListImagesOutput: ListImagesOutput
    ListImageVersionsInput: ListImageVersionsInput
    ListImageVersionsOutput: ListImageVersionsOutput
    ListInferenceComponentsInput: ListInferenceComponentsInput
    ListInferenceComponentsOutput: ListInferenceComponentsOutput
    ListInferenceExperimentsInput: ListInferenceExperimentsInput
    ListInferenceExperimentsOutput: ListInferenceExperimentsOutput
    ListInferenceRecommendationsJobsInput: ListInferenceRecommendationsJobsInput
    ListInferenceRecommendationsJobsOutput: ListInferenceRecommendationsJobsOutput
    ListInferenceRecommendationsJobStepsInput: ListInferenceRecommendationsJobStepsInput
    ListInferenceRecommendationsJobStepsOutput: ListInferenceRecommendationsJobStepsOutput
    ListLabelingJobsInput: ListLabelingJobsInput
    ListLabelingJobsOutput: ListLabelingJobsOutput
    ListLabelingJobsForWorkteamInput: ListLabelingJobsForWorkteamInput
    ListLabelingJobsForWorkteamOutput: ListLabelingJobsForWorkteamOutput
    ListLineageGroupsInput: ListLineageGroupsInput
    ListLineageGroupsOutput: ListLineageGroupsOutput
    ListMlflowAppsInput: ListMlflowAppsInput
    ListMlflowAppsOutput: ListMlflowAppsOutput
    ListMlflowTrackingServersInput: ListMlflowTrackingServersInput
    ListMlflowTrackingServersOutput: ListMlflowTrackingServersOutput
    ListModelBiasJobDefinitionsInput: ListModelBiasJobDefinitionsInput
    ListModelBiasJobDefinitionsOutput: ListModelBiasJobDefinitionsOutput
    ListModelCardExportJobsInput: ListModelCardExportJobsInput
    ListModelCardExportJobsOutput: ListModelCardExportJobsOutput
    ListModelCardsInput: ListModelCardsInput
    ListModelCardsOutput: ListModelCardsOutput
    ListModelCardVersionsInput: ListModelCardVersionsInput
    ListModelCardVersionsOutput: ListModelCardVersionsOutput
    ListModelExplainabilityJobDefinitionsInput: ListModelExplainabilityJobDefinitionsInput
    ListModelExplainabilityJobDefinitionsOutput: ListModelExplainabilityJobDefinitionsOutput
    ListModelMetadataInput: ListModelMetadataInput
    ListModelMetadataOutput: ListModelMetadataOutput
    ListModelPackageGroupsInput: ListModelPackageGroupsInput
    ListModelPackageGroupsOutput: ListModelPackageGroupsOutput
    ListModelPackagesInput: ListModelPackagesInput
    ListModelPackagesOutput: ListModelPackagesOutput
    ListModelQualityJobDefinitionsInput: ListModelQualityJobDefinitionsInput
    ListModelQualityJobDefinitionsOutput: ListModelQualityJobDefinitionsOutput
    ListModelsInput: ListModelsInput
    ListModelsOutput: ListModelsOutput
    ListMonitoringAlertHistoryInput: ListMonitoringAlertHistoryInput
    ListMonitoringAlertHistoryOutput: ListMonitoringAlertHistoryOutput
    ListMonitoringAlertsInput: ListMonitoringAlertsInput
    ListMonitoringAlertsOutput: ListMonitoringAlertsOutput
    ListMonitoringExecutionsInput: ListMonitoringExecutionsInput
    ListMonitoringExecutionsOutput: ListMonitoringExecutionsOutput
    ListMonitoringSchedulesInput: ListMonitoringSchedulesInput
    ListMonitoringSchedulesOutput: ListMonitoringSchedulesOutput
    ListNotebookInstanceLifecycleConfigsInput: ListNotebookInstanceLifecycleConfigsInput
    ListNotebookInstanceLifecycleConfigsOutput: ListNotebookInstanceLifecycleConfigsOutput
    ListNotebookInstancesInput: ListNotebookInstancesInput
    ListNotebookInstancesOutput: ListNotebookInstancesOutput
    ListOptimizationJobsInput: ListOptimizationJobsInput
    ListOptimizationJobsOutput: ListOptimizationJobsOutput
    ListPartnerAppsInput: ListPartnerAppsInput
    ListPartnerAppsOutput: ListPartnerAppsOutput
    ListPipelineExecutionsInput: ListPipelineExecutionsInput
    ListPipelineExecutionsOutput: ListPipelineExecutionsOutput
    ListPipelineExecutionStepsInput: ListPipelineExecutionStepsInput
    ListPipelineExecutionStepsOutput: ListPipelineExecutionStepsOutput
    ListPipelineParametersForExecutionInput: ListPipelineParametersForExecutionInput
    ListPipelineParametersForExecutionOutput: ListPipelineParametersForExecutionOutput
    ListPipelinesInput: ListPipelinesInput
    ListPipelinesOutput: ListPipelinesOutput
    ListPipelineVersionsInput: ListPipelineVersionsInput
    ListPipelineVersionsOutput: ListPipelineVersionsOutput
    ListProcessingJobsInput: ListProcessingJobsInput
    ListProcessingJobsOutput: ListProcessingJobsOutput
    ListProjectsInput: ListProjectsInput
    ListProjectsOutput: ListProjectsOutput
    ListResourceCatalogsInput: ListResourceCatalogsInput
    ListResourceCatalogsOutput: ListResourceCatalogsOutput
    ListSpacesInput: ListSpacesInput
    ListSpacesOutput: ListSpacesOutput
    ListStageDevicesInput: ListStageDevicesInput
    ListStageDevicesOutput: ListStageDevicesOutput
    ListStudioLifecycleConfigsInput: ListStudioLifecycleConfigsInput
    ListStudioLifecycleConfigsOutput: ListStudioLifecycleConfigsOutput
    ListSubscribedWorkteamsInput: ListSubscribedWorkteamsInput
    ListSubscribedWorkteamsOutput: ListSubscribedWorkteamsOutput
    ListTagsInput: ListTagsInput
    ListTagsOutput: ListTagsOutput
    ListTrainingJobsInput: ListTrainingJobsInput
    ListTrainingJobsOutput: ListTrainingJobsOutput
    ListTrainingJobsForHyperParameterTuningJobInput: ListTrainingJobsForHyperParameterTuningJobInput
    ListTrainingJobsForHyperParameterTuningJobOutput: ListTrainingJobsForHyperParameterTuningJobOutput
    ListTrainingPlansInput: ListTrainingPlansInput
    ListTrainingPlansOutput: ListTrainingPlansOutput
    ListTransformJobsInput: ListTransformJobsInput
    ListTransformJobsOutput: ListTransformJobsOutput
    ListTrialComponentsInput: ListTrialComponentsInput
    ListTrialComponentsOutput: ListTrialComponentsOutput
    ListTrialsInput: ListTrialsInput
    ListTrialsOutput: ListTrialsOutput
    ListUltraServersByReservedCapacityInput: ListUltraServersByReservedCapacityInput
    ListUltraServersByReservedCapacityOutput: ListUltraServersByReservedCapacityOutput
    ListUserProfilesInput: ListUserProfilesInput
    ListUserProfilesOutput: ListUserProfilesOutput
    ListWorkforcesInput: ListWorkforcesInput
    ListWorkforcesOutput: ListWorkforcesOutput
    ListWorkteamsInput: ListWorkteamsInput
    ListWorkteamsOutput: ListWorkteamsOutput
    PutModelPackageGroupPolicyInput: PutModelPackageGroupPolicyInput
    PutModelPackageGroupPolicyOutput: PutModelPackageGroupPolicyOutput
    QueryLineageInput: QueryLineageInput
    QueryLineageOutput: QueryLineageOutput
    RegisterDevicesInput: RegisterDevicesInput
    RegisterDevicesOutput: RegisterDevicesOutput
    RenderUiTemplateInput: RenderUiTemplateInput
    RenderUiTemplateOutput: RenderUiTemplateOutput
    RetryPipelineExecutionInput: RetryPipelineExecutionInput
    RetryPipelineExecutionOutput: RetryPipelineExecutionOutput
    SearchInput: SearchInput
    SearchOutput: SearchOutput
    SearchTrainingPlanOfferingsInput: SearchTrainingPlanOfferingsInput
    SearchTrainingPlanOfferingsOutput: SearchTrainingPlanOfferingsOutput
    SendPipelineExecutionStepFailureInput: SendPipelineExecutionStepFailureInput
    SendPipelineExecutionStepFailureOutput: SendPipelineExecutionStepFailureOutput
    SendPipelineExecutionStepSuccessInput: SendPipelineExecutionStepSuccessInput
    SendPipelineExecutionStepSuccessOutput: SendPipelineExecutionStepSuccessOutput
    StartClusterHealthCheckInput: StartClusterHealthCheckInput
    StartClusterHealthCheckOutput: StartClusterHealthCheckOutput
    StartEdgeDeploymentStageInput: StartEdgeDeploymentStageInput
    StartEdgeDeploymentStageOutput: StartEdgeDeploymentStageOutput
    StartInferenceExperimentInput: StartInferenceExperimentInput
    StartInferenceExperimentOutput: StartInferenceExperimentOutput
    StartMlflowTrackingServerInput: StartMlflowTrackingServerInput
    StartMlflowTrackingServerOutput: StartMlflowTrackingServerOutput
    StartMonitoringScheduleInput: StartMonitoringScheduleInput
    StartMonitoringScheduleOutput: StartMonitoringScheduleOutput
    StartNotebookInstanceInput: StartNotebookInstanceInput
    StartNotebookInstanceOutput: StartNotebookInstanceOutput
    StartPipelineExecutionInput: StartPipelineExecutionInput
    StartPipelineExecutionOutput: StartPipelineExecutionOutput
    StartSessionInput: StartSessionInput
    StartSessionOutput: StartSessionOutput
    StopAIBenchmarkJobInput: StopAIBenchmarkJobInput
    StopAIBenchmarkJobOutput: StopAIBenchmarkJobOutput
    StopAIRecommendationJobInput: StopAIRecommendationJobInput
    StopAIRecommendationJobOutput: StopAIRecommendationJobOutput
    StopAutoMLJobInput: StopAutoMLJobInput
    StopAutoMLJobOutput: StopAutoMLJobOutput
    StopCompilationJobInput: StopCompilationJobInput
    StopCompilationJobOutput: StopCompilationJobOutput
    StopEdgeDeploymentStageInput: StopEdgeDeploymentStageInput
    StopEdgeDeploymentStageOutput: StopEdgeDeploymentStageOutput
    StopEdgePackagingJobInput: StopEdgePackagingJobInput
    StopEdgePackagingJobOutput: StopEdgePackagingJobOutput
    StopHyperParameterTuningJobInput: StopHyperParameterTuningJobInput
    StopHyperParameterTuningJobOutput: StopHyperParameterTuningJobOutput
    StopInferenceExperimentInput: StopInferenceExperimentInput
    StopInferenceExperimentOutput: StopInferenceExperimentOutput
    StopInferenceRecommendationsJobInput: StopInferenceRecommendationsJobInput
    StopInferenceRecommendationsJobOutput: StopInferenceRecommendationsJobOutput
    StopLabelingJobInput: StopLabelingJobInput
    StopLabelingJobOutput: StopLabelingJobOutput
    StopMlflowTrackingServerInput: StopMlflowTrackingServerInput
    StopMlflowTrackingServerOutput: StopMlflowTrackingServerOutput
    StopMonitoringScheduleInput: StopMonitoringScheduleInput
    StopMonitoringScheduleOutput: StopMonitoringScheduleOutput
    StopNotebookInstanceInput: StopNotebookInstanceInput
    StopNotebookInstanceOutput: StopNotebookInstanceOutput
    StopOptimizationJobInput: StopOptimizationJobInput
    StopOptimizationJobOutput: StopOptimizationJobOutput
    StopPipelineExecutionInput: StopPipelineExecutionInput
    StopPipelineExecutionOutput: StopPipelineExecutionOutput
    StopProcessingJobInput: StopProcessingJobInput
    StopProcessingJobOutput: StopProcessingJobOutput
    StopTrainingJobInput: StopTrainingJobInput
    StopTrainingJobOutput: StopTrainingJobOutput
    StopTransformJobInput: StopTransformJobInput
    StopTransformJobOutput: StopTransformJobOutput
    UpdateActionInput: UpdateActionInput
    UpdateActionOutput: UpdateActionOutput
    UpdateAppImageConfigInput: UpdateAppImageConfigInput
    UpdateAppImageConfigOutput: UpdateAppImageConfigOutput
    UpdateArtifactInput: UpdateArtifactInput
    UpdateArtifactOutput: UpdateArtifactOutput
    UpdateClusterInput: UpdateClusterInput
    UpdateClusterOutput: UpdateClusterOutput
    UpdateClusterSchedulerConfigInput: UpdateClusterSchedulerConfigInput
    UpdateClusterSchedulerConfigOutput: UpdateClusterSchedulerConfigOutput
    UpdateClusterSoftwareInput: UpdateClusterSoftwareInput
    UpdateClusterSoftwareOutput: UpdateClusterSoftwareOutput
    UpdateCodeRepositoryInput: UpdateCodeRepositoryInput
    UpdateCodeRepositoryOutput: UpdateCodeRepositoryOutput
    UpdateComputeQuotaInput: UpdateComputeQuotaInput
    UpdateComputeQuotaOutput: UpdateComputeQuotaOutput
    UpdateContextInput: UpdateContextInput
    UpdateContextOutput: UpdateContextOutput
    UpdateDeviceFleetInput: UpdateDeviceFleetInput
    UpdateDeviceFleetOutput: UpdateDeviceFleetOutput
    UpdateDevicesInput: UpdateDevicesInput
    UpdateDevicesOutput: UpdateDevicesOutput
    UpdateDomainInput: UpdateDomainInput
    UpdateDomainOutput: UpdateDomainOutput
    UpdateEndpointInput: UpdateEndpointInput
    UpdateEndpointOutput: UpdateEndpointOutput
    UpdateEndpointWeightsAndCapacitiesInput: UpdateEndpointWeightsAndCapacitiesInput
    UpdateEndpointWeightsAndCapacitiesOutput: UpdateEndpointWeightsAndCapacitiesOutput
    UpdateExperimentInput: UpdateExperimentInput
    UpdateExperimentOutput: UpdateExperimentOutput
    UpdateFeatureGroupInput: UpdateFeatureGroupInput
    UpdateFeatureGroupOutput: UpdateFeatureGroupOutput
    UpdateFeatureMetadataInput: UpdateFeatureMetadataInput
    UpdateFeatureMetadataOutput: UpdateFeatureMetadataOutput
    UpdateHubInput: UpdateHubInput
    UpdateHubOutput: UpdateHubOutput
    UpdateHubContentInput: UpdateHubContentInput
    UpdateHubContentOutput: UpdateHubContentOutput
    UpdateHubContentReferenceInput: UpdateHubContentReferenceInput
    UpdateHubContentReferenceOutput: UpdateHubContentReferenceOutput
    UpdateImageInput: UpdateImageInput
    UpdateImageOutput: UpdateImageOutput
    UpdateImageVersionInput: UpdateImageVersionInput
    UpdateImageVersionOutput: UpdateImageVersionOutput
    UpdateInferenceComponentInput: UpdateInferenceComponentInput
    UpdateInferenceComponentOutput: UpdateInferenceComponentOutput
    UpdateInferenceComponentRuntimeConfigInput: UpdateInferenceComponentRuntimeConfigInput
    UpdateInferenceComponentRuntimeConfigOutput: UpdateInferenceComponentRuntimeConfigOutput
    UpdateInferenceExperimentInput: UpdateInferenceExperimentInput
    UpdateInferenceExperimentOutput: UpdateInferenceExperimentOutput
    UpdateMlflowAppInput: UpdateMlflowAppInput
    UpdateMlflowAppOutput: UpdateMlflowAppOutput
    UpdateMlflowTrackingServerInput: UpdateMlflowTrackingServerInput
    UpdateMlflowTrackingServerOutput: UpdateMlflowTrackingServerOutput
    UpdateModelCardInput: UpdateModelCardInput
    UpdateModelCardOutput: UpdateModelCardOutput
    UpdateModelPackageInput: UpdateModelPackageInput
    UpdateModelPackageOutput: UpdateModelPackageOutput
    UpdateMonitoringAlertInput: UpdateMonitoringAlertInput
    UpdateMonitoringAlertOutput: UpdateMonitoringAlertOutput
    UpdateMonitoringScheduleInput: UpdateMonitoringScheduleInput
    UpdateMonitoringScheduleOutput: UpdateMonitoringScheduleOutput
    UpdateNotebookInstanceInput: UpdateNotebookInstanceInput
    UpdateNotebookInstanceOutput: UpdateNotebookInstanceOutput
    UpdateNotebookInstanceLifecycleConfigInput: UpdateNotebookInstanceLifecycleConfigInput
    UpdateNotebookInstanceLifecycleConfigOutput: UpdateNotebookInstanceLifecycleConfigOutput
    UpdatePartnerAppInput: UpdatePartnerAppInput
    UpdatePartnerAppOutput: UpdatePartnerAppOutput
    UpdatePipelineInput: UpdatePipelineInput
    UpdatePipelineOutput: UpdatePipelineOutput
    UpdatePipelineExecutionInput: UpdatePipelineExecutionInput
    UpdatePipelineExecutionOutput: UpdatePipelineExecutionOutput
    UpdatePipelineVersionInput: UpdatePipelineVersionInput
    UpdatePipelineVersionOutput: UpdatePipelineVersionOutput
    UpdateProjectInput: UpdateProjectInput
    UpdateProjectOutput: UpdateProjectOutput
    UpdateSpaceInput: UpdateSpaceInput
    UpdateSpaceOutput: UpdateSpaceOutput
    UpdateTrainingJobInput: UpdateTrainingJobInput
    UpdateTrainingJobOutput: UpdateTrainingJobOutput
    UpdateTrialInput: UpdateTrialInput
    UpdateTrialOutput: UpdateTrialOutput
    UpdateTrialComponentInput: UpdateTrialComponentInput
    UpdateTrialComponentOutput: UpdateTrialComponentOutput
    UpdateUserProfileInput: UpdateUserProfileInput
    UpdateUserProfileOutput: UpdateUserProfileOutput
    UpdateWorkforceInput: UpdateWorkforceInput
    UpdateWorkforceOutput: UpdateWorkforceOutput
    UpdateWorkteamInput: UpdateWorkteamInput
    UpdateWorkteamOutput: UpdateWorkteamOutput
end

return M
