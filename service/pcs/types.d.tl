local record CreateClusterInput
    clusterName: string
    scheduler: SchedulerRequest
    size: string
    networking: NetworkingRequest
    slurmConfiguration: ClusterSlurmConfigurationRequest
    clientToken: string
    tags: {string : string}
end

local record CreateClusterOutput
    cluster: Cluster
end

local record CreateComputeNodeGroupInput
    clusterIdentifier: string
    computeNodeGroupName: string
    amiId: string
    subnetIds: {string}
    purchaseOption: string
    customLaunchTemplate: CustomLaunchTemplate
    iamInstanceProfileArn: string
    scalingConfiguration: ScalingConfigurationRequest
    instanceConfigs: {InstanceConfig}
    spotOptions: SpotOptions
    slurmConfiguration: ComputeNodeGroupSlurmConfigurationRequest
    clientToken: string
    tags: {string : string}
end

local record CreateComputeNodeGroupOutput
    computeNodeGroup: ComputeNodeGroup
end

local record CreateQueueInput
    clusterIdentifier: string
    queueName: string
    computeNodeGroupConfigurations: {ComputeNodeGroupConfiguration}
    slurmConfiguration: QueueSlurmConfigurationRequest
    clientToken: string
    tags: {string : string}
end

local record CreateQueueOutput
    queue: Queue
end

local record DeleteClusterInput
    clusterIdentifier: string
    clientToken: string
end

local record DeleteClusterOutput
end

local record DeleteComputeNodeGroupInput
    clusterIdentifier: string
    computeNodeGroupIdentifier: string
    clientToken: string
end

local record DeleteComputeNodeGroupOutput
end

local record DeleteQueueInput
    clusterIdentifier: string
    queueIdentifier: string
    clientToken: string
end

local record DeleteQueueOutput
end

local record GetClusterInput
    clusterIdentifier: string
end

local record GetClusterOutput
    cluster: Cluster
end

local record GetComputeNodeGroupInput
    clusterIdentifier: string
    computeNodeGroupIdentifier: string
end

local record GetComputeNodeGroupOutput
    computeNodeGroup: ComputeNodeGroup
end

local record GetQueueInput
    clusterIdentifier: string
    queueIdentifier: string
end

local record GetQueueOutput
    queue: Queue
end

local record ListClustersInput
    nextToken: string
    maxResults: number
end

local record ListClustersOutput
    clusters: {ClusterSummary}
    nextToken: string
end

local record ListComputeNodeGroupsInput
    clusterIdentifier: string
    nextToken: string
    maxResults: number
end

local record ListComputeNodeGroupsOutput
    computeNodeGroups: {ComputeNodeGroupSummary}
    nextToken: string
end

local record ListQueuesInput
    clusterIdentifier: string
    nextToken: string
    maxResults: number
end

local record ListQueuesOutput
    queues: {QueueSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record RegisterComputeNodeGroupInstanceInput
    clusterIdentifier: string
    bootstrapId: string
end

local record RegisterComputeNodeGroupInstanceOutput
    nodeID: string
    sharedSecret: string
    endpoints: {Endpoint}
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

local record UpdateClusterInput
    clusterIdentifier: string
    clientToken: string
    slurmConfiguration: UpdateClusterSlurmConfigurationRequest
end

local record UpdateClusterOutput
    cluster: Cluster
end

local record UpdateComputeNodeGroupInput
    clusterIdentifier: string
    computeNodeGroupIdentifier: string
    amiId: string
    subnetIds: {string}
    customLaunchTemplate: CustomLaunchTemplate
    purchaseOption: string
    spotOptions: SpotOptions
    scalingConfiguration: ScalingConfigurationRequest
    iamInstanceProfileArn: string
    slurmConfiguration: UpdateComputeNodeGroupSlurmConfigurationRequest
    clientToken: string
end

local record UpdateComputeNodeGroupOutput
    computeNodeGroup: ComputeNodeGroup
end

local record UpdateQueueInput
    clusterIdentifier: string
    queueIdentifier: string
    computeNodeGroupConfigurations: {ComputeNodeGroupConfiguration}
    slurmConfiguration: UpdateQueueSlurmConfigurationRequest
    clientToken: string
end

local record UpdateQueueOutput
    queue: Queue
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
end

local record ServiceQuotaExceededException
    message: string
    serviceCode: string
    resourceId: string
    resourceType: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
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
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    serviceCode: string
    resourceId: string
    resourceType: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
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
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    serviceCode: string
    resourceId: string
    resourceType: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
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
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
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
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
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
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
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
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
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
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
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
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
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
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
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
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
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
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    serviceCode: string
    resourceId: string
    resourceType: string
    quotaCode: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
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
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
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
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    serviceCode: string
    resourceId: string
    resourceType: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
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
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    serviceCode: string
    resourceId: string
    resourceType: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local type PurchaseOption = "ONDEMAND" | "SPOT" | "CAPACITY_BLOCK"

local type Size = "SMALL" | "MEDIUM" | "LARGE"

local record M
    CreateClusterInput: CreateClusterInput
    CreateClusterOutput: CreateClusterOutput
    CreateComputeNodeGroupInput: CreateComputeNodeGroupInput
    CreateComputeNodeGroupOutput: CreateComputeNodeGroupOutput
    CreateQueueInput: CreateQueueInput
    CreateQueueOutput: CreateQueueOutput
    DeleteClusterInput: DeleteClusterInput
    DeleteClusterOutput: DeleteClusterOutput
    DeleteComputeNodeGroupInput: DeleteComputeNodeGroupInput
    DeleteComputeNodeGroupOutput: DeleteComputeNodeGroupOutput
    DeleteQueueInput: DeleteQueueInput
    DeleteQueueOutput: DeleteQueueOutput
    GetClusterInput: GetClusterInput
    GetClusterOutput: GetClusterOutput
    GetComputeNodeGroupInput: GetComputeNodeGroupInput
    GetComputeNodeGroupOutput: GetComputeNodeGroupOutput
    GetQueueInput: GetQueueInput
    GetQueueOutput: GetQueueOutput
    ListClustersInput: ListClustersInput
    ListClustersOutput: ListClustersOutput
    ListComputeNodeGroupsInput: ListComputeNodeGroupsInput
    ListComputeNodeGroupsOutput: ListComputeNodeGroupsOutput
    ListQueuesInput: ListQueuesInput
    ListQueuesOutput: ListQueuesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    RegisterComputeNodeGroupInstanceInput: RegisterComputeNodeGroupInstanceInput
    RegisterComputeNodeGroupInstanceOutput: RegisterComputeNodeGroupInstanceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateClusterInput: UpdateClusterInput
    UpdateClusterOutput: UpdateClusterOutput
    UpdateComputeNodeGroupInput: UpdateComputeNodeGroupInput
    UpdateComputeNodeGroupOutput: UpdateComputeNodeGroupOutput
    UpdateQueueInput: UpdateQueueInput
    UpdateQueueOutput: UpdateQueueOutput
end

return M
