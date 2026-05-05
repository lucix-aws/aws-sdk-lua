local record AddLayerVersionPermissionInput
    LayerName: string
    VersionNumber: number
    StatementId: string
    Action: string
    Principal: string
    OrganizationId: string
    RevisionId: string
end

local record AddLayerVersionPermissionOutput
    Statement: string
    RevisionId: string
end

local record AddPermissionInput
    FunctionName: string
    StatementId: string
    Action: string
    Principal: string
    SourceArn: string
    SourceAccount: string
    EventSourceToken: string
    Qualifier: string
    RevisionId: string
    PrincipalOrgID: string
    FunctionUrlAuthType: string
    InvokedViaFunctionUrl: boolean
end

local record AddPermissionOutput
    Statement: string
end

local record CheckpointDurableExecutionInput
    DurableExecutionArn: string
    CheckpointToken: string
    Updates: {OperationUpdate}
    ClientToken: string
end

local record CheckpointDurableExecutionOutput
    CheckpointToken: string
    NewExecutionState: CheckpointUpdatedExecutionState
end

local record CreateAliasInput
    FunctionName: string
    Name: string
    FunctionVersion: string
    Description: string
    RoutingConfig: AliasRoutingConfiguration
end

local record CreateAliasOutput
    AliasArn: string
    Name: string
    FunctionVersion: string
    Description: string
    RoutingConfig: AliasRoutingConfiguration
    RevisionId: string
end

local record CreateCapacityProviderInput
    CapacityProviderName: string
    VpcConfig: CapacityProviderVpcConfig
    PermissionsConfig: CapacityProviderPermissionsConfig
    InstanceRequirements: InstanceRequirements
    CapacityProviderScalingConfig: CapacityProviderScalingConfig
    KmsKeyArn: string
    Tags: {string : string}
end

local record CreateCapacityProviderOutput
    CapacityProvider: CapacityProvider
end

local record CreateCodeSigningConfigInput
    Description: string
    AllowedPublishers: AllowedPublishers
    CodeSigningPolicies: CodeSigningPolicies
    Tags: {string : string}
end

local record CreateCodeSigningConfigOutput
    CodeSigningConfig: CodeSigningConfig
end

local record CreateEventSourceMappingInput
    EventSourceArn: string
    FunctionName: string
    Enabled: boolean
    BatchSize: number
    FilterCriteria: FilterCriteria
    MaximumBatchingWindowInSeconds: number
    ParallelizationFactor: number
    StartingPosition: string
    StartingPositionTimestamp: number
    DestinationConfig: DestinationConfig
    MaximumRecordAgeInSeconds: number
    BisectBatchOnFunctionError: boolean
    MaximumRetryAttempts: number
    Tags: {string : string}
    TumblingWindowInSeconds: number
    Topics: {string}
    Queues: {string}
    SourceAccessConfigurations: {SourceAccessConfiguration}
    SelfManagedEventSource: SelfManagedEventSource
    FunctionResponseTypes: {string}
    AmazonManagedKafkaEventSourceConfig: AmazonManagedKafkaEventSourceConfig
    SelfManagedKafkaEventSourceConfig: SelfManagedKafkaEventSourceConfig
    ScalingConfig: ScalingConfig
    DocumentDBEventSourceConfig: DocumentDBEventSourceConfig
    KMSKeyArn: string
    MetricsConfig: EventSourceMappingMetricsConfig
    LoggingConfig: EventSourceMappingLoggingConfig
    ProvisionedPollerConfig: ProvisionedPollerConfig
end

local record CreateEventSourceMappingOutput
    UUID: string
    StartingPosition: string
    StartingPositionTimestamp: number
    BatchSize: number
    MaximumBatchingWindowInSeconds: number
    ParallelizationFactor: number
    EventSourceArn: string
    FilterCriteria: FilterCriteria
    FunctionArn: string
    LastModified: number
    LastProcessingResult: string
    State: string
    StateTransitionReason: string
    DestinationConfig: DestinationConfig
    Topics: {string}
    Queues: {string}
    SourceAccessConfigurations: {SourceAccessConfiguration}
    SelfManagedEventSource: SelfManagedEventSource
    MaximumRecordAgeInSeconds: number
    BisectBatchOnFunctionError: boolean
    MaximumRetryAttempts: number
    TumblingWindowInSeconds: number
    FunctionResponseTypes: {string}
    AmazonManagedKafkaEventSourceConfig: AmazonManagedKafkaEventSourceConfig
    SelfManagedKafkaEventSourceConfig: SelfManagedKafkaEventSourceConfig
    ScalingConfig: ScalingConfig
    DocumentDBEventSourceConfig: DocumentDBEventSourceConfig
    KMSKeyArn: string
    FilterCriteriaError: FilterCriteriaError
    EventSourceMappingArn: string
    MetricsConfig: EventSourceMappingMetricsConfig
    LoggingConfig: EventSourceMappingLoggingConfig
    ProvisionedPollerConfig: ProvisionedPollerConfig
end

local record CreateFunctionInput
    FunctionName: string
    Runtime: string
    Role: string
    Handler: string
    Code: FunctionCode
    Description: string
    Timeout: number
    MemorySize: number
    Publish: boolean
    VpcConfig: VpcConfig
    PackageType: string
    DeadLetterConfig: DeadLetterConfig
    Environment: Environment
    KMSKeyArn: string
    TracingConfig: TracingConfig
    Tags: {string : string}
    Layers: {string}
    FileSystemConfigs: {FileSystemConfig}
    ImageConfig: ImageConfig
    CodeSigningConfigArn: string
    Architectures: {string}
    EphemeralStorage: EphemeralStorage
    SnapStart: SnapStart
    LoggingConfig: LoggingConfig
    CapacityProviderConfig: CapacityProviderConfig
    PublishTo: string
    DurableConfig: DurableConfig
    TenancyConfig: TenancyConfig
end

local record CreateFunctionOutput
    FunctionName: string
    FunctionArn: string
    Runtime: string
    Role: string
    Handler: string
    CodeSize: number
    Description: string
    Timeout: number
    MemorySize: number
    LastModified: string
    CodeSha256: string
    Version: string
    VpcConfig: VpcConfigResponse
    DeadLetterConfig: DeadLetterConfig
    Environment: EnvironmentResponse
    KMSKeyArn: string
    TracingConfig: TracingConfigResponse
    MasterArn: string
    RevisionId: string
    Layers: {Layer}
    State: string
    StateReason: string
    StateReasonCode: string
    LastUpdateStatus: string
    LastUpdateStatusReason: string
    LastUpdateStatusReasonCode: string
    FileSystemConfigs: {FileSystemConfig}
    PackageType: string
    ImageConfigResponse: ImageConfigResponse
    SigningProfileVersionArn: string
    SigningJobArn: string
    Architectures: {string}
    EphemeralStorage: EphemeralStorage
    SnapStart: SnapStartResponse
    RuntimeVersionConfig: RuntimeVersionConfig
    LoggingConfig: LoggingConfig
    CapacityProviderConfig: CapacityProviderConfig
    ConfigSha256: string
    DurableConfig: DurableConfig
    TenancyConfig: TenancyConfig
end

local record CreateFunctionUrlConfigInput
    FunctionName: string
    Qualifier: string
    AuthType: string
    Cors: Cors
    InvokeMode: string
end

local record CreateFunctionUrlConfigOutput
    FunctionUrl: string
    FunctionArn: string
    AuthType: string
    Cors: Cors
    CreationTime: string
    InvokeMode: string
end

local record DeleteAliasInput
    FunctionName: string
    Name: string
end

local record DeleteAliasOutput
end

local record DeleteCapacityProviderInput
    CapacityProviderName: string
end

local record DeleteCapacityProviderOutput
    CapacityProvider: CapacityProvider
end

local record DeleteCodeSigningConfigInput
    CodeSigningConfigArn: string
end

local record DeleteCodeSigningConfigOutput
end

local record DeleteEventSourceMappingInput
    UUID: string
end

local record DeleteEventSourceMappingOutput
    UUID: string
    StartingPosition: string
    StartingPositionTimestamp: number
    BatchSize: number
    MaximumBatchingWindowInSeconds: number
    ParallelizationFactor: number
    EventSourceArn: string
    FilterCriteria: FilterCriteria
    FunctionArn: string
    LastModified: number
    LastProcessingResult: string
    State: string
    StateTransitionReason: string
    DestinationConfig: DestinationConfig
    Topics: {string}
    Queues: {string}
    SourceAccessConfigurations: {SourceAccessConfiguration}
    SelfManagedEventSource: SelfManagedEventSource
    MaximumRecordAgeInSeconds: number
    BisectBatchOnFunctionError: boolean
    MaximumRetryAttempts: number
    TumblingWindowInSeconds: number
    FunctionResponseTypes: {string}
    AmazonManagedKafkaEventSourceConfig: AmazonManagedKafkaEventSourceConfig
    SelfManagedKafkaEventSourceConfig: SelfManagedKafkaEventSourceConfig
    ScalingConfig: ScalingConfig
    DocumentDBEventSourceConfig: DocumentDBEventSourceConfig
    KMSKeyArn: string
    FilterCriteriaError: FilterCriteriaError
    EventSourceMappingArn: string
    MetricsConfig: EventSourceMappingMetricsConfig
    LoggingConfig: EventSourceMappingLoggingConfig
    ProvisionedPollerConfig: ProvisionedPollerConfig
end

local record DeleteFunctionInput
    FunctionName: string
    Qualifier: string
end

local record DeleteFunctionOutput
    StatusCode: number
end

local record DeleteFunctionCodeSigningConfigInput
    FunctionName: string
end

local record DeleteFunctionCodeSigningConfigOutput
end

local record DeleteFunctionConcurrencyInput
    FunctionName: string
end

local record DeleteFunctionConcurrencyOutput
end

local record DeleteFunctionEventInvokeConfigInput
    FunctionName: string
    Qualifier: string
end

local record DeleteFunctionEventInvokeConfigOutput
end

local record DeleteFunctionUrlConfigInput
    FunctionName: string
    Qualifier: string
end

local record DeleteFunctionUrlConfigOutput
end

local record DeleteLayerVersionInput
    LayerName: string
    VersionNumber: number
end

local record DeleteLayerVersionOutput
end

local record DeleteProvisionedConcurrencyConfigInput
    FunctionName: string
    Qualifier: string
end

local record DeleteProvisionedConcurrencyConfigOutput
end

local record GetAccountSettingsInput
end

local record GetAccountSettingsOutput
    AccountLimit: AccountLimit
    AccountUsage: AccountUsage
end

local record GetAliasInput
    FunctionName: string
    Name: string
end

local record GetAliasOutput
    AliasArn: string
    Name: string
    FunctionVersion: string
    Description: string
    RoutingConfig: AliasRoutingConfiguration
    RevisionId: string
end

local record GetCapacityProviderInput
    CapacityProviderName: string
end

local record GetCapacityProviderOutput
    CapacityProvider: CapacityProvider
end

local record GetCodeSigningConfigInput
    CodeSigningConfigArn: string
end

local record GetCodeSigningConfigOutput
    CodeSigningConfig: CodeSigningConfig
end

local record GetDurableExecutionInput
    DurableExecutionArn: string
end

local record GetDurableExecutionOutput
    DurableExecutionArn: string
    DurableExecutionName: string
    FunctionArn: string
    InputPayload: string
    Result: string
    Error: ErrorObject
    StartTimestamp: number
    Status: string
    EndTimestamp: number
    Version: string
    TraceHeader: TraceHeader
end

local record GetDurableExecutionHistoryInput
    DurableExecutionArn: string
    IncludeExecutionData: boolean
    MaxItems: number
    Marker: string
    ReverseOrder: boolean
end

local record GetDurableExecutionHistoryOutput
    Events: {Event}
    NextMarker: string
end

local record GetDurableExecutionStateInput
    DurableExecutionArn: string
    CheckpointToken: string
    Marker: string
    MaxItems: number
end

local record GetDurableExecutionStateOutput
    Operations: {Operation}
    NextMarker: string
end

local record GetEventSourceMappingInput
    UUID: string
end

local record GetEventSourceMappingOutput
    UUID: string
    StartingPosition: string
    StartingPositionTimestamp: number
    BatchSize: number
    MaximumBatchingWindowInSeconds: number
    ParallelizationFactor: number
    EventSourceArn: string
    FilterCriteria: FilterCriteria
    FunctionArn: string
    LastModified: number
    LastProcessingResult: string
    State: string
    StateTransitionReason: string
    DestinationConfig: DestinationConfig
    Topics: {string}
    Queues: {string}
    SourceAccessConfigurations: {SourceAccessConfiguration}
    SelfManagedEventSource: SelfManagedEventSource
    MaximumRecordAgeInSeconds: number
    BisectBatchOnFunctionError: boolean
    MaximumRetryAttempts: number
    TumblingWindowInSeconds: number
    FunctionResponseTypes: {string}
    AmazonManagedKafkaEventSourceConfig: AmazonManagedKafkaEventSourceConfig
    SelfManagedKafkaEventSourceConfig: SelfManagedKafkaEventSourceConfig
    ScalingConfig: ScalingConfig
    DocumentDBEventSourceConfig: DocumentDBEventSourceConfig
    KMSKeyArn: string
    FilterCriteriaError: FilterCriteriaError
    EventSourceMappingArn: string
    MetricsConfig: EventSourceMappingMetricsConfig
    LoggingConfig: EventSourceMappingLoggingConfig
    ProvisionedPollerConfig: ProvisionedPollerConfig
end

local record GetFunctionInput
    FunctionName: string
    Qualifier: string
end

local record GetFunctionOutput
    Configuration: FunctionConfiguration
    Code: FunctionCodeLocation
    Tags: {string : string}
    TagsError: TagsError
    Concurrency: Concurrency
end

local record GetFunctionCodeSigningConfigInput
    FunctionName: string
end

local record GetFunctionCodeSigningConfigOutput
    CodeSigningConfigArn: string
    FunctionName: string
end

local record GetFunctionConcurrencyInput
    FunctionName: string
end

local record GetFunctionConcurrencyOutput
    ReservedConcurrentExecutions: number
end

local record GetFunctionConfigurationInput
    FunctionName: string
    Qualifier: string
end

local record GetFunctionConfigurationOutput
    FunctionName: string
    FunctionArn: string
    Runtime: string
    Role: string
    Handler: string
    CodeSize: number
    Description: string
    Timeout: number
    MemorySize: number
    LastModified: string
    CodeSha256: string
    Version: string
    VpcConfig: VpcConfigResponse
    DeadLetterConfig: DeadLetterConfig
    Environment: EnvironmentResponse
    KMSKeyArn: string
    TracingConfig: TracingConfigResponse
    MasterArn: string
    RevisionId: string
    Layers: {Layer}
    State: string
    StateReason: string
    StateReasonCode: string
    LastUpdateStatus: string
    LastUpdateStatusReason: string
    LastUpdateStatusReasonCode: string
    FileSystemConfigs: {FileSystemConfig}
    PackageType: string
    ImageConfigResponse: ImageConfigResponse
    SigningProfileVersionArn: string
    SigningJobArn: string
    Architectures: {string}
    EphemeralStorage: EphemeralStorage
    SnapStart: SnapStartResponse
    RuntimeVersionConfig: RuntimeVersionConfig
    LoggingConfig: LoggingConfig
    CapacityProviderConfig: CapacityProviderConfig
    ConfigSha256: string
    DurableConfig: DurableConfig
    TenancyConfig: TenancyConfig
end

local record GetFunctionEventInvokeConfigInput
    FunctionName: string
    Qualifier: string
end

local record GetFunctionEventInvokeConfigOutput
    LastModified: number
    FunctionArn: string
    MaximumRetryAttempts: number
    MaximumEventAgeInSeconds: number
    DestinationConfig: DestinationConfig
end

local record GetFunctionRecursionConfigInput
    FunctionName: string
end

local record GetFunctionRecursionConfigOutput
    RecursiveLoop: string
end

local record GetFunctionScalingConfigInput
    FunctionName: string
    Qualifier: string
end

local record GetFunctionScalingConfigOutput
    FunctionArn: string
    AppliedFunctionScalingConfig: FunctionScalingConfig
    RequestedFunctionScalingConfig: FunctionScalingConfig
end

local record GetFunctionUrlConfigInput
    FunctionName: string
    Qualifier: string
end

local record GetFunctionUrlConfigOutput
    FunctionUrl: string
    FunctionArn: string
    AuthType: string
    Cors: Cors
    CreationTime: string
    LastModifiedTime: string
    InvokeMode: string
end

local record GetLayerVersionInput
    LayerName: string
    VersionNumber: number
end

local record GetLayerVersionOutput
    Content: LayerVersionContentOutput
    LayerArn: string
    LayerVersionArn: string
    Description: string
    CreatedDate: string
    Version: number
    CompatibleRuntimes: {string}
    LicenseInfo: string
    CompatibleArchitectures: {string}
end

local record GetLayerVersionByArnInput
    Arn: string
end

local record GetLayerVersionByArnOutput
    Content: LayerVersionContentOutput
    LayerArn: string
    LayerVersionArn: string
    Description: string
    CreatedDate: string
    Version: number
    CompatibleRuntimes: {string}
    LicenseInfo: string
    CompatibleArchitectures: {string}
end

local record GetLayerVersionPolicyInput
    LayerName: string
    VersionNumber: number
end

local record GetLayerVersionPolicyOutput
    Policy: string
    RevisionId: string
end

local record GetPolicyInput
    FunctionName: string
    Qualifier: string
end

local record GetPolicyOutput
    Policy: string
    RevisionId: string
end

local record GetProvisionedConcurrencyConfigInput
    FunctionName: string
    Qualifier: string
end

local record GetProvisionedConcurrencyConfigOutput
    RequestedProvisionedConcurrentExecutions: number
    AvailableProvisionedConcurrentExecutions: number
    AllocatedProvisionedConcurrentExecutions: number
    Status: string
    StatusReason: string
    LastModified: string
end

local record GetRuntimeManagementConfigInput
    FunctionName: string
    Qualifier: string
end

local record GetRuntimeManagementConfigOutput
    UpdateRuntimeOn: string
    RuntimeVersionArn: string
    FunctionArn: string
end

local record InvokeInput
    FunctionName: string
    InvocationType: string
    LogType: string
    ClientContext: string
    DurableExecutionName: string
    Payload: string
    Qualifier: string
    TenantId: string
end

local record InvokeOutput
    StatusCode: number
    FunctionError: string
    LogResult: string
    Payload: string
    ExecutedVersion: string
    DurableExecutionArn: string
end

local record InvokeAsyncInput
    FunctionName: string
    InvokeArgs: string
end

local record InvokeAsyncOutput
    Status: number
end

local record InvokeWithResponseStreamInput
    FunctionName: string
    InvocationType: string
    LogType: string
    ClientContext: string
    Qualifier: string
    Payload: string
    TenantId: string
end

local record InvokeWithResponseStreamOutput
    StatusCode: number
    ExecutedVersion: string
    EventStream: InvokeWithResponseStreamResponseEvent
    ResponseStreamContentType: string
end

local record ListAliasesInput
    FunctionName: string
    FunctionVersion: string
    Marker: string
    MaxItems: number
end

local record ListAliasesOutput
    NextMarker: string
    Aliases: {AliasConfiguration}
end

local record ListCapacityProvidersInput
    State: string
    Marker: string
    MaxItems: number
end

local record ListCapacityProvidersOutput
    CapacityProviders: {CapacityProvider}
    NextMarker: string
end

local record ListCodeSigningConfigsInput
    Marker: string
    MaxItems: number
end

local record ListCodeSigningConfigsOutput
    NextMarker: string
    CodeSigningConfigs: {CodeSigningConfig}
end

local record ListDurableExecutionsByFunctionInput
    FunctionName: string
    Qualifier: string
    DurableExecutionName: string
    Statuses: {string}
    StartedAfter: number
    StartedBefore: number
    ReverseOrder: boolean
    Marker: string
    MaxItems: number
end

local record ListDurableExecutionsByFunctionOutput
    DurableExecutions: {Execution}
    NextMarker: string
end

local record ListEventSourceMappingsInput
    EventSourceArn: string
    FunctionName: string
    Marker: string
    MaxItems: number
end

local record ListEventSourceMappingsOutput
    NextMarker: string
    EventSourceMappings: {EventSourceMappingConfiguration}
end

local record ListFunctionEventInvokeConfigsInput
    FunctionName: string
    Marker: string
    MaxItems: number
end

local record ListFunctionEventInvokeConfigsOutput
    FunctionEventInvokeConfigs: {FunctionEventInvokeConfig}
    NextMarker: string
end

local record ListFunctionsInput
    MasterRegion: string
    FunctionVersion: string
    Marker: string
    MaxItems: number
end

local record ListFunctionsOutput
    NextMarker: string
    Functions: {FunctionConfiguration}
end

local record ListFunctionsByCodeSigningConfigInput
    CodeSigningConfigArn: string
    Marker: string
    MaxItems: number
end

local record ListFunctionsByCodeSigningConfigOutput
    NextMarker: string
    FunctionArns: {string}
end

local record ListFunctionUrlConfigsInput
    FunctionName: string
    Marker: string
    MaxItems: number
end

local record ListFunctionUrlConfigsOutput
    FunctionUrlConfigs: {FunctionUrlConfig}
    NextMarker: string
end

local record ListFunctionVersionsByCapacityProviderInput
    CapacityProviderName: string
    Marker: string
    MaxItems: number
end

local record ListFunctionVersionsByCapacityProviderOutput
    CapacityProviderArn: string
    FunctionVersions: {FunctionVersionsByCapacityProviderListItem}
    NextMarker: string
end

local record ListLayersInput
    CompatibleRuntime: string
    Marker: string
    MaxItems: number
    CompatibleArchitecture: string
end

local record ListLayersOutput
    NextMarker: string
    Layers: {LayersListItem}
end

local record ListLayerVersionsInput
    CompatibleRuntime: string
    LayerName: string
    Marker: string
    MaxItems: number
    CompatibleArchitecture: string
end

local record ListLayerVersionsOutput
    NextMarker: string
    LayerVersions: {LayerVersionsListItem}
end

local record ListProvisionedConcurrencyConfigsInput
    FunctionName: string
    Marker: string
    MaxItems: number
end

local record ListProvisionedConcurrencyConfigsOutput
    ProvisionedConcurrencyConfigs: {ProvisionedConcurrencyConfigListItem}
    NextMarker: string
end

local record ListTagsInput
    Resource: string
end

local record ListTagsOutput
    Tags: {string : string}
end

local record ListVersionsByFunctionInput
    FunctionName: string
    Marker: string
    MaxItems: number
end

local record ListVersionsByFunctionOutput
    NextMarker: string
    Versions: {FunctionConfiguration}
end

local record PublishLayerVersionInput
    LayerName: string
    Description: string
    Content: LayerVersionContentInput
    CompatibleRuntimes: {string}
    LicenseInfo: string
    CompatibleArchitectures: {string}
end

local record PublishLayerVersionOutput
    Content: LayerVersionContentOutput
    LayerArn: string
    LayerVersionArn: string
    Description: string
    CreatedDate: string
    Version: number
    CompatibleRuntimes: {string}
    LicenseInfo: string
    CompatibleArchitectures: {string}
end

local record PublishVersionInput
    FunctionName: string
    CodeSha256: string
    Description: string
    RevisionId: string
    PublishTo: string
end

local record PublishVersionOutput
    FunctionName: string
    FunctionArn: string
    Runtime: string
    Role: string
    Handler: string
    CodeSize: number
    Description: string
    Timeout: number
    MemorySize: number
    LastModified: string
    CodeSha256: string
    Version: string
    VpcConfig: VpcConfigResponse
    DeadLetterConfig: DeadLetterConfig
    Environment: EnvironmentResponse
    KMSKeyArn: string
    TracingConfig: TracingConfigResponse
    MasterArn: string
    RevisionId: string
    Layers: {Layer}
    State: string
    StateReason: string
    StateReasonCode: string
    LastUpdateStatus: string
    LastUpdateStatusReason: string
    LastUpdateStatusReasonCode: string
    FileSystemConfigs: {FileSystemConfig}
    PackageType: string
    ImageConfigResponse: ImageConfigResponse
    SigningProfileVersionArn: string
    SigningJobArn: string
    Architectures: {string}
    EphemeralStorage: EphemeralStorage
    SnapStart: SnapStartResponse
    RuntimeVersionConfig: RuntimeVersionConfig
    LoggingConfig: LoggingConfig
    CapacityProviderConfig: CapacityProviderConfig
    ConfigSha256: string
    DurableConfig: DurableConfig
    TenancyConfig: TenancyConfig
end

local record PutFunctionCodeSigningConfigInput
    CodeSigningConfigArn: string
    FunctionName: string
end

local record PutFunctionCodeSigningConfigOutput
    CodeSigningConfigArn: string
    FunctionName: string
end

local record PutFunctionConcurrencyInput
    FunctionName: string
    ReservedConcurrentExecutions: number
end

local record PutFunctionConcurrencyOutput
    ReservedConcurrentExecutions: number
end

local record PutFunctionEventInvokeConfigInput
    FunctionName: string
    Qualifier: string
    MaximumRetryAttempts: number
    MaximumEventAgeInSeconds: number
    DestinationConfig: DestinationConfig
end

local record PutFunctionEventInvokeConfigOutput
    LastModified: number
    FunctionArn: string
    MaximumRetryAttempts: number
    MaximumEventAgeInSeconds: number
    DestinationConfig: DestinationConfig
end

local record PutFunctionRecursionConfigInput
    FunctionName: string
    RecursiveLoop: string
end

local record PutFunctionRecursionConfigOutput
    RecursiveLoop: string
end

local record PutFunctionScalingConfigInput
    FunctionName: string
    Qualifier: string
    FunctionScalingConfig: FunctionScalingConfig
end

local record PutFunctionScalingConfigOutput
    FunctionState: string
end

local record PutProvisionedConcurrencyConfigInput
    FunctionName: string
    Qualifier: string
    ProvisionedConcurrentExecutions: number
end

local record PutProvisionedConcurrencyConfigOutput
    RequestedProvisionedConcurrentExecutions: number
    AvailableProvisionedConcurrentExecutions: number
    AllocatedProvisionedConcurrentExecutions: number
    Status: string
    StatusReason: string
    LastModified: string
end

local record PutRuntimeManagementConfigInput
    FunctionName: string
    Qualifier: string
    UpdateRuntimeOn: string
    RuntimeVersionArn: string
end

local record PutRuntimeManagementConfigOutput
    UpdateRuntimeOn: string
    FunctionArn: string
    RuntimeVersionArn: string
end

local record RemoveLayerVersionPermissionInput
    LayerName: string
    VersionNumber: number
    StatementId: string
    RevisionId: string
end

local record RemoveLayerVersionPermissionOutput
end

local record RemovePermissionInput
    FunctionName: string
    StatementId: string
    Qualifier: string
    RevisionId: string
end

local record RemovePermissionOutput
end

local record SendDurableExecutionCallbackFailureInput
    CallbackId: string
    Error: ErrorObject
end

local record SendDurableExecutionCallbackFailureOutput
end

local record SendDurableExecutionCallbackHeartbeatInput
    CallbackId: string
end

local record SendDurableExecutionCallbackHeartbeatOutput
end

local record SendDurableExecutionCallbackSuccessInput
    CallbackId: string
    Result: string
end

local record SendDurableExecutionCallbackSuccessOutput
end

local record StopDurableExecutionInput
    DurableExecutionArn: string
    Error: ErrorObject
end

local record StopDurableExecutionOutput
    StopTimestamp: number
end

local record TagResourceInput
    Resource: string
    Tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    Resource: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateAliasInput
    FunctionName: string
    Name: string
    FunctionVersion: string
    Description: string
    RoutingConfig: AliasRoutingConfiguration
    RevisionId: string
end

local record UpdateAliasOutput
    AliasArn: string
    Name: string
    FunctionVersion: string
    Description: string
    RoutingConfig: AliasRoutingConfiguration
    RevisionId: string
end

local record UpdateCapacityProviderInput
    CapacityProviderName: string
    CapacityProviderScalingConfig: CapacityProviderScalingConfig
end

local record UpdateCapacityProviderOutput
    CapacityProvider: CapacityProvider
end

local record UpdateCodeSigningConfigInput
    CodeSigningConfigArn: string
    Description: string
    AllowedPublishers: AllowedPublishers
    CodeSigningPolicies: CodeSigningPolicies
end

local record UpdateCodeSigningConfigOutput
    CodeSigningConfig: CodeSigningConfig
end

local record UpdateEventSourceMappingInput
    UUID: string
    FunctionName: string
    Enabled: boolean
    BatchSize: number
    FilterCriteria: FilterCriteria
    MaximumBatchingWindowInSeconds: number
    DestinationConfig: DestinationConfig
    MaximumRecordAgeInSeconds: number
    BisectBatchOnFunctionError: boolean
    MaximumRetryAttempts: number
    ParallelizationFactor: number
    SourceAccessConfigurations: {SourceAccessConfiguration}
    TumblingWindowInSeconds: number
    FunctionResponseTypes: {string}
    ScalingConfig: ScalingConfig
    AmazonManagedKafkaEventSourceConfig: AmazonManagedKafkaEventSourceConfig
    SelfManagedKafkaEventSourceConfig: SelfManagedKafkaEventSourceConfig
    DocumentDBEventSourceConfig: DocumentDBEventSourceConfig
    KMSKeyArn: string
    MetricsConfig: EventSourceMappingMetricsConfig
    LoggingConfig: EventSourceMappingLoggingConfig
    ProvisionedPollerConfig: ProvisionedPollerConfig
end

local record UpdateEventSourceMappingOutput
    UUID: string
    StartingPosition: string
    StartingPositionTimestamp: number
    BatchSize: number
    MaximumBatchingWindowInSeconds: number
    ParallelizationFactor: number
    EventSourceArn: string
    FilterCriteria: FilterCriteria
    FunctionArn: string
    LastModified: number
    LastProcessingResult: string
    State: string
    StateTransitionReason: string
    DestinationConfig: DestinationConfig
    Topics: {string}
    Queues: {string}
    SourceAccessConfigurations: {SourceAccessConfiguration}
    SelfManagedEventSource: SelfManagedEventSource
    MaximumRecordAgeInSeconds: number
    BisectBatchOnFunctionError: boolean
    MaximumRetryAttempts: number
    TumblingWindowInSeconds: number
    FunctionResponseTypes: {string}
    AmazonManagedKafkaEventSourceConfig: AmazonManagedKafkaEventSourceConfig
    SelfManagedKafkaEventSourceConfig: SelfManagedKafkaEventSourceConfig
    ScalingConfig: ScalingConfig
    DocumentDBEventSourceConfig: DocumentDBEventSourceConfig
    KMSKeyArn: string
    FilterCriteriaError: FilterCriteriaError
    EventSourceMappingArn: string
    MetricsConfig: EventSourceMappingMetricsConfig
    LoggingConfig: EventSourceMappingLoggingConfig
    ProvisionedPollerConfig: ProvisionedPollerConfig
end

local record UpdateFunctionCodeInput
    FunctionName: string
    ZipFile: string
    S3Bucket: string
    S3Key: string
    S3ObjectVersion: string
    ImageUri: string
    Publish: boolean
    DryRun: boolean
    RevisionId: string
    Architectures: {string}
    SourceKMSKeyArn: string
    PublishTo: string
end

local record UpdateFunctionCodeOutput
    FunctionName: string
    FunctionArn: string
    Runtime: string
    Role: string
    Handler: string
    CodeSize: number
    Description: string
    Timeout: number
    MemorySize: number
    LastModified: string
    CodeSha256: string
    Version: string
    VpcConfig: VpcConfigResponse
    DeadLetterConfig: DeadLetterConfig
    Environment: EnvironmentResponse
    KMSKeyArn: string
    TracingConfig: TracingConfigResponse
    MasterArn: string
    RevisionId: string
    Layers: {Layer}
    State: string
    StateReason: string
    StateReasonCode: string
    LastUpdateStatus: string
    LastUpdateStatusReason: string
    LastUpdateStatusReasonCode: string
    FileSystemConfigs: {FileSystemConfig}
    PackageType: string
    ImageConfigResponse: ImageConfigResponse
    SigningProfileVersionArn: string
    SigningJobArn: string
    Architectures: {string}
    EphemeralStorage: EphemeralStorage
    SnapStart: SnapStartResponse
    RuntimeVersionConfig: RuntimeVersionConfig
    LoggingConfig: LoggingConfig
    CapacityProviderConfig: CapacityProviderConfig
    ConfigSha256: string
    DurableConfig: DurableConfig
    TenancyConfig: TenancyConfig
end

local record UpdateFunctionConfigurationInput
    FunctionName: string
    Role: string
    Handler: string
    Description: string
    Timeout: number
    MemorySize: number
    VpcConfig: VpcConfig
    Environment: Environment
    Runtime: string
    DeadLetterConfig: DeadLetterConfig
    KMSKeyArn: string
    TracingConfig: TracingConfig
    RevisionId: string
    Layers: {string}
    FileSystemConfigs: {FileSystemConfig}
    ImageConfig: ImageConfig
    EphemeralStorage: EphemeralStorage
    SnapStart: SnapStart
    LoggingConfig: LoggingConfig
    CapacityProviderConfig: CapacityProviderConfig
    DurableConfig: DurableConfig
end

local record UpdateFunctionConfigurationOutput
    FunctionName: string
    FunctionArn: string
    Runtime: string
    Role: string
    Handler: string
    CodeSize: number
    Description: string
    Timeout: number
    MemorySize: number
    LastModified: string
    CodeSha256: string
    Version: string
    VpcConfig: VpcConfigResponse
    DeadLetterConfig: DeadLetterConfig
    Environment: EnvironmentResponse
    KMSKeyArn: string
    TracingConfig: TracingConfigResponse
    MasterArn: string
    RevisionId: string
    Layers: {Layer}
    State: string
    StateReason: string
    StateReasonCode: string
    LastUpdateStatus: string
    LastUpdateStatusReason: string
    LastUpdateStatusReasonCode: string
    FileSystemConfigs: {FileSystemConfig}
    PackageType: string
    ImageConfigResponse: ImageConfigResponse
    SigningProfileVersionArn: string
    SigningJobArn: string
    Architectures: {string}
    EphemeralStorage: EphemeralStorage
    SnapStart: SnapStartResponse
    RuntimeVersionConfig: RuntimeVersionConfig
    LoggingConfig: LoggingConfig
    CapacityProviderConfig: CapacityProviderConfig
    ConfigSha256: string
    DurableConfig: DurableConfig
    TenancyConfig: TenancyConfig
end

local record UpdateFunctionEventInvokeConfigInput
    FunctionName: string
    Qualifier: string
    MaximumRetryAttempts: number
    MaximumEventAgeInSeconds: number
    DestinationConfig: DestinationConfig
end

local record UpdateFunctionEventInvokeConfigOutput
    LastModified: number
    FunctionArn: string
    MaximumRetryAttempts: number
    MaximumEventAgeInSeconds: number
    DestinationConfig: DestinationConfig
end

local record UpdateFunctionUrlConfigInput
    FunctionName: string
    Qualifier: string
    AuthType: string
    Cors: Cors
    InvokeMode: string
end

local record UpdateFunctionUrlConfigOutput
    FunctionUrl: string
    FunctionArn: string
    AuthType: string
    Cors: Cors
    CreationTime: string
    LastModifiedTime: string
    InvokeMode: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record PolicyLengthExceededException
    Type: string
    message: string
end

local record PreconditionFailedException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record PolicyLengthExceededException
    Type: string
    message: string
end

local record PreconditionFailedException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record CapacityProviderLimitExceededException
    Type: string
    message: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record CodeSigningConfigNotFoundException
    Type: string
    Message: string
end

local record CodeStorageExceededException
    Type: string
    message: string
end

local record CodeVerificationFailedException
    Type: string
    Message: string
end

local record FunctionVersionsPerCapacityProviderLimitExceededException
    Type: string
    message: string
end

local record InvalidCodeSignatureException
    Type: string
    Message: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceInUseException
    Type: string
    Message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record CodeSigningConfigNotFoundException
    Type: string
    Message: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ProvisionedConcurrencyConfigNotFoundException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record DurableExecutionAlreadyStartedException
    Type: string
    Message: string
end

local record EC2AccessDeniedException
    Type: string
    Message: string
end

local record EC2ThrottledException
    Type: string
    Message: string
end

local record EC2UnexpectedException
    Type: string
    Message: string
    EC2ErrorCode: string
end

local record EFSIOException
    Type: string
    Message: string
end

local record EFSMountConnectivityException
    Type: string
    Message: string
end

local record EFSMountFailureException
    Type: string
    Message: string
end

local record EFSMountTimeoutException
    Type: string
    Message: string
end

local record ENILimitReachedException
    Type: string
    Message: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record InvalidRequestContentException
    Type: string
    message: string
end

local record InvalidRuntimeException
    Type: string
    Message: string
end

local record InvalidSecurityGroupIDException
    Type: string
    Message: string
end

local record InvalidSubnetIDException
    Type: string
    Message: string
end

local record InvalidZipFileException
    Type: string
    Message: string
end

local record KMSAccessDeniedException
    Type: string
    Message: string
end

local record KMSDisabledException
    Type: string
    Message: string
end

local record KMSInvalidStateException
    Type: string
    Message: string
end

local record KMSNotFoundException
    Type: string
    Message: string
end

local record NoPublishedVersionException
    Type: string
    Message: string
end

local record RecursiveInvocationException
    Type: string
    Message: string
end

local record RequestTooLargeException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ResourceNotReadyException
    Type: string
    message: string
end

local record S3FilesMountConnectivityException
    Type: string
    Message: string
end

local record S3FilesMountFailureException
    Type: string
    Message: string
end

local record S3FilesMountTimeoutException
    Type: string
    Message: string
end

local record SerializedRequestEntityTooLargeException
    Type: string
    message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record SnapStartException
    Type: string
    Message: string
end

local record SnapStartNotReadyException
    Type: string
    Message: string
end

local record SnapStartTimeoutException
    Type: string
    Message: string
end

local record SubnetIPAddressLimitReachedException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record UnsupportedMediaTypeException
    Type: string
    message: string
end

local record InvalidRequestContentException
    Type: string
    message: string
end

local record InvalidRuntimeException
    Type: string
    Message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record EC2AccessDeniedException
    Type: string
    Message: string
end

local record EC2ThrottledException
    Type: string
    Message: string
end

local record EC2UnexpectedException
    Type: string
    Message: string
    EC2ErrorCode: string
end

local record EFSIOException
    Type: string
    Message: string
end

local record EFSMountConnectivityException
    Type: string
    Message: string
end

local record EFSMountFailureException
    Type: string
    Message: string
end

local record EFSMountTimeoutException
    Type: string
    Message: string
end

local record ENILimitReachedException
    Type: string
    Message: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record InvalidRequestContentException
    Type: string
    message: string
end

local record InvalidRuntimeException
    Type: string
    Message: string
end

local record InvalidSecurityGroupIDException
    Type: string
    Message: string
end

local record InvalidSubnetIDException
    Type: string
    Message: string
end

local record InvalidZipFileException
    Type: string
    Message: string
end

local record KMSAccessDeniedException
    Type: string
    Message: string
end

local record KMSDisabledException
    Type: string
    Message: string
end

local record KMSInvalidStateException
    Type: string
    Message: string
end

local record KMSNotFoundException
    Type: string
    Message: string
end

local record NoPublishedVersionException
    Type: string
    Message: string
end

local record RecursiveInvocationException
    Type: string
    Message: string
end

local record RequestTooLargeException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ResourceNotReadyException
    Type: string
    message: string
end

local record S3FilesMountConnectivityException
    Type: string
    Message: string
end

local record S3FilesMountFailureException
    Type: string
    Message: string
end

local record S3FilesMountTimeoutException
    Type: string
    Message: string
end

local record SerializedRequestEntityTooLargeException
    Type: string
    message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record SnapStartException
    Type: string
    Message: string
end

local record SnapStartNotReadyException
    Type: string
    Message: string
end

local record SnapStartTimeoutException
    Type: string
    Message: string
end

local record SubnetIPAddressLimitReachedException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record UnsupportedMediaTypeException
    Type: string
    message: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record CodeStorageExceededException
    Type: string
    message: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record CodeStorageExceededException
    Type: string
    message: string
end

local record FunctionVersionsPerCapacityProviderLimitExceededException
    Type: string
    message: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record PreconditionFailedException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record CodeSigningConfigNotFoundException
    Type: string
    Message: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record PreconditionFailedException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record PreconditionFailedException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record CallbackTimeoutException
    Type: string
    Message: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record CallbackTimeoutException
    Type: string
    Message: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record CallbackTimeoutException
    Type: string
    Message: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record PreconditionFailedException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceInUseException
    Type: string
    Message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record CodeSigningConfigNotFoundException
    Type: string
    Message: string
end

local record CodeStorageExceededException
    Type: string
    message: string
end

local record CodeVerificationFailedException
    Type: string
    Message: string
end

local record InvalidCodeSignatureException
    Type: string
    Message: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record PreconditionFailedException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record CodeSigningConfigNotFoundException
    Type: string
    Message: string
end

local record CodeVerificationFailedException
    Type: string
    Message: string
end

local record InvalidCodeSignatureException
    Type: string
    Message: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record PreconditionFailedException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local record InvalidParameterValueException
    Type: string
    message: string
end

local record ResourceConflictException
    Type: string
    message: string
end

local record ResourceNotFoundException
    Type: string
    Message: string
end

local record ServiceException
    Type: string
    Message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    Type: string
    message: string
    Reason: string
end

local type InvokeMode = "BUFFERED" | "RESPONSE_STREAM"

local type LastUpdateStatus = "Successful" | "Failed" | "InProgress"

local type LastUpdateStatusReasonCode = "EniLimitExceeded" | "InsufficientRolePermissions" | "InvalidConfiguration" | "InternalError" | "SubnetOutOfIPAddresses" | "InvalidSubnet" | "InvalidSecurityGroup" | "ImageDeleted" | "ImageAccessDenied" | "InvalidImage" | "KMSKeyAccessDenied" | "KMSKeyNotFound" | "InvalidStateKMSKey" | "DisabledKMSKey" | "EFSIOError" | "EFSMountConnectivityError" | "EFSMountFailure" | "EFSMountTimeout" | "InvalidRuntime" | "InvalidZipFileException" | "FunctionError" | "VcpuLimitExceeded" | "CapacityProviderScalingLimitExceeded" | "InsufficientCapacity" | "EC2RequestLimitExceeded" | "FunctionError.InitTimeout" | "FunctionError.RuntimeInitError" | "FunctionError.ExtensionInitError" | "FunctionError.InvalidEntryPoint" | "FunctionError.InvalidWorkingDirectory" | "FunctionError.PermissionDenied" | "FunctionError.TooManyExtensions" | "FunctionError.InitResourceExhausted" | "DisallowedByVpcEncryptionControl"

local type CapacityProviderState = "Pending" | "Active" | "Failed" | "Deleting"

local type FunctionVersion = "ALL"

local type Architecture = "x86_64" | "arm64"

local type StateReasonCode = "Idle" | "Creating" | "Restoring" | "EniLimitExceeded" | "InsufficientRolePermissions" | "InvalidConfiguration" | "InternalError" | "SubnetOutOfIPAddresses" | "InvalidSubnet" | "InvalidSecurityGroup" | "ImageDeleted" | "ImageAccessDenied" | "InvalidImage" | "KMSKeyAccessDenied" | "KMSKeyNotFound" | "InvalidStateKMSKey" | "DisabledKMSKey" | "EFSIOError" | "EFSMountConnectivityError" | "EFSMountFailure" | "EFSMountTimeout" | "InvalidRuntime" | "InvalidZipFileException" | "FunctionError" | "DrainingDurableExecutions" | "VcpuLimitExceeded" | "CapacityProviderScalingLimitExceeded" | "InsufficientCapacity" | "EC2RequestLimitExceeded" | "FunctionError.InitTimeout" | "FunctionError.RuntimeInitError" | "FunctionError.ExtensionInitError" | "FunctionError.InvalidEntryPoint" | "FunctionError.InvalidWorkingDirectory" | "FunctionError.PermissionDenied" | "FunctionError.TooManyExtensions" | "FunctionError.InitResourceExhausted" | "DisallowedByVpcEncryptionControl"

local type EventSourcePosition = "TRIM_HORIZON" | "LATEST" | "AT_TIMESTAMP"

local type PackageType = "Zip" | "Image"

local type FunctionVersionLatestPublished = "LATEST_PUBLISHED"

local type ProvisionedConcurrencyStatusEnum = "IN_PROGRESS" | "READY" | "FAILED"

local type Runtime = "nodejs" | "nodejs4.3" | "nodejs6.10" | "nodejs8.10" | "nodejs10.x" | "nodejs12.x" | "nodejs14.x" | "nodejs16.x" | "java8" | "java8.al2" | "java11" | "python2.7" | "python3.6" | "python3.7" | "python3.8" | "python3.9" | "dotnetcore1.0" | "dotnetcore2.0" | "dotnetcore2.1" | "dotnetcore3.1" | "dotnet6" | "dotnet8" | "nodejs4.3-edge" | "go1.x" | "ruby2.5" | "ruby2.7" | "provided" | "provided.al2" | "nodejs18.x" | "python3.10" | "java17" | "ruby3.2" | "ruby3.3" | "ruby3.4" | "python3.11" | "nodejs20.x" | "provided.al2023" | "python3.12" | "java21" | "python3.13" | "nodejs22.x" | "nodejs24.x" | "python3.14" | "java25" | "dotnet10" | "ruby4.0"

local type ResponseStreamingInvocationType = "RequestResponse" | "DryRun"

local type LogType = "None" | "Tail"

local type UpdateRuntimeOn = "Auto" | "Manual" | "FunctionUpdate"

local type ExecutionStatus = "RUNNING" | "SUCCEEDED" | "FAILED" | "TIMED_OUT" | "STOPPED"

local type FunctionUrlAuthType = "NONE" | "AWS_IAM"

local type InvocationType = "Event" | "RequestResponse" | "DryRun"

local type State = "Pending" | "Active" | "Inactive" | "Failed" | "Deactivating" | "Deactivated" | "ActiveNonInvocable" | "Deleting"

local type RecursiveLoop = "Allow" | "Terminate"

local record M
    AddLayerVersionPermissionInput: AddLayerVersionPermissionInput
    AddLayerVersionPermissionOutput: AddLayerVersionPermissionOutput
    AddPermissionInput: AddPermissionInput
    AddPermissionOutput: AddPermissionOutput
    CheckpointDurableExecutionInput: CheckpointDurableExecutionInput
    CheckpointDurableExecutionOutput: CheckpointDurableExecutionOutput
    CreateAliasInput: CreateAliasInput
    CreateAliasOutput: CreateAliasOutput
    CreateCapacityProviderInput: CreateCapacityProviderInput
    CreateCapacityProviderOutput: CreateCapacityProviderOutput
    CreateCodeSigningConfigInput: CreateCodeSigningConfigInput
    CreateCodeSigningConfigOutput: CreateCodeSigningConfigOutput
    CreateEventSourceMappingInput: CreateEventSourceMappingInput
    CreateEventSourceMappingOutput: CreateEventSourceMappingOutput
    CreateFunctionInput: CreateFunctionInput
    CreateFunctionOutput: CreateFunctionOutput
    CreateFunctionUrlConfigInput: CreateFunctionUrlConfigInput
    CreateFunctionUrlConfigOutput: CreateFunctionUrlConfigOutput
    DeleteAliasInput: DeleteAliasInput
    DeleteAliasOutput: DeleteAliasOutput
    DeleteCapacityProviderInput: DeleteCapacityProviderInput
    DeleteCapacityProviderOutput: DeleteCapacityProviderOutput
    DeleteCodeSigningConfigInput: DeleteCodeSigningConfigInput
    DeleteCodeSigningConfigOutput: DeleteCodeSigningConfigOutput
    DeleteEventSourceMappingInput: DeleteEventSourceMappingInput
    DeleteEventSourceMappingOutput: DeleteEventSourceMappingOutput
    DeleteFunctionInput: DeleteFunctionInput
    DeleteFunctionOutput: DeleteFunctionOutput
    DeleteFunctionCodeSigningConfigInput: DeleteFunctionCodeSigningConfigInput
    DeleteFunctionCodeSigningConfigOutput: DeleteFunctionCodeSigningConfigOutput
    DeleteFunctionConcurrencyInput: DeleteFunctionConcurrencyInput
    DeleteFunctionConcurrencyOutput: DeleteFunctionConcurrencyOutput
    DeleteFunctionEventInvokeConfigInput: DeleteFunctionEventInvokeConfigInput
    DeleteFunctionEventInvokeConfigOutput: DeleteFunctionEventInvokeConfigOutput
    DeleteFunctionUrlConfigInput: DeleteFunctionUrlConfigInput
    DeleteFunctionUrlConfigOutput: DeleteFunctionUrlConfigOutput
    DeleteLayerVersionInput: DeleteLayerVersionInput
    DeleteLayerVersionOutput: DeleteLayerVersionOutput
    DeleteProvisionedConcurrencyConfigInput: DeleteProvisionedConcurrencyConfigInput
    DeleteProvisionedConcurrencyConfigOutput: DeleteProvisionedConcurrencyConfigOutput
    GetAccountSettingsInput: GetAccountSettingsInput
    GetAccountSettingsOutput: GetAccountSettingsOutput
    GetAliasInput: GetAliasInput
    GetAliasOutput: GetAliasOutput
    GetCapacityProviderInput: GetCapacityProviderInput
    GetCapacityProviderOutput: GetCapacityProviderOutput
    GetCodeSigningConfigInput: GetCodeSigningConfigInput
    GetCodeSigningConfigOutput: GetCodeSigningConfigOutput
    GetDurableExecutionInput: GetDurableExecutionInput
    GetDurableExecutionOutput: GetDurableExecutionOutput
    GetDurableExecutionHistoryInput: GetDurableExecutionHistoryInput
    GetDurableExecutionHistoryOutput: GetDurableExecutionHistoryOutput
    GetDurableExecutionStateInput: GetDurableExecutionStateInput
    GetDurableExecutionStateOutput: GetDurableExecutionStateOutput
    GetEventSourceMappingInput: GetEventSourceMappingInput
    GetEventSourceMappingOutput: GetEventSourceMappingOutput
    GetFunctionInput: GetFunctionInput
    GetFunctionOutput: GetFunctionOutput
    GetFunctionCodeSigningConfigInput: GetFunctionCodeSigningConfigInput
    GetFunctionCodeSigningConfigOutput: GetFunctionCodeSigningConfigOutput
    GetFunctionConcurrencyInput: GetFunctionConcurrencyInput
    GetFunctionConcurrencyOutput: GetFunctionConcurrencyOutput
    GetFunctionConfigurationInput: GetFunctionConfigurationInput
    GetFunctionConfigurationOutput: GetFunctionConfigurationOutput
    GetFunctionEventInvokeConfigInput: GetFunctionEventInvokeConfigInput
    GetFunctionEventInvokeConfigOutput: GetFunctionEventInvokeConfigOutput
    GetFunctionRecursionConfigInput: GetFunctionRecursionConfigInput
    GetFunctionRecursionConfigOutput: GetFunctionRecursionConfigOutput
    GetFunctionScalingConfigInput: GetFunctionScalingConfigInput
    GetFunctionScalingConfigOutput: GetFunctionScalingConfigOutput
    GetFunctionUrlConfigInput: GetFunctionUrlConfigInput
    GetFunctionUrlConfigOutput: GetFunctionUrlConfigOutput
    GetLayerVersionInput: GetLayerVersionInput
    GetLayerVersionOutput: GetLayerVersionOutput
    GetLayerVersionByArnInput: GetLayerVersionByArnInput
    GetLayerVersionByArnOutput: GetLayerVersionByArnOutput
    GetLayerVersionPolicyInput: GetLayerVersionPolicyInput
    GetLayerVersionPolicyOutput: GetLayerVersionPolicyOutput
    GetPolicyInput: GetPolicyInput
    GetPolicyOutput: GetPolicyOutput
    GetProvisionedConcurrencyConfigInput: GetProvisionedConcurrencyConfigInput
    GetProvisionedConcurrencyConfigOutput: GetProvisionedConcurrencyConfigOutput
    GetRuntimeManagementConfigInput: GetRuntimeManagementConfigInput
    GetRuntimeManagementConfigOutput: GetRuntimeManagementConfigOutput
    InvokeInput: InvokeInput
    InvokeOutput: InvokeOutput
    InvokeAsyncInput: InvokeAsyncInput
    InvokeAsyncOutput: InvokeAsyncOutput
    InvokeWithResponseStreamInput: InvokeWithResponseStreamInput
    InvokeWithResponseStreamOutput: InvokeWithResponseStreamOutput
    ListAliasesInput: ListAliasesInput
    ListAliasesOutput: ListAliasesOutput
    ListCapacityProvidersInput: ListCapacityProvidersInput
    ListCapacityProvidersOutput: ListCapacityProvidersOutput
    ListCodeSigningConfigsInput: ListCodeSigningConfigsInput
    ListCodeSigningConfigsOutput: ListCodeSigningConfigsOutput
    ListDurableExecutionsByFunctionInput: ListDurableExecutionsByFunctionInput
    ListDurableExecutionsByFunctionOutput: ListDurableExecutionsByFunctionOutput
    ListEventSourceMappingsInput: ListEventSourceMappingsInput
    ListEventSourceMappingsOutput: ListEventSourceMappingsOutput
    ListFunctionEventInvokeConfigsInput: ListFunctionEventInvokeConfigsInput
    ListFunctionEventInvokeConfigsOutput: ListFunctionEventInvokeConfigsOutput
    ListFunctionsInput: ListFunctionsInput
    ListFunctionsOutput: ListFunctionsOutput
    ListFunctionsByCodeSigningConfigInput: ListFunctionsByCodeSigningConfigInput
    ListFunctionsByCodeSigningConfigOutput: ListFunctionsByCodeSigningConfigOutput
    ListFunctionUrlConfigsInput: ListFunctionUrlConfigsInput
    ListFunctionUrlConfigsOutput: ListFunctionUrlConfigsOutput
    ListFunctionVersionsByCapacityProviderInput: ListFunctionVersionsByCapacityProviderInput
    ListFunctionVersionsByCapacityProviderOutput: ListFunctionVersionsByCapacityProviderOutput
    ListLayersInput: ListLayersInput
    ListLayersOutput: ListLayersOutput
    ListLayerVersionsInput: ListLayerVersionsInput
    ListLayerVersionsOutput: ListLayerVersionsOutput
    ListProvisionedConcurrencyConfigsInput: ListProvisionedConcurrencyConfigsInput
    ListProvisionedConcurrencyConfigsOutput: ListProvisionedConcurrencyConfigsOutput
    ListTagsInput: ListTagsInput
    ListTagsOutput: ListTagsOutput
    ListVersionsByFunctionInput: ListVersionsByFunctionInput
    ListVersionsByFunctionOutput: ListVersionsByFunctionOutput
    PublishLayerVersionInput: PublishLayerVersionInput
    PublishLayerVersionOutput: PublishLayerVersionOutput
    PublishVersionInput: PublishVersionInput
    PublishVersionOutput: PublishVersionOutput
    PutFunctionCodeSigningConfigInput: PutFunctionCodeSigningConfigInput
    PutFunctionCodeSigningConfigOutput: PutFunctionCodeSigningConfigOutput
    PutFunctionConcurrencyInput: PutFunctionConcurrencyInput
    PutFunctionConcurrencyOutput: PutFunctionConcurrencyOutput
    PutFunctionEventInvokeConfigInput: PutFunctionEventInvokeConfigInput
    PutFunctionEventInvokeConfigOutput: PutFunctionEventInvokeConfigOutput
    PutFunctionRecursionConfigInput: PutFunctionRecursionConfigInput
    PutFunctionRecursionConfigOutput: PutFunctionRecursionConfigOutput
    PutFunctionScalingConfigInput: PutFunctionScalingConfigInput
    PutFunctionScalingConfigOutput: PutFunctionScalingConfigOutput
    PutProvisionedConcurrencyConfigInput: PutProvisionedConcurrencyConfigInput
    PutProvisionedConcurrencyConfigOutput: PutProvisionedConcurrencyConfigOutput
    PutRuntimeManagementConfigInput: PutRuntimeManagementConfigInput
    PutRuntimeManagementConfigOutput: PutRuntimeManagementConfigOutput
    RemoveLayerVersionPermissionInput: RemoveLayerVersionPermissionInput
    RemoveLayerVersionPermissionOutput: RemoveLayerVersionPermissionOutput
    RemovePermissionInput: RemovePermissionInput
    RemovePermissionOutput: RemovePermissionOutput
    SendDurableExecutionCallbackFailureInput: SendDurableExecutionCallbackFailureInput
    SendDurableExecutionCallbackFailureOutput: SendDurableExecutionCallbackFailureOutput
    SendDurableExecutionCallbackHeartbeatInput: SendDurableExecutionCallbackHeartbeatInput
    SendDurableExecutionCallbackHeartbeatOutput: SendDurableExecutionCallbackHeartbeatOutput
    SendDurableExecutionCallbackSuccessInput: SendDurableExecutionCallbackSuccessInput
    SendDurableExecutionCallbackSuccessOutput: SendDurableExecutionCallbackSuccessOutput
    StopDurableExecutionInput: StopDurableExecutionInput
    StopDurableExecutionOutput: StopDurableExecutionOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAliasInput: UpdateAliasInput
    UpdateAliasOutput: UpdateAliasOutput
    UpdateCapacityProviderInput: UpdateCapacityProviderInput
    UpdateCapacityProviderOutput: UpdateCapacityProviderOutput
    UpdateCodeSigningConfigInput: UpdateCodeSigningConfigInput
    UpdateCodeSigningConfigOutput: UpdateCodeSigningConfigOutput
    UpdateEventSourceMappingInput: UpdateEventSourceMappingInput
    UpdateEventSourceMappingOutput: UpdateEventSourceMappingOutput
    UpdateFunctionCodeInput: UpdateFunctionCodeInput
    UpdateFunctionCodeOutput: UpdateFunctionCodeOutput
    UpdateFunctionConfigurationInput: UpdateFunctionConfigurationInput
    UpdateFunctionConfigurationOutput: UpdateFunctionConfigurationOutput
    UpdateFunctionEventInvokeConfigInput: UpdateFunctionEventInvokeConfigInput
    UpdateFunctionEventInvokeConfigOutput: UpdateFunctionEventInvokeConfigOutput
    UpdateFunctionUrlConfigInput: UpdateFunctionUrlConfigInput
    UpdateFunctionUrlConfigOutput: UpdateFunctionUrlConfigOutput
end

return M
