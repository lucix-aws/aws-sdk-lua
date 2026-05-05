local record CreateAgentRuntimeInput
    agentRuntimeName: string
    agentRuntimeArtifact: AgentRuntimeArtifact
    roleArn: string
    networkConfiguration: NetworkConfiguration
    clientToken: string
    description: string
    authorizerConfiguration: AuthorizerConfiguration
    requestHeaderConfiguration: RequestHeaderConfiguration
    protocolConfiguration: ProtocolConfiguration
    lifecycleConfiguration: LifecycleConfiguration
    environmentVariables: {string : string}
    filesystemConfigurations: {FilesystemConfiguration}
    tags: {string : string}
end

local record CreateAgentRuntimeOutput
    agentRuntimeArn: string
    workloadIdentityDetails: WorkloadIdentityDetails
    agentRuntimeId: string
    agentRuntimeVersion: string
    createdAt: number
    status: string
end

local record CreateAgentRuntimeEndpointInput
    agentRuntimeId: string
    name: string
    agentRuntimeVersion: string
    description: string
    clientToken: string
    tags: {string : string}
end

local record CreateAgentRuntimeEndpointOutput
    targetVersion: string
    agentRuntimeEndpointArn: string
    agentRuntimeArn: string
    agentRuntimeId: string
    endpointName: string
    status: string
    createdAt: number
end

local record CreateApiKeyCredentialProviderInput
    name: string
    apiKey: string
    tags: {string : string}
end

local record CreateApiKeyCredentialProviderOutput
    apiKeySecretArn: Secret
    name: string
    credentialProviderArn: string
end

local record CreateBrowserInput
    name: string
    description: string
    executionRoleArn: string
    networkConfiguration: BrowserNetworkConfiguration
    recording: RecordingConfig
    browserSigning: BrowserSigningConfigInput
    enterprisePolicies: {BrowserEnterprisePolicy}
    certificates: {Certificate}
    clientToken: string
    tags: {string : string}
end

local record CreateBrowserOutput
    browserId: string
    browserArn: string
    createdAt: number
    status: string
end

local record CreateBrowserProfileInput
    name: string
    description: string
    clientToken: string
    tags: {string : string}
end

local record CreateBrowserProfileOutput
    profileId: string
    profileArn: string
    createdAt: number
    status: string
end

local record CreateCodeInterpreterInput
    name: string
    description: string
    executionRoleArn: string
    networkConfiguration: CodeInterpreterNetworkConfiguration
    certificates: {Certificate}
    clientToken: string
    tags: {string : string}
end

local record CreateCodeInterpreterOutput
    codeInterpreterId: string
    codeInterpreterArn: string
    createdAt: number
    status: string
end

local record CreateConfigurationBundleInput
    clientToken: string
    bundleName: string
    description: string
    components: {string : ComponentConfiguration}
    branchName: string
    commitMessage: string
    createdBy: VersionCreatedBySource
    tags: {string : string}
end

local record CreateConfigurationBundleOutput
    bundleArn: string
    bundleId: string
    versionId: string
    createdAt: number
end

local record CreateEvaluatorInput
    clientToken: string
    evaluatorName: string
    description: string
    evaluatorConfig: EvaluatorConfig
    level: string
    kmsKeyArn: string
    tags: {string : string}
end

local record CreateEvaluatorOutput
    evaluatorArn: string
    evaluatorId: string
    createdAt: number
    status: string
end

local record CreateGatewayInput
    name: string
    description: string
    clientToken: string
    roleArn: string
    protocolType: string
    protocolConfiguration: GatewayProtocolConfiguration
    authorizerType: string
    authorizerConfiguration: AuthorizerConfiguration
    kmsKeyArn: string
    interceptorConfigurations: {GatewayInterceptorConfiguration}
    policyEngineConfiguration: GatewayPolicyEngineConfiguration
    exceptionLevel: string
    tags: {string : string}
end

local record CreateGatewayOutput
    gatewayArn: string
    gatewayId: string
    gatewayUrl: string
    createdAt: number
    updatedAt: number
    status: string
    statusReasons: {string}
    name: string
    description: string
    roleArn: string
    protocolType: string
    protocolConfiguration: GatewayProtocolConfiguration
    authorizerType: string
    authorizerConfiguration: AuthorizerConfiguration
    kmsKeyArn: string
    interceptorConfigurations: {GatewayInterceptorConfiguration}
    policyEngineConfiguration: GatewayPolicyEngineConfiguration
    workloadIdentityDetails: WorkloadIdentityDetails
    exceptionLevel: string
end

local record CreateGatewayRuleInput
    gatewayIdentifier: string
    clientToken: string
    priority: number
    conditions: {Condition}
    actions: {Action}
    description: string
end

local record CreateGatewayRuleOutput
    ruleId: string
    gatewayArn: string
    priority: number
    conditions: {Condition}
    actions: {Action}
    description: string
    createdAt: number
    status: string
    system: SystemManagedBlock
end

local record CreateGatewayTargetInput
    gatewayIdentifier: string
    name: string
    description: string
    clientToken: string
    targetConfiguration: TargetConfiguration
    credentialProviderConfigurations: {CredentialProviderConfiguration}
    metadataConfiguration: MetadataConfiguration
    privateEndpoint: PrivateEndpoint
end

local record CreateGatewayTargetOutput
    gatewayArn: string
    targetId: string
    createdAt: number
    updatedAt: number
    status: string
    statusReasons: {string}
    name: string
    description: string
    targetConfiguration: TargetConfiguration
    credentialProviderConfigurations: {CredentialProviderConfiguration}
    lastSynchronizedAt: number
    metadataConfiguration: MetadataConfiguration
    privateEndpoint: PrivateEndpoint
    privateEndpointManagedResources: {ManagedResourceDetails}
    authorizationData: AuthorizationData
    protocolType: string
end

local record CreateHarnessInput
    harnessName: string
    clientToken: string
    executionRoleArn: string
    environment: HarnessEnvironmentProviderRequest
    environmentArtifact: HarnessEnvironmentArtifact
    environmentVariables: {string : string}
    authorizerConfiguration: AuthorizerConfiguration
    model: HarnessModelConfiguration
    systemPrompt: {HarnessSystemContentBlock}
    tools: {HarnessTool}
    skills: {HarnessSkill}
    allowedTools: {string}
    memory: HarnessMemoryConfiguration
    truncation: HarnessTruncationConfiguration
    maxIterations: number
    maxTokens: number
    timeoutSeconds: number
    tags: {string : string}
end

local record CreateHarnessOutput
    harness: Harness
end

local record CreateMemoryInput
    clientToken: string
    name: string
    description: string
    encryptionKeyArn: string
    memoryExecutionRoleArn: string
    eventExpiryDuration: number
    memoryStrategies: {MemoryStrategyInput}
    indexedKeys: {IndexedKey}
    streamDeliveryResources: StreamDeliveryResources
    tags: {string : string}
end

local record CreateMemoryOutput
    memory: Memory
end

local record CreateOauth2CredentialProviderInput
    name: string
    credentialProviderVendor: string
    oauth2ProviderConfigInput: Oauth2ProviderConfigInput
    tags: {string : string}
end

local record CreateOauth2CredentialProviderOutput
    clientSecretArn: Secret
    name: string
    credentialProviderArn: string
    callbackUrl: string
    oauth2ProviderConfigOutput: Oauth2ProviderConfigOutput
    status: string
end

local record CreateOnlineEvaluationConfigInput
    clientToken: string
    onlineEvaluationConfigName: string
    description: string
    rule: Rule
    dataSourceConfig: DataSourceConfig
    evaluators: {EvaluatorReference}
    evaluationExecutionRoleArn: string
    enableOnCreate: boolean
    tags: {string : string}
end

local record CreateOnlineEvaluationConfigOutput
    onlineEvaluationConfigArn: string
    onlineEvaluationConfigId: string
    createdAt: number
    outputConfig: OutputConfig
    status: string
    executionStatus: string
    failureReason: string
end

local record CreatePolicyInput
    name: string
    definition: PolicyDefinition
    description: string
    validationMode: string
    policyEngineId: string
    clientToken: string
end

local record CreatePolicyOutput
    policyId: string
    name: string
    policyEngineId: string
    definition: PolicyDefinition
    description: string
    createdAt: number
    updatedAt: number
    policyArn: string
    status: string
    statusReasons: {string}
end

local record CreatePolicyEngineInput
    name: string
    description: string
    clientToken: string
    encryptionKeyArn: string
    tags: {string : string}
end

local record CreatePolicyEngineOutput
    policyEngineId: string
    name: string
    description: string
    createdAt: number
    updatedAt: number
    policyEngineArn: string
    status: string
    statusReasons: {string}
    encryptionKeyArn: string
end

local record CreateRegistryInput
    name: string
    description: string
    authorizerType: string
    authorizerConfiguration: AuthorizerConfiguration
    clientToken: string
    approvalConfiguration: ApprovalConfiguration
end

local record CreateRegistryOutput
    registryArn: string
end

local record CreateRegistryRecordInput
    registryId: string
    name: string
    description: string
    descriptorType: string
    descriptors: Descriptors
    recordVersion: string
    synchronizationType: string
    synchronizationConfiguration: SynchronizationConfiguration
    clientToken: string
end

local record CreateRegistryRecordOutput
    recordArn: string
    status: string
end

local record CreateWorkloadIdentityInput
    name: string
    allowedResourceOauth2ReturnUrls: {string}
    tags: {string : string}
end

local record CreateWorkloadIdentityOutput
    name: string
    workloadIdentityArn: string
    allowedResourceOauth2ReturnUrls: {string}
end

local record DeleteAgentRuntimeInput
    agentRuntimeId: string
    clientToken: string
end

local record DeleteAgentRuntimeOutput
    status: string
    agentRuntimeId: string
end

local record DeleteAgentRuntimeEndpointInput
    agentRuntimeId: string
    endpointName: string
    clientToken: string
end

local record DeleteAgentRuntimeEndpointOutput
    status: string
    agentRuntimeId: string
    endpointName: string
end

local record DeleteApiKeyCredentialProviderInput
    name: string
end

local record DeleteApiKeyCredentialProviderOutput
end

local record DeleteBrowserInput
    browserId: string
    clientToken: string
end

local record DeleteBrowserOutput
    browserId: string
    status: string
    lastUpdatedAt: number
end

local record DeleteBrowserProfileInput
    profileId: string
    clientToken: string
end

local record DeleteBrowserProfileOutput
    profileId: string
    profileArn: string
    status: string
    lastUpdatedAt: number
    lastSavedAt: number
end

local record DeleteCodeInterpreterInput
    codeInterpreterId: string
    clientToken: string
end

local record DeleteCodeInterpreterOutput
    codeInterpreterId: string
    status: string
    lastUpdatedAt: number
end

local record DeleteConfigurationBundleInput
    bundleId: string
end

local record DeleteConfigurationBundleOutput
    bundleId: string
    status: string
end

local record DeleteEvaluatorInput
    evaluatorId: string
end

local record DeleteEvaluatorOutput
    evaluatorArn: string
    evaluatorId: string
    status: string
end

local record DeleteGatewayInput
    gatewayIdentifier: string
end

local record DeleteGatewayOutput
    gatewayId: string
    status: string
    statusReasons: {string}
end

local record DeleteGatewayRuleInput
    gatewayIdentifier: string
    ruleId: string
end

local record DeleteGatewayRuleOutput
    ruleId: string
    status: string
end

local record DeleteGatewayTargetInput
    gatewayIdentifier: string
    targetId: string
end

local record DeleteGatewayTargetOutput
    gatewayArn: string
    targetId: string
    status: string
    statusReasons: {string}
end

local record DeleteHarnessInput
    harnessId: string
    clientToken: string
end

local record DeleteHarnessOutput
    harness: Harness
end

local record DeleteMemoryInput
    clientToken: string
    memoryId: string
end

local record DeleteMemoryOutput
    memoryId: string
    status: string
end

local record DeleteOauth2CredentialProviderInput
    name: string
end

local record DeleteOauth2CredentialProviderOutput
end

local record DeleteOnlineEvaluationConfigInput
    onlineEvaluationConfigId: string
end

local record DeleteOnlineEvaluationConfigOutput
    onlineEvaluationConfigArn: string
    onlineEvaluationConfigId: string
    status: string
end

local record DeletePolicyInput
    policyEngineId: string
    policyId: string
end

local record DeletePolicyOutput
    policyId: string
    name: string
    policyEngineId: string
    definition: PolicyDefinition
    description: string
    createdAt: number
    updatedAt: number
    policyArn: string
    status: string
    statusReasons: {string}
end

local record DeletePolicyEngineInput
    policyEngineId: string
end

local record DeletePolicyEngineOutput
    policyEngineId: string
    name: string
    description: string
    createdAt: number
    updatedAt: number
    policyEngineArn: string
    status: string
    statusReasons: {string}
    encryptionKeyArn: string
end

local record DeleteRegistryInput
    registryId: string
end

local record DeleteRegistryOutput
    status: string
end

local record DeleteRegistryRecordInput
    registryId: string
    recordId: string
end

local record DeleteRegistryRecordOutput
end

local record DeleteResourcePolicyInput
    resourceArn: string
end

local record DeleteResourcePolicyOutput
end

local record DeleteWorkloadIdentityInput
    name: string
end

local record DeleteWorkloadIdentityOutput
end

local record GetAgentRuntimeInput
    agentRuntimeId: string
    agentRuntimeVersion: string
end

local record GetAgentRuntimeOutput
    agentRuntimeArn: string
    agentRuntimeName: string
    agentRuntimeId: string
    agentRuntimeVersion: string
    createdAt: number
    lastUpdatedAt: number
    roleArn: string
    networkConfiguration: NetworkConfiguration
    status: string
    lifecycleConfiguration: LifecycleConfiguration
    failureReason: string
    description: string
    workloadIdentityDetails: WorkloadIdentityDetails
    agentRuntimeArtifact: AgentRuntimeArtifact
    protocolConfiguration: ProtocolConfiguration
    environmentVariables: {string : string}
    authorizerConfiguration: AuthorizerConfiguration
    requestHeaderConfiguration: RequestHeaderConfiguration
    metadataConfiguration: RuntimeMetadataConfiguration
    filesystemConfigurations: {FilesystemConfiguration}
end

local record GetAgentRuntimeEndpointInput
    agentRuntimeId: string
    endpointName: string
end

local record GetAgentRuntimeEndpointOutput
    liveVersion: string
    targetVersion: string
    agentRuntimeEndpointArn: string
    agentRuntimeArn: string
    description: string
    status: string
    createdAt: number
    lastUpdatedAt: number
    failureReason: string
    name: string
    id: string
end

local record GetApiKeyCredentialProviderInput
    name: string
end

local record GetApiKeyCredentialProviderOutput
    apiKeySecretArn: Secret
    name: string
    credentialProviderArn: string
    createdTime: number
    lastUpdatedTime: number
end

local record GetBrowserInput
    browserId: string
end

local record GetBrowserOutput
    browserId: string
    browserArn: string
    name: string
    description: string
    executionRoleArn: string
    networkConfiguration: BrowserNetworkConfiguration
    recording: RecordingConfig
    browserSigning: BrowserSigningConfigOutput
    enterprisePolicies: {BrowserEnterprisePolicy}
    certificates: {Certificate}
    status: string
    failureReason: string
    createdAt: number
    lastUpdatedAt: number
end

local record GetBrowserProfileInput
    profileId: string
end

local record GetBrowserProfileOutput
    profileId: string
    profileArn: string
    name: string
    description: string
    status: string
    createdAt: number
    lastUpdatedAt: number
    lastSavedAt: number
    lastSavedBrowserSessionId: string
    lastSavedBrowserId: string
end

local record GetCodeInterpreterInput
    codeInterpreterId: string
end

local record GetCodeInterpreterOutput
    codeInterpreterId: string
    codeInterpreterArn: string
    name: string
    description: string
    executionRoleArn: string
    networkConfiguration: CodeInterpreterNetworkConfiguration
    status: string
    certificates: {Certificate}
    failureReason: string
    createdAt: number
    lastUpdatedAt: number
end

local record GetConfigurationBundleInput
    bundleId: string
    branchName: string
end

local record GetConfigurationBundleOutput
    bundleArn: string
    bundleId: string
    bundleName: string
    description: string
    versionId: string
    components: {string : ComponentConfiguration}
    lineageMetadata: VersionLineageMetadata
    createdAt: number
    updatedAt: number
end

local record GetConfigurationBundleVersionInput
    bundleId: string
    versionId: string
end

local record GetConfigurationBundleVersionOutput
    bundleArn: string
    bundleId: string
    bundleName: string
    description: string
    versionId: string
    components: {string : ComponentConfiguration}
    lineageMetadata: VersionLineageMetadata
    createdAt: number
    versionCreatedAt: number
end

local record GetEvaluatorInput
    evaluatorId: string
    includedData: string
end

local record GetEvaluatorOutput
    evaluatorArn: string
    evaluatorId: string
    evaluatorName: string
    description: string
    evaluatorConfig: EvaluatorConfig
    level: string
    status: string
    createdAt: number
    updatedAt: number
    lockedForModification: boolean
    kmsKeyArn: string
end

local record GetGatewayInput
    gatewayIdentifier: string
end

local record GetGatewayOutput
    gatewayArn: string
    gatewayId: string
    gatewayUrl: string
    createdAt: number
    updatedAt: number
    status: string
    statusReasons: {string}
    name: string
    description: string
    roleArn: string
    protocolType: string
    protocolConfiguration: GatewayProtocolConfiguration
    authorizerType: string
    authorizerConfiguration: AuthorizerConfiguration
    kmsKeyArn: string
    interceptorConfigurations: {GatewayInterceptorConfiguration}
    policyEngineConfiguration: GatewayPolicyEngineConfiguration
    workloadIdentityDetails: WorkloadIdentityDetails
    exceptionLevel: string
end

local record GetGatewayRuleInput
    gatewayIdentifier: string
    ruleId: string
end

local record GetGatewayRuleOutput
    ruleId: string
    gatewayArn: string
    priority: number
    conditions: {Condition}
    actions: {Action}
    description: string
    createdAt: number
    status: string
    system: SystemManagedBlock
    updatedAt: number
end

local record GetGatewayTargetInput
    gatewayIdentifier: string
    targetId: string
end

local record GetGatewayTargetOutput
    gatewayArn: string
    targetId: string
    createdAt: number
    updatedAt: number
    status: string
    statusReasons: {string}
    name: string
    description: string
    targetConfiguration: TargetConfiguration
    credentialProviderConfigurations: {CredentialProviderConfiguration}
    lastSynchronizedAt: number
    metadataConfiguration: MetadataConfiguration
    privateEndpoint: PrivateEndpoint
    privateEndpointManagedResources: {ManagedResourceDetails}
    authorizationData: AuthorizationData
    protocolType: string
end

local record GetHarnessInput
    harnessId: string
end

local record GetHarnessOutput
    harness: Harness
end

local record GetMemoryInput
    memoryId: string
    view: string
end

local record GetMemoryOutput
    memory: Memory
end

local record GetOauth2CredentialProviderInput
    name: string
end

local record GetOauth2CredentialProviderOutput
    clientSecretArn: Secret
    name: string
    credentialProviderArn: string
    credentialProviderVendor: string
    callbackUrl: string
    oauth2ProviderConfigOutput: Oauth2ProviderConfigOutput
    createdTime: number
    lastUpdatedTime: number
    status: string
    failureReason: string
end

local record GetOnlineEvaluationConfigInput
    onlineEvaluationConfigId: string
end

local record GetOnlineEvaluationConfigOutput
    onlineEvaluationConfigArn: string
    onlineEvaluationConfigId: string
    onlineEvaluationConfigName: string
    description: string
    rule: Rule
    dataSourceConfig: DataSourceConfig
    evaluators: {EvaluatorReference}
    outputConfig: OutputConfig
    evaluationExecutionRoleArn: string
    status: string
    executionStatus: string
    createdAt: number
    updatedAt: number
    failureReason: string
end

local record GetPolicyInput
    policyEngineId: string
    policyId: string
end

local record GetPolicyOutput
    policyId: string
    name: string
    policyEngineId: string
    definition: PolicyDefinition
    description: string
    createdAt: number
    updatedAt: number
    policyArn: string
    status: string
    statusReasons: {string}
end

local record GetPolicyEngineInput
    policyEngineId: string
end

local record GetPolicyEngineOutput
    policyEngineId: string
    name: string
    description: string
    createdAt: number
    updatedAt: number
    policyEngineArn: string
    status: string
    statusReasons: {string}
    encryptionKeyArn: string
end

local record GetPolicyGenerationInput
    policyGenerationId: string
    policyEngineId: string
end

local record GetPolicyGenerationOutput
    policyEngineId: string
    policyGenerationId: string
    name: string
    policyGenerationArn: string
    resource: Resource
    createdAt: number
    updatedAt: number
    status: string
    statusReasons: {string}
    findings: string
end

local record GetRegistryInput
    registryId: string
end

local record GetRegistryOutput
    name: string
    description: string
    registryId: string
    registryArn: string
    authorizerType: string
    authorizerConfiguration: AuthorizerConfiguration
    approvalConfiguration: ApprovalConfiguration
    status: string
    statusReason: string
    createdAt: number
    updatedAt: number
end

local record GetRegistryRecordInput
    registryId: string
    recordId: string
end

local record GetRegistryRecordOutput
    registryArn: string
    recordArn: string
    recordId: string
    name: string
    description: string
    descriptorType: string
    descriptors: Descriptors
    recordVersion: string
    status: string
    createdAt: number
    updatedAt: number
    statusReason: string
    synchronizationType: string
    synchronizationConfiguration: SynchronizationConfiguration
end

local record GetResourcePolicyInput
    resourceArn: string
end

local record GetResourcePolicyOutput
    policy: string
end

local record GetTokenVaultInput
    tokenVaultId: string
end

local record GetTokenVaultOutput
    tokenVaultId: string
    kmsConfiguration: KmsConfiguration
    lastModifiedDate: number
end

local record GetWorkloadIdentityInput
    name: string
end

local record GetWorkloadIdentityOutput
    name: string
    workloadIdentityArn: string
    allowedResourceOauth2ReturnUrls: {string}
    createdTime: number
    lastUpdatedTime: number
end

local record ListAgentRuntimeEndpointsInput
    agentRuntimeId: string
    maxResults: number
    nextToken: string
end

local record ListAgentRuntimeEndpointsOutput
    runtimeEndpoints: {AgentRuntimeEndpoint}
    nextToken: string
end

local record ListAgentRuntimesInput
    maxResults: number
    nextToken: string
end

local record ListAgentRuntimesOutput
    agentRuntimes: {AgentRuntime}
    nextToken: string
end

local record ListAgentRuntimeVersionsInput
    agentRuntimeId: string
    maxResults: number
    nextToken: string
end

local record ListAgentRuntimeVersionsOutput
    agentRuntimes: {AgentRuntime}
    nextToken: string
end

local record ListApiKeyCredentialProvidersInput
    nextToken: string
    maxResults: number
end

local record ListApiKeyCredentialProvidersOutput
    credentialProviders: {ApiKeyCredentialProviderItem}
    nextToken: string
end

local record ListBrowserProfilesInput
    maxResults: number
    nextToken: string
    name: string
end

local record ListBrowserProfilesOutput
    profileSummaries: {BrowserProfileSummary}
    nextToken: string
end

local record ListBrowsersInput
    maxResults: number
    nextToken: string
    type: string
end

local record ListBrowsersOutput
    browserSummaries: {BrowserSummary}
    nextToken: string
end

local record ListCodeInterpretersInput
    maxResults: number
    nextToken: string
    type: string
end

local record ListCodeInterpretersOutput
    codeInterpreterSummaries: {CodeInterpreterSummary}
    nextToken: string
end

local record ListConfigurationBundlesInput
    nextToken: string
    maxResults: number
end

local record ListConfigurationBundlesOutput
    bundles: {ConfigurationBundleSummary}
    nextToken: string
end

local record ListConfigurationBundleVersionsInput
    bundleId: string
    nextToken: string
    maxResults: number
    filter: VersionFilter
end

local record ListConfigurationBundleVersionsOutput
    versions: {ConfigurationBundleVersionSummary}
    nextToken: string
end

local record ListEvaluatorsInput
    nextToken: string
    maxResults: number
end

local record ListEvaluatorsOutput
    evaluators: {EvaluatorSummary}
    nextToken: string
end

local record ListGatewayRulesInput
    gatewayIdentifier: string
    maxResults: number
    nextToken: string
end

local record ListGatewayRulesOutput
    gatewayRules: {GatewayRuleDetail}
    nextToken: string
end

local record ListGatewaysInput
    maxResults: number
    nextToken: string
end

local record ListGatewaysOutput
    items: {GatewaySummary}
    nextToken: string
end

local record ListGatewayTargetsInput
    gatewayIdentifier: string
    maxResults: number
    nextToken: string
end

local record ListGatewayTargetsOutput
    items: {TargetSummary}
    nextToken: string
end

local record ListHarnessesInput
    maxResults: number
    nextToken: string
end

local record ListHarnessesOutput
    harnesses: {HarnessSummary}
    nextToken: string
end

local record ListMemoriesInput
    maxResults: number
    nextToken: string
end

local record ListMemoriesOutput
    memories: {MemorySummary}
    nextToken: string
end

local record ListOauth2CredentialProvidersInput
    nextToken: string
    maxResults: number
end

local record ListOauth2CredentialProvidersOutput
    credentialProviders: {Oauth2CredentialProviderItem}
    nextToken: string
end

local record ListOnlineEvaluationConfigsInput
    nextToken: string
    maxResults: number
end

local record ListOnlineEvaluationConfigsOutput
    onlineEvaluationConfigs: {OnlineEvaluationConfigSummary}
    nextToken: string
end

local record ListPoliciesInput
    nextToken: string
    maxResults: number
    policyEngineId: string
    targetResourceScope: string
end

local record ListPoliciesOutput
    policies: {Policy}
    nextToken: string
end

local record ListPolicyEnginesInput
    nextToken: string
    maxResults: number
end

local record ListPolicyEnginesOutput
    policyEngines: {PolicyEngine}
    nextToken: string
end

local record ListPolicyGenerationAssetsInput
    policyGenerationId: string
    policyEngineId: string
    nextToken: string
    maxResults: number
end

local record ListPolicyGenerationAssetsOutput
    policyGenerationAssets: {PolicyGenerationAsset}
    nextToken: string
end

local record ListPolicyGenerationsInput
    nextToken: string
    maxResults: number
    policyEngineId: string
end

local record ListPolicyGenerationsOutput
    policyGenerations: {PolicyGeneration}
    nextToken: string
end

local record ListRegistriesInput
    maxResults: number
    nextToken: string
    status: string
end

local record ListRegistriesOutput
    registries: {RegistrySummary}
    nextToken: string
end

local record ListRegistryRecordsInput
    registryId: string
    maxResults: number
    nextToken: string
    name: string
    status: string
    descriptorType: string
end

local record ListRegistryRecordsOutput
    registryRecords: {RegistryRecordSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListWorkloadIdentitiesInput
    nextToken: string
    maxResults: number
end

local record ListWorkloadIdentitiesOutput
    workloadIdentities: {WorkloadIdentityType}
    nextToken: string
end

local record PutResourcePolicyInput
    resourceArn: string
    policy: string
end

local record PutResourcePolicyOutput
    policy: string
end

local record SetTokenVaultCMKInput
    tokenVaultId: string
    kmsConfiguration: KmsConfiguration
end

local record SetTokenVaultCMKOutput
    tokenVaultId: string
    kmsConfiguration: KmsConfiguration
    lastModifiedDate: number
end

local record StartPolicyGenerationInput
    policyEngineId: string
    resource: Resource
    content: Content
    name: string
    clientToken: string
end

local record StartPolicyGenerationOutput
    policyEngineId: string
    policyGenerationId: string
    name: string
    policyGenerationArn: string
    resource: Resource
    createdAt: number
    updatedAt: number
    status: string
    statusReasons: {string}
    findings: string
end

local record SubmitRegistryRecordForApprovalInput
    registryId: string
    recordId: string
end

local record SubmitRegistryRecordForApprovalOutput
    registryArn: string
    recordArn: string
    recordId: string
    status: string
    updatedAt: number
end

local record SynchronizeGatewayTargetsInput
    gatewayIdentifier: string
    targetIdList: {string}
end

local record SynchronizeGatewayTargetsOutput
    targets: {GatewayTarget}
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

local record UpdateAgentRuntimeInput
    agentRuntimeId: string
    agentRuntimeArtifact: AgentRuntimeArtifact
    roleArn: string
    networkConfiguration: NetworkConfiguration
    description: string
    authorizerConfiguration: AuthorizerConfiguration
    requestHeaderConfiguration: RequestHeaderConfiguration
    protocolConfiguration: ProtocolConfiguration
    lifecycleConfiguration: LifecycleConfiguration
    metadataConfiguration: RuntimeMetadataConfiguration
    environmentVariables: {string : string}
    filesystemConfigurations: {FilesystemConfiguration}
    clientToken: string
end

local record UpdateAgentRuntimeOutput
    agentRuntimeArn: string
    agentRuntimeId: string
    workloadIdentityDetails: WorkloadIdentityDetails
    agentRuntimeVersion: string
    createdAt: number
    lastUpdatedAt: number
    status: string
end

local record UpdateAgentRuntimeEndpointInput
    agentRuntimeId: string
    endpointName: string
    agentRuntimeVersion: string
    description: string
    clientToken: string
end

local record UpdateAgentRuntimeEndpointOutput
    liveVersion: string
    targetVersion: string
    agentRuntimeEndpointArn: string
    agentRuntimeArn: string
    status: string
    createdAt: number
    lastUpdatedAt: number
end

local record UpdateApiKeyCredentialProviderInput
    name: string
    apiKey: string
end

local record UpdateApiKeyCredentialProviderOutput
    apiKeySecretArn: Secret
    name: string
    credentialProviderArn: string
    createdTime: number
    lastUpdatedTime: number
end

local record UpdateConfigurationBundleInput
    clientToken: string
    bundleId: string
    bundleName: string
    description: string
    components: {string : ComponentConfiguration}
    parentVersionIds: {string}
    branchName: string
    commitMessage: string
    createdBy: VersionCreatedBySource
end

local record UpdateConfigurationBundleOutput
    bundleArn: string
    bundleId: string
    versionId: string
    updatedAt: number
end

local record UpdateEvaluatorInput
    clientToken: string
    evaluatorId: string
    description: string
    evaluatorConfig: EvaluatorConfig
    level: string
    kmsKeyArn: string
end

local record UpdateEvaluatorOutput
    evaluatorArn: string
    evaluatorId: string
    updatedAt: number
    status: string
end

local record UpdateGatewayInput
    gatewayIdentifier: string
    name: string
    description: string
    roleArn: string
    protocolType: string
    protocolConfiguration: GatewayProtocolConfiguration
    authorizerType: string
    authorizerConfiguration: AuthorizerConfiguration
    kmsKeyArn: string
    interceptorConfigurations: {GatewayInterceptorConfiguration}
    policyEngineConfiguration: GatewayPolicyEngineConfiguration
    exceptionLevel: string
end

local record UpdateGatewayOutput
    gatewayArn: string
    gatewayId: string
    gatewayUrl: string
    createdAt: number
    updatedAt: number
    status: string
    statusReasons: {string}
    name: string
    description: string
    roleArn: string
    protocolType: string
    protocolConfiguration: GatewayProtocolConfiguration
    authorizerType: string
    authorizerConfiguration: AuthorizerConfiguration
    kmsKeyArn: string
    interceptorConfigurations: {GatewayInterceptorConfiguration}
    policyEngineConfiguration: GatewayPolicyEngineConfiguration
    workloadIdentityDetails: WorkloadIdentityDetails
    exceptionLevel: string
end

local record UpdateGatewayRuleInput
    gatewayIdentifier: string
    ruleId: string
    priority: number
    conditions: {Condition}
    actions: {Action}
    description: string
end

local record UpdateGatewayRuleOutput
    ruleId: string
    gatewayArn: string
    priority: number
    conditions: {Condition}
    actions: {Action}
    description: string
    createdAt: number
    status: string
    system: SystemManagedBlock
    updatedAt: number
end

local record UpdateGatewayTargetInput
    gatewayIdentifier: string
    targetId: string
    name: string
    description: string
    targetConfiguration: TargetConfiguration
    credentialProviderConfigurations: {CredentialProviderConfiguration}
    metadataConfiguration: MetadataConfiguration
    privateEndpoint: PrivateEndpoint
end

local record UpdateGatewayTargetOutput
    gatewayArn: string
    targetId: string
    createdAt: number
    updatedAt: number
    status: string
    statusReasons: {string}
    name: string
    description: string
    targetConfiguration: TargetConfiguration
    credentialProviderConfigurations: {CredentialProviderConfiguration}
    lastSynchronizedAt: number
    metadataConfiguration: MetadataConfiguration
    privateEndpoint: PrivateEndpoint
    privateEndpointManagedResources: {ManagedResourceDetails}
    authorizationData: AuthorizationData
    protocolType: string
end

local record UpdateHarnessInput
    harnessId: string
    clientToken: string
    executionRoleArn: string
    environment: HarnessEnvironmentProviderRequest
    environmentArtifact: UpdatedHarnessEnvironmentArtifact
    environmentVariables: {string : string}
    authorizerConfiguration: UpdatedAuthorizerConfiguration
    model: HarnessModelConfiguration
    systemPrompt: {HarnessSystemContentBlock}
    tools: {HarnessTool}
    skills: {HarnessSkill}
    allowedTools: {string}
    memory: UpdatedHarnessMemoryConfiguration
    truncation: HarnessTruncationConfiguration
    maxIterations: number
    maxTokens: number
    timeoutSeconds: number
end

local record UpdateHarnessOutput
    harness: Harness
end

local record UpdateMemoryInput
    clientToken: string
    memoryId: string
    description: string
    eventExpiryDuration: number
    memoryExecutionRoleArn: string
    memoryStrategies: ModifyMemoryStrategies
    addIndexedKeys: {IndexedKey}
    streamDeliveryResources: StreamDeliveryResources
end

local record UpdateMemoryOutput
    memory: Memory
end

local record UpdateOauth2CredentialProviderInput
    name: string
    credentialProviderVendor: string
    oauth2ProviderConfigInput: Oauth2ProviderConfigInput
end

local record UpdateOauth2CredentialProviderOutput
    clientSecretArn: Secret
    name: string
    credentialProviderVendor: string
    credentialProviderArn: string
    callbackUrl: string
    oauth2ProviderConfigOutput: Oauth2ProviderConfigOutput
    createdTime: number
    lastUpdatedTime: number
    status: string
end

local record UpdateOnlineEvaluationConfigInput
    clientToken: string
    onlineEvaluationConfigId: string
    description: string
    rule: Rule
    dataSourceConfig: DataSourceConfig
    evaluators: {EvaluatorReference}
    evaluationExecutionRoleArn: string
    executionStatus: string
end

local record UpdateOnlineEvaluationConfigOutput
    onlineEvaluationConfigArn: string
    onlineEvaluationConfigId: string
    updatedAt: number
    status: string
    executionStatus: string
    failureReason: string
end

local record UpdatePolicyInput
    policyEngineId: string
    policyId: string
    description: UpdatedDescription
    definition: PolicyDefinition
    validationMode: string
end

local record UpdatePolicyOutput
    policyId: string
    name: string
    policyEngineId: string
    definition: PolicyDefinition
    description: string
    createdAt: number
    updatedAt: number
    policyArn: string
    status: string
    statusReasons: {string}
end

local record UpdatePolicyEngineInput
    policyEngineId: string
    description: UpdatedDescription
end

local record UpdatePolicyEngineOutput
    policyEngineId: string
    name: string
    description: string
    createdAt: number
    updatedAt: number
    policyEngineArn: string
    status: string
    statusReasons: {string}
    encryptionKeyArn: string
end

local record UpdateRegistryInput
    registryId: string
    name: string
    description: UpdatedDescription
    authorizerConfiguration: UpdatedAuthorizerConfiguration
    approvalConfiguration: UpdatedApprovalConfiguration
end

local record UpdateRegistryOutput
    name: string
    description: string
    registryId: string
    registryArn: string
    authorizerType: string
    authorizerConfiguration: AuthorizerConfiguration
    approvalConfiguration: ApprovalConfiguration
    status: string
    statusReason: string
    createdAt: number
    updatedAt: number
end

local record UpdateRegistryRecordInput
    registryId: string
    recordId: string
    name: string
    description: UpdatedDescription
    descriptorType: string
    descriptors: UpdatedDescriptors
    recordVersion: string
    synchronizationType: UpdatedSynchronizationType
    synchronizationConfiguration: UpdatedSynchronizationConfiguration
    triggerSynchronization: boolean
end

local record UpdateRegistryRecordOutput
    registryArn: string
    recordArn: string
    recordId: string
    name: string
    description: string
    descriptorType: string
    descriptors: Descriptors
    recordVersion: string
    status: string
    createdAt: number
    updatedAt: number
    statusReason: string
    synchronizationType: string
    synchronizationConfiguration: SynchronizationConfiguration
end

local record UpdateRegistryRecordStatusInput
    registryId: string
    recordId: string
    status: string
    statusReason: string
end

local record UpdateRegistryRecordStatusOutput
    registryArn: string
    recordArn: string
    recordId: string
    status: string
    statusReason: string
    updatedAt: number
end

local record UpdateWorkloadIdentityInput
    name: string
    allowedResourceOauth2ReturnUrls: {string}
end

local record UpdateWorkloadIdentityOutput
    name: string
    workloadIdentityArn: string
    allowedResourceOauth2ReturnUrls: {string}
    createdTime: number
    lastUpdatedTime: number
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

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record DecryptionFailure
    message: string
end

local record EncryptionFailure
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceLimitExceededException
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

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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

local record ServiceException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottledException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record DecryptionFailure
    message: string
end

local record EncryptionFailure
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceLimitExceededException
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

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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

local record ServiceException
    message: string
end

local record ThrottledException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record DecryptionFailure
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

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ThrottledException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record DecryptionFailure
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

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    fieldList: {ValidationExceptionField}
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
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    fieldList: {ValidationExceptionField}
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
    fieldList: {ValidationExceptionField}
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
    fieldList: {ValidationExceptionField}
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
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    fieldList: {ValidationExceptionField}
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
    fieldList: {ValidationExceptionField}
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
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ThrottledException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConcurrentModificationException
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

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record DecryptionFailure
    message: string
end

local record EncryptionFailure
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

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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

local record ServiceException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottledException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record DecryptionFailure
    message: string
end

local record EncryptionFailure
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

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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
    reason: string
    fieldList: {ValidationExceptionField}
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

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local type ResourceType = "SYSTEM" | "CUSTOM"

local type RegistryRecordStatus = "DRAFT" | "PENDING_APPROVAL" | "APPROVED" | "REJECTED" | "DEPRECATED" | "CREATING" | "UPDATING" | "CREATE_FAILED" | "UPDATE_FAILED"

local type ExceptionLevel = "DEBUG"

local type AuthorizerType = "CUSTOM_JWT" | "AWS_IAM" | "NONE" | "AUTHENTICATE_ONLY"

local type RegistryStatus = "CREATING" | "READY" | "UPDATING" | "CREATE_FAILED" | "UPDATE_FAILED" | "DELETING" | "DELETE_FAILED"

local type AgentRuntimeStatus = "CREATING" | "CREATE_FAILED" | "UPDATING" | "UPDATE_FAILED" | "READY" | "DELETING"

local type ConfigurationBundleStatus = "ACTIVE" | "CREATING" | "CREATE_FAILED" | "UPDATING" | "UPDATE_FAILED" | "DELETING" | "DELETE_FAILED"

local type SynchronizationType = "URL"

local type CodeInterpreterStatus = "CREATING" | "CREATE_FAILED" | "READY" | "DELETING" | "DELETE_FAILED" | "DELETED"

local type PolicyEngineStatus = "CREATING" | "ACTIVE" | "UPDATING" | "DELETING" | "CREATE_FAILED" | "UPDATE_FAILED" | "DELETE_FAILED"

local type BrowserStatus = "CREATING" | "CREATE_FAILED" | "READY" | "DELETING" | "DELETE_FAILED" | "DELETED"

local type AgentRuntimeEndpointStatus = "CREATING" | "CREATE_FAILED" | "UPDATING" | "UPDATE_FAILED" | "READY" | "DELETING"

local type PolicyStatus = "CREATING" | "ACTIVE" | "UPDATING" | "DELETING" | "CREATE_FAILED" | "UPDATE_FAILED" | "DELETE_FAILED"

local type BrowserProfileStatus = "READY" | "DELETING" | "DELETED" | "SAVING"

local type DescriptorType = "MCP" | "A2A" | "CUSTOM" | "AGENT_SKILLS"

local type PolicyGenerationStatus = "GENERATING" | "GENERATED" | "GENERATE_FAILED" | "DELETE_FAILED"

local type CredentialProviderVendorType = "GoogleOauth2" | "GithubOauth2" | "SlackOauth2" | "SalesforceOauth2" | "MicrosoftOauth2" | "CustomOauth2" | "AtlassianOauth2" | "LinkedinOauth2" | "XOauth2" | "OktaOauth2" | "OneLoginOauth2" | "PingOneOauth2" | "FacebookOauth2" | "YandexOauth2" | "RedditOauth2" | "ZoomOauth2" | "TwitchOauth2" | "SpotifyOauth2" | "DropboxOauth2" | "NotionOauth2" | "HubspotOauth2" | "CyberArkOauth2" | "FusionAuthOauth2" | "Auth0Oauth2" | "CognitoOauth2"

local type MemoryView = "full" | "without_decryption"

local type EvaluatorLevel = "TOOL_CALL" | "TRACE" | "SESSION"

local type OnlineEvaluationConfigStatus = "ACTIVE" | "CREATING" | "CREATE_FAILED" | "UPDATING" | "UPDATE_FAILED" | "DELETING" | "ERROR"

local type GatewayRuleStatus = "CREATING" | "ACTIVE" | "UPDATING" | "DELETING"

local type Status = "CREATING" | "CREATE_FAILED" | "UPDATING" | "UPDATE_FAILED" | "READY" | "DELETING" | "DELETE_FAILED"

local type MemoryStatus = "CREATING" | "ACTIVE" | "FAILED" | "DELETING"

local type RegistryAuthorizerType = "CUSTOM_JWT" | "AWS_IAM"

local type EvaluatorStatus = "ACTIVE" | "CREATING" | "CREATE_FAILED" | "UPDATING" | "UPDATE_FAILED" | "DELETING"

local type PolicyValidationMode = "FAIL_ON_ANY_FINDINGS" | "IGNORE_ALL_FINDINGS"

local type GatewayProtocolType = "MCP"

local type GatewayStatus = "CREATING" | "UPDATING" | "UPDATE_UNSUCCESSFUL" | "DELETING" | "READY" | "FAILED"

local type TargetStatus = "CREATING" | "UPDATING" | "UPDATE_UNSUCCESSFUL" | "DELETING" | "READY" | "FAILED" | "SYNCHRONIZING" | "SYNCHRONIZE_UNSUCCESSFUL" | "CREATE_PENDING_AUTH" | "UPDATE_PENDING_AUTH" | "SYNCHRONIZE_PENDING_AUTH"

local type TargetProtocolType = "MCP" | "HTTP"

local type IncludedData = "ALL_DATA" | "METADATA_ONLY"

local type OnlineEvaluationExecutionStatus = "ENABLED" | "DISABLED"

local record M
    CreateAgentRuntimeInput: CreateAgentRuntimeInput
    CreateAgentRuntimeOutput: CreateAgentRuntimeOutput
    CreateAgentRuntimeEndpointInput: CreateAgentRuntimeEndpointInput
    CreateAgentRuntimeEndpointOutput: CreateAgentRuntimeEndpointOutput
    CreateApiKeyCredentialProviderInput: CreateApiKeyCredentialProviderInput
    CreateApiKeyCredentialProviderOutput: CreateApiKeyCredentialProviderOutput
    CreateBrowserInput: CreateBrowserInput
    CreateBrowserOutput: CreateBrowserOutput
    CreateBrowserProfileInput: CreateBrowserProfileInput
    CreateBrowserProfileOutput: CreateBrowserProfileOutput
    CreateCodeInterpreterInput: CreateCodeInterpreterInput
    CreateCodeInterpreterOutput: CreateCodeInterpreterOutput
    CreateConfigurationBundleInput: CreateConfigurationBundleInput
    CreateConfigurationBundleOutput: CreateConfigurationBundleOutput
    CreateEvaluatorInput: CreateEvaluatorInput
    CreateEvaluatorOutput: CreateEvaluatorOutput
    CreateGatewayInput: CreateGatewayInput
    CreateGatewayOutput: CreateGatewayOutput
    CreateGatewayRuleInput: CreateGatewayRuleInput
    CreateGatewayRuleOutput: CreateGatewayRuleOutput
    CreateGatewayTargetInput: CreateGatewayTargetInput
    CreateGatewayTargetOutput: CreateGatewayTargetOutput
    CreateHarnessInput: CreateHarnessInput
    CreateHarnessOutput: CreateHarnessOutput
    CreateMemoryInput: CreateMemoryInput
    CreateMemoryOutput: CreateMemoryOutput
    CreateOauth2CredentialProviderInput: CreateOauth2CredentialProviderInput
    CreateOauth2CredentialProviderOutput: CreateOauth2CredentialProviderOutput
    CreateOnlineEvaluationConfigInput: CreateOnlineEvaluationConfigInput
    CreateOnlineEvaluationConfigOutput: CreateOnlineEvaluationConfigOutput
    CreatePolicyInput: CreatePolicyInput
    CreatePolicyOutput: CreatePolicyOutput
    CreatePolicyEngineInput: CreatePolicyEngineInput
    CreatePolicyEngineOutput: CreatePolicyEngineOutput
    CreateRegistryInput: CreateRegistryInput
    CreateRegistryOutput: CreateRegistryOutput
    CreateRegistryRecordInput: CreateRegistryRecordInput
    CreateRegistryRecordOutput: CreateRegistryRecordOutput
    CreateWorkloadIdentityInput: CreateWorkloadIdentityInput
    CreateWorkloadIdentityOutput: CreateWorkloadIdentityOutput
    DeleteAgentRuntimeInput: DeleteAgentRuntimeInput
    DeleteAgentRuntimeOutput: DeleteAgentRuntimeOutput
    DeleteAgentRuntimeEndpointInput: DeleteAgentRuntimeEndpointInput
    DeleteAgentRuntimeEndpointOutput: DeleteAgentRuntimeEndpointOutput
    DeleteApiKeyCredentialProviderInput: DeleteApiKeyCredentialProviderInput
    DeleteApiKeyCredentialProviderOutput: DeleteApiKeyCredentialProviderOutput
    DeleteBrowserInput: DeleteBrowserInput
    DeleteBrowserOutput: DeleteBrowserOutput
    DeleteBrowserProfileInput: DeleteBrowserProfileInput
    DeleteBrowserProfileOutput: DeleteBrowserProfileOutput
    DeleteCodeInterpreterInput: DeleteCodeInterpreterInput
    DeleteCodeInterpreterOutput: DeleteCodeInterpreterOutput
    DeleteConfigurationBundleInput: DeleteConfigurationBundleInput
    DeleteConfigurationBundleOutput: DeleteConfigurationBundleOutput
    DeleteEvaluatorInput: DeleteEvaluatorInput
    DeleteEvaluatorOutput: DeleteEvaluatorOutput
    DeleteGatewayInput: DeleteGatewayInput
    DeleteGatewayOutput: DeleteGatewayOutput
    DeleteGatewayRuleInput: DeleteGatewayRuleInput
    DeleteGatewayRuleOutput: DeleteGatewayRuleOutput
    DeleteGatewayTargetInput: DeleteGatewayTargetInput
    DeleteGatewayTargetOutput: DeleteGatewayTargetOutput
    DeleteHarnessInput: DeleteHarnessInput
    DeleteHarnessOutput: DeleteHarnessOutput
    DeleteMemoryInput: DeleteMemoryInput
    DeleteMemoryOutput: DeleteMemoryOutput
    DeleteOauth2CredentialProviderInput: DeleteOauth2CredentialProviderInput
    DeleteOauth2CredentialProviderOutput: DeleteOauth2CredentialProviderOutput
    DeleteOnlineEvaluationConfigInput: DeleteOnlineEvaluationConfigInput
    DeleteOnlineEvaluationConfigOutput: DeleteOnlineEvaluationConfigOutput
    DeletePolicyInput: DeletePolicyInput
    DeletePolicyOutput: DeletePolicyOutput
    DeletePolicyEngineInput: DeletePolicyEngineInput
    DeletePolicyEngineOutput: DeletePolicyEngineOutput
    DeleteRegistryInput: DeleteRegistryInput
    DeleteRegistryOutput: DeleteRegistryOutput
    DeleteRegistryRecordInput: DeleteRegistryRecordInput
    DeleteRegistryRecordOutput: DeleteRegistryRecordOutput
    DeleteResourcePolicyInput: DeleteResourcePolicyInput
    DeleteResourcePolicyOutput: DeleteResourcePolicyOutput
    DeleteWorkloadIdentityInput: DeleteWorkloadIdentityInput
    DeleteWorkloadIdentityOutput: DeleteWorkloadIdentityOutput
    GetAgentRuntimeInput: GetAgentRuntimeInput
    GetAgentRuntimeOutput: GetAgentRuntimeOutput
    GetAgentRuntimeEndpointInput: GetAgentRuntimeEndpointInput
    GetAgentRuntimeEndpointOutput: GetAgentRuntimeEndpointOutput
    GetApiKeyCredentialProviderInput: GetApiKeyCredentialProviderInput
    GetApiKeyCredentialProviderOutput: GetApiKeyCredentialProviderOutput
    GetBrowserInput: GetBrowserInput
    GetBrowserOutput: GetBrowserOutput
    GetBrowserProfileInput: GetBrowserProfileInput
    GetBrowserProfileOutput: GetBrowserProfileOutput
    GetCodeInterpreterInput: GetCodeInterpreterInput
    GetCodeInterpreterOutput: GetCodeInterpreterOutput
    GetConfigurationBundleInput: GetConfigurationBundleInput
    GetConfigurationBundleOutput: GetConfigurationBundleOutput
    GetConfigurationBundleVersionInput: GetConfigurationBundleVersionInput
    GetConfigurationBundleVersionOutput: GetConfigurationBundleVersionOutput
    GetEvaluatorInput: GetEvaluatorInput
    GetEvaluatorOutput: GetEvaluatorOutput
    GetGatewayInput: GetGatewayInput
    GetGatewayOutput: GetGatewayOutput
    GetGatewayRuleInput: GetGatewayRuleInput
    GetGatewayRuleOutput: GetGatewayRuleOutput
    GetGatewayTargetInput: GetGatewayTargetInput
    GetGatewayTargetOutput: GetGatewayTargetOutput
    GetHarnessInput: GetHarnessInput
    GetHarnessOutput: GetHarnessOutput
    GetMemoryInput: GetMemoryInput
    GetMemoryOutput: GetMemoryOutput
    GetOauth2CredentialProviderInput: GetOauth2CredentialProviderInput
    GetOauth2CredentialProviderOutput: GetOauth2CredentialProviderOutput
    GetOnlineEvaluationConfigInput: GetOnlineEvaluationConfigInput
    GetOnlineEvaluationConfigOutput: GetOnlineEvaluationConfigOutput
    GetPolicyInput: GetPolicyInput
    GetPolicyOutput: GetPolicyOutput
    GetPolicyEngineInput: GetPolicyEngineInput
    GetPolicyEngineOutput: GetPolicyEngineOutput
    GetPolicyGenerationInput: GetPolicyGenerationInput
    GetPolicyGenerationOutput: GetPolicyGenerationOutput
    GetRegistryInput: GetRegistryInput
    GetRegistryOutput: GetRegistryOutput
    GetRegistryRecordInput: GetRegistryRecordInput
    GetRegistryRecordOutput: GetRegistryRecordOutput
    GetResourcePolicyInput: GetResourcePolicyInput
    GetResourcePolicyOutput: GetResourcePolicyOutput
    GetTokenVaultInput: GetTokenVaultInput
    GetTokenVaultOutput: GetTokenVaultOutput
    GetWorkloadIdentityInput: GetWorkloadIdentityInput
    GetWorkloadIdentityOutput: GetWorkloadIdentityOutput
    ListAgentRuntimeEndpointsInput: ListAgentRuntimeEndpointsInput
    ListAgentRuntimeEndpointsOutput: ListAgentRuntimeEndpointsOutput
    ListAgentRuntimesInput: ListAgentRuntimesInput
    ListAgentRuntimesOutput: ListAgentRuntimesOutput
    ListAgentRuntimeVersionsInput: ListAgentRuntimeVersionsInput
    ListAgentRuntimeVersionsOutput: ListAgentRuntimeVersionsOutput
    ListApiKeyCredentialProvidersInput: ListApiKeyCredentialProvidersInput
    ListApiKeyCredentialProvidersOutput: ListApiKeyCredentialProvidersOutput
    ListBrowserProfilesInput: ListBrowserProfilesInput
    ListBrowserProfilesOutput: ListBrowserProfilesOutput
    ListBrowsersInput: ListBrowsersInput
    ListBrowsersOutput: ListBrowsersOutput
    ListCodeInterpretersInput: ListCodeInterpretersInput
    ListCodeInterpretersOutput: ListCodeInterpretersOutput
    ListConfigurationBundlesInput: ListConfigurationBundlesInput
    ListConfigurationBundlesOutput: ListConfigurationBundlesOutput
    ListConfigurationBundleVersionsInput: ListConfigurationBundleVersionsInput
    ListConfigurationBundleVersionsOutput: ListConfigurationBundleVersionsOutput
    ListEvaluatorsInput: ListEvaluatorsInput
    ListEvaluatorsOutput: ListEvaluatorsOutput
    ListGatewayRulesInput: ListGatewayRulesInput
    ListGatewayRulesOutput: ListGatewayRulesOutput
    ListGatewaysInput: ListGatewaysInput
    ListGatewaysOutput: ListGatewaysOutput
    ListGatewayTargetsInput: ListGatewayTargetsInput
    ListGatewayTargetsOutput: ListGatewayTargetsOutput
    ListHarnessesInput: ListHarnessesInput
    ListHarnessesOutput: ListHarnessesOutput
    ListMemoriesInput: ListMemoriesInput
    ListMemoriesOutput: ListMemoriesOutput
    ListOauth2CredentialProvidersInput: ListOauth2CredentialProvidersInput
    ListOauth2CredentialProvidersOutput: ListOauth2CredentialProvidersOutput
    ListOnlineEvaluationConfigsInput: ListOnlineEvaluationConfigsInput
    ListOnlineEvaluationConfigsOutput: ListOnlineEvaluationConfigsOutput
    ListPoliciesInput: ListPoliciesInput
    ListPoliciesOutput: ListPoliciesOutput
    ListPolicyEnginesInput: ListPolicyEnginesInput
    ListPolicyEnginesOutput: ListPolicyEnginesOutput
    ListPolicyGenerationAssetsInput: ListPolicyGenerationAssetsInput
    ListPolicyGenerationAssetsOutput: ListPolicyGenerationAssetsOutput
    ListPolicyGenerationsInput: ListPolicyGenerationsInput
    ListPolicyGenerationsOutput: ListPolicyGenerationsOutput
    ListRegistriesInput: ListRegistriesInput
    ListRegistriesOutput: ListRegistriesOutput
    ListRegistryRecordsInput: ListRegistryRecordsInput
    ListRegistryRecordsOutput: ListRegistryRecordsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListWorkloadIdentitiesInput: ListWorkloadIdentitiesInput
    ListWorkloadIdentitiesOutput: ListWorkloadIdentitiesOutput
    PutResourcePolicyInput: PutResourcePolicyInput
    PutResourcePolicyOutput: PutResourcePolicyOutput
    SetTokenVaultCMKInput: SetTokenVaultCMKInput
    SetTokenVaultCMKOutput: SetTokenVaultCMKOutput
    StartPolicyGenerationInput: StartPolicyGenerationInput
    StartPolicyGenerationOutput: StartPolicyGenerationOutput
    SubmitRegistryRecordForApprovalInput: SubmitRegistryRecordForApprovalInput
    SubmitRegistryRecordForApprovalOutput: SubmitRegistryRecordForApprovalOutput
    SynchronizeGatewayTargetsInput: SynchronizeGatewayTargetsInput
    SynchronizeGatewayTargetsOutput: SynchronizeGatewayTargetsOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAgentRuntimeInput: UpdateAgentRuntimeInput
    UpdateAgentRuntimeOutput: UpdateAgentRuntimeOutput
    UpdateAgentRuntimeEndpointInput: UpdateAgentRuntimeEndpointInput
    UpdateAgentRuntimeEndpointOutput: UpdateAgentRuntimeEndpointOutput
    UpdateApiKeyCredentialProviderInput: UpdateApiKeyCredentialProviderInput
    UpdateApiKeyCredentialProviderOutput: UpdateApiKeyCredentialProviderOutput
    UpdateConfigurationBundleInput: UpdateConfigurationBundleInput
    UpdateConfigurationBundleOutput: UpdateConfigurationBundleOutput
    UpdateEvaluatorInput: UpdateEvaluatorInput
    UpdateEvaluatorOutput: UpdateEvaluatorOutput
    UpdateGatewayInput: UpdateGatewayInput
    UpdateGatewayOutput: UpdateGatewayOutput
    UpdateGatewayRuleInput: UpdateGatewayRuleInput
    UpdateGatewayRuleOutput: UpdateGatewayRuleOutput
    UpdateGatewayTargetInput: UpdateGatewayTargetInput
    UpdateGatewayTargetOutput: UpdateGatewayTargetOutput
    UpdateHarnessInput: UpdateHarnessInput
    UpdateHarnessOutput: UpdateHarnessOutput
    UpdateMemoryInput: UpdateMemoryInput
    UpdateMemoryOutput: UpdateMemoryOutput
    UpdateOauth2CredentialProviderInput: UpdateOauth2CredentialProviderInput
    UpdateOauth2CredentialProviderOutput: UpdateOauth2CredentialProviderOutput
    UpdateOnlineEvaluationConfigInput: UpdateOnlineEvaluationConfigInput
    UpdateOnlineEvaluationConfigOutput: UpdateOnlineEvaluationConfigOutput
    UpdatePolicyInput: UpdatePolicyInput
    UpdatePolicyOutput: UpdatePolicyOutput
    UpdatePolicyEngineInput: UpdatePolicyEngineInput
    UpdatePolicyEngineOutput: UpdatePolicyEngineOutput
    UpdateRegistryInput: UpdateRegistryInput
    UpdateRegistryOutput: UpdateRegistryOutput
    UpdateRegistryRecordInput: UpdateRegistryRecordInput
    UpdateRegistryRecordOutput: UpdateRegistryRecordOutput
    UpdateRegistryRecordStatusInput: UpdateRegistryRecordStatusInput
    UpdateRegistryRecordStatusOutput: UpdateRegistryRecordStatusOutput
    UpdateWorkloadIdentityInput: UpdateWorkloadIdentityInput
    UpdateWorkloadIdentityOutput: UpdateWorkloadIdentityOutput
end

return M
