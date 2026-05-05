local record CreateCapacityProviderInput
    name: string
    cluster: string
    autoScalingGroupProvider: AutoScalingGroupProvider
    managedInstancesProvider: CreateManagedInstancesProviderConfiguration
    tags: {Tag}
end

local record CreateCapacityProviderOutput
    capacityProvider: CapacityProvider
end

local record CreateClusterInput
    clusterName: string
    tags: {Tag}
    settings: {ClusterSetting}
    configuration: ClusterConfiguration
    capacityProviders: {string}
    defaultCapacityProviderStrategy: {CapacityProviderStrategyItem}
    serviceConnectDefaults: ClusterServiceConnectDefaultsRequest
end

local record CreateClusterOutput
    cluster: Cluster
end

local record CreateDaemonInput
    daemonName: string
    clusterArn: string
    daemonTaskDefinitionArn: string
    capacityProviderArns: {string}
    deploymentConfiguration: DaemonDeploymentConfiguration
    tags: {Tag}
    propagateTags: string
    enableECSManagedTags: boolean
    enableExecuteCommand: boolean
    clientToken: string
end

local record CreateDaemonOutput
    daemonArn: string
    status: string
    createdAt: number
    deploymentArn: string
end

local record CreateExpressGatewayServiceInput
    executionRoleArn: string
    infrastructureRoleArn: string
    serviceName: string
    cluster: string
    healthCheckPath: string
    primaryContainer: ExpressGatewayContainer
    taskRoleArn: string
    networkConfiguration: ExpressGatewayServiceNetworkConfiguration
    cpu: string
    memory: string
    scalingTarget: ExpressGatewayScalingTarget
    tags: {Tag}
end

local record CreateExpressGatewayServiceOutput
    service: ECSExpressGatewayService
end

local record CreateServiceInput
    cluster: string
    serviceName: string
    taskDefinition: string
    availabilityZoneRebalancing: string
    loadBalancers: {LoadBalancer}
    serviceRegistries: {ServiceRegistry}
    desiredCount: number
    clientToken: string
    launchType: string
    capacityProviderStrategy: {CapacityProviderStrategyItem}
    platformVersion: string
    role: string
    deploymentConfiguration: DeploymentConfiguration
    placementConstraints: {PlacementConstraint}
    placementStrategy: {PlacementStrategy}
    networkConfiguration: NetworkConfiguration
    healthCheckGracePeriodSeconds: number
    schedulingStrategy: string
    deploymentController: DeploymentController
    tags: {Tag}
    enableECSManagedTags: boolean
    propagateTags: string
    enableExecuteCommand: boolean
    serviceConnectConfiguration: ServiceConnectConfiguration
    volumeConfigurations: {ServiceVolumeConfiguration}
    vpcLatticeConfigurations: {VpcLatticeConfiguration}
end

local record CreateServiceOutput
    service: Service
end

local record CreateTaskSetInput
    service: string
    cluster: string
    externalId: string
    taskDefinition: string
    networkConfiguration: NetworkConfiguration
    loadBalancers: {LoadBalancer}
    serviceRegistries: {ServiceRegistry}
    launchType: string
    capacityProviderStrategy: {CapacityProviderStrategyItem}
    platformVersion: string
    scale: Scale
    clientToken: string
    tags: {Tag}
end

local record CreateTaskSetOutput
    taskSet: TaskSet
end

local record DeleteAccountSettingInput
    name: string
    principalArn: string
end

local record DeleteAccountSettingOutput
    setting: Setting
end

local record DeleteAttributesInput
    cluster: string
    attributes: {Attribute}
end

local record DeleteAttributesOutput
    attributes: {Attribute}
end

local record DeleteCapacityProviderInput
    capacityProvider: string
    cluster: string
end

local record DeleteCapacityProviderOutput
    capacityProvider: CapacityProvider
end

local record DeleteClusterInput
    cluster: string
end

local record DeleteClusterOutput
    cluster: Cluster
end

local record DeleteDaemonInput
    daemonArn: string
end

local record DeleteDaemonOutput
    daemonArn: string
    status: string
    createdAt: number
    updatedAt: number
    deploymentArn: string
end

local record DeleteDaemonTaskDefinitionInput
    daemonTaskDefinition: string
end

local record DeleteDaemonTaskDefinitionOutput
    daemonTaskDefinitionArn: string
end

local record DeleteExpressGatewayServiceInput
    serviceArn: string
end

local record DeleteExpressGatewayServiceOutput
    service: ECSExpressGatewayService
end

local record DeleteServiceInput
    cluster: string
    service: string
    force: boolean
end

local record DeleteServiceOutput
    service: Service
end

local record DeleteTaskDefinitionsInput
    taskDefinitions: {string}
end

local record DeleteTaskDefinitionsOutput
    taskDefinitions: {TaskDefinition}
    failures: {Failure}
end

local record DeleteTaskSetInput
    cluster: string
    service: string
    taskSet: string
    force: boolean
end

local record DeleteTaskSetOutput
    taskSet: TaskSet
end

local record DeregisterContainerInstanceInput
    cluster: string
    containerInstance: string
    force: boolean
end

local record DeregisterContainerInstanceOutput
    containerInstance: ContainerInstance
end

local record DeregisterTaskDefinitionInput
    taskDefinition: string
end

local record DeregisterTaskDefinitionOutput
    taskDefinition: TaskDefinition
end

local record DescribeCapacityProvidersInput
    capacityProviders: {string}
    cluster: string
    include: {string}
    maxResults: number
    nextToken: string
end

local record DescribeCapacityProvidersOutput
    capacityProviders: {CapacityProvider}
    failures: {Failure}
    nextToken: string
end

local record DescribeClustersInput
    clusters: {string}
    include: {string}
end

local record DescribeClustersOutput
    clusters: {Cluster}
    failures: {Failure}
end

local record DescribeContainerInstancesInput
    cluster: string
    containerInstances: {string}
    include: {string}
end

local record DescribeContainerInstancesOutput
    containerInstances: {ContainerInstance}
    failures: {Failure}
end

local record DescribeDaemonInput
    daemonArn: string
end

local record DescribeDaemonOutput
    daemon: DaemonDetail
end

local record DescribeDaemonDeploymentsInput
    daemonDeploymentArns: {string}
end

local record DescribeDaemonDeploymentsOutput
    failures: {Failure}
    daemonDeployments: {DaemonDeployment}
end

local record DescribeDaemonRevisionsInput
    daemonRevisionArns: {string}
end

local record DescribeDaemonRevisionsOutput
    daemonRevisions: {DaemonRevision}
    failures: {Failure}
end

local record DescribeDaemonTaskDefinitionInput
    daemonTaskDefinition: string
end

local record DescribeDaemonTaskDefinitionOutput
    daemonTaskDefinition: DaemonTaskDefinition
end

local record DescribeExpressGatewayServiceInput
    serviceArn: string
    include: {string}
end

local record DescribeExpressGatewayServiceOutput
    service: ECSExpressGatewayService
end

local record DescribeServiceDeploymentsInput
    serviceDeploymentArns: {string}
end

local record DescribeServiceDeploymentsOutput
    serviceDeployments: {ServiceDeployment}
    failures: {Failure}
end

local record DescribeServiceRevisionsInput
    serviceRevisionArns: {string}
end

local record DescribeServiceRevisionsOutput
    serviceRevisions: {ServiceRevision}
    failures: {Failure}
end

local record DescribeServicesInput
    cluster: string
    services: {string}
    include: {string}
end

local record DescribeServicesOutput
    services: {Service}
    failures: {Failure}
end

local record DescribeTaskDefinitionInput
    taskDefinition: string
    include: {string}
end

local record DescribeTaskDefinitionOutput
    taskDefinition: TaskDefinition
    tags: {Tag}
end

local record DescribeTasksInput
    cluster: string
    tasks: {string}
    include: {string}
end

local record DescribeTasksOutput
    tasks: {Task}
    failures: {Failure}
end

local record DescribeTaskSetsInput
    cluster: string
    service: string
    taskSets: {string}
    include: {string}
end

local record DescribeTaskSetsOutput
    taskSets: {TaskSet}
    failures: {Failure}
end

local record DiscoverPollEndpointInput
    containerInstance: string
    cluster: string
end

local record DiscoverPollEndpointOutput
    endpoint: string
    telemetryEndpoint: string
    serviceConnectEndpoint: string
end

local record ExecuteCommandInput
    cluster: string
    container: string
    command: string
    interactive: boolean
    task: string
end

local record ExecuteCommandOutput
    clusterArn: string
    containerArn: string
    containerName: string
    interactive: boolean
    session: Session
    taskArn: string
end

local record GetTaskProtectionInput
    cluster: string
    tasks: {string}
end

local record GetTaskProtectionOutput
    protectedTasks: {ProtectedTask}
    failures: {Failure}
end

local record ListAccountSettingsInput
    name: string
    value: string
    principalArn: string
    effectiveSettings: boolean
    nextToken: string
    maxResults: number
end

local record ListAccountSettingsOutput
    settings: {Setting}
    nextToken: string
end

local record ListAttributesInput
    cluster: string
    targetType: string
    attributeName: string
    attributeValue: string
    nextToken: string
    maxResults: number
end

local record ListAttributesOutput
    attributes: {Attribute}
    nextToken: string
end

local record ListClustersInput
    nextToken: string
    maxResults: number
end

local record ListClustersOutput
    clusterArns: {string}
    nextToken: string
end

local record ListContainerInstancesInput
    cluster: string
    filter: string
    nextToken: string
    maxResults: number
    status: string
end

local record ListContainerInstancesOutput
    containerInstanceArns: {string}
    nextToken: string
end

local record ListDaemonDeploymentsInput
    daemonArn: string
    status: {string}
    createdAt: CreatedAt
    maxResults: number
    nextToken: string
end

local record ListDaemonDeploymentsOutput
    nextToken: string
    daemonDeployments: {DaemonDeploymentSummary}
end

local record ListDaemonsInput
    clusterArn: string
    capacityProviderArns: {string}
    maxResults: number
    nextToken: string
end

local record ListDaemonsOutput
    daemonSummariesList: {DaemonSummary}
    nextToken: string
end

local record ListDaemonTaskDefinitionsInput
    familyPrefix: string
    family: string
    revision: string
    status: string
    sort: string
    nextToken: string
    maxResults: number
end

local record ListDaemonTaskDefinitionsOutput
    daemonTaskDefinitions: {DaemonTaskDefinitionSummary}
    nextToken: string
end

local record ListServiceDeploymentsInput
    service: string
    cluster: string
    status: {string}
    createdAt: CreatedAt
    nextToken: string
    maxResults: number
end

local record ListServiceDeploymentsOutput
    serviceDeployments: {ServiceDeploymentBrief}
    nextToken: string
end

local record ListServicesInput
    cluster: string
    nextToken: string
    maxResults: number
    launchType: string
    schedulingStrategy: string
    resourceManagementType: string
end

local record ListServicesOutput
    serviceArns: {string}
    nextToken: string
end

local record ListServicesByNamespaceInput
    namespace: string
    nextToken: string
    maxResults: number
end

local record ListServicesByNamespaceOutput
    serviceArns: {string}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {Tag}
end

local record ListTaskDefinitionFamiliesInput
    familyPrefix: string
    status: string
    nextToken: string
    maxResults: number
end

local record ListTaskDefinitionFamiliesOutput
    families: {string}
    nextToken: string
end

local record ListTaskDefinitionsInput
    familyPrefix: string
    status: string
    sort: string
    nextToken: string
    maxResults: number
end

local record ListTaskDefinitionsOutput
    taskDefinitionArns: {string}
    nextToken: string
end

local record ListTasksInput
    cluster: string
    containerInstance: string
    family: string
    nextToken: string
    maxResults: number
    startedBy: string
    serviceName: string
    desiredStatus: string
    launchType: string
    daemonName: string
end

local record ListTasksOutput
    taskArns: {string}
    nextToken: string
end

local record PutAccountSettingInput
    name: string
    value: string
    principalArn: string
end

local record PutAccountSettingOutput
    setting: Setting
end

local record PutAccountSettingDefaultInput
    name: string
    value: string
end

local record PutAccountSettingDefaultOutput
    setting: Setting
end

local record PutAttributesInput
    cluster: string
    attributes: {Attribute}
end

local record PutAttributesOutput
    attributes: {Attribute}
end

local record PutClusterCapacityProvidersInput
    cluster: string
    capacityProviders: {string}
    defaultCapacityProviderStrategy: {CapacityProviderStrategyItem}
end

local record PutClusterCapacityProvidersOutput
    cluster: Cluster
end

local record RegisterContainerInstanceInput
    cluster: string
    instanceIdentityDocument: string
    instanceIdentityDocumentSignature: string
    totalResources: {Resource}
    versionInfo: VersionInfo
    containerInstanceArn: string
    attributes: {Attribute}
    platformDevices: {PlatformDevice}
    tags: {Tag}
end

local record RegisterContainerInstanceOutput
    containerInstance: ContainerInstance
end

local record RegisterDaemonTaskDefinitionInput
    family: string
    taskRoleArn: string
    executionRoleArn: string
    containerDefinitions: {DaemonContainerDefinition}
    cpu: string
    memory: string
    volumes: {DaemonVolume}
    tags: {Tag}
end

local record RegisterDaemonTaskDefinitionOutput
    daemonTaskDefinitionArn: string
end

local record RegisterTaskDefinitionInput
    family: string
    taskRoleArn: string
    executionRoleArn: string
    networkMode: string
    containerDefinitions: {ContainerDefinition}
    volumes: {Volume}
    placementConstraints: {TaskDefinitionPlacementConstraint}
    requiresCompatibilities: {string}
    cpu: string
    memory: string
    tags: {Tag}
    pidMode: string
    ipcMode: string
    proxyConfiguration: ProxyConfiguration
    inferenceAccelerators: {InferenceAccelerator}
    ephemeralStorage: EphemeralStorage
    runtimePlatform: RuntimePlatform
    enableFaultInjection: boolean
end

local record RegisterTaskDefinitionOutput
    taskDefinition: TaskDefinition
    tags: {Tag}
end

local record RunTaskInput
    capacityProviderStrategy: {CapacityProviderStrategyItem}
    cluster: string
    count: number
    enableECSManagedTags: boolean
    enableExecuteCommand: boolean
    group: string
    launchType: string
    networkConfiguration: NetworkConfiguration
    overrides: TaskOverride
    placementConstraints: {PlacementConstraint}
    placementStrategy: {PlacementStrategy}
    platformVersion: string
    propagateTags: string
    referenceId: string
    startedBy: string
    tags: {Tag}
    taskDefinition: string
    clientToken: string
    volumeConfigurations: {TaskVolumeConfiguration}
end

local record RunTaskOutput
    tasks: {Task}
    failures: {Failure}
end

local record StartTaskInput
    cluster: string
    containerInstances: {string}
    enableECSManagedTags: boolean
    enableExecuteCommand: boolean
    group: string
    networkConfiguration: NetworkConfiguration
    overrides: TaskOverride
    propagateTags: string
    referenceId: string
    startedBy: string
    tags: {Tag}
    taskDefinition: string
    volumeConfigurations: {TaskVolumeConfiguration}
end

local record StartTaskOutput
    tasks: {Task}
    failures: {Failure}
end

local record StopServiceDeploymentInput
    serviceDeploymentArn: string
    stopType: string
end

local record StopServiceDeploymentOutput
    serviceDeploymentArn: string
end

local record StopTaskInput
    cluster: string
    task: string
    reason: string
end

local record StopTaskOutput
    task: Task
end

local record SubmitAttachmentStateChangesInput
    cluster: string
    attachments: {AttachmentStateChange}
end

local record SubmitAttachmentStateChangesOutput
    acknowledgment: string
end

local record SubmitContainerStateChangeInput
    cluster: string
    task: string
    containerName: string
    runtimeId: string
    status: string
    exitCode: number
    reason: string
    networkBindings: {NetworkBinding}
end

local record SubmitContainerStateChangeOutput
    acknowledgment: string
end

local record SubmitTaskStateChangeInput
    cluster: string
    task: string
    status: string
    reason: string
    containers: {ContainerStateChange}
    attachments: {AttachmentStateChange}
    managedAgents: {ManagedAgentStateChange}
    pullStartedAt: number
    pullStoppedAt: number
    executionStoppedAt: number
end

local record SubmitTaskStateChangeOutput
    acknowledgment: string
end

local record TagResourceInput
    resourceArn: string
    tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateCapacityProviderInput
    name: string
    cluster: string
    autoScalingGroupProvider: AutoScalingGroupProviderUpdate
    managedInstancesProvider: UpdateManagedInstancesProviderConfiguration
end

local record UpdateCapacityProviderOutput
    capacityProvider: CapacityProvider
end

local record UpdateClusterInput
    cluster: string
    settings: {ClusterSetting}
    configuration: ClusterConfiguration
    serviceConnectDefaults: ClusterServiceConnectDefaultsRequest
end

local record UpdateClusterOutput
    cluster: Cluster
end

local record UpdateClusterSettingsInput
    cluster: string
    settings: {ClusterSetting}
end

local record UpdateClusterSettingsOutput
    cluster: Cluster
end

local record UpdateContainerAgentInput
    cluster: string
    containerInstance: string
end

local record UpdateContainerAgentOutput
    containerInstance: ContainerInstance
end

local record UpdateContainerInstancesStateInput
    cluster: string
    containerInstances: {string}
    status: string
end

local record UpdateContainerInstancesStateOutput
    containerInstances: {ContainerInstance}
    failures: {Failure}
end

local record UpdateDaemonInput
    daemonArn: string
    daemonTaskDefinitionArn: string
    capacityProviderArns: {string}
    deploymentConfiguration: DaemonDeploymentConfiguration
    propagateTags: string
    enableECSManagedTags: boolean
    enableExecuteCommand: boolean
end

local record UpdateDaemonOutput
    daemonArn: string
    status: string
    createdAt: number
    updatedAt: number
    deploymentArn: string
end

local record UpdateExpressGatewayServiceInput
    serviceArn: string
    executionRoleArn: string
    healthCheckPath: string
    primaryContainer: ExpressGatewayContainer
    taskRoleArn: string
    networkConfiguration: ExpressGatewayServiceNetworkConfiguration
    cpu: string
    memory: string
    scalingTarget: ExpressGatewayScalingTarget
end

local record UpdateExpressGatewayServiceOutput
    service: UpdatedExpressGatewayService
end

local record UpdateServiceInput
    cluster: string
    service: string
    desiredCount: number
    taskDefinition: string
    capacityProviderStrategy: {CapacityProviderStrategyItem}
    deploymentConfiguration: DeploymentConfiguration
    availabilityZoneRebalancing: string
    networkConfiguration: NetworkConfiguration
    placementConstraints: {PlacementConstraint}
    placementStrategy: {PlacementStrategy}
    platformVersion: string
    forceNewDeployment: boolean
    healthCheckGracePeriodSeconds: number
    deploymentController: DeploymentController
    enableExecuteCommand: boolean
    enableECSManagedTags: boolean
    loadBalancers: {LoadBalancer}
    propagateTags: string
    serviceRegistries: {ServiceRegistry}
    serviceConnectConfiguration: ServiceConnectConfiguration
    volumeConfigurations: {ServiceVolumeConfiguration}
    vpcLatticeConfigurations: {VpcLatticeConfiguration}
end

local record UpdateServiceOutput
    service: Service
end

local record UpdateServicePrimaryTaskSetInput
    cluster: string
    service: string
    primaryTaskSet: string
end

local record UpdateServicePrimaryTaskSetOutput
    taskSet: TaskSet
end

local record UpdateTaskProtectionInput
    cluster: string
    tasks: {string}
    protectionEnabled: boolean
    expiresInMinutes: number
end

local record UpdateTaskProtectionOutput
    protectedTasks: {ProtectedTask}
    failures: {Failure}
end

local record UpdateTaskSetInput
    cluster: string
    service: string
    taskSet: string
    scale: Scale
end

local record UpdateTaskSetOutput
    taskSet: TaskSet
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record ServerException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record UpdateInProgressException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record InvalidParameterException
    message: string
end

local record NamespaceNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record PlatformUnknownException
    message: string
end

local record ServerException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record PlatformTaskDefinitionIncompatibilityException
    message: string
end

local record PlatformUnknownException
    message: string
end

local record ServerException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record NamespaceNotFoundException
    message: string
end

local record PlatformTaskDefinitionIncompatibilityException
    message: string
end

local record PlatformUnknownException
    message: string
end

local record ServerException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record NamespaceNotFoundException
    message: string
end

local record PlatformTaskDefinitionIncompatibilityException
    message: string
end

local record PlatformUnknownException
    message: string
end

local record ServerException
    message: string
end

local record ServiceNotActiveException
    message: string
end

local record ServiceNotFoundException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record TargetNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record UpdateInProgressException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterContainsCapacityProviderException
    message: string
end

local record ClusterContainsContainerInstancesException
    message: string
end

local record ClusterContainsServicesException
    message: string
end

local record ClusterContainsTasksException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record UpdateInProgressException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record DaemonNotActiveException
    message: string
end

local record DaemonNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record ServiceNotActiveException
    message: string
end

local record ServiceNotFoundException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record ServiceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record ServerException
    message: string
end

local record ServiceNotActiveException
    message: string
end

local record ServiceNotFoundException
    message: string
end

local record TaskSetNotFoundException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record DaemonNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record ServiceNotFoundException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record ServiceNotFoundException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record ServiceNotActiveException
    message: string
end

local record ServiceNotFoundException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record TargetNotConnectedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record ServiceNotFoundException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record InvalidParameterException
    message: string
end

local record NamespaceNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record ServiceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record AttributeLimitExceededException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record TargetNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ServerException
    message: string
end

local record UpdateInProgressException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BlockedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record ConflictException
    resourceIds: {string}
    message: string
end

local record InvalidParameterException
    message: string
end

local record PlatformTaskDefinitionIncompatibilityException
    message: string
end

local record PlatformUnknownException
    message: string
end

local record ServerException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record NamespaceNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ConflictException
    resourceIds: {string}
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record ServiceDeploymentNotFoundException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record NamespaceNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record UpdateInProgressException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record MissingVersionException
    message: string
end

local record NoUpdateAvailableException
    message: string
end

local record ServerException
    message: string
end

local record UpdateInProgressException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record DaemonNotActiveException
    message: string
end

local record DaemonNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record PlatformUnknownException
    message: string
end

local record ServerException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record ServiceNotActiveException
    message: string
end

local record ServiceNotFoundException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record NamespaceNotFoundException
    message: string
end

local record PlatformTaskDefinitionIncompatibilityException
    message: string
end

local record PlatformUnknownException
    message: string
end

local record ServerException
    message: string
end

local record ServiceNotActiveException
    message: string
end

local record ServiceNotFoundException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record ServiceNotActiveException
    message: string
end

local record ServiceNotFoundException
    message: string
end

local record TaskSetNotFoundException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ClientException
    message: string
end

local record ClusterNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record ServerException
    message: string
end

local record ServiceNotActiveException
    message: string
end

local record ServiceNotFoundException
    message: string
end

local record TaskSetNotFoundException
    message: string
end

local record UnsupportedFeatureException
    message: string
end

local type TaskDefinitionStatus = "ACTIVE" | "INACTIVE" | "DELETE_IN_PROGRESS"

local type DaemonStatus = "ACTIVE" | "DELETE_IN_PROGRESS"

local type TargetType = "container-instance"

local type DaemonPropagateTags = "DAEMON" | "NONE"

local type ResourceManagementType = "CUSTOMER" | "ECS"

local type DaemonTaskDefinitionRevisionFilter = "LAST_REGISTERED"

local type LaunchType = "EC2" | "FARGATE" | "EXTERNAL" | "MANAGED_INSTANCES"

local type DaemonTaskDefinitionStatusFilter = "ACTIVE" | "DELETE_IN_PROGRESS" | "ALL"

local type PropagateTags = "TASK_DEFINITION" | "SERVICE" | "NONE"

local type DesiredStatus = "RUNNING" | "PENDING" | "STOPPED"

local type SettingName = "serviceLongArnFormat" | "taskLongArnFormat" | "containerInstanceLongArnFormat" | "awsvpcTrunking" | "containerInsights" | "fargateFIPSMode" | "tagResourceAuthorization" | "fargateTaskRetirementWaitPeriod" | "guardDutyActivate" | "defaultLogDriverMode" | "fargateEventWindows"

local type ContainerInstanceStatus = "ACTIVE" | "DRAINING" | "REGISTERING" | "DEREGISTERING" | "REGISTRATION_FAILED"

local type PidMode = "host" | "task"

local type IpcMode = "host" | "task" | "none"

local type NetworkMode = "bridge" | "host" | "awsvpc" | "none"

local type StopServiceDeploymentStopType = "ABORT" | "ROLLBACK"

local type AvailabilityZoneRebalancing = "ENABLED" | "DISABLED"

local type TaskDefinitionFamilyStatus = "ACTIVE" | "INACTIVE" | "ALL"

local type SchedulingStrategy = "REPLICA" | "DAEMON"

local type SortOrder = "ASC" | "DESC"

local record M
    CreateCapacityProviderInput: CreateCapacityProviderInput
    CreateCapacityProviderOutput: CreateCapacityProviderOutput
    CreateClusterInput: CreateClusterInput
    CreateClusterOutput: CreateClusterOutput
    CreateDaemonInput: CreateDaemonInput
    CreateDaemonOutput: CreateDaemonOutput
    CreateExpressGatewayServiceInput: CreateExpressGatewayServiceInput
    CreateExpressGatewayServiceOutput: CreateExpressGatewayServiceOutput
    CreateServiceInput: CreateServiceInput
    CreateServiceOutput: CreateServiceOutput
    CreateTaskSetInput: CreateTaskSetInput
    CreateTaskSetOutput: CreateTaskSetOutput
    DeleteAccountSettingInput: DeleteAccountSettingInput
    DeleteAccountSettingOutput: DeleteAccountSettingOutput
    DeleteAttributesInput: DeleteAttributesInput
    DeleteAttributesOutput: DeleteAttributesOutput
    DeleteCapacityProviderInput: DeleteCapacityProviderInput
    DeleteCapacityProviderOutput: DeleteCapacityProviderOutput
    DeleteClusterInput: DeleteClusterInput
    DeleteClusterOutput: DeleteClusterOutput
    DeleteDaemonInput: DeleteDaemonInput
    DeleteDaemonOutput: DeleteDaemonOutput
    DeleteDaemonTaskDefinitionInput: DeleteDaemonTaskDefinitionInput
    DeleteDaemonTaskDefinitionOutput: DeleteDaemonTaskDefinitionOutput
    DeleteExpressGatewayServiceInput: DeleteExpressGatewayServiceInput
    DeleteExpressGatewayServiceOutput: DeleteExpressGatewayServiceOutput
    DeleteServiceInput: DeleteServiceInput
    DeleteServiceOutput: DeleteServiceOutput
    DeleteTaskDefinitionsInput: DeleteTaskDefinitionsInput
    DeleteTaskDefinitionsOutput: DeleteTaskDefinitionsOutput
    DeleteTaskSetInput: DeleteTaskSetInput
    DeleteTaskSetOutput: DeleteTaskSetOutput
    DeregisterContainerInstanceInput: DeregisterContainerInstanceInput
    DeregisterContainerInstanceOutput: DeregisterContainerInstanceOutput
    DeregisterTaskDefinitionInput: DeregisterTaskDefinitionInput
    DeregisterTaskDefinitionOutput: DeregisterTaskDefinitionOutput
    DescribeCapacityProvidersInput: DescribeCapacityProvidersInput
    DescribeCapacityProvidersOutput: DescribeCapacityProvidersOutput
    DescribeClustersInput: DescribeClustersInput
    DescribeClustersOutput: DescribeClustersOutput
    DescribeContainerInstancesInput: DescribeContainerInstancesInput
    DescribeContainerInstancesOutput: DescribeContainerInstancesOutput
    DescribeDaemonInput: DescribeDaemonInput
    DescribeDaemonOutput: DescribeDaemonOutput
    DescribeDaemonDeploymentsInput: DescribeDaemonDeploymentsInput
    DescribeDaemonDeploymentsOutput: DescribeDaemonDeploymentsOutput
    DescribeDaemonRevisionsInput: DescribeDaemonRevisionsInput
    DescribeDaemonRevisionsOutput: DescribeDaemonRevisionsOutput
    DescribeDaemonTaskDefinitionInput: DescribeDaemonTaskDefinitionInput
    DescribeDaemonTaskDefinitionOutput: DescribeDaemonTaskDefinitionOutput
    DescribeExpressGatewayServiceInput: DescribeExpressGatewayServiceInput
    DescribeExpressGatewayServiceOutput: DescribeExpressGatewayServiceOutput
    DescribeServiceDeploymentsInput: DescribeServiceDeploymentsInput
    DescribeServiceDeploymentsOutput: DescribeServiceDeploymentsOutput
    DescribeServiceRevisionsInput: DescribeServiceRevisionsInput
    DescribeServiceRevisionsOutput: DescribeServiceRevisionsOutput
    DescribeServicesInput: DescribeServicesInput
    DescribeServicesOutput: DescribeServicesOutput
    DescribeTaskDefinitionInput: DescribeTaskDefinitionInput
    DescribeTaskDefinitionOutput: DescribeTaskDefinitionOutput
    DescribeTasksInput: DescribeTasksInput
    DescribeTasksOutput: DescribeTasksOutput
    DescribeTaskSetsInput: DescribeTaskSetsInput
    DescribeTaskSetsOutput: DescribeTaskSetsOutput
    DiscoverPollEndpointInput: DiscoverPollEndpointInput
    DiscoverPollEndpointOutput: DiscoverPollEndpointOutput
    ExecuteCommandInput: ExecuteCommandInput
    ExecuteCommandOutput: ExecuteCommandOutput
    GetTaskProtectionInput: GetTaskProtectionInput
    GetTaskProtectionOutput: GetTaskProtectionOutput
    ListAccountSettingsInput: ListAccountSettingsInput
    ListAccountSettingsOutput: ListAccountSettingsOutput
    ListAttributesInput: ListAttributesInput
    ListAttributesOutput: ListAttributesOutput
    ListClustersInput: ListClustersInput
    ListClustersOutput: ListClustersOutput
    ListContainerInstancesInput: ListContainerInstancesInput
    ListContainerInstancesOutput: ListContainerInstancesOutput
    ListDaemonDeploymentsInput: ListDaemonDeploymentsInput
    ListDaemonDeploymentsOutput: ListDaemonDeploymentsOutput
    ListDaemonsInput: ListDaemonsInput
    ListDaemonsOutput: ListDaemonsOutput
    ListDaemonTaskDefinitionsInput: ListDaemonTaskDefinitionsInput
    ListDaemonTaskDefinitionsOutput: ListDaemonTaskDefinitionsOutput
    ListServiceDeploymentsInput: ListServiceDeploymentsInput
    ListServiceDeploymentsOutput: ListServiceDeploymentsOutput
    ListServicesInput: ListServicesInput
    ListServicesOutput: ListServicesOutput
    ListServicesByNamespaceInput: ListServicesByNamespaceInput
    ListServicesByNamespaceOutput: ListServicesByNamespaceOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTaskDefinitionFamiliesInput: ListTaskDefinitionFamiliesInput
    ListTaskDefinitionFamiliesOutput: ListTaskDefinitionFamiliesOutput
    ListTaskDefinitionsInput: ListTaskDefinitionsInput
    ListTaskDefinitionsOutput: ListTaskDefinitionsOutput
    ListTasksInput: ListTasksInput
    ListTasksOutput: ListTasksOutput
    PutAccountSettingInput: PutAccountSettingInput
    PutAccountSettingOutput: PutAccountSettingOutput
    PutAccountSettingDefaultInput: PutAccountSettingDefaultInput
    PutAccountSettingDefaultOutput: PutAccountSettingDefaultOutput
    PutAttributesInput: PutAttributesInput
    PutAttributesOutput: PutAttributesOutput
    PutClusterCapacityProvidersInput: PutClusterCapacityProvidersInput
    PutClusterCapacityProvidersOutput: PutClusterCapacityProvidersOutput
    RegisterContainerInstanceInput: RegisterContainerInstanceInput
    RegisterContainerInstanceOutput: RegisterContainerInstanceOutput
    RegisterDaemonTaskDefinitionInput: RegisterDaemonTaskDefinitionInput
    RegisterDaemonTaskDefinitionOutput: RegisterDaemonTaskDefinitionOutput
    RegisterTaskDefinitionInput: RegisterTaskDefinitionInput
    RegisterTaskDefinitionOutput: RegisterTaskDefinitionOutput
    RunTaskInput: RunTaskInput
    RunTaskOutput: RunTaskOutput
    StartTaskInput: StartTaskInput
    StartTaskOutput: StartTaskOutput
    StopServiceDeploymentInput: StopServiceDeploymentInput
    StopServiceDeploymentOutput: StopServiceDeploymentOutput
    StopTaskInput: StopTaskInput
    StopTaskOutput: StopTaskOutput
    SubmitAttachmentStateChangesInput: SubmitAttachmentStateChangesInput
    SubmitAttachmentStateChangesOutput: SubmitAttachmentStateChangesOutput
    SubmitContainerStateChangeInput: SubmitContainerStateChangeInput
    SubmitContainerStateChangeOutput: SubmitContainerStateChangeOutput
    SubmitTaskStateChangeInput: SubmitTaskStateChangeInput
    SubmitTaskStateChangeOutput: SubmitTaskStateChangeOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateCapacityProviderInput: UpdateCapacityProviderInput
    UpdateCapacityProviderOutput: UpdateCapacityProviderOutput
    UpdateClusterInput: UpdateClusterInput
    UpdateClusterOutput: UpdateClusterOutput
    UpdateClusterSettingsInput: UpdateClusterSettingsInput
    UpdateClusterSettingsOutput: UpdateClusterSettingsOutput
    UpdateContainerAgentInput: UpdateContainerAgentInput
    UpdateContainerAgentOutput: UpdateContainerAgentOutput
    UpdateContainerInstancesStateInput: UpdateContainerInstancesStateInput
    UpdateContainerInstancesStateOutput: UpdateContainerInstancesStateOutput
    UpdateDaemonInput: UpdateDaemonInput
    UpdateDaemonOutput: UpdateDaemonOutput
    UpdateExpressGatewayServiceInput: UpdateExpressGatewayServiceInput
    UpdateExpressGatewayServiceOutput: UpdateExpressGatewayServiceOutput
    UpdateServiceInput: UpdateServiceInput
    UpdateServiceOutput: UpdateServiceOutput
    UpdateServicePrimaryTaskSetInput: UpdateServicePrimaryTaskSetInput
    UpdateServicePrimaryTaskSetOutput: UpdateServicePrimaryTaskSetOutput
    UpdateTaskProtectionInput: UpdateTaskProtectionInput
    UpdateTaskProtectionOutput: UpdateTaskProtectionOutput
    UpdateTaskSetInput: UpdateTaskSetInput
    UpdateTaskSetOutput: UpdateTaskSetOutput
end

return M
