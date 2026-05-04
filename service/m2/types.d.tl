local record CancelBatchJobExecutionInput
    applicationId: string
    executionId: string
    authSecretsManagerArn: string
end

local record CancelBatchJobExecutionOutput
end

local record CreateApplicationInput
    name: string
    description: string
    engineType: string
    definition: Definition
    tags: {string : string}
    clientToken: string
    kmsKeyId: string
    roleArn: string
end

local record CreateApplicationOutput
    applicationArn: string
    applicationId: string
    applicationVersion: number
end

local record CreateDataSetExportTaskInput
    applicationId: string
    exportConfig: DataSetExportConfig
    clientToken: string
    kmsKeyId: string
end

local record CreateDataSetExportTaskOutput
    taskId: string
end

local record CreateDataSetImportTaskInput
    applicationId: string
    importConfig: DataSetImportConfig
    clientToken: string
end

local record CreateDataSetImportTaskOutput
    taskId: string
end

local record CreateDeploymentInput
    environmentId: string
    applicationId: string
    applicationVersion: number
    clientToken: string
end

local record CreateDeploymentOutput
    deploymentId: string
end

local record CreateEnvironmentInput
    name: string
    instanceType: string
    description: string
    engineType: string
    engineVersion: string
    subnetIds: {string}
    securityGroupIds: {string}
    storageConfigurations: {StorageConfiguration}
    publiclyAccessible: boolean
    highAvailabilityConfig: HighAvailabilityConfig
    tags: {string : string}
    preferredMaintenanceWindow: string
    networkType: string
    clientToken: string
    kmsKeyId: string
end

local record CreateEnvironmentOutput
    environmentId: string
end

local record DeleteApplicationInput
    applicationId: string
end

local record DeleteApplicationOutput
end

local record DeleteApplicationFromEnvironmentInput
    applicationId: string
    environmentId: string
end

local record DeleteApplicationFromEnvironmentOutput
end

local record DeleteEnvironmentInput
    environmentId: string
end

local record DeleteEnvironmentOutput
end

local record GetApplicationInput
    applicationId: string
end

local record GetApplicationOutput
    name: string
    description: string
    applicationId: string
    applicationArn: string
    status: string
    latestVersion: ApplicationVersionSummary
    deployedVersion: DeployedVersionSummary
    engineType: string
    logGroups: {LogGroupSummary}
    creationTime: number
    lastStartTime: number
    tags: {string : string}
    environmentId: string
    targetGroupArns: {string}
    listenerArns: {string}
    listenerPorts: {number}
    loadBalancerDnsName: string
    statusReason: string
    kmsKeyId: string
    roleArn: string
end

local record GetApplicationVersionInput
    applicationId: string
    applicationVersion: number
end

local record GetApplicationVersionOutput
    name: string
    applicationVersion: number
    description: string
    definitionContent: string
    status: string
    creationTime: number
    statusReason: string
end

local record GetBatchJobExecutionInput
    applicationId: string
    executionId: string
end

local record GetBatchJobExecutionOutput
    executionId: string
    applicationId: string
    jobId: string
    jobName: string
    jobUser: string
    jobType: string
    status: string
    startTime: number
    endTime: number
    statusReason: string
    returnCode: string
    batchJobIdentifier: BatchJobIdentifier
    jobStepRestartMarker: JobStepRestartMarker
end

local record GetDataSetDetailsInput
    applicationId: string
    dataSetName: string
end

local record GetDataSetDetailsOutput
    dataSetName: string
    dataSetOrg: DatasetDetailOrgAttributes
    recordLength: number
    location: string
    blocksize: number
    creationTime: number
    lastUpdatedTime: number
    lastReferencedTime: number
    fileSize: number
end

local record GetDataSetExportTaskInput
    applicationId: string
    taskId: string
end

local record GetDataSetExportTaskOutput
    taskId: string
    status: string
    summary: DataSetExportSummary
    statusReason: string
    kmsKeyArn: string
end

local record GetDataSetImportTaskInput
    applicationId: string
    taskId: string
end

local record GetDataSetImportTaskOutput
    taskId: string
    status: string
    summary: DataSetImportSummary
end

local record GetDeploymentInput
    deploymentId: string
    applicationId: string
end

local record GetDeploymentOutput
    deploymentId: string
    applicationId: string
    environmentId: string
    applicationVersion: number
    status: string
    creationTime: number
    statusReason: string
end

local record GetEnvironmentInput
    environmentId: string
end

local record GetEnvironmentOutput
    name: string
    description: string
    environmentArn: string
    environmentId: string
    instanceType: string
    status: string
    engineType: string
    engineVersion: string
    vpcId: string
    subnetIds: {string}
    securityGroupIds: {string}
    creationTime: number
    storageConfigurations: {StorageConfiguration}
    tags: {string : string}
    highAvailabilityConfig: HighAvailabilityConfig
    publiclyAccessible: boolean
    actualCapacity: number
    loadBalancerArn: string
    statusReason: string
    preferredMaintenanceWindow: string
    pendingMaintenance: PendingMaintenance
    kmsKeyId: string
    networkType: string
end

local record GetSignedBluinsightsUrlInput
end

local record GetSignedBluinsightsUrlOutput
    signedBiUrl: string
end

local record ListApplicationsInput
    nextToken: string
    maxResults: number
    names: {string}
    environmentId: string
end

local record ListApplicationsOutput
    applications: {ApplicationSummary}
    nextToken: string
end

local record ListApplicationVersionsInput
    nextToken: string
    maxResults: number
    applicationId: string
end

local record ListApplicationVersionsOutput
    applicationVersions: {ApplicationVersionSummary}
    nextToken: string
end

local record ListBatchJobDefinitionsInput
    nextToken: string
    maxResults: number
    applicationId: string
    prefix: string
end

local record ListBatchJobDefinitionsOutput
    batchJobDefinitions: {BatchJobDefinition}
    nextToken: string
end

local record ListBatchJobExecutionsInput
    nextToken: string
    maxResults: number
    applicationId: string
    executionIds: {string}
    jobName: string
    status: string
    startedAfter: number
    startedBefore: number
end

local record ListBatchJobExecutionsOutput
    batchJobExecutions: {BatchJobExecutionSummary}
    nextToken: string
end

local record ListBatchJobRestartPointsInput
    applicationId: string
    executionId: string
    authSecretsManagerArn: string
end

local record ListBatchJobRestartPointsOutput
    batchJobSteps: {JobStep}
end

local record ListDataSetExportHistoryInput
    nextToken: string
    maxResults: number
    applicationId: string
end

local record ListDataSetExportHistoryOutput
    dataSetExportTasks: {DataSetExportTask}
    nextToken: string
end

local record ListDataSetImportHistoryInput
    nextToken: string
    maxResults: number
    applicationId: string
end

local record ListDataSetImportHistoryOutput
    dataSetImportTasks: {DataSetImportTask}
    nextToken: string
end

local record ListDataSetsInput
    applicationId: string
    nextToken: string
    maxResults: number
    prefix: string
    nameFilter: string
end

local record ListDataSetsOutput
    dataSets: {DataSetSummary}
    nextToken: string
end

local record ListDeploymentsInput
    nextToken: string
    maxResults: number
    applicationId: string
end

local record ListDeploymentsOutput
    deployments: {DeploymentSummary}
    nextToken: string
end

local record ListEngineVersionsInput
    engineType: string
    nextToken: string
    maxResults: number
end

local record ListEngineVersionsOutput
    engineVersions: {EngineVersionsSummary}
    nextToken: string
end

local record ListEnvironmentsInput
    nextToken: string
    maxResults: number
    names: {string}
    engineType: string
end

local record ListEnvironmentsOutput
    environments: {EnvironmentSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record StartApplicationInput
    applicationId: string
end

local record StartApplicationOutput
end

local record StartBatchJobInput
    applicationId: string
    batchJobIdentifier: BatchJobIdentifier
    jobParams: {string : string}
    authSecretsManagerArn: string
end

local record StartBatchJobOutput
    executionId: string
end

local record StopApplicationInput
    applicationId: string
    forceStop: boolean
end

local record StopApplicationOutput
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

local record UpdateApplicationInput
    applicationId: string
    description: string
    currentApplicationVersion: number
    definition: Definition
end

local record UpdateApplicationOutput
    applicationVersion: number
end

local record UpdateEnvironmentInput
    environmentId: string
    desiredCapacity: number
    instanceType: string
    engineVersion: string
    preferredMaintenanceWindow: string
    applyDuringMaintenanceWindow: boolean
    forceUpdate: boolean
end

local record UpdateEnvironmentOutput
    environmentId: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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
    retryAfterSeconds: number
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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
    retryAfterSeconds: number
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record ExecutionTimeoutException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record ExecutionTimeoutException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record M
    CancelBatchJobExecutionInput: CancelBatchJobExecutionInput
    CancelBatchJobExecutionOutput: CancelBatchJobExecutionOutput
    CreateApplicationInput: CreateApplicationInput
    CreateApplicationOutput: CreateApplicationOutput
    CreateDataSetExportTaskInput: CreateDataSetExportTaskInput
    CreateDataSetExportTaskOutput: CreateDataSetExportTaskOutput
    CreateDataSetImportTaskInput: CreateDataSetImportTaskInput
    CreateDataSetImportTaskOutput: CreateDataSetImportTaskOutput
    CreateDeploymentInput: CreateDeploymentInput
    CreateDeploymentOutput: CreateDeploymentOutput
    CreateEnvironmentInput: CreateEnvironmentInput
    CreateEnvironmentOutput: CreateEnvironmentOutput
    DeleteApplicationInput: DeleteApplicationInput
    DeleteApplicationOutput: DeleteApplicationOutput
    DeleteApplicationFromEnvironmentInput: DeleteApplicationFromEnvironmentInput
    DeleteApplicationFromEnvironmentOutput: DeleteApplicationFromEnvironmentOutput
    DeleteEnvironmentInput: DeleteEnvironmentInput
    DeleteEnvironmentOutput: DeleteEnvironmentOutput
    GetApplicationInput: GetApplicationInput
    GetApplicationOutput: GetApplicationOutput
    GetApplicationVersionInput: GetApplicationVersionInput
    GetApplicationVersionOutput: GetApplicationVersionOutput
    GetBatchJobExecutionInput: GetBatchJobExecutionInput
    GetBatchJobExecutionOutput: GetBatchJobExecutionOutput
    GetDataSetDetailsInput: GetDataSetDetailsInput
    GetDataSetDetailsOutput: GetDataSetDetailsOutput
    GetDataSetExportTaskInput: GetDataSetExportTaskInput
    GetDataSetExportTaskOutput: GetDataSetExportTaskOutput
    GetDataSetImportTaskInput: GetDataSetImportTaskInput
    GetDataSetImportTaskOutput: GetDataSetImportTaskOutput
    GetDeploymentInput: GetDeploymentInput
    GetDeploymentOutput: GetDeploymentOutput
    GetEnvironmentInput: GetEnvironmentInput
    GetEnvironmentOutput: GetEnvironmentOutput
    GetSignedBluinsightsUrlInput: GetSignedBluinsightsUrlInput
    GetSignedBluinsightsUrlOutput: GetSignedBluinsightsUrlOutput
    ListApplicationsInput: ListApplicationsInput
    ListApplicationsOutput: ListApplicationsOutput
    ListApplicationVersionsInput: ListApplicationVersionsInput
    ListApplicationVersionsOutput: ListApplicationVersionsOutput
    ListBatchJobDefinitionsInput: ListBatchJobDefinitionsInput
    ListBatchJobDefinitionsOutput: ListBatchJobDefinitionsOutput
    ListBatchJobExecutionsInput: ListBatchJobExecutionsInput
    ListBatchJobExecutionsOutput: ListBatchJobExecutionsOutput
    ListBatchJobRestartPointsInput: ListBatchJobRestartPointsInput
    ListBatchJobRestartPointsOutput: ListBatchJobRestartPointsOutput
    ListDataSetExportHistoryInput: ListDataSetExportHistoryInput
    ListDataSetExportHistoryOutput: ListDataSetExportHistoryOutput
    ListDataSetImportHistoryInput: ListDataSetImportHistoryInput
    ListDataSetImportHistoryOutput: ListDataSetImportHistoryOutput
    ListDataSetsInput: ListDataSetsInput
    ListDataSetsOutput: ListDataSetsOutput
    ListDeploymentsInput: ListDeploymentsInput
    ListDeploymentsOutput: ListDeploymentsOutput
    ListEngineVersionsInput: ListEngineVersionsInput
    ListEngineVersionsOutput: ListEngineVersionsOutput
    ListEnvironmentsInput: ListEnvironmentsInput
    ListEnvironmentsOutput: ListEnvironmentsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    StartApplicationInput: StartApplicationInput
    StartApplicationOutput: StartApplicationOutput
    StartBatchJobInput: StartBatchJobInput
    StartBatchJobOutput: StartBatchJobOutput
    StopApplicationInput: StopApplicationInput
    StopApplicationOutput: StopApplicationOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateApplicationInput: UpdateApplicationInput
    UpdateApplicationOutput: UpdateApplicationOutput
    UpdateEnvironmentInput: UpdateEnvironmentInput
    UpdateEnvironmentOutput: UpdateEnvironmentOutput
end

return M
