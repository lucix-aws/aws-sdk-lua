local record AssociateMemberToFarmInput
    farmId: string
    principalType: string
    identityStoreId: string
    membershipLevel: string
    principalId: string
end

local record AssociateMemberToFarmOutput
end

local record AssociateMemberToFleetInput
    farmId: string
    fleetId: string
    principalType: string
    identityStoreId: string
    membershipLevel: string
    principalId: string
end

local record AssociateMemberToFleetOutput
end

local record AssociateMemberToJobInput
    farmId: string
    queueId: string
    jobId: string
    principalType: string
    identityStoreId: string
    membershipLevel: string
    principalId: string
end

local record AssociateMemberToJobOutput
end

local record AssociateMemberToQueueInput
    farmId: string
    queueId: string
    principalType: string
    identityStoreId: string
    membershipLevel: string
    principalId: string
end

local record AssociateMemberToQueueOutput
end

local record AssumeFleetRoleForReadInput
    farmId: string
    fleetId: string
end

local record AssumeFleetRoleForReadOutput
    credentials: AwsCredentials
end

local record AssumeFleetRoleForWorkerInput
    farmId: string
    fleetId: string
    workerId: string
end

local record AssumeFleetRoleForWorkerOutput
    credentials: AwsCredentials
end

local record AssumeQueueRoleForReadInput
    farmId: string
    queueId: string
end

local record AssumeQueueRoleForReadOutput
    credentials: AwsCredentials
end

local record AssumeQueueRoleForUserInput
    farmId: string
    queueId: string
end

local record AssumeQueueRoleForUserOutput
    credentials: AwsCredentials
end

local record AssumeQueueRoleForWorkerInput
    farmId: string
    fleetId: string
    workerId: string
    queueId: string
end

local record AssumeQueueRoleForWorkerOutput
    credentials: AwsCredentials
end

local record BatchGetJobInput
    identifiers: {BatchGetJobIdentifier}
end

local record BatchGetJobOutput
    jobs: {BatchGetJobItem}
    errors: {BatchGetJobError}
end

local record BatchGetJobEntityInput
    farmId: string
    fleetId: string
    workerId: string
    identifiers: {JobEntityIdentifiersUnion}
end

local record BatchGetJobEntityOutput
    entities: {JobEntity}
    errors: {GetJobEntityError}
end

local record BatchGetSessionInput
    identifiers: {BatchGetSessionIdentifier}
end

local record BatchGetSessionOutput
    sessions: {BatchGetSessionItem}
    errors: {BatchGetSessionError}
end

local record BatchGetSessionActionInput
    identifiers: {BatchGetSessionActionIdentifier}
end

local record BatchGetSessionActionOutput
    sessionActions: {BatchGetSessionActionItem}
    errors: {BatchGetSessionActionError}
end

local record BatchGetStepInput
    identifiers: {BatchGetStepIdentifier}
end

local record BatchGetStepOutput
    steps: {BatchGetStepItem}
    errors: {BatchGetStepError}
end

local record BatchGetTaskInput
    identifiers: {BatchGetTaskIdentifier}
end

local record BatchGetTaskOutput
    tasks: {BatchGetTaskItem}
    errors: {BatchGetTaskError}
end

local record BatchGetWorkerInput
    identifiers: {BatchGetWorkerIdentifier}
end

local record BatchGetWorkerOutput
    workers: {BatchGetWorkerItem}
    errors: {BatchGetWorkerError}
end

local record BatchUpdateJobInput
    clientToken: string
    jobs: {BatchUpdateJobItem}
end

local record BatchUpdateJobOutput
    errors: {BatchUpdateJobError}
end

local record BatchUpdateTaskInput
    clientToken: string
    tasks: {BatchUpdateTaskItem}
end

local record BatchUpdateTaskOutput
    errors: {BatchUpdateTaskError}
end

local record CopyJobTemplateInput
    farmId: string
    queueId: string
    jobId: string
    targetS3Location: S3Location
end

local record CopyJobTemplateOutput
    templateType: string
end

local record CreateBudgetInput
    farmId: string
    displayName: string
    description: string
    clientToken: string
    usageTrackingResource: UsageTrackingResource
    approximateDollarLimit: number
    actions: {BudgetActionToAdd}
    schedule: BudgetSchedule
    tags: {string : string}
end

local record CreateBudgetOutput
    budgetId: string
end

local record CreateFarmInput
    clientToken: string
    displayName: string
    description: string
    kmsKeyArn: string
    costScaleFactor: number
    tags: {string : string}
end

local record CreateFarmOutput
    farmId: string
end

local record CreateFleetInput
    farmId: string
    clientToken: string
    displayName: string
    description: string
    roleArn: string
    minWorkerCount: number
    maxWorkerCount: number
    configuration: FleetConfiguration
    tags: {string : string}
    hostConfiguration: HostConfiguration
end

local record CreateFleetOutput
    fleetId: string
end

local record CreateJobInput
    farmId: string
    queueId: string
    clientToken: string
    template: string
    templateType: string
    priority: number
    parameters: {string : JobParameter}
    attachments: Attachments
    storageProfileId: string
    targetTaskRunStatus: string
    maxFailedTasksCount: number
    maxRetriesPerTask: number
    maxWorkerCount: number
    sourceJobId: string
    nameOverride: string
    descriptionOverride: string
    tags: {string : string}
end

local record CreateJobOutput
    jobId: string
end

local record CreateLicenseEndpointInput
    clientToken: string
    vpcId: string
    subnetIds: {string}
    securityGroupIds: {string}
    tags: {string : string}
end

local record CreateLicenseEndpointOutput
    licenseEndpointId: string
end

local record CreateLimitInput
    farmId: string
    clientToken: string
    displayName: string
    amountRequirementName: string
    maxCount: number
    description: string
end

local record CreateLimitOutput
    limitId: string
end

local record CreateMonitorInput
    clientToken: string
    displayName: string
    identityCenterInstanceArn: string
    identityCenterRegion: string
    subdomain: string
    roleArn: string
    tags: {string : string}
end

local record CreateMonitorOutput
    monitorId: string
    identityCenterApplicationArn: string
end

local record CreateQueueInput
    farmId: string
    clientToken: string
    displayName: string
    description: string
    defaultBudgetAction: string
    jobAttachmentSettings: JobAttachmentSettings
    roleArn: string
    jobRunAsUser: JobRunAsUser
    requiredFileSystemLocationNames: {string}
    allowedStorageProfileIds: {string}
    tags: {string : string}
    schedulingConfiguration: SchedulingConfiguration
end

local record CreateQueueOutput
    queueId: string
end

local record CreateQueueEnvironmentInput
    farmId: string
    queueId: string
    clientToken: string
    priority: number
    templateType: string
    template: string
end

local record CreateQueueEnvironmentOutput
    queueEnvironmentId: string
end

local record CreateQueueFleetAssociationInput
    farmId: string
    queueId: string
    fleetId: string
end

local record CreateQueueFleetAssociationOutput
end

local record CreateQueueLimitAssociationInput
    farmId: string
    queueId: string
    limitId: string
end

local record CreateQueueLimitAssociationOutput
end

local record CreateStorageProfileInput
    farmId: string
    clientToken: string
    displayName: string
    osFamily: string
    fileSystemLocations: {FileSystemLocation}
end

local record CreateStorageProfileOutput
    storageProfileId: string
end

local record CreateWorkerInput
    farmId: string
    fleetId: string
    hostProperties: HostPropertiesRequest
    clientToken: string
    tags: {string : string}
end

local record CreateWorkerOutput
    workerId: string
end

local record DeleteBudgetInput
    farmId: string
    budgetId: string
end

local record DeleteBudgetOutput
end

local record DeleteFarmInput
    farmId: string
end

local record DeleteFarmOutput
end

local record DeleteFleetInput
    farmId: string
    fleetId: string
    clientToken: string
end

local record DeleteFleetOutput
end

local record DeleteLicenseEndpointInput
    licenseEndpointId: string
end

local record DeleteLicenseEndpointOutput
end

local record DeleteLimitInput
    farmId: string
    limitId: string
end

local record DeleteLimitOutput
end

local record DeleteMeteredProductInput
    licenseEndpointId: string
    productId: string
end

local record DeleteMeteredProductOutput
end

local record DeleteMonitorInput
    monitorId: string
end

local record DeleteMonitorOutput
end

local record DeleteQueueInput
    farmId: string
    queueId: string
end

local record DeleteQueueOutput
end

local record DeleteQueueEnvironmentInput
    farmId: string
    queueId: string
    queueEnvironmentId: string
end

local record DeleteQueueEnvironmentOutput
end

local record DeleteQueueFleetAssociationInput
    farmId: string
    queueId: string
    fleetId: string
end

local record DeleteQueueFleetAssociationOutput
end

local record DeleteQueueLimitAssociationInput
    farmId: string
    queueId: string
    limitId: string
end

local record DeleteQueueLimitAssociationOutput
end

local record DeleteStorageProfileInput
    farmId: string
    storageProfileId: string
end

local record DeleteStorageProfileOutput
end

local record DeleteWorkerInput
    farmId: string
    fleetId: string
    workerId: string
end

local record DeleteWorkerOutput
end

local record DisassociateMemberFromFarmInput
    farmId: string
    principalId: string
end

local record DisassociateMemberFromFarmOutput
end

local record DisassociateMemberFromFleetInput
    farmId: string
    fleetId: string
    principalId: string
end

local record DisassociateMemberFromFleetOutput
end

local record DisassociateMemberFromJobInput
    farmId: string
    queueId: string
    jobId: string
    principalId: string
end

local record DisassociateMemberFromJobOutput
end

local record DisassociateMemberFromQueueInput
    farmId: string
    queueId: string
    principalId: string
end

local record DisassociateMemberFromQueueOutput
end

local record GetBudgetInput
    farmId: string
    budgetId: string
end

local record GetBudgetOutput
    budgetId: string
    usageTrackingResource: UsageTrackingResource
    status: string
    displayName: string
    approximateDollarLimit: number
    usages: ConsumedUsages
    createdBy: string
    createdAt: number
    updatedBy: string
    updatedAt: number
    description: string
    actions: {ResponseBudgetAction}
    schedule: BudgetSchedule
    queueStoppedAt: number
end

local record GetFarmInput
    farmId: string
end

local record GetFarmOutput
    farmId: string
    displayName: string
    kmsKeyArn: string
    createdAt: number
    createdBy: string
    updatedAt: number
    updatedBy: string
    description: string
    costScaleFactor: number
end

local record GetFleetInput
    farmId: string
    fleetId: string
end

local record GetFleetOutput
    fleetId: string
    farmId: string
    displayName: string
    status: string
    statusMessage: string
    autoScalingStatus: string
    targetWorkerCount: number
    workerCount: number
    minWorkerCount: number
    maxWorkerCount: number
    configuration: FleetConfiguration
    createdAt: number
    createdBy: string
    updatedAt: number
    updatedBy: string
    description: string
    hostConfiguration: HostConfiguration
    capabilities: FleetCapabilities
    roleArn: string
end

local record GetJobInput
    farmId: string
    queueId: string
    jobId: string
end

local record GetJobOutput
    jobId: string
    name: string
    lifecycleStatus: string
    lifecycleStatusMessage: string
    priority: number
    createdAt: number
    createdBy: string
    updatedAt: number
    updatedBy: string
    startedAt: number
    endedAt: number
    taskRunStatus: string
    targetTaskRunStatus: string
    taskRunStatusCounts: {string : number}
    taskFailureRetryCount: number
    storageProfileId: string
    maxFailedTasksCount: number
    maxRetriesPerTask: number
    parameters: {string : JobParameter}
    attachments: Attachments
    description: string
    maxWorkerCount: number
    sourceJobId: string
end

local record GetLicenseEndpointInput
    licenseEndpointId: string
end

local record GetLicenseEndpointOutput
    licenseEndpointId: string
    status: string
    statusMessage: string
    vpcId: string
    dnsName: string
    subnetIds: {string}
    securityGroupIds: {string}
end

local record GetLimitInput
    farmId: string
    limitId: string
end

local record GetLimitOutput
    farmId: string
    limitId: string
    currentCount: number
    createdAt: number
    createdBy: string
    updatedAt: number
    updatedBy: string
    displayName: string
    amountRequirementName: string
    maxCount: number
    description: string
end

local record GetMonitorInput
    monitorId: string
end

local record GetMonitorOutput
    monitorId: string
    displayName: string
    subdomain: string
    url: string
    roleArn: string
    identityCenterInstanceArn: string
    identityCenterRegion: string
    identityCenterApplicationArn: string
    createdAt: number
    createdBy: string
    updatedAt: number
    updatedBy: string
end

local record GetMonitorSettingsInput
    monitorId: string
end

local record GetMonitorSettingsOutput
    settings: {string : string}
end

local record GetQueueInput
    farmId: string
    queueId: string
end

local record GetQueueOutput
    farmId: string
    queueId: string
    displayName: string
    status: string
    defaultBudgetAction: string
    blockedReason: string
    createdAt: number
    createdBy: string
    updatedAt: number
    updatedBy: string
    description: string
    jobAttachmentSettings: JobAttachmentSettings
    roleArn: string
    requiredFileSystemLocationNames: {string}
    allowedStorageProfileIds: {string}
    jobRunAsUser: JobRunAsUser
    schedulingConfiguration: SchedulingConfiguration
end

local record GetQueueEnvironmentInput
    farmId: string
    queueId: string
    queueEnvironmentId: string
end

local record GetQueueEnvironmentOutput
    queueEnvironmentId: string
    name: string
    priority: number
    templateType: string
    template: string
    createdAt: number
    createdBy: string
    updatedAt: number
    updatedBy: string
end

local record GetQueueFleetAssociationInput
    farmId: string
    queueId: string
    fleetId: string
end

local record GetQueueFleetAssociationOutput
    queueId: string
    fleetId: string
    status: string
    createdAt: number
    createdBy: string
    updatedAt: number
    updatedBy: string
end

local record GetQueueLimitAssociationInput
    farmId: string
    queueId: string
    limitId: string
end

local record GetQueueLimitAssociationOutput
    queueId: string
    limitId: string
    status: string
    createdAt: number
    createdBy: string
    updatedAt: number
    updatedBy: string
end

local record GetSessionInput
    farmId: string
    queueId: string
    jobId: string
    sessionId: string
end

local record GetSessionOutput
    sessionId: string
    fleetId: string
    workerId: string
    startedAt: number
    lifecycleStatus: string
    endedAt: number
    targetLifecycleStatus: string
    updatedAt: number
    updatedBy: string
    log: LogConfiguration
    hostProperties: HostPropertiesResponse
    workerLog: LogConfiguration
end

local record GetSessionActionInput
    farmId: string
    queueId: string
    jobId: string
    sessionActionId: string
end

local record GetSessionActionOutput
    sessionActionId: string
    status: string
    startedAt: number
    endedAt: number
    workerUpdatedAt: number
    progressPercent: number
    manifests: {TaskRunManifestPropertiesResponse}
    sessionId: string
    processExitCode: number
    progressMessage: string
    acquiredLimits: {AcquiredLimit}
    definition: SessionActionDefinition
end

local record GetSessionsStatisticsAggregationInput
    farmId: string
    nextToken: string
    maxResults: number
    aggregationId: string
end

local record GetSessionsStatisticsAggregationOutput
    statistics: {Statistics}
    status: string
    statusMessage: string
    nextToken: string
end

local record GetStepInput
    farmId: string
    queueId: string
    jobId: string
    stepId: string
end

local record GetStepOutput
    stepId: string
    name: string
    lifecycleStatus: string
    lifecycleStatusMessage: string
    taskRunStatus: string
    taskRunStatusCounts: {string : number}
    taskFailureRetryCount: number
    targetTaskRunStatus: string
    createdAt: number
    createdBy: string
    updatedAt: number
    updatedBy: string
    startedAt: number
    endedAt: number
    dependencyCounts: DependencyCounts
    requiredCapabilities: StepRequiredCapabilities
    parameterSpace: ParameterSpace
    description: string
end

local record GetStorageProfileInput
    farmId: string
    storageProfileId: string
end

local record GetStorageProfileOutput
    storageProfileId: string
    displayName: string
    osFamily: string
    createdAt: number
    createdBy: string
    updatedAt: number
    updatedBy: string
    fileSystemLocations: {FileSystemLocation}
end

local record GetStorageProfileForQueueInput
    farmId: string
    queueId: string
    storageProfileId: string
end

local record GetStorageProfileForQueueOutput
    storageProfileId: string
    displayName: string
    osFamily: string
    fileSystemLocations: {FileSystemLocation}
end

local record GetTaskInput
    farmId: string
    queueId: string
    jobId: string
    stepId: string
    taskId: string
end

local record GetTaskOutput
    taskId: string
    createdAt: number
    createdBy: string
    runStatus: string
    targetRunStatus: string
    failureRetryCount: number
    startedAt: number
    endedAt: number
    updatedAt: number
    updatedBy: string
    latestSessionActionId: string
    parameters: {string : TaskParameterValue}
end

local record GetWorkerInput
    farmId: string
    fleetId: string
    workerId: string
end

local record GetWorkerOutput
    farmId: string
    fleetId: string
    workerId: string
    hostProperties: HostPropertiesResponse
    status: string
    log: LogConfiguration
    createdAt: number
    createdBy: string
    updatedAt: number
    updatedBy: string
end

local record ListAvailableMeteredProductsInput
    nextToken: string
    maxResults: number
end

local record ListAvailableMeteredProductsOutput
    meteredProducts: {MeteredProductSummary}
    nextToken: string
end

local record ListBudgetsInput
    farmId: string
    nextToken: string
    maxResults: number
    status: string
end

local record ListBudgetsOutput
    budgets: {BudgetSummary}
    nextToken: string
end

local record ListFarmMembersInput
    farmId: string
    nextToken: string
    maxResults: number
end

local record ListFarmMembersOutput
    members: {FarmMember}
    nextToken: string
end

local record ListFarmsInput
    nextToken: string
    maxResults: number
    principalId: string
end

local record ListFarmsOutput
    farms: {FarmSummary}
    nextToken: string
end

local record ListFleetMembersInput
    farmId: string
    fleetId: string
    nextToken: string
    maxResults: number
end

local record ListFleetMembersOutput
    members: {FleetMember}
    nextToken: string
end

local record ListFleetsInput
    farmId: string
    nextToken: string
    maxResults: number
    principalId: string
    displayName: string
    status: string
end

local record ListFleetsOutput
    fleets: {FleetSummary}
    nextToken: string
end

local record ListJobMembersInput
    farmId: string
    queueId: string
    jobId: string
    nextToken: string
    maxResults: number
end

local record ListJobMembersOutput
    members: {JobMember}
    nextToken: string
end

local record ListJobParameterDefinitionsInput
    farmId: string
    queueId: string
    jobId: string
    nextToken: string
    maxResults: number
end

local record ListJobParameterDefinitionsOutput
    jobParameterDefinitions: {any}
    nextToken: string
end

local record ListJobsInput
    farmId: string
    queueId: string
    nextToken: string
    maxResults: number
    principalId: string
end

local record ListJobsOutput
    jobs: {JobSummary}
    nextToken: string
end

local record ListLicenseEndpointsInput
    nextToken: string
    maxResults: number
end

local record ListLicenseEndpointsOutput
    licenseEndpoints: {LicenseEndpointSummary}
    nextToken: string
end

local record ListLimitsInput
    farmId: string
    nextToken: string
    maxResults: number
end

local record ListLimitsOutput
    limits: {LimitSummary}
    nextToken: string
end

local record ListMeteredProductsInput
    licenseEndpointId: string
    nextToken: string
    maxResults: number
end

local record ListMeteredProductsOutput
    meteredProducts: {MeteredProductSummary}
    nextToken: string
end

local record ListMonitorsInput
    nextToken: string
    maxResults: number
end

local record ListMonitorsOutput
    monitors: {MonitorSummary}
    nextToken: string
end

local record ListQueueEnvironmentsInput
    farmId: string
    queueId: string
    nextToken: string
    maxResults: number
end

local record ListQueueEnvironmentsOutput
    environments: {QueueEnvironmentSummary}
    nextToken: string
end

local record ListQueueFleetAssociationsInput
    farmId: string
    nextToken: string
    maxResults: number
    queueId: string
    fleetId: string
end

local record ListQueueFleetAssociationsOutput
    queueFleetAssociations: {QueueFleetAssociationSummary}
    nextToken: string
end

local record ListQueueLimitAssociationsInput
    farmId: string
    nextToken: string
    maxResults: number
    queueId: string
    limitId: string
end

local record ListQueueLimitAssociationsOutput
    queueLimitAssociations: {QueueLimitAssociationSummary}
    nextToken: string
end

local record ListQueueMembersInput
    farmId: string
    queueId: string
    nextToken: string
    maxResults: number
end

local record ListQueueMembersOutput
    members: {QueueMember}
    nextToken: string
end

local record ListQueuesInput
    farmId: string
    nextToken: string
    maxResults: number
    principalId: string
    status: string
end

local record ListQueuesOutput
    queues: {QueueSummary}
    nextToken: string
end

local record ListSessionActionsInput
    farmId: string
    queueId: string
    jobId: string
    nextToken: string
    maxResults: number
    sessionId: string
    taskId: string
end

local record ListSessionActionsOutput
    sessionActions: {SessionActionSummary}
    nextToken: string
end

local record ListSessionsInput
    farmId: string
    queueId: string
    jobId: string
    nextToken: string
    maxResults: number
end

local record ListSessionsOutput
    sessions: {SessionSummary}
    nextToken: string
end

local record ListSessionsForWorkerInput
    farmId: string
    fleetId: string
    workerId: string
    nextToken: string
    maxResults: number
end

local record ListSessionsForWorkerOutput
    sessions: {WorkerSessionSummary}
    nextToken: string
end

local record ListStepConsumersInput
    farmId: string
    queueId: string
    jobId: string
    stepId: string
    nextToken: string
    maxResults: number
end

local record ListStepConsumersOutput
    consumers: {StepConsumer}
    nextToken: string
end

local record ListStepDependenciesInput
    farmId: string
    queueId: string
    jobId: string
    stepId: string
    nextToken: string
    maxResults: number
end

local record ListStepDependenciesOutput
    dependencies: {StepDependency}
    nextToken: string
end

local record ListStepsInput
    farmId: string
    queueId: string
    jobId: string
    nextToken: string
    maxResults: number
end

local record ListStepsOutput
    steps: {StepSummary}
    nextToken: string
end

local record ListStorageProfilesInput
    farmId: string
    nextToken: string
    maxResults: number
end

local record ListStorageProfilesOutput
    storageProfiles: {StorageProfileSummary}
    nextToken: string
end

local record ListStorageProfilesForQueueInput
    farmId: string
    queueId: string
    nextToken: string
    maxResults: number
end

local record ListStorageProfilesForQueueOutput
    storageProfiles: {StorageProfileSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListTasksInput
    farmId: string
    queueId: string
    jobId: string
    stepId: string
    nextToken: string
    maxResults: number
end

local record ListTasksOutput
    tasks: {TaskSummary}
    nextToken: string
end

local record ListWorkersInput
    farmId: string
    fleetId: string
    nextToken: string
    maxResults: number
end

local record ListWorkersOutput
    workers: {WorkerSummary}
    nextToken: string
end

local record PutMeteredProductInput
    licenseEndpointId: string
    productId: string
end

local record PutMeteredProductOutput
end

local record SearchJobsInput
    farmId: string
    filterExpressions: SearchGroupedFilterExpressions
    sortExpressions: {SearchSortExpression}
    itemOffset: number
    pageSize: number
    queueIds: {string}
end

local record SearchJobsOutput
    jobs: {JobSearchSummary}
    nextItemOffset: number
    totalResults: number
end

local record SearchStepsInput
    farmId: string
    filterExpressions: SearchGroupedFilterExpressions
    sortExpressions: {SearchSortExpression}
    itemOffset: number
    pageSize: number
    queueIds: {string}
    jobId: string
end

local record SearchStepsOutput
    steps: {StepSearchSummary}
    nextItemOffset: number
    totalResults: number
end

local record SearchTasksInput
    farmId: string
    filterExpressions: SearchGroupedFilterExpressions
    sortExpressions: {SearchSortExpression}
    itemOffset: number
    pageSize: number
    queueIds: {string}
    jobId: string
end

local record SearchTasksOutput
    tasks: {TaskSearchSummary}
    nextItemOffset: number
    totalResults: number
end

local record SearchWorkersInput
    farmId: string
    filterExpressions: SearchGroupedFilterExpressions
    sortExpressions: {SearchSortExpression}
    itemOffset: number
    pageSize: number
    fleetIds: {string}
end

local record SearchWorkersOutput
    workers: {WorkerSearchSummary}
    nextItemOffset: number
    totalResults: number
end

local record StartSessionsStatisticsAggregationInput
    farmId: string
    resourceIds: SessionsStatisticsResources
    startTime: number
    endTime: number
    timezone: string
    period: string
    groupBy: {string}
    statistics: {string}
end

local record StartSessionsStatisticsAggregationOutput
    aggregationId: string
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

local record UpdateBudgetInput
    farmId: string
    budgetId: string
    clientToken: string
    displayName: string
    description: string
    status: string
    approximateDollarLimit: number
    actionsToAdd: {BudgetActionToAdd}
    actionsToRemove: {BudgetActionToRemove}
    schedule: BudgetSchedule
end

local record UpdateBudgetOutput
end

local record UpdateFarmInput
    farmId: string
    displayName: string
    description: string
    costScaleFactor: number
end

local record UpdateFarmOutput
end

local record UpdateFleetInput
    farmId: string
    fleetId: string
    clientToken: string
    displayName: string
    description: string
    roleArn: string
    minWorkerCount: number
    maxWorkerCount: number
    configuration: FleetConfiguration
    hostConfiguration: HostConfiguration
end

local record UpdateFleetOutput
end

local record UpdateJobInput
    farmId: string
    queueId: string
    jobId: string
    clientToken: string
    targetTaskRunStatus: string
    priority: number
    maxFailedTasksCount: number
    maxRetriesPerTask: number
    lifecycleStatus: string
    maxWorkerCount: number
    name: string
    description: string
end

local record UpdateJobOutput
end

local record UpdateLimitInput
    farmId: string
    limitId: string
    displayName: string
    description: string
    maxCount: number
end

local record UpdateLimitOutput
end

local record UpdateMonitorInput
    monitorId: string
    subdomain: string
    displayName: string
    roleArn: string
end

local record UpdateMonitorOutput
end

local record UpdateMonitorSettingsInput
    monitorId: string
    settings: {string : string}
end

local record UpdateMonitorSettingsOutput
end

local record UpdateQueueInput
    farmId: string
    queueId: string
    clientToken: string
    displayName: string
    description: string
    defaultBudgetAction: string
    jobAttachmentSettings: JobAttachmentSettings
    roleArn: string
    jobRunAsUser: JobRunAsUser
    requiredFileSystemLocationNamesToAdd: {string}
    requiredFileSystemLocationNamesToRemove: {string}
    allowedStorageProfileIdsToAdd: {string}
    allowedStorageProfileIdsToRemove: {string}
    schedulingConfiguration: SchedulingConfiguration
end

local record UpdateQueueOutput
end

local record UpdateQueueEnvironmentInput
    farmId: string
    queueId: string
    queueEnvironmentId: string
    clientToken: string
    priority: number
    templateType: string
    template: string
end

local record UpdateQueueEnvironmentOutput
end

local record UpdateQueueFleetAssociationInput
    farmId: string
    queueId: string
    fleetId: string
    status: string
end

local record UpdateQueueFleetAssociationOutput
end

local record UpdateQueueLimitAssociationInput
    farmId: string
    queueId: string
    limitId: string
    status: string
end

local record UpdateQueueLimitAssociationOutput
end

local record UpdateSessionInput
    farmId: string
    queueId: string
    jobId: string
    sessionId: string
    clientToken: string
    targetLifecycleStatus: string
end

local record UpdateSessionOutput
end

local record UpdateStepInput
    farmId: string
    queueId: string
    jobId: string
    stepId: string
    clientToken: string
    targetTaskRunStatus: string
end

local record UpdateStepOutput
end

local record UpdateStorageProfileInput
    farmId: string
    storageProfileId: string
    clientToken: string
    displayName: string
    osFamily: string
    fileSystemLocationsToAdd: {FileSystemLocation}
    fileSystemLocationsToRemove: {FileSystemLocation}
end

local record UpdateStorageProfileOutput
end

local record UpdateTaskInput
    farmId: string
    queueId: string
    jobId: string
    stepId: string
    taskId: string
    clientToken: string
    targetRunStatus: string
end

local record UpdateTaskOutput
end

local record UpdateWorkerInput
    farmId: string
    fleetId: string
    workerId: string
    status: string
    capabilities: WorkerCapabilities
    hostProperties: HostPropertiesRequest
end

local record UpdateWorkerOutput
    log: LogConfiguration
    hostConfiguration: HostConfiguration
end

local record UpdateWorkerScheduleInput
    farmId: string
    fleetId: string
    workerId: string
    updatedSessionActions: {string : UpdatedSessionActionInfo}
end

local record UpdateWorkerScheduleOutput
    assignedSessions: {string : AssignedSession}
    cancelSessionActions: {string : {string}}
    desiredWorkerStatus: string
    updateIntervalSeconds: number
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ServiceQuotaExceededException
    message: string
    reason: string
    resourceType: string
    serviceCode: string
    quotaCode: string
    resourceId: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ServiceQuotaExceededException
    message: string
    reason: string
    resourceType: string
    serviceCode: string
    quotaCode: string
    resourceId: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ServiceQuotaExceededException
    message: string
    reason: string
    resourceType: string
    serviceCode: string
    quotaCode: string
    resourceId: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ServiceQuotaExceededException
    message: string
    reason: string
    resourceType: string
    serviceCode: string
    quotaCode: string
    resourceId: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record ConflictException
    message: string
    reason: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record ConflictException
    message: string
    reason: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ServiceQuotaExceededException
    message: string
    reason: string
    resourceType: string
    serviceCode: string
    quotaCode: string
    resourceId: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ServiceQuotaExceededException
    message: string
    reason: string
    resourceType: string
    serviceCode: string
    quotaCode: string
    resourceId: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ServiceQuotaExceededException
    message: string
    reason: string
    resourceType: string
    serviceCode: string
    quotaCode: string
    resourceId: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ServiceQuotaExceededException
    message: string
    reason: string
    resourceType: string
    serviceCode: string
    quotaCode: string
    resourceId: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record ConflictException
    message: string
    reason: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ServiceQuotaExceededException
    message: string
    reason: string
    resourceType: string
    serviceCode: string
    quotaCode: string
    resourceId: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ServiceQuotaExceededException
    message: string
    reason: string
    resourceType: string
    serviceCode: string
    quotaCode: string
    resourceId: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ServiceQuotaExceededException
    message: string
    reason: string
    resourceType: string
    serviceCode: string
    quotaCode: string
    resourceId: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ServiceQuotaExceededException
    message: string
    reason: string
    resourceType: string
    serviceCode: string
    quotaCode: string
    resourceId: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ServiceQuotaExceededException
    message: string
    reason: string
    resourceType: string
    serviceCode: string
    quotaCode: string
    resourceId: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ServiceQuotaExceededException
    message: string
    reason: string
    resourceType: string
    serviceCode: string
    quotaCode: string
    resourceId: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record ConflictException
    message: string
    reason: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record ConflictException
    message: string
    reason: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record ConflictException
    message: string
    reason: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record ConflictException
    message: string
    reason: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record ConflictException
    message: string
    reason: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record ConflictException
    message: string
    reason: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record ConflictException
    message: string
    reason: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record ConflictException
    message: string
    reason: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record ConflictException
    message: string
    reason: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record ConflictException
    message: string
    reason: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record ConflictException
    message: string
    reason: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ServiceQuotaExceededException
    message: string
    reason: string
    resourceType: string
    serviceCode: string
    quotaCode: string
    resourceId: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record ConflictException
    message: string
    reason: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record ConflictException
    message: string
    reason: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record ConflictException
    message: string
    reason: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record ConflictException
    message: string
    reason: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record ConflictException
    message: string
    reason: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local record AccessDeniedException
    message: string
    context: {string : string}
end

local record ConflictException
    message: string
    reason: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record InternalServerErrorException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
    context: {string : string}
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
    context: {string : string}
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
    context: {string : string}
end

local type JobTemplateType = "JSON" | "YAML"

local type EnvironmentTemplateType = "JSON" | "YAML"

local type CreateJobTargetTaskRunStatus = "READY" | "SUSPENDED"

local type UpdateJobLifecycleStatus = "ARCHIVED"

local type AutoScalingStatus = "GROWING" | "STEADY" | "SHRINKING"

local type MembershipLevel = "VIEWER" | "CONTRIBUTOR" | "OWNER" | "MANAGER"

local type SessionsStatisticsAggregationStatus = "IN_PROGRESS" | "TIMEOUT" | "FAILED" | "COMPLETED"

local type BudgetStatus = "ACTIVE" | "INACTIVE"

local type QueueFleetAssociationStatus = "ACTIVE" | "STOP_SCHEDULING_AND_COMPLETE_TASKS" | "STOP_SCHEDULING_AND_CANCEL_TASKS" | "STOPPED"

local type WorkerStatus = "CREATED" | "STARTED" | "STOPPING" | "STOPPED" | "NOT_RESPONDING" | "NOT_COMPATIBLE" | "RUNNING" | "IDLE"

local type StepTargetTaskRunStatus = "READY" | "FAILED" | "SUCCEEDED" | "CANCELED" | "SUSPENDED" | "PENDING"

local type QueueLimitAssociationStatus = "ACTIVE" | "STOP_LIMIT_USAGE_AND_COMPLETE_TASKS" | "STOP_LIMIT_USAGE_AND_CANCEL_TASKS" | "STOPPED"

local type UpdateQueueFleetAssociationStatus = "ACTIVE" | "STOP_SCHEDULING_AND_COMPLETE_TASKS" | "STOP_SCHEDULING_AND_CANCEL_TASKS"

local type QueueStatus = "IDLE" | "SCHEDULING" | "SCHEDULING_BLOCKED"

local type SessionLifecycleStatus = "STARTED" | "UPDATE_IN_PROGRESS" | "UPDATE_SUCCEEDED" | "UPDATE_FAILED" | "ENDED"

local type UpdateQueueLimitAssociationStatus = "ACTIVE" | "STOP_LIMIT_USAGE_AND_COMPLETE_TASKS" | "STOP_LIMIT_USAGE_AND_CANCEL_TASKS"

local type FleetStatus = "ACTIVE" | "CREATE_IN_PROGRESS" | "UPDATE_IN_PROGRESS" | "CREATE_FAILED" | "UPDATE_FAILED" | "SUSPENDED"

local type StorageProfileOperatingSystemFamily = "WINDOWS" | "LINUX" | "MACOS"

local type JobTargetTaskRunStatus = "READY" | "FAILED" | "SUCCEEDED" | "CANCELED" | "SUSPENDED" | "PENDING"

local type SessionActionStatus = "ASSIGNED" | "RUNNING" | "CANCELING" | "SUCCEEDED" | "FAILED" | "INTERRUPTED" | "CANCELED" | "NEVER_ATTEMPTED" | "SCHEDULED" | "RECLAIMING" | "RECLAIMED"

local type JobLifecycleStatus = "CREATE_IN_PROGRESS" | "CREATE_FAILED" | "CREATE_COMPLETE" | "UPLOAD_IN_PROGRESS" | "UPLOAD_FAILED" | "UPDATE_IN_PROGRESS" | "UPDATE_FAILED" | "UPDATE_SUCCEEDED" | "ARCHIVED"

local type TaskTargetRunStatus = "READY" | "FAILED" | "SUCCEEDED" | "CANCELED" | "SUSPENDED" | "PENDING"

local type StepLifecycleStatus = "CREATE_COMPLETE" | "UPDATE_IN_PROGRESS" | "UPDATE_FAILED" | "UPDATE_SUCCEEDED"

local type Period = "HOURLY" | "DAILY" | "WEEKLY" | "MONTHLY"

local type QueueBlockedReason = "NO_BUDGET_CONFIGURED" | "BUDGET_THRESHOLD_REACHED"

local type SessionLifecycleTargetStatus = "ENDED"

local type DeadlinePrincipalType = "USER" | "GROUP"

local type TaskRunStatus = "PENDING" | "READY" | "ASSIGNED" | "STARTING" | "SCHEDULED" | "INTERRUPTING" | "RUNNING" | "SUSPENDED" | "CANCELED" | "FAILED" | "SUCCEEDED" | "NOT_COMPATIBLE"

local type UpdatedWorkerStatus = "STARTED" | "STOPPING" | "STOPPED"

local type DesiredWorkerStatus = "STOPPED"

local type DefaultQueueBudgetAction = "NONE" | "STOP_SCHEDULING_AND_COMPLETE_TASKS" | "STOP_SCHEDULING_AND_CANCEL_TASKS"

local type LicenseEndpointStatus = "CREATE_IN_PROGRESS" | "DELETE_IN_PROGRESS" | "READY" | "NOT_READY"

local record M
    AssociateMemberToFarmInput: AssociateMemberToFarmInput
    AssociateMemberToFarmOutput: AssociateMemberToFarmOutput
    AssociateMemberToFleetInput: AssociateMemberToFleetInput
    AssociateMemberToFleetOutput: AssociateMemberToFleetOutput
    AssociateMemberToJobInput: AssociateMemberToJobInput
    AssociateMemberToJobOutput: AssociateMemberToJobOutput
    AssociateMemberToQueueInput: AssociateMemberToQueueInput
    AssociateMemberToQueueOutput: AssociateMemberToQueueOutput
    AssumeFleetRoleForReadInput: AssumeFleetRoleForReadInput
    AssumeFleetRoleForReadOutput: AssumeFleetRoleForReadOutput
    AssumeFleetRoleForWorkerInput: AssumeFleetRoleForWorkerInput
    AssumeFleetRoleForWorkerOutput: AssumeFleetRoleForWorkerOutput
    AssumeQueueRoleForReadInput: AssumeQueueRoleForReadInput
    AssumeQueueRoleForReadOutput: AssumeQueueRoleForReadOutput
    AssumeQueueRoleForUserInput: AssumeQueueRoleForUserInput
    AssumeQueueRoleForUserOutput: AssumeQueueRoleForUserOutput
    AssumeQueueRoleForWorkerInput: AssumeQueueRoleForWorkerInput
    AssumeQueueRoleForWorkerOutput: AssumeQueueRoleForWorkerOutput
    BatchGetJobInput: BatchGetJobInput
    BatchGetJobOutput: BatchGetJobOutput
    BatchGetJobEntityInput: BatchGetJobEntityInput
    BatchGetJobEntityOutput: BatchGetJobEntityOutput
    BatchGetSessionInput: BatchGetSessionInput
    BatchGetSessionOutput: BatchGetSessionOutput
    BatchGetSessionActionInput: BatchGetSessionActionInput
    BatchGetSessionActionOutput: BatchGetSessionActionOutput
    BatchGetStepInput: BatchGetStepInput
    BatchGetStepOutput: BatchGetStepOutput
    BatchGetTaskInput: BatchGetTaskInput
    BatchGetTaskOutput: BatchGetTaskOutput
    BatchGetWorkerInput: BatchGetWorkerInput
    BatchGetWorkerOutput: BatchGetWorkerOutput
    BatchUpdateJobInput: BatchUpdateJobInput
    BatchUpdateJobOutput: BatchUpdateJobOutput
    BatchUpdateTaskInput: BatchUpdateTaskInput
    BatchUpdateTaskOutput: BatchUpdateTaskOutput
    CopyJobTemplateInput: CopyJobTemplateInput
    CopyJobTemplateOutput: CopyJobTemplateOutput
    CreateBudgetInput: CreateBudgetInput
    CreateBudgetOutput: CreateBudgetOutput
    CreateFarmInput: CreateFarmInput
    CreateFarmOutput: CreateFarmOutput
    CreateFleetInput: CreateFleetInput
    CreateFleetOutput: CreateFleetOutput
    CreateJobInput: CreateJobInput
    CreateJobOutput: CreateJobOutput
    CreateLicenseEndpointInput: CreateLicenseEndpointInput
    CreateLicenseEndpointOutput: CreateLicenseEndpointOutput
    CreateLimitInput: CreateLimitInput
    CreateLimitOutput: CreateLimitOutput
    CreateMonitorInput: CreateMonitorInput
    CreateMonitorOutput: CreateMonitorOutput
    CreateQueueInput: CreateQueueInput
    CreateQueueOutput: CreateQueueOutput
    CreateQueueEnvironmentInput: CreateQueueEnvironmentInput
    CreateQueueEnvironmentOutput: CreateQueueEnvironmentOutput
    CreateQueueFleetAssociationInput: CreateQueueFleetAssociationInput
    CreateQueueFleetAssociationOutput: CreateQueueFleetAssociationOutput
    CreateQueueLimitAssociationInput: CreateQueueLimitAssociationInput
    CreateQueueLimitAssociationOutput: CreateQueueLimitAssociationOutput
    CreateStorageProfileInput: CreateStorageProfileInput
    CreateStorageProfileOutput: CreateStorageProfileOutput
    CreateWorkerInput: CreateWorkerInput
    CreateWorkerOutput: CreateWorkerOutput
    DeleteBudgetInput: DeleteBudgetInput
    DeleteBudgetOutput: DeleteBudgetOutput
    DeleteFarmInput: DeleteFarmInput
    DeleteFarmOutput: DeleteFarmOutput
    DeleteFleetInput: DeleteFleetInput
    DeleteFleetOutput: DeleteFleetOutput
    DeleteLicenseEndpointInput: DeleteLicenseEndpointInput
    DeleteLicenseEndpointOutput: DeleteLicenseEndpointOutput
    DeleteLimitInput: DeleteLimitInput
    DeleteLimitOutput: DeleteLimitOutput
    DeleteMeteredProductInput: DeleteMeteredProductInput
    DeleteMeteredProductOutput: DeleteMeteredProductOutput
    DeleteMonitorInput: DeleteMonitorInput
    DeleteMonitorOutput: DeleteMonitorOutput
    DeleteQueueInput: DeleteQueueInput
    DeleteQueueOutput: DeleteQueueOutput
    DeleteQueueEnvironmentInput: DeleteQueueEnvironmentInput
    DeleteQueueEnvironmentOutput: DeleteQueueEnvironmentOutput
    DeleteQueueFleetAssociationInput: DeleteQueueFleetAssociationInput
    DeleteQueueFleetAssociationOutput: DeleteQueueFleetAssociationOutput
    DeleteQueueLimitAssociationInput: DeleteQueueLimitAssociationInput
    DeleteQueueLimitAssociationOutput: DeleteQueueLimitAssociationOutput
    DeleteStorageProfileInput: DeleteStorageProfileInput
    DeleteStorageProfileOutput: DeleteStorageProfileOutput
    DeleteWorkerInput: DeleteWorkerInput
    DeleteWorkerOutput: DeleteWorkerOutput
    DisassociateMemberFromFarmInput: DisassociateMemberFromFarmInput
    DisassociateMemberFromFarmOutput: DisassociateMemberFromFarmOutput
    DisassociateMemberFromFleetInput: DisassociateMemberFromFleetInput
    DisassociateMemberFromFleetOutput: DisassociateMemberFromFleetOutput
    DisassociateMemberFromJobInput: DisassociateMemberFromJobInput
    DisassociateMemberFromJobOutput: DisassociateMemberFromJobOutput
    DisassociateMemberFromQueueInput: DisassociateMemberFromQueueInput
    DisassociateMemberFromQueueOutput: DisassociateMemberFromQueueOutput
    GetBudgetInput: GetBudgetInput
    GetBudgetOutput: GetBudgetOutput
    GetFarmInput: GetFarmInput
    GetFarmOutput: GetFarmOutput
    GetFleetInput: GetFleetInput
    GetFleetOutput: GetFleetOutput
    GetJobInput: GetJobInput
    GetJobOutput: GetJobOutput
    GetLicenseEndpointInput: GetLicenseEndpointInput
    GetLicenseEndpointOutput: GetLicenseEndpointOutput
    GetLimitInput: GetLimitInput
    GetLimitOutput: GetLimitOutput
    GetMonitorInput: GetMonitorInput
    GetMonitorOutput: GetMonitorOutput
    GetMonitorSettingsInput: GetMonitorSettingsInput
    GetMonitorSettingsOutput: GetMonitorSettingsOutput
    GetQueueInput: GetQueueInput
    GetQueueOutput: GetQueueOutput
    GetQueueEnvironmentInput: GetQueueEnvironmentInput
    GetQueueEnvironmentOutput: GetQueueEnvironmentOutput
    GetQueueFleetAssociationInput: GetQueueFleetAssociationInput
    GetQueueFleetAssociationOutput: GetQueueFleetAssociationOutput
    GetQueueLimitAssociationInput: GetQueueLimitAssociationInput
    GetQueueLimitAssociationOutput: GetQueueLimitAssociationOutput
    GetSessionInput: GetSessionInput
    GetSessionOutput: GetSessionOutput
    GetSessionActionInput: GetSessionActionInput
    GetSessionActionOutput: GetSessionActionOutput
    GetSessionsStatisticsAggregationInput: GetSessionsStatisticsAggregationInput
    GetSessionsStatisticsAggregationOutput: GetSessionsStatisticsAggregationOutput
    GetStepInput: GetStepInput
    GetStepOutput: GetStepOutput
    GetStorageProfileInput: GetStorageProfileInput
    GetStorageProfileOutput: GetStorageProfileOutput
    GetStorageProfileForQueueInput: GetStorageProfileForQueueInput
    GetStorageProfileForQueueOutput: GetStorageProfileForQueueOutput
    GetTaskInput: GetTaskInput
    GetTaskOutput: GetTaskOutput
    GetWorkerInput: GetWorkerInput
    GetWorkerOutput: GetWorkerOutput
    ListAvailableMeteredProductsInput: ListAvailableMeteredProductsInput
    ListAvailableMeteredProductsOutput: ListAvailableMeteredProductsOutput
    ListBudgetsInput: ListBudgetsInput
    ListBudgetsOutput: ListBudgetsOutput
    ListFarmMembersInput: ListFarmMembersInput
    ListFarmMembersOutput: ListFarmMembersOutput
    ListFarmsInput: ListFarmsInput
    ListFarmsOutput: ListFarmsOutput
    ListFleetMembersInput: ListFleetMembersInput
    ListFleetMembersOutput: ListFleetMembersOutput
    ListFleetsInput: ListFleetsInput
    ListFleetsOutput: ListFleetsOutput
    ListJobMembersInput: ListJobMembersInput
    ListJobMembersOutput: ListJobMembersOutput
    ListJobParameterDefinitionsInput: ListJobParameterDefinitionsInput
    ListJobParameterDefinitionsOutput: ListJobParameterDefinitionsOutput
    ListJobsInput: ListJobsInput
    ListJobsOutput: ListJobsOutput
    ListLicenseEndpointsInput: ListLicenseEndpointsInput
    ListLicenseEndpointsOutput: ListLicenseEndpointsOutput
    ListLimitsInput: ListLimitsInput
    ListLimitsOutput: ListLimitsOutput
    ListMeteredProductsInput: ListMeteredProductsInput
    ListMeteredProductsOutput: ListMeteredProductsOutput
    ListMonitorsInput: ListMonitorsInput
    ListMonitorsOutput: ListMonitorsOutput
    ListQueueEnvironmentsInput: ListQueueEnvironmentsInput
    ListQueueEnvironmentsOutput: ListQueueEnvironmentsOutput
    ListQueueFleetAssociationsInput: ListQueueFleetAssociationsInput
    ListQueueFleetAssociationsOutput: ListQueueFleetAssociationsOutput
    ListQueueLimitAssociationsInput: ListQueueLimitAssociationsInput
    ListQueueLimitAssociationsOutput: ListQueueLimitAssociationsOutput
    ListQueueMembersInput: ListQueueMembersInput
    ListQueueMembersOutput: ListQueueMembersOutput
    ListQueuesInput: ListQueuesInput
    ListQueuesOutput: ListQueuesOutput
    ListSessionActionsInput: ListSessionActionsInput
    ListSessionActionsOutput: ListSessionActionsOutput
    ListSessionsInput: ListSessionsInput
    ListSessionsOutput: ListSessionsOutput
    ListSessionsForWorkerInput: ListSessionsForWorkerInput
    ListSessionsForWorkerOutput: ListSessionsForWorkerOutput
    ListStepConsumersInput: ListStepConsumersInput
    ListStepConsumersOutput: ListStepConsumersOutput
    ListStepDependenciesInput: ListStepDependenciesInput
    ListStepDependenciesOutput: ListStepDependenciesOutput
    ListStepsInput: ListStepsInput
    ListStepsOutput: ListStepsOutput
    ListStorageProfilesInput: ListStorageProfilesInput
    ListStorageProfilesOutput: ListStorageProfilesOutput
    ListStorageProfilesForQueueInput: ListStorageProfilesForQueueInput
    ListStorageProfilesForQueueOutput: ListStorageProfilesForQueueOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTasksInput: ListTasksInput
    ListTasksOutput: ListTasksOutput
    ListWorkersInput: ListWorkersInput
    ListWorkersOutput: ListWorkersOutput
    PutMeteredProductInput: PutMeteredProductInput
    PutMeteredProductOutput: PutMeteredProductOutput
    SearchJobsInput: SearchJobsInput
    SearchJobsOutput: SearchJobsOutput
    SearchStepsInput: SearchStepsInput
    SearchStepsOutput: SearchStepsOutput
    SearchTasksInput: SearchTasksInput
    SearchTasksOutput: SearchTasksOutput
    SearchWorkersInput: SearchWorkersInput
    SearchWorkersOutput: SearchWorkersOutput
    StartSessionsStatisticsAggregationInput: StartSessionsStatisticsAggregationInput
    StartSessionsStatisticsAggregationOutput: StartSessionsStatisticsAggregationOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateBudgetInput: UpdateBudgetInput
    UpdateBudgetOutput: UpdateBudgetOutput
    UpdateFarmInput: UpdateFarmInput
    UpdateFarmOutput: UpdateFarmOutput
    UpdateFleetInput: UpdateFleetInput
    UpdateFleetOutput: UpdateFleetOutput
    UpdateJobInput: UpdateJobInput
    UpdateJobOutput: UpdateJobOutput
    UpdateLimitInput: UpdateLimitInput
    UpdateLimitOutput: UpdateLimitOutput
    UpdateMonitorInput: UpdateMonitorInput
    UpdateMonitorOutput: UpdateMonitorOutput
    UpdateMonitorSettingsInput: UpdateMonitorSettingsInput
    UpdateMonitorSettingsOutput: UpdateMonitorSettingsOutput
    UpdateQueueInput: UpdateQueueInput
    UpdateQueueOutput: UpdateQueueOutput
    UpdateQueueEnvironmentInput: UpdateQueueEnvironmentInput
    UpdateQueueEnvironmentOutput: UpdateQueueEnvironmentOutput
    UpdateQueueFleetAssociationInput: UpdateQueueFleetAssociationInput
    UpdateQueueFleetAssociationOutput: UpdateQueueFleetAssociationOutput
    UpdateQueueLimitAssociationInput: UpdateQueueLimitAssociationInput
    UpdateQueueLimitAssociationOutput: UpdateQueueLimitAssociationOutput
    UpdateSessionInput: UpdateSessionInput
    UpdateSessionOutput: UpdateSessionOutput
    UpdateStepInput: UpdateStepInput
    UpdateStepOutput: UpdateStepOutput
    UpdateStorageProfileInput: UpdateStorageProfileInput
    UpdateStorageProfileOutput: UpdateStorageProfileOutput
    UpdateTaskInput: UpdateTaskInput
    UpdateTaskOutput: UpdateTaskOutput
    UpdateWorkerInput: UpdateWorkerInput
    UpdateWorkerOutput: UpdateWorkerOutput
    UpdateWorkerScheduleInput: UpdateWorkerScheduleInput
    UpdateWorkerScheduleOutput: UpdateWorkerScheduleOutput
end

return M
