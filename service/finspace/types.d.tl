local record CreateEnvironmentInput
    name: string
    description: string
    kmsKeyId: string
    tags: {string : string}
    federationMode: string
    federationParameters: FederationParameters
    superuserParameters: SuperuserParameters
    dataBundles: {string}
end

local record CreateEnvironmentOutput
    environmentId: string
    environmentArn: string
    environmentUrl: string
end

local record CreateKxChangesetInput
    environmentId: string
    databaseName: string
    changeRequests: {ChangeRequest}
    clientToken: string
end

local record CreateKxChangesetOutput
    changesetId: string
    databaseName: string
    environmentId: string
    changeRequests: {ChangeRequest}
    createdTimestamp: number
    lastModifiedTimestamp: number
    status: string
    errorInfo: ErrorInfo
end

local record CreateKxClusterInput
    clientToken: string
    environmentId: string
    clusterName: string
    clusterType: string
    tickerplantLogConfiguration: TickerplantLogConfiguration
    databases: {KxDatabaseConfiguration}
    cacheStorageConfigurations: {KxCacheStorageConfiguration}
    autoScalingConfiguration: AutoScalingConfiguration
    clusterDescription: string
    capacityConfiguration: CapacityConfiguration
    releaseLabel: string
    vpcConfiguration: VpcConfiguration
    initializationScript: string
    commandLineArguments: {KxCommandLineArgument}
    code: CodeConfiguration
    executionRole: string
    savedownStorageConfiguration: KxSavedownStorageConfiguration
    azMode: string
    availabilityZoneId: string
    tags: {string : string}
    scalingGroupConfiguration: KxScalingGroupConfiguration
end

local record CreateKxClusterOutput
    environmentId: string
    status: string
    statusReason: string
    clusterName: string
    clusterType: string
    tickerplantLogConfiguration: TickerplantLogConfiguration
    volumes: {Volume}
    databases: {KxDatabaseConfiguration}
    cacheStorageConfigurations: {KxCacheStorageConfiguration}
    autoScalingConfiguration: AutoScalingConfiguration
    clusterDescription: string
    capacityConfiguration: CapacityConfiguration
    releaseLabel: string
    vpcConfiguration: VpcConfiguration
    initializationScript: string
    commandLineArguments: {KxCommandLineArgument}
    code: CodeConfiguration
    executionRole: string
    lastModifiedTimestamp: number
    savedownStorageConfiguration: KxSavedownStorageConfiguration
    azMode: string
    availabilityZoneId: string
    createdTimestamp: number
    scalingGroupConfiguration: KxScalingGroupConfiguration
end

local record CreateKxDatabaseInput
    environmentId: string
    databaseName: string
    description: string
    tags: {string : string}
    clientToken: string
end

local record CreateKxDatabaseOutput
    databaseName: string
    databaseArn: string
    environmentId: string
    description: string
    createdTimestamp: number
    lastModifiedTimestamp: number
end

local record CreateKxDataviewInput
    environmentId: string
    databaseName: string
    dataviewName: string
    azMode: string
    availabilityZoneId: string
    changesetId: string
    segmentConfigurations: {KxDataviewSegmentConfiguration}
    autoUpdate: boolean
    readWrite: boolean
    description: string
    tags: {string : string}
    clientToken: string
end

local record CreateKxDataviewOutput
    dataviewName: string
    databaseName: string
    environmentId: string
    azMode: string
    availabilityZoneId: string
    changesetId: string
    segmentConfigurations: {KxDataviewSegmentConfiguration}
    description: string
    autoUpdate: boolean
    readWrite: boolean
    createdTimestamp: number
    lastModifiedTimestamp: number
    status: string
end

local record CreateKxEnvironmentInput
    name: string
    description: string
    kmsKeyId: string
    tags: {string : string}
    clientToken: string
end

local record CreateKxEnvironmentOutput
    name: string
    status: string
    environmentId: string
    description: string
    environmentArn: string
    kmsKeyId: string
    creationTimestamp: number
end

local record CreateKxScalingGroupInput
    clientToken: string
    environmentId: string
    scalingGroupName: string
    hostType: string
    availabilityZoneId: string
    tags: {string : string}
end

local record CreateKxScalingGroupOutput
    environmentId: string
    scalingGroupName: string
    hostType: string
    availabilityZoneId: string
    status: string
    lastModifiedTimestamp: number
    createdTimestamp: number
end

local record CreateKxUserInput
    environmentId: string
    userName: string
    iamRole: string
    tags: {string : string}
    clientToken: string
end

local record CreateKxUserOutput
    userName: string
    userArn: string
    environmentId: string
    iamRole: string
end

local record CreateKxVolumeInput
    clientToken: string
    environmentId: string
    volumeType: string
    volumeName: string
    description: string
    nas1Configuration: KxNAS1Configuration
    azMode: string
    availabilityZoneIds: {string}
    tags: {string : string}
end

local record CreateKxVolumeOutput
    environmentId: string
    volumeName: string
    volumeType: string
    volumeArn: string
    nas1Configuration: KxNAS1Configuration
    status: string
    statusReason: string
    azMode: string
    description: string
    availabilityZoneIds: {string}
    createdTimestamp: number
end

local record DeleteEnvironmentInput
    environmentId: string
end

local record DeleteEnvironmentOutput
end

local record DeleteKxClusterInput
    environmentId: string
    clusterName: string
    clientToken: string
end

local record DeleteKxClusterOutput
end

local record DeleteKxClusterNodeInput
    environmentId: string
    clusterName: string
    nodeId: string
end

local record DeleteKxClusterNodeOutput
end

local record DeleteKxDatabaseInput
    environmentId: string
    databaseName: string
    clientToken: string
end

local record DeleteKxDatabaseOutput
end

local record DeleteKxDataviewInput
    environmentId: string
    databaseName: string
    dataviewName: string
    clientToken: string
end

local record DeleteKxDataviewOutput
end

local record DeleteKxEnvironmentInput
    environmentId: string
    clientToken: string
end

local record DeleteKxEnvironmentOutput
end

local record DeleteKxScalingGroupInput
    environmentId: string
    scalingGroupName: string
    clientToken: string
end

local record DeleteKxScalingGroupOutput
end

local record DeleteKxUserInput
    userName: string
    environmentId: string
    clientToken: string
end

local record DeleteKxUserOutput
end

local record DeleteKxVolumeInput
    environmentId: string
    volumeName: string
    clientToken: string
end

local record DeleteKxVolumeOutput
end

local record GetEnvironmentInput
    environmentId: string
end

local record GetEnvironmentOutput
    environment: Environment
end

local record GetKxChangesetInput
    environmentId: string
    databaseName: string
    changesetId: string
end

local record GetKxChangesetOutput
    changesetId: string
    databaseName: string
    environmentId: string
    changeRequests: {ChangeRequest}
    createdTimestamp: number
    activeFromTimestamp: number
    lastModifiedTimestamp: number
    status: string
    errorInfo: ErrorInfo
end

local record GetKxClusterInput
    environmentId: string
    clusterName: string
end

local record GetKxClusterOutput
    status: string
    statusReason: string
    clusterName: string
    clusterType: string
    tickerplantLogConfiguration: TickerplantLogConfiguration
    volumes: {Volume}
    databases: {KxDatabaseConfiguration}
    cacheStorageConfigurations: {KxCacheStorageConfiguration}
    autoScalingConfiguration: AutoScalingConfiguration
    clusterDescription: string
    capacityConfiguration: CapacityConfiguration
    releaseLabel: string
    vpcConfiguration: VpcConfiguration
    initializationScript: string
    commandLineArguments: {KxCommandLineArgument}
    code: CodeConfiguration
    executionRole: string
    lastModifiedTimestamp: number
    savedownStorageConfiguration: KxSavedownStorageConfiguration
    azMode: string
    availabilityZoneId: string
    createdTimestamp: number
    scalingGroupConfiguration: KxScalingGroupConfiguration
end

local record GetKxConnectionStringInput
    userArn: string
    environmentId: string
    clusterName: string
end

local record GetKxConnectionStringOutput
    signedConnectionString: string
end

local record GetKxDatabaseInput
    environmentId: string
    databaseName: string
end

local record GetKxDatabaseOutput
    databaseName: string
    databaseArn: string
    environmentId: string
    description: string
    createdTimestamp: number
    lastModifiedTimestamp: number
    lastCompletedChangesetId: string
    numBytes: number
    numChangesets: number
    numFiles: number
end

local record GetKxDataviewInput
    environmentId: string
    databaseName: string
    dataviewName: string
end

local record GetKxDataviewOutput
    databaseName: string
    dataviewName: string
    azMode: string
    availabilityZoneId: string
    changesetId: string
    segmentConfigurations: {KxDataviewSegmentConfiguration}
    activeVersions: {KxDataviewActiveVersion}
    description: string
    autoUpdate: boolean
    readWrite: boolean
    environmentId: string
    createdTimestamp: number
    lastModifiedTimestamp: number
    status: string
    statusReason: string
end

local record GetKxEnvironmentInput
    environmentId: string
end

local record GetKxEnvironmentOutput
    name: string
    environmentId: string
    awsAccountId: string
    status: string
    tgwStatus: string
    dnsStatus: string
    errorMessage: string
    description: string
    environmentArn: string
    kmsKeyId: string
    dedicatedServiceAccountId: string
    transitGatewayConfiguration: TransitGatewayConfiguration
    customDNSConfiguration: {CustomDNSServer}
    creationTimestamp: number
    updateTimestamp: number
    availabilityZoneIds: {string}
    certificateAuthorityArn: string
end

local record GetKxScalingGroupInput
    environmentId: string
    scalingGroupName: string
end

local record GetKxScalingGroupOutput
    scalingGroupName: string
    scalingGroupArn: string
    hostType: string
    clusters: {string}
    availabilityZoneId: string
    status: string
    statusReason: string
    lastModifiedTimestamp: number
    createdTimestamp: number
end

local record GetKxUserInput
    userName: string
    environmentId: string
end

local record GetKxUserOutput
    userName: string
    userArn: string
    environmentId: string
    iamRole: string
end

local record GetKxVolumeInput
    environmentId: string
    volumeName: string
end

local record GetKxVolumeOutput
    environmentId: string
    volumeName: string
    volumeType: string
    volumeArn: string
    nas1Configuration: KxNAS1Configuration
    status: string
    statusReason: string
    createdTimestamp: number
    description: string
    azMode: string
    availabilityZoneIds: {string}
    lastModifiedTimestamp: number
    attachedClusters: {KxAttachedCluster}
end

local record ListEnvironmentsInput
    nextToken: string
    maxResults: number
end

local record ListEnvironmentsOutput
    environments: {Environment}
    nextToken: string
end

local record ListKxChangesetsInput
    environmentId: string
    databaseName: string
    nextToken: string
    maxResults: number
end

local record ListKxChangesetsOutput
    kxChangesets: {KxChangesetListEntry}
    nextToken: string
end

local record ListKxClusterNodesInput
    environmentId: string
    clusterName: string
    nextToken: string
    maxResults: number
end

local record ListKxClusterNodesOutput
    nodes: {KxNode}
    nextToken: string
end

local record ListKxClustersInput
    environmentId: string
    clusterType: string
    maxResults: number
    nextToken: string
end

local record ListKxClustersOutput
    kxClusterSummaries: {KxCluster}
    nextToken: string
end

local record ListKxDatabasesInput
    environmentId: string
    nextToken: string
    maxResults: number
end

local record ListKxDatabasesOutput
    kxDatabases: {KxDatabaseListEntry}
    nextToken: string
end

local record ListKxDataviewsInput
    environmentId: string
    databaseName: string
    nextToken: string
    maxResults: number
end

local record ListKxDataviewsOutput
    kxDataviews: {KxDataviewListEntry}
    nextToken: string
end

local record ListKxEnvironmentsInput
    nextToken: string
    maxResults: number
end

local record ListKxEnvironmentsOutput
    environments: {KxEnvironment}
    nextToken: string
end

local record ListKxScalingGroupsInput
    environmentId: string
    maxResults: number
    nextToken: string
end

local record ListKxScalingGroupsOutput
    scalingGroups: {KxScalingGroup}
    nextToken: string
end

local record ListKxUsersInput
    environmentId: string
    nextToken: string
    maxResults: number
end

local record ListKxUsersOutput
    users: {KxUser}
    nextToken: string
end

local record ListKxVolumesInput
    environmentId: string
    maxResults: number
    nextToken: string
    volumeType: string
end

local record ListKxVolumesOutput
    kxVolumeSummaries: {KxVolume}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
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

local record UpdateEnvironmentInput
    environmentId: string
    name: string
    description: string
    federationMode: string
    federationParameters: FederationParameters
end

local record UpdateEnvironmentOutput
    environment: Environment
end

local record UpdateKxClusterCodeConfigurationInput
    environmentId: string
    clusterName: string
    clientToken: string
    code: CodeConfiguration
    initializationScript: string
    commandLineArguments: {KxCommandLineArgument}
    deploymentConfiguration: KxClusterCodeDeploymentConfiguration
end

local record UpdateKxClusterCodeConfigurationOutput
end

local record UpdateKxClusterDatabasesInput
    environmentId: string
    clusterName: string
    clientToken: string
    databases: {KxDatabaseConfiguration}
    deploymentConfiguration: KxDeploymentConfiguration
end

local record UpdateKxClusterDatabasesOutput
end

local record UpdateKxDatabaseInput
    environmentId: string
    databaseName: string
    description: string
    clientToken: string
end

local record UpdateKxDatabaseOutput
    databaseName: string
    environmentId: string
    description: string
    lastModifiedTimestamp: number
end

local record UpdateKxDataviewInput
    environmentId: string
    databaseName: string
    dataviewName: string
    description: string
    changesetId: string
    segmentConfigurations: {KxDataviewSegmentConfiguration}
    clientToken: string
end

local record UpdateKxDataviewOutput
    environmentId: string
    databaseName: string
    dataviewName: string
    azMode: string
    availabilityZoneId: string
    changesetId: string
    segmentConfigurations: {KxDataviewSegmentConfiguration}
    activeVersions: {KxDataviewActiveVersion}
    status: string
    autoUpdate: boolean
    readWrite: boolean
    description: string
    createdTimestamp: number
    lastModifiedTimestamp: number
end

local record UpdateKxEnvironmentInput
    environmentId: string
    name: string
    description: string
    clientToken: string
end

local record UpdateKxEnvironmentOutput
    name: string
    environmentId: string
    awsAccountId: string
    status: string
    tgwStatus: string
    dnsStatus: string
    errorMessage: string
    description: string
    environmentArn: string
    kmsKeyId: string
    dedicatedServiceAccountId: string
    transitGatewayConfiguration: TransitGatewayConfiguration
    customDNSConfiguration: {CustomDNSServer}
    creationTimestamp: number
    updateTimestamp: number
    availabilityZoneIds: {string}
end

local record UpdateKxEnvironmentNetworkInput
    environmentId: string
    transitGatewayConfiguration: TransitGatewayConfiguration
    customDNSConfiguration: {CustomDNSServer}
    clientToken: string
end

local record UpdateKxEnvironmentNetworkOutput
    name: string
    environmentId: string
    awsAccountId: string
    status: string
    tgwStatus: string
    dnsStatus: string
    errorMessage: string
    description: string
    environmentArn: string
    kmsKeyId: string
    dedicatedServiceAccountId: string
    transitGatewayConfiguration: TransitGatewayConfiguration
    customDNSConfiguration: {CustomDNSServer}
    creationTimestamp: number
    updateTimestamp: number
    availabilityZoneIds: {string}
end

local record UpdateKxUserInput
    environmentId: string
    userName: string
    iamRole: string
    clientToken: string
end

local record UpdateKxUserOutput
    userName: string
    userArn: string
    environmentId: string
    iamRole: string
end

local record UpdateKxVolumeInput
    environmentId: string
    volumeName: string
    description: string
    clientToken: string
    nas1Configuration: KxNAS1Configuration
end

local record UpdateKxVolumeOutput
    environmentId: string
    volumeName: string
    volumeType: string
    volumeArn: string
    nas1Configuration: KxNAS1Configuration
    status: string
    description: string
    statusReason: string
    createdTimestamp: number
    azMode: string
    availabilityZoneIds: {string}
    lastModifiedTimestamp: number
    attachedClusters: {KxAttachedCluster}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
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
    reason: string
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
    reason: string
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
    reason: string
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
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
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
    reason: string
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
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
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

local record ConflictException
    message: string
    reason: string
end

local record InternalServerException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
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

local record LimitExceededException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
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

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
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

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
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
    reason: string
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
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceAlreadyExistsException
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
    reason: string
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
    reason: string
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
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
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
    reason: string
end

local record InternalServerException
    message: string
end

local record LimitExceededException
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

local type dnsStatus = "NONE" | "UPDATE_REQUESTED" | "UPDATING" | "FAILED_UPDATE" | "SUCCESSFULLY_UPDATED"

local type KxClusterStatus = "PENDING" | "CREATING" | "CREATE_FAILED" | "RUNNING" | "UPDATING" | "DELETING" | "DELETED" | "DELETE_FAILED"

local type KxDataviewStatus = "CREATING" | "ACTIVE" | "UPDATING" | "FAILED" | "DELETING"

local type KxScalingGroupStatus = "CREATING" | "CREATE_FAILED" | "ACTIVE" | "DELETING" | "DELETED" | "DELETE_FAILED"

local type KxVolumeType = "NAS_1"

local type FederationMode = "FEDERATED" | "LOCAL"

local type EnvironmentStatus = "CREATE_REQUESTED" | "CREATING" | "CREATED" | "DELETE_REQUESTED" | "DELETING" | "DELETED" | "FAILED_CREATION" | "RETRY_DELETION" | "FAILED_DELETION" | "UPDATE_NETWORK_REQUESTED" | "UPDATING_NETWORK" | "FAILED_UPDATING_NETWORK" | "SUSPENDED"

local type tgwStatus = "NONE" | "UPDATE_REQUESTED" | "UPDATING" | "FAILED_UPDATE" | "SUCCESSFULLY_UPDATED"

local type KxClusterType = "HDB" | "RDB" | "GATEWAY" | "GP" | "TICKERPLANT"

local type KxAzMode = "SINGLE" | "MULTI"

local type ChangesetStatus = "PENDING" | "PROCESSING" | "FAILED" | "COMPLETED"

local type KxVolumeStatus = "CREATING" | "CREATE_FAILED" | "ACTIVE" | "UPDATING" | "UPDATED" | "UPDATE_FAILED" | "DELETING" | "DELETED" | "DELETE_FAILED"

local record M
    CreateEnvironmentInput: CreateEnvironmentInput
    CreateEnvironmentOutput: CreateEnvironmentOutput
    CreateKxChangesetInput: CreateKxChangesetInput
    CreateKxChangesetOutput: CreateKxChangesetOutput
    CreateKxClusterInput: CreateKxClusterInput
    CreateKxClusterOutput: CreateKxClusterOutput
    CreateKxDatabaseInput: CreateKxDatabaseInput
    CreateKxDatabaseOutput: CreateKxDatabaseOutput
    CreateKxDataviewInput: CreateKxDataviewInput
    CreateKxDataviewOutput: CreateKxDataviewOutput
    CreateKxEnvironmentInput: CreateKxEnvironmentInput
    CreateKxEnvironmentOutput: CreateKxEnvironmentOutput
    CreateKxScalingGroupInput: CreateKxScalingGroupInput
    CreateKxScalingGroupOutput: CreateKxScalingGroupOutput
    CreateKxUserInput: CreateKxUserInput
    CreateKxUserOutput: CreateKxUserOutput
    CreateKxVolumeInput: CreateKxVolumeInput
    CreateKxVolumeOutput: CreateKxVolumeOutput
    DeleteEnvironmentInput: DeleteEnvironmentInput
    DeleteEnvironmentOutput: DeleteEnvironmentOutput
    DeleteKxClusterInput: DeleteKxClusterInput
    DeleteKxClusterOutput: DeleteKxClusterOutput
    DeleteKxClusterNodeInput: DeleteKxClusterNodeInput
    DeleteKxClusterNodeOutput: DeleteKxClusterNodeOutput
    DeleteKxDatabaseInput: DeleteKxDatabaseInput
    DeleteKxDatabaseOutput: DeleteKxDatabaseOutput
    DeleteKxDataviewInput: DeleteKxDataviewInput
    DeleteKxDataviewOutput: DeleteKxDataviewOutput
    DeleteKxEnvironmentInput: DeleteKxEnvironmentInput
    DeleteKxEnvironmentOutput: DeleteKxEnvironmentOutput
    DeleteKxScalingGroupInput: DeleteKxScalingGroupInput
    DeleteKxScalingGroupOutput: DeleteKxScalingGroupOutput
    DeleteKxUserInput: DeleteKxUserInput
    DeleteKxUserOutput: DeleteKxUserOutput
    DeleteKxVolumeInput: DeleteKxVolumeInput
    DeleteKxVolumeOutput: DeleteKxVolumeOutput
    GetEnvironmentInput: GetEnvironmentInput
    GetEnvironmentOutput: GetEnvironmentOutput
    GetKxChangesetInput: GetKxChangesetInput
    GetKxChangesetOutput: GetKxChangesetOutput
    GetKxClusterInput: GetKxClusterInput
    GetKxClusterOutput: GetKxClusterOutput
    GetKxConnectionStringInput: GetKxConnectionStringInput
    GetKxConnectionStringOutput: GetKxConnectionStringOutput
    GetKxDatabaseInput: GetKxDatabaseInput
    GetKxDatabaseOutput: GetKxDatabaseOutput
    GetKxDataviewInput: GetKxDataviewInput
    GetKxDataviewOutput: GetKxDataviewOutput
    GetKxEnvironmentInput: GetKxEnvironmentInput
    GetKxEnvironmentOutput: GetKxEnvironmentOutput
    GetKxScalingGroupInput: GetKxScalingGroupInput
    GetKxScalingGroupOutput: GetKxScalingGroupOutput
    GetKxUserInput: GetKxUserInput
    GetKxUserOutput: GetKxUserOutput
    GetKxVolumeInput: GetKxVolumeInput
    GetKxVolumeOutput: GetKxVolumeOutput
    ListEnvironmentsInput: ListEnvironmentsInput
    ListEnvironmentsOutput: ListEnvironmentsOutput
    ListKxChangesetsInput: ListKxChangesetsInput
    ListKxChangesetsOutput: ListKxChangesetsOutput
    ListKxClusterNodesInput: ListKxClusterNodesInput
    ListKxClusterNodesOutput: ListKxClusterNodesOutput
    ListKxClustersInput: ListKxClustersInput
    ListKxClustersOutput: ListKxClustersOutput
    ListKxDatabasesInput: ListKxDatabasesInput
    ListKxDatabasesOutput: ListKxDatabasesOutput
    ListKxDataviewsInput: ListKxDataviewsInput
    ListKxDataviewsOutput: ListKxDataviewsOutput
    ListKxEnvironmentsInput: ListKxEnvironmentsInput
    ListKxEnvironmentsOutput: ListKxEnvironmentsOutput
    ListKxScalingGroupsInput: ListKxScalingGroupsInput
    ListKxScalingGroupsOutput: ListKxScalingGroupsOutput
    ListKxUsersInput: ListKxUsersInput
    ListKxUsersOutput: ListKxUsersOutput
    ListKxVolumesInput: ListKxVolumesInput
    ListKxVolumesOutput: ListKxVolumesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateEnvironmentInput: UpdateEnvironmentInput
    UpdateEnvironmentOutput: UpdateEnvironmentOutput
    UpdateKxClusterCodeConfigurationInput: UpdateKxClusterCodeConfigurationInput
    UpdateKxClusterCodeConfigurationOutput: UpdateKxClusterCodeConfigurationOutput
    UpdateKxClusterDatabasesInput: UpdateKxClusterDatabasesInput
    UpdateKxClusterDatabasesOutput: UpdateKxClusterDatabasesOutput
    UpdateKxDatabaseInput: UpdateKxDatabaseInput
    UpdateKxDatabaseOutput: UpdateKxDatabaseOutput
    UpdateKxDataviewInput: UpdateKxDataviewInput
    UpdateKxDataviewOutput: UpdateKxDataviewOutput
    UpdateKxEnvironmentInput: UpdateKxEnvironmentInput
    UpdateKxEnvironmentOutput: UpdateKxEnvironmentOutput
    UpdateKxEnvironmentNetworkInput: UpdateKxEnvironmentNetworkInput
    UpdateKxEnvironmentNetworkOutput: UpdateKxEnvironmentNetworkOutput
    UpdateKxUserInput: UpdateKxUserInput
    UpdateKxUserOutput: UpdateKxUserOutput
    UpdateKxVolumeInput: UpdateKxVolumeInput
    UpdateKxVolumeOutput: UpdateKxVolumeOutput
end

return M
