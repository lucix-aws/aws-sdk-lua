local record CreateConnectorInput
    capacity: Capacity
    connectorConfiguration: {string : string}
    connectorDescription: string
    connectorName: string
    kafkaCluster: KafkaCluster
    kafkaClusterClientAuthentication: KafkaClusterClientAuthentication
    kafkaClusterEncryptionInTransit: KafkaClusterEncryptionInTransit
    kafkaConnectVersion: string
    logDelivery: LogDelivery
    networkType: string
    plugins: {Plugin}
    serviceExecutionRoleArn: string
    workerConfiguration: WorkerConfiguration
    tags: {string : string}
end

local record CreateConnectorOutput
    connectorArn: string
    connectorName: string
    connectorState: string
end

local record CreateCustomPluginInput
    contentType: string
    description: string
    location: CustomPluginLocation
    name: string
    tags: {string : string}
end

local record CreateCustomPluginOutput
    customPluginArn: string
    customPluginState: string
    name: string
    revision: number
end

local record CreateWorkerConfigurationInput
    description: string
    name: string
    propertiesFileContent: string
    tags: {string : string}
end

local record CreateWorkerConfigurationOutput
    creationTime: number
    latestRevision: WorkerConfigurationRevisionSummary
    name: string
    workerConfigurationArn: string
    workerConfigurationState: string
end

local record DeleteConnectorInput
    connectorArn: string
    currentVersion: string
end

local record DeleteConnectorOutput
    connectorArn: string
    connectorState: string
end

local record DeleteCustomPluginInput
    customPluginArn: string
end

local record DeleteCustomPluginOutput
    customPluginArn: string
    customPluginState: string
end

local record DeleteWorkerConfigurationInput
    workerConfigurationArn: string
end

local record DeleteWorkerConfigurationOutput
    workerConfigurationArn: string
    workerConfigurationState: string
end

local record DescribeConnectorInput
    connectorArn: string
end

local record DescribeConnectorOutput
    capacity: CapacityDescription
    connectorArn: string
    connectorConfiguration: {string : string}
    connectorDescription: string
    connectorName: string
    connectorState: string
    creationTime: number
    currentVersion: string
    kafkaCluster: KafkaClusterDescription
    kafkaClusterClientAuthentication: KafkaClusterClientAuthenticationDescription
    kafkaClusterEncryptionInTransit: KafkaClusterEncryptionInTransitDescription
    kafkaConnectVersion: string
    logDelivery: LogDeliveryDescription
    networkType: string
    plugins: {PluginDescription}
    serviceExecutionRoleArn: string
    workerConfiguration: WorkerConfigurationDescription
    stateDescription: StateDescription
end

local record DescribeConnectorOperationInput
    connectorOperationArn: string
end

local record DescribeConnectorOperationOutput
    connectorArn: string
    connectorOperationArn: string
    connectorOperationState: string
    connectorOperationType: string
    operationSteps: {ConnectorOperationStep}
    originWorkerSetting: WorkerSetting
    originConnectorConfiguration: {string : string}
    targetWorkerSetting: WorkerSetting
    targetConnectorConfiguration: {string : string}
    errorInfo: StateDescription
    creationTime: number
    endTime: number
end

local record DescribeCustomPluginInput
    customPluginArn: string
end

local record DescribeCustomPluginOutput
    creationTime: number
    customPluginArn: string
    customPluginState: string
    description: string
    latestRevision: CustomPluginRevisionSummary
    name: string
    stateDescription: StateDescription
end

local record DescribeWorkerConfigurationInput
    workerConfigurationArn: string
end

local record DescribeWorkerConfigurationOutput
    creationTime: number
    description: string
    latestRevision: WorkerConfigurationRevisionDescription
    name: string
    workerConfigurationArn: string
    workerConfigurationState: string
end

local record ListConnectorOperationsInput
    connectorArn: string
    maxResults: number
    nextToken: string
end

local record ListConnectorOperationsOutput
    connectorOperations: {ConnectorOperationSummary}
    nextToken: string
end

local record ListConnectorsInput
    connectorNamePrefix: string
    maxResults: number
    nextToken: string
end

local record ListConnectorsOutput
    connectors: {ConnectorSummary}
    nextToken: string
end

local record ListCustomPluginsInput
    maxResults: number
    nextToken: string
    namePrefix: string
end

local record ListCustomPluginsOutput
    customPlugins: {CustomPluginSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListWorkerConfigurationsInput
    maxResults: number
    nextToken: string
    namePrefix: string
end

local record ListWorkerConfigurationsOutput
    nextToken: string
    workerConfigurations: {WorkerConfigurationSummary}
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

local record UpdateConnectorInput
    capacity: CapacityUpdate
    connectorConfiguration: {string : string}
    connectorArn: string
    currentVersion: string
end

local record UpdateConnectorOutput
    connectorArn: string
    connectorState: string
    connectorOperationArn: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerErrorException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record UnauthorizedException
    message: string
end

local record M
    CreateConnectorInput: CreateConnectorInput
    CreateConnectorOutput: CreateConnectorOutput
    CreateCustomPluginInput: CreateCustomPluginInput
    CreateCustomPluginOutput: CreateCustomPluginOutput
    CreateWorkerConfigurationInput: CreateWorkerConfigurationInput
    CreateWorkerConfigurationOutput: CreateWorkerConfigurationOutput
    DeleteConnectorInput: DeleteConnectorInput
    DeleteConnectorOutput: DeleteConnectorOutput
    DeleteCustomPluginInput: DeleteCustomPluginInput
    DeleteCustomPluginOutput: DeleteCustomPluginOutput
    DeleteWorkerConfigurationInput: DeleteWorkerConfigurationInput
    DeleteWorkerConfigurationOutput: DeleteWorkerConfigurationOutput
    DescribeConnectorInput: DescribeConnectorInput
    DescribeConnectorOutput: DescribeConnectorOutput
    DescribeConnectorOperationInput: DescribeConnectorOperationInput
    DescribeConnectorOperationOutput: DescribeConnectorOperationOutput
    DescribeCustomPluginInput: DescribeCustomPluginInput
    DescribeCustomPluginOutput: DescribeCustomPluginOutput
    DescribeWorkerConfigurationInput: DescribeWorkerConfigurationInput
    DescribeWorkerConfigurationOutput: DescribeWorkerConfigurationOutput
    ListConnectorOperationsInput: ListConnectorOperationsInput
    ListConnectorOperationsOutput: ListConnectorOperationsOutput
    ListConnectorsInput: ListConnectorsInput
    ListConnectorsOutput: ListConnectorsOutput
    ListCustomPluginsInput: ListCustomPluginsInput
    ListCustomPluginsOutput: ListCustomPluginsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListWorkerConfigurationsInput: ListWorkerConfigurationsInput
    ListWorkerConfigurationsOutput: ListWorkerConfigurationsOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateConnectorInput: UpdateConnectorInput
    UpdateConnectorOutput: UpdateConnectorOutput
end

return M
