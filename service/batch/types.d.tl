local record CancelJobInput
    jobId: string
    reason: string
end

local record CancelJobOutput
end

local record CreateComputeEnvironmentInput
    computeEnvironmentName: string
    type: string
    state: string
    unmanagedvCpus: number
    computeResources: ComputeResource
    serviceRole: string
    tags: {string : string}
    eksConfiguration: EksConfiguration
    context: string
end

local record CreateComputeEnvironmentOutput
    computeEnvironmentName: string
    computeEnvironmentArn: string
end

local record CreateConsumableResourceInput
    consumableResourceName: string
    totalQuantity: number
    resourceType: string
    tags: {string : string}
end

local record CreateConsumableResourceOutput
    consumableResourceName: string
    consumableResourceArn: string
end

local record CreateJobQueueInput
    jobQueueName: string
    state: string
    schedulingPolicyArn: string
    priority: number
    computeEnvironmentOrder: {ComputeEnvironmentOrder}
    serviceEnvironmentOrder: {ServiceEnvironmentOrder}
    jobQueueType: string
    tags: {string : string}
    jobStateTimeLimitActions: {JobStateTimeLimitAction}
end

local record CreateJobQueueOutput
    jobQueueName: string
    jobQueueArn: string
end

local record CreateQuotaShareInput
    quotaShareName: string
    jobQueue: string
    capacityLimits: {QuotaShareCapacityLimit}
    resourceSharingConfiguration: QuotaShareResourceSharingConfiguration
    preemptionConfiguration: QuotaSharePreemptionConfiguration
    state: string
    tags: {string : string}
end

local record CreateQuotaShareOutput
    quotaShareName: string
    quotaShareArn: string
end

local record CreateSchedulingPolicyInput
    name: string
    quotaSharePolicy: QuotaSharePolicy
    fairsharePolicy: FairsharePolicy
    tags: {string : string}
end

local record CreateSchedulingPolicyOutput
    name: string
    arn: string
end

local record CreateServiceEnvironmentInput
    serviceEnvironmentName: string
    serviceEnvironmentType: string
    state: string
    capacityLimits: {CapacityLimit}
    tags: {string : string}
end

local record CreateServiceEnvironmentOutput
    serviceEnvironmentName: string
    serviceEnvironmentArn: string
end

local record DeleteComputeEnvironmentInput
    computeEnvironment: string
end

local record DeleteComputeEnvironmentOutput
end

local record DeleteConsumableResourceInput
    consumableResource: string
end

local record DeleteConsumableResourceOutput
end

local record DeleteJobQueueInput
    jobQueue: string
end

local record DeleteJobQueueOutput
end

local record DeleteQuotaShareInput
    quotaShareArn: string
end

local record DeleteQuotaShareOutput
end

local record DeleteSchedulingPolicyInput
    arn: string
end

local record DeleteSchedulingPolicyOutput
end

local record DeleteServiceEnvironmentInput
    serviceEnvironment: string
end

local record DeleteServiceEnvironmentOutput
end

local record DeregisterJobDefinitionInput
    jobDefinition: string
end

local record DeregisterJobDefinitionOutput
end

local record DescribeComputeEnvironmentsInput
    computeEnvironments: {string}
    maxResults: number
    nextToken: string
end

local record DescribeComputeEnvironmentsOutput
    computeEnvironments: {ComputeEnvironmentDetail}
    nextToken: string
end

local record DescribeConsumableResourceInput
    consumableResource: string
end

local record DescribeConsumableResourceOutput
    consumableResourceName: string
    consumableResourceArn: string
    totalQuantity: number
    inUseQuantity: number
    availableQuantity: number
    resourceType: string
    createdAt: number
    tags: {string : string}
end

local record DescribeJobDefinitionsInput
    jobDefinitions: {string}
    maxResults: number
    jobDefinitionName: string
    status: string
    nextToken: string
end

local record DescribeJobDefinitionsOutput
    jobDefinitions: {JobDefinition}
    nextToken: string
end

local record DescribeJobQueuesInput
    jobQueues: {string}
    maxResults: number
    nextToken: string
end

local record DescribeJobQueuesOutput
    jobQueues: {JobQueueDetail}
    nextToken: string
end

local record DescribeJobsInput
    jobs: {string}
end

local record DescribeJobsOutput
    jobs: {JobDetail}
end

local record DescribeQuotaShareInput
    quotaShareArn: string
end

local record DescribeQuotaShareOutput
    quotaShareName: string
    quotaShareArn: string
    jobQueueArn: string
    capacityLimits: {QuotaShareCapacityLimit}
    resourceSharingConfiguration: QuotaShareResourceSharingConfiguration
    preemptionConfiguration: QuotaSharePreemptionConfiguration
    state: string
    status: string
    tags: {string : string}
end

local record DescribeSchedulingPoliciesInput
    arns: {string}
end

local record DescribeSchedulingPoliciesOutput
    schedulingPolicies: {SchedulingPolicyDetail}
end

local record DescribeServiceEnvironmentsInput
    serviceEnvironments: {string}
    maxResults: number
    nextToken: string
end

local record DescribeServiceEnvironmentsOutput
    serviceEnvironments: {ServiceEnvironmentDetail}
    nextToken: string
end

local record DescribeServiceJobInput
    jobId: string
end

local record DescribeServiceJobOutput
    attempts: {ServiceJobAttemptDetail}
    capacityUsage: {ServiceJobCapacityUsageDetail}
    createdAt: number
    isTerminated: boolean
    jobArn: string
    jobId: string
    jobName: string
    jobQueue: string
    latestAttempt: LatestServiceJobAttempt
    retryStrategy: ServiceJobRetryStrategy
    scheduledAt: number
    schedulingPriority: number
    serviceRequestPayload: string
    serviceJobType: string
    shareIdentifier: string
    quotaShareName: string
    preemptionConfiguration: ServiceJobPreemptionConfiguration
    preemptionSummary: ServiceJobPreemptionSummary
    startedAt: number
    status: string
    statusReason: string
    stoppedAt: number
    tags: {string : string}
    timeoutConfig: ServiceJobTimeout
end

local record GetJobQueueSnapshotInput
    jobQueue: string
end

local record GetJobQueueSnapshotOutput
    frontOfQueue: FrontOfQueueDetail
    frontOfQuotaShares: FrontOfQuotaSharesDetail
    queueUtilization: QueueSnapshotUtilizationDetail
end

local record ListConsumableResourcesInput
    filters: {KeyValuesPair}
    maxResults: number
    nextToken: string
end

local record ListConsumableResourcesOutput
    consumableResources: {ConsumableResourceSummary}
    nextToken: string
end

local record ListJobsInput
    jobQueue: string
    arrayJobId: string
    multiNodeJobId: string
    jobStatus: string
    maxResults: number
    nextToken: string
    filters: {KeyValuesPair}
end

local record ListJobsOutput
    jobSummaryList: {JobSummary}
    nextToken: string
end

local record ListJobsByConsumableResourceInput
    consumableResource: string
    filters: {KeyValuesPair}
    maxResults: number
    nextToken: string
end

local record ListJobsByConsumableResourceOutput
    jobs: {ListJobsByConsumableResourceSummary}
    nextToken: string
end

local record ListQuotaSharesInput
    jobQueue: string
    maxResults: number
    nextToken: string
end

local record ListQuotaSharesOutput
    quotaShares: {QuotaShareDetail}
    nextToken: string
end

local record ListSchedulingPoliciesInput
    maxResults: number
    nextToken: string
end

local record ListSchedulingPoliciesOutput
    schedulingPolicies: {SchedulingPolicyListingDetail}
    nextToken: string
end

local record ListServiceJobsInput
    jobQueue: string
    jobStatus: string
    maxResults: number
    nextToken: string
    filters: {KeyValuesPair}
end

local record ListServiceJobsOutput
    jobSummaryList: {ServiceJobSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record RegisterJobDefinitionInput
    jobDefinitionName: string
    type: string
    parameters: {string : string}
    schedulingPriority: number
    containerProperties: ContainerProperties
    nodeProperties: NodeProperties
    retryStrategy: RetryStrategy
    propagateTags: boolean
    timeout: JobTimeout
    tags: {string : string}
    platformCapabilities: {string}
    eksProperties: EksProperties
    ecsProperties: EcsProperties
    consumableResourceProperties: ConsumableResourceProperties
end

local record RegisterJobDefinitionOutput
    jobDefinitionName: string
    jobDefinitionArn: string
    revision: number
end

local record SubmitJobInput
    jobName: string
    jobQueue: string
    shareIdentifier: string
    schedulingPriorityOverride: number
    arrayProperties: ArrayProperties
    dependsOn: {JobDependency}
    jobDefinition: string
    parameters: {string : string}
    containerOverrides: ContainerOverrides
    nodeOverrides: NodeOverrides
    retryStrategy: RetryStrategy
    propagateTags: boolean
    timeout: JobTimeout
    tags: {string : string}
    eksPropertiesOverride: EksPropertiesOverride
    ecsPropertiesOverride: EcsPropertiesOverride
    consumableResourcePropertiesOverride: ConsumableResourceProperties
end

local record SubmitJobOutput
    jobArn: string
    jobName: string
    jobId: string
end

local record SubmitServiceJobInput
    jobName: string
    jobQueue: string
    retryStrategy: ServiceJobRetryStrategy
    schedulingPriority: number
    serviceRequestPayload: string
    serviceJobType: string
    shareIdentifier: string
    quotaShareName: string
    preemptionConfiguration: ServiceJobPreemptionConfiguration
    timeoutConfig: ServiceJobTimeout
    tags: {string : string}
    clientToken: string
end

local record SubmitServiceJobOutput
    jobArn: string
    jobName: string
    jobId: string
end

local record TagResourceInput
    resourceArn: string
    tags: {string : string}
end

local record TagResourceOutput
end

local record TerminateJobInput
    jobId: string
    reason: string
end

local record TerminateJobOutput
end

local record TerminateServiceJobInput
    jobId: string
    reason: string
end

local record TerminateServiceJobOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateComputeEnvironmentInput
    computeEnvironment: string
    state: string
    unmanagedvCpus: number
    computeResources: ComputeResourceUpdate
    serviceRole: string
    updatePolicy: UpdatePolicy
    context: string
end

local record UpdateComputeEnvironmentOutput
    computeEnvironmentName: string
    computeEnvironmentArn: string
end

local record UpdateConsumableResourceInput
    consumableResource: string
    operation: string
    quantity: number
    clientToken: string
end

local record UpdateConsumableResourceOutput
    consumableResourceName: string
    consumableResourceArn: string
    totalQuantity: number
end

local record UpdateJobQueueInput
    jobQueue: string
    state: string
    schedulingPolicyArn: string
    priority: number
    computeEnvironmentOrder: {ComputeEnvironmentOrder}
    serviceEnvironmentOrder: {ServiceEnvironmentOrder}
    jobStateTimeLimitActions: {JobStateTimeLimitAction}
end

local record UpdateJobQueueOutput
    jobQueueName: string
    jobQueueArn: string
end

local record UpdateQuotaShareInput
    quotaShareArn: string
    capacityLimits: {QuotaShareCapacityLimit}
    resourceSharingConfiguration: QuotaShareResourceSharingConfiguration
    preemptionConfiguration: QuotaSharePreemptionConfiguration
    state: string
end

local record UpdateQuotaShareOutput
    quotaShareName: string
    quotaShareArn: string
end

local record UpdateSchedulingPolicyInput
    arn: string
    quotaSharePolicy: QuotaSharePolicy
    fairsharePolicy: FairsharePolicy
end

local record UpdateSchedulingPolicyOutput
end

local record UpdateServiceEnvironmentInput
    serviceEnvironment: string
    state: string
    capacityLimits: {CapacityLimit}
end

local record UpdateServiceEnvironmentOutput
    serviceEnvironmentName: string
    serviceEnvironmentArn: string
end

local record UpdateServiceJobInput
    jobId: string
    schedulingPriority: number
end

local record UpdateServiceJobOutput
    jobArn: string
    jobName: string
    jobId: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local record ClientException
    message: string
end

local record ServerException
    message: string
end

local type JobDefinitionType = "container" | "multinode"

local type JobStatus = "SUBMITTED" | "PENDING" | "RUNNABLE" | "STARTING" | "RUNNING" | "SUCCEEDED" | "FAILED"

local type JobQueueType = "EKS" | "ECS" | "ECS_FARGATE" | "SAGEMAKER_TRAINING"

local type ServiceEnvironmentType = "SAGEMAKER_TRAINING"

local type ServiceEnvironmentState = "ENABLED" | "DISABLED"

local type CEType = "MANAGED" | "UNMANAGED"

local type QuotaShareState = "ENABLED" | "DISABLED"

local type QuotaShareStatus = "CREATING" | "VALID" | "INVALID" | "UPDATING" | "DELETING"

local type ServiceJobStatus = "SUBMITTED" | "PENDING" | "RUNNABLE" | "SCHEDULED" | "STARTING" | "RUNNING" | "SUCCEEDED" | "FAILED"

local type CEState = "ENABLED" | "DISABLED"

local type ServiceJobType = "SAGEMAKER_TRAINING"

local type JQState = "ENABLED" | "DISABLED"

local record M
    CancelJobInput: CancelJobInput
    CancelJobOutput: CancelJobOutput
    CreateComputeEnvironmentInput: CreateComputeEnvironmentInput
    CreateComputeEnvironmentOutput: CreateComputeEnvironmentOutput
    CreateConsumableResourceInput: CreateConsumableResourceInput
    CreateConsumableResourceOutput: CreateConsumableResourceOutput
    CreateJobQueueInput: CreateJobQueueInput
    CreateJobQueueOutput: CreateJobQueueOutput
    CreateQuotaShareInput: CreateQuotaShareInput
    CreateQuotaShareOutput: CreateQuotaShareOutput
    CreateSchedulingPolicyInput: CreateSchedulingPolicyInput
    CreateSchedulingPolicyOutput: CreateSchedulingPolicyOutput
    CreateServiceEnvironmentInput: CreateServiceEnvironmentInput
    CreateServiceEnvironmentOutput: CreateServiceEnvironmentOutput
    DeleteComputeEnvironmentInput: DeleteComputeEnvironmentInput
    DeleteComputeEnvironmentOutput: DeleteComputeEnvironmentOutput
    DeleteConsumableResourceInput: DeleteConsumableResourceInput
    DeleteConsumableResourceOutput: DeleteConsumableResourceOutput
    DeleteJobQueueInput: DeleteJobQueueInput
    DeleteJobQueueOutput: DeleteJobQueueOutput
    DeleteQuotaShareInput: DeleteQuotaShareInput
    DeleteQuotaShareOutput: DeleteQuotaShareOutput
    DeleteSchedulingPolicyInput: DeleteSchedulingPolicyInput
    DeleteSchedulingPolicyOutput: DeleteSchedulingPolicyOutput
    DeleteServiceEnvironmentInput: DeleteServiceEnvironmentInput
    DeleteServiceEnvironmentOutput: DeleteServiceEnvironmentOutput
    DeregisterJobDefinitionInput: DeregisterJobDefinitionInput
    DeregisterJobDefinitionOutput: DeregisterJobDefinitionOutput
    DescribeComputeEnvironmentsInput: DescribeComputeEnvironmentsInput
    DescribeComputeEnvironmentsOutput: DescribeComputeEnvironmentsOutput
    DescribeConsumableResourceInput: DescribeConsumableResourceInput
    DescribeConsumableResourceOutput: DescribeConsumableResourceOutput
    DescribeJobDefinitionsInput: DescribeJobDefinitionsInput
    DescribeJobDefinitionsOutput: DescribeJobDefinitionsOutput
    DescribeJobQueuesInput: DescribeJobQueuesInput
    DescribeJobQueuesOutput: DescribeJobQueuesOutput
    DescribeJobsInput: DescribeJobsInput
    DescribeJobsOutput: DescribeJobsOutput
    DescribeQuotaShareInput: DescribeQuotaShareInput
    DescribeQuotaShareOutput: DescribeQuotaShareOutput
    DescribeSchedulingPoliciesInput: DescribeSchedulingPoliciesInput
    DescribeSchedulingPoliciesOutput: DescribeSchedulingPoliciesOutput
    DescribeServiceEnvironmentsInput: DescribeServiceEnvironmentsInput
    DescribeServiceEnvironmentsOutput: DescribeServiceEnvironmentsOutput
    DescribeServiceJobInput: DescribeServiceJobInput
    DescribeServiceJobOutput: DescribeServiceJobOutput
    GetJobQueueSnapshotInput: GetJobQueueSnapshotInput
    GetJobQueueSnapshotOutput: GetJobQueueSnapshotOutput
    ListConsumableResourcesInput: ListConsumableResourcesInput
    ListConsumableResourcesOutput: ListConsumableResourcesOutput
    ListJobsInput: ListJobsInput
    ListJobsOutput: ListJobsOutput
    ListJobsByConsumableResourceInput: ListJobsByConsumableResourceInput
    ListJobsByConsumableResourceOutput: ListJobsByConsumableResourceOutput
    ListQuotaSharesInput: ListQuotaSharesInput
    ListQuotaSharesOutput: ListQuotaSharesOutput
    ListSchedulingPoliciesInput: ListSchedulingPoliciesInput
    ListSchedulingPoliciesOutput: ListSchedulingPoliciesOutput
    ListServiceJobsInput: ListServiceJobsInput
    ListServiceJobsOutput: ListServiceJobsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    RegisterJobDefinitionInput: RegisterJobDefinitionInput
    RegisterJobDefinitionOutput: RegisterJobDefinitionOutput
    SubmitJobInput: SubmitJobInput
    SubmitJobOutput: SubmitJobOutput
    SubmitServiceJobInput: SubmitServiceJobInput
    SubmitServiceJobOutput: SubmitServiceJobOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    TerminateJobInput: TerminateJobInput
    TerminateJobOutput: TerminateJobOutput
    TerminateServiceJobInput: TerminateServiceJobInput
    TerminateServiceJobOutput: TerminateServiceJobOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateComputeEnvironmentInput: UpdateComputeEnvironmentInput
    UpdateComputeEnvironmentOutput: UpdateComputeEnvironmentOutput
    UpdateConsumableResourceInput: UpdateConsumableResourceInput
    UpdateConsumableResourceOutput: UpdateConsumableResourceOutput
    UpdateJobQueueInput: UpdateJobQueueInput
    UpdateJobQueueOutput: UpdateJobQueueOutput
    UpdateQuotaShareInput: UpdateQuotaShareInput
    UpdateQuotaShareOutput: UpdateQuotaShareOutput
    UpdateSchedulingPolicyInput: UpdateSchedulingPolicyInput
    UpdateSchedulingPolicyOutput: UpdateSchedulingPolicyOutput
    UpdateServiceEnvironmentInput: UpdateServiceEnvironmentInput
    UpdateServiceEnvironmentOutput: UpdateServiceEnvironmentOutput
    UpdateServiceJobInput: UpdateServiceJobInput
    UpdateServiceJobOutput: UpdateServiceJobOutput
end

return M
