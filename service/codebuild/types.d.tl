local record BatchDeleteBuildsInput
    ids: {string}
end

local record BatchDeleteBuildsOutput
    buildsDeleted: {string}
    buildsNotDeleted: {BuildNotDeleted}
end

local record BatchGetBuildBatchesInput
    ids: {string}
end

local record BatchGetBuildBatchesOutput
    buildBatches: {BuildBatch}
    buildBatchesNotFound: {string}
end

local record BatchGetBuildsInput
    ids: {string}
end

local record BatchGetBuildsOutput
    builds: {Build}
    buildsNotFound: {string}
end

local record BatchGetCommandExecutionsInput
    sandboxId: string
    commandExecutionIds: {string}
end

local record BatchGetCommandExecutionsOutput
    commandExecutions: {CommandExecution}
    commandExecutionsNotFound: {string}
end

local record BatchGetFleetsInput
    names: {string}
end

local record BatchGetFleetsOutput
    fleets: {Fleet}
    fleetsNotFound: {string}
end

local record BatchGetProjectsInput
    names: {string}
end

local record BatchGetProjectsOutput
    projects: {Project}
    projectsNotFound: {string}
end

local record BatchGetReportGroupsInput
    reportGroupArns: {string}
end

local record BatchGetReportGroupsOutput
    reportGroups: {ReportGroup}
    reportGroupsNotFound: {string}
end

local record BatchGetReportsInput
    reportArns: {string}
end

local record BatchGetReportsOutput
    reports: {Report}
    reportsNotFound: {string}
end

local record BatchGetSandboxesInput
    ids: {string}
end

local record BatchGetSandboxesOutput
    sandboxes: {Sandbox}
    sandboxesNotFound: {string}
end

local record CreateFleetInput
    name: string
    baseCapacity: number
    environmentType: string
    computeType: string
    computeConfiguration: ComputeConfiguration
    scalingConfiguration: ScalingConfigurationInput
    overflowBehavior: string
    vpcConfig: VpcConfig
    proxyConfiguration: ProxyConfiguration
    imageId: string
    fleetServiceRole: string
    tags: {Tag}
end

local record CreateFleetOutput
    fleet: Fleet
end

local record CreateProjectInput
    name: string
    description: string
    source: ProjectSource
    secondarySources: {ProjectSource}
    sourceVersion: string
    secondarySourceVersions: {ProjectSourceVersion}
    artifacts: ProjectArtifacts
    secondaryArtifacts: {ProjectArtifacts}
    cache: ProjectCache
    environment: ProjectEnvironment
    serviceRole: string
    timeoutInMinutes: number
    queuedTimeoutInMinutes: number
    encryptionKey: string
    tags: {Tag}
    vpcConfig: VpcConfig
    badgeEnabled: boolean
    logsConfig: LogsConfig
    fileSystemLocations: {ProjectFileSystemLocation}
    buildBatchConfig: ProjectBuildBatchConfig
    concurrentBuildLimit: number
    autoRetryLimit: number
end

local record CreateProjectOutput
    project: Project
end

local record CreateReportGroupInput
    name: string
    type: string
    exportConfig: ReportExportConfig
    tags: {Tag}
end

local record CreateReportGroupOutput
    reportGroup: ReportGroup
end

local record CreateWebhookInput
    projectName: string
    branchFilter: string
    filterGroups: {{WebhookFilter}}
    buildType: string
    manualCreation: boolean
    scopeConfiguration: ScopeConfiguration
    pullRequestBuildPolicy: PullRequestBuildPolicy
end

local record CreateWebhookOutput
    webhook: Webhook
end

local record DeleteBuildBatchInput
    id: string
end

local record DeleteBuildBatchOutput
    statusCode: string
    buildsDeleted: {string}
    buildsNotDeleted: {BuildNotDeleted}
end

local record DeleteFleetInput
    arn: string
end

local record DeleteFleetOutput
end

local record DeleteProjectInput
    name: string
end

local record DeleteProjectOutput
end

local record DeleteReportInput
    arn: string
end

local record DeleteReportOutput
end

local record DeleteReportGroupInput
    arn: string
    deleteReports: boolean
end

local record DeleteReportGroupOutput
end

local record DeleteResourcePolicyInput
    resourceArn: string
end

local record DeleteResourcePolicyOutput
end

local record DeleteSourceCredentialsInput
    arn: string
end

local record DeleteSourceCredentialsOutput
    arn: string
end

local record DeleteWebhookInput
    projectName: string
end

local record DeleteWebhookOutput
end

local record DescribeCodeCoveragesInput
    reportArn: string
    nextToken: string
    maxResults: number
    sortOrder: string
    sortBy: string
    minLineCoveragePercentage: number
    maxLineCoveragePercentage: number
end

local record DescribeCodeCoveragesOutput
    nextToken: string
    codeCoverages: {CodeCoverage}
end

local record DescribeTestCasesInput
    reportArn: string
    nextToken: string
    maxResults: number
    filter: TestCaseFilter
end

local record DescribeTestCasesOutput
    nextToken: string
    testCases: {TestCase}
end

local record GetReportGroupTrendInput
    reportGroupArn: string
    numOfReports: number
    trendField: string
end

local record GetReportGroupTrendOutput
    stats: ReportGroupTrendStats
    rawData: {ReportWithRawData}
end

local record GetResourcePolicyInput
    resourceArn: string
end

local record GetResourcePolicyOutput
    policy: string
end

local record ImportSourceCredentialsInput
    username: string
    token: string
    serverType: string
    authType: string
    shouldOverwrite: boolean
end

local record ImportSourceCredentialsOutput
    arn: string
end

local record InvalidateProjectCacheInput
    projectName: string
end

local record InvalidateProjectCacheOutput
end

local record ListBuildBatchesInput
    filter: BuildBatchFilter
    maxResults: number
    sortOrder: string
    nextToken: string
end

local record ListBuildBatchesOutput
    ids: {string}
    nextToken: string
end

local record ListBuildBatchesForProjectInput
    projectName: string
    filter: BuildBatchFilter
    maxResults: number
    sortOrder: string
    nextToken: string
end

local record ListBuildBatchesForProjectOutput
    ids: {string}
    nextToken: string
end

local record ListBuildsInput
    sortOrder: string
    nextToken: string
end

local record ListBuildsOutput
    ids: {string}
    nextToken: string
end

local record ListBuildsForProjectInput
    projectName: string
    sortOrder: string
    nextToken: string
end

local record ListBuildsForProjectOutput
    ids: {string}
    nextToken: string
end

local record ListCommandExecutionsForSandboxInput
    sandboxId: string
    maxResults: number
    sortOrder: string
    nextToken: string
end

local record ListCommandExecutionsForSandboxOutput
    commandExecutions: {CommandExecution}
    nextToken: string
end

local record ListCuratedEnvironmentImagesInput
end

local record ListCuratedEnvironmentImagesOutput
    platforms: {EnvironmentPlatform}
end

local record ListFleetsInput
    nextToken: string
    maxResults: number
    sortOrder: string
    sortBy: string
end

local record ListFleetsOutput
    nextToken: string
    fleets: {string}
end

local record ListProjectsInput
    sortBy: string
    sortOrder: string
    nextToken: string
end

local record ListProjectsOutput
    nextToken: string
    projects: {string}
end

local record ListReportGroupsInput
    sortOrder: string
    sortBy: string
    nextToken: string
    maxResults: number
end

local record ListReportGroupsOutput
    nextToken: string
    reportGroups: {string}
end

local record ListReportsInput
    sortOrder: string
    nextToken: string
    maxResults: number
    filter: ReportFilter
end

local record ListReportsOutput
    nextToken: string
    reports: {string}
end

local record ListReportsForReportGroupInput
    reportGroupArn: string
    nextToken: string
    sortOrder: string
    maxResults: number
    filter: ReportFilter
end

local record ListReportsForReportGroupOutput
    nextToken: string
    reports: {string}
end

local record ListSandboxesInput
    maxResults: number
    sortOrder: string
    nextToken: string
end

local record ListSandboxesOutput
    ids: {string}
    nextToken: string
end

local record ListSandboxesForProjectInput
    projectName: string
    maxResults: number
    sortOrder: string
    nextToken: string
end

local record ListSandboxesForProjectOutput
    ids: {string}
    nextToken: string
end

local record ListSharedProjectsInput
    sortBy: string
    sortOrder: string
    maxResults: number
    nextToken: string
end

local record ListSharedProjectsOutput
    nextToken: string
    projects: {string}
end

local record ListSharedReportGroupsInput
    sortOrder: string
    sortBy: string
    nextToken: string
    maxResults: number
end

local record ListSharedReportGroupsOutput
    nextToken: string
    reportGroups: {string}
end

local record ListSourceCredentialsInput
end

local record ListSourceCredentialsOutput
    sourceCredentialsInfos: {SourceCredentialsInfo}
end

local record PutResourcePolicyInput
    policy: string
    resourceArn: string
end

local record PutResourcePolicyOutput
    resourceArn: string
end

local record RetryBuildInput
    id: string
    idempotencyToken: string
end

local record RetryBuildOutput
    build: Build
end

local record RetryBuildBatchInput
    id: string
    idempotencyToken: string
    retryType: string
end

local record RetryBuildBatchOutput
    buildBatch: BuildBatch
end

local record StartBuildInput
    projectName: string
    secondarySourcesOverride: {ProjectSource}
    secondarySourcesVersionOverride: {ProjectSourceVersion}
    sourceVersion: string
    artifactsOverride: ProjectArtifacts
    secondaryArtifactsOverride: {ProjectArtifacts}
    environmentVariablesOverride: {EnvironmentVariable}
    sourceTypeOverride: string
    sourceLocationOverride: string
    sourceAuthOverride: SourceAuth
    gitCloneDepthOverride: number
    gitSubmodulesConfigOverride: GitSubmodulesConfig
    buildspecOverride: string
    insecureSslOverride: boolean
    reportBuildStatusOverride: boolean
    buildStatusConfigOverride: BuildStatusConfig
    environmentTypeOverride: string
    imageOverride: string
    computeTypeOverride: string
    certificateOverride: string
    cacheOverride: ProjectCache
    serviceRoleOverride: string
    privilegedModeOverride: boolean
    timeoutInMinutesOverride: number
    queuedTimeoutInMinutesOverride: number
    encryptionKeyOverride: string
    idempotencyToken: string
    logsConfigOverride: LogsConfig
    registryCredentialOverride: RegistryCredential
    imagePullCredentialsTypeOverride: string
    debugSessionEnabled: boolean
    fleetOverride: ProjectFleet
    autoRetryLimitOverride: number
end

local record StartBuildOutput
    build: Build
end

local record StartBuildBatchInput
    projectName: string
    secondarySourcesOverride: {ProjectSource}
    secondarySourcesVersionOverride: {ProjectSourceVersion}
    sourceVersion: string
    artifactsOverride: ProjectArtifacts
    secondaryArtifactsOverride: {ProjectArtifacts}
    environmentVariablesOverride: {EnvironmentVariable}
    sourceTypeOverride: string
    sourceLocationOverride: string
    sourceAuthOverride: SourceAuth
    gitCloneDepthOverride: number
    gitSubmodulesConfigOverride: GitSubmodulesConfig
    buildspecOverride: string
    insecureSslOverride: boolean
    reportBuildBatchStatusOverride: boolean
    environmentTypeOverride: string
    imageOverride: string
    computeTypeOverride: string
    certificateOverride: string
    cacheOverride: ProjectCache
    serviceRoleOverride: string
    privilegedModeOverride: boolean
    buildTimeoutInMinutesOverride: number
    queuedTimeoutInMinutesOverride: number
    encryptionKeyOverride: string
    idempotencyToken: string
    logsConfigOverride: LogsConfig
    registryCredentialOverride: RegistryCredential
    imagePullCredentialsTypeOverride: string
    buildBatchConfigOverride: ProjectBuildBatchConfig
    debugSessionEnabled: boolean
end

local record StartBuildBatchOutput
    buildBatch: BuildBatch
end

local record StartCommandExecutionInput
    sandboxId: string
    command: string
    type: string
end

local record StartCommandExecutionOutput
    commandExecution: CommandExecution
end

local record StartSandboxInput
    projectName: string
    idempotencyToken: string
end

local record StartSandboxOutput
    sandbox: Sandbox
end

local record StartSandboxConnectionInput
    sandboxId: string
end

local record StartSandboxConnectionOutput
    ssmSession: SSMSession
end

local record StopBuildInput
    id: string
end

local record StopBuildOutput
    build: Build
end

local record StopBuildBatchInput
    id: string
end

local record StopBuildBatchOutput
    buildBatch: BuildBatch
end

local record StopSandboxInput
    id: string
end

local record StopSandboxOutput
    sandbox: Sandbox
end

local record UpdateFleetInput
    arn: string
    baseCapacity: number
    environmentType: string
    computeType: string
    computeConfiguration: ComputeConfiguration
    scalingConfiguration: ScalingConfigurationInput
    overflowBehavior: string
    vpcConfig: VpcConfig
    proxyConfiguration: ProxyConfiguration
    imageId: string
    fleetServiceRole: string
    tags: {Tag}
end

local record UpdateFleetOutput
    fleet: Fleet
end

local record UpdateProjectInput
    name: string
    description: string
    source: ProjectSource
    secondarySources: {ProjectSource}
    sourceVersion: string
    secondarySourceVersions: {ProjectSourceVersion}
    artifacts: ProjectArtifacts
    secondaryArtifacts: {ProjectArtifacts}
    cache: ProjectCache
    environment: ProjectEnvironment
    serviceRole: string
    timeoutInMinutes: number
    queuedTimeoutInMinutes: number
    encryptionKey: string
    tags: {Tag}
    vpcConfig: VpcConfig
    badgeEnabled: boolean
    logsConfig: LogsConfig
    fileSystemLocations: {ProjectFileSystemLocation}
    buildBatchConfig: ProjectBuildBatchConfig
    concurrentBuildLimit: number
    autoRetryLimit: number
end

local record UpdateProjectOutput
    project: Project
end

local record UpdateProjectVisibilityInput
    projectArn: string
    projectVisibility: string
    resourceAccessRole: string
end

local record UpdateProjectVisibilityOutput
    projectArn: string
    publicProjectAlias: string
    projectVisibility: string
end

local record UpdateReportGroupInput
    arn: string
    exportConfig: ReportExportConfig
    tags: {Tag}
end

local record UpdateReportGroupOutput
    reportGroup: ReportGroup
end

local record UpdateWebhookInput
    projectName: string
    branchFilter: string
    rotateSecret: boolean
    filterGroups: {{WebhookFilter}}
    buildType: string
    pullRequestBuildPolicy: PullRequestBuildPolicy
end

local record UpdateWebhookOutput
    webhook: Webhook
end

local record InvalidInputException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidInputException
    message: string
end

local record AccountLimitExceededException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record AccountLimitExceededException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record AccountLimitExceededException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record InvalidInputException
    message: string
end

local record OAuthProviderException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record OAuthProviderException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccountLimitExceededException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccountLimitExceededException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccountLimitExceededException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccountSuspendedException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccountLimitExceededException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record OAuthProviderException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local type ImagePullCredentialsType = "CODEBUILD" | "SERVICE_ROLE"

local type RetryBuildBatchType = "RETRY_ALL_BUILDS" | "RETRY_FAILED_BUILDS"

local type CommandType = "SHELL"

local type ProjectSortByType = "NAME" | "CREATED_TIME" | "LAST_MODIFIED_TIME"

local type EnvironmentType = "WINDOWS_CONTAINER" | "LINUX_CONTAINER" | "LINUX_GPU_CONTAINER" | "ARM_CONTAINER" | "WINDOWS_SERVER_2019_CONTAINER" | "WINDOWS_SERVER_2022_CONTAINER" | "LINUX_LAMBDA_CONTAINER" | "ARM_LAMBDA_CONTAINER" | "LINUX_EC2" | "ARM_EC2" | "WINDOWS_EC2" | "MAC_ARM"

local type FleetOverflowBehavior = "QUEUE" | "ON_DEMAND"

local type ReportGroupSortByType = "NAME" | "CREATED_TIME" | "LAST_MODIFIED_TIME"

local type ReportGroupTrendFieldType = "PASS_RATE" | "DURATION" | "TOTAL" | "LINE_COVERAGE" | "LINES_COVERED" | "LINES_MISSED" | "BRANCH_COVERAGE" | "BRANCHES_COVERED" | "BRANCHES_MISSED"

local type ProjectVisibilityType = "PUBLIC_READ" | "PRIVATE"

local type ServerType = "GITHUB" | "BITBUCKET" | "GITHUB_ENTERPRISE" | "GITLAB" | "GITLAB_SELF_MANAGED"

local type ReportType = "TEST" | "CODE_COVERAGE"

local type WebhookBuildType = "BUILD" | "BUILD_BATCH" | "RUNNER_BUILDKITE_BUILD"

local type SourceType = "CODECOMMIT" | "CODEPIPELINE" | "GITHUB" | "GITLAB" | "GITLAB_SELF_MANAGED" | "S3" | "BITBUCKET" | "GITHUB_ENTERPRISE" | "NO_SOURCE"

local type ReportCodeCoverageSortByType = "LINE_COVERAGE_PERCENTAGE" | "FILE_PATH"

local type SharedResourceSortByType = "ARN" | "MODIFIED_TIME"

local type FleetSortByType = "NAME" | "CREATED_TIME" | "LAST_MODIFIED_TIME"

local type AuthType = "OAUTH" | "BASIC_AUTH" | "PERSONAL_ACCESS_TOKEN" | "CODECONNECTIONS" | "SECRETS_MANAGER"

local type SortOrderType = "ASCENDING" | "DESCENDING"

local type ComputeType = "BUILD_GENERAL1_SMALL" | "BUILD_GENERAL1_MEDIUM" | "BUILD_GENERAL1_LARGE" | "BUILD_GENERAL1_XLARGE" | "BUILD_GENERAL1_2XLARGE" | "BUILD_LAMBDA_1GB" | "BUILD_LAMBDA_2GB" | "BUILD_LAMBDA_4GB" | "BUILD_LAMBDA_8GB" | "BUILD_LAMBDA_10GB" | "ATTRIBUTE_BASED_COMPUTE" | "CUSTOM_INSTANCE_TYPE"

local record M
    BatchDeleteBuildsInput: BatchDeleteBuildsInput
    BatchDeleteBuildsOutput: BatchDeleteBuildsOutput
    BatchGetBuildBatchesInput: BatchGetBuildBatchesInput
    BatchGetBuildBatchesOutput: BatchGetBuildBatchesOutput
    BatchGetBuildsInput: BatchGetBuildsInput
    BatchGetBuildsOutput: BatchGetBuildsOutput
    BatchGetCommandExecutionsInput: BatchGetCommandExecutionsInput
    BatchGetCommandExecutionsOutput: BatchGetCommandExecutionsOutput
    BatchGetFleetsInput: BatchGetFleetsInput
    BatchGetFleetsOutput: BatchGetFleetsOutput
    BatchGetProjectsInput: BatchGetProjectsInput
    BatchGetProjectsOutput: BatchGetProjectsOutput
    BatchGetReportGroupsInput: BatchGetReportGroupsInput
    BatchGetReportGroupsOutput: BatchGetReportGroupsOutput
    BatchGetReportsInput: BatchGetReportsInput
    BatchGetReportsOutput: BatchGetReportsOutput
    BatchGetSandboxesInput: BatchGetSandboxesInput
    BatchGetSandboxesOutput: BatchGetSandboxesOutput
    CreateFleetInput: CreateFleetInput
    CreateFleetOutput: CreateFleetOutput
    CreateProjectInput: CreateProjectInput
    CreateProjectOutput: CreateProjectOutput
    CreateReportGroupInput: CreateReportGroupInput
    CreateReportGroupOutput: CreateReportGroupOutput
    CreateWebhookInput: CreateWebhookInput
    CreateWebhookOutput: CreateWebhookOutput
    DeleteBuildBatchInput: DeleteBuildBatchInput
    DeleteBuildBatchOutput: DeleteBuildBatchOutput
    DeleteFleetInput: DeleteFleetInput
    DeleteFleetOutput: DeleteFleetOutput
    DeleteProjectInput: DeleteProjectInput
    DeleteProjectOutput: DeleteProjectOutput
    DeleteReportInput: DeleteReportInput
    DeleteReportOutput: DeleteReportOutput
    DeleteReportGroupInput: DeleteReportGroupInput
    DeleteReportGroupOutput: DeleteReportGroupOutput
    DeleteResourcePolicyInput: DeleteResourcePolicyInput
    DeleteResourcePolicyOutput: DeleteResourcePolicyOutput
    DeleteSourceCredentialsInput: DeleteSourceCredentialsInput
    DeleteSourceCredentialsOutput: DeleteSourceCredentialsOutput
    DeleteWebhookInput: DeleteWebhookInput
    DeleteWebhookOutput: DeleteWebhookOutput
    DescribeCodeCoveragesInput: DescribeCodeCoveragesInput
    DescribeCodeCoveragesOutput: DescribeCodeCoveragesOutput
    DescribeTestCasesInput: DescribeTestCasesInput
    DescribeTestCasesOutput: DescribeTestCasesOutput
    GetReportGroupTrendInput: GetReportGroupTrendInput
    GetReportGroupTrendOutput: GetReportGroupTrendOutput
    GetResourcePolicyInput: GetResourcePolicyInput
    GetResourcePolicyOutput: GetResourcePolicyOutput
    ImportSourceCredentialsInput: ImportSourceCredentialsInput
    ImportSourceCredentialsOutput: ImportSourceCredentialsOutput
    InvalidateProjectCacheInput: InvalidateProjectCacheInput
    InvalidateProjectCacheOutput: InvalidateProjectCacheOutput
    ListBuildBatchesInput: ListBuildBatchesInput
    ListBuildBatchesOutput: ListBuildBatchesOutput
    ListBuildBatchesForProjectInput: ListBuildBatchesForProjectInput
    ListBuildBatchesForProjectOutput: ListBuildBatchesForProjectOutput
    ListBuildsInput: ListBuildsInput
    ListBuildsOutput: ListBuildsOutput
    ListBuildsForProjectInput: ListBuildsForProjectInput
    ListBuildsForProjectOutput: ListBuildsForProjectOutput
    ListCommandExecutionsForSandboxInput: ListCommandExecutionsForSandboxInput
    ListCommandExecutionsForSandboxOutput: ListCommandExecutionsForSandboxOutput
    ListCuratedEnvironmentImagesInput: ListCuratedEnvironmentImagesInput
    ListCuratedEnvironmentImagesOutput: ListCuratedEnvironmentImagesOutput
    ListFleetsInput: ListFleetsInput
    ListFleetsOutput: ListFleetsOutput
    ListProjectsInput: ListProjectsInput
    ListProjectsOutput: ListProjectsOutput
    ListReportGroupsInput: ListReportGroupsInput
    ListReportGroupsOutput: ListReportGroupsOutput
    ListReportsInput: ListReportsInput
    ListReportsOutput: ListReportsOutput
    ListReportsForReportGroupInput: ListReportsForReportGroupInput
    ListReportsForReportGroupOutput: ListReportsForReportGroupOutput
    ListSandboxesInput: ListSandboxesInput
    ListSandboxesOutput: ListSandboxesOutput
    ListSandboxesForProjectInput: ListSandboxesForProjectInput
    ListSandboxesForProjectOutput: ListSandboxesForProjectOutput
    ListSharedProjectsInput: ListSharedProjectsInput
    ListSharedProjectsOutput: ListSharedProjectsOutput
    ListSharedReportGroupsInput: ListSharedReportGroupsInput
    ListSharedReportGroupsOutput: ListSharedReportGroupsOutput
    ListSourceCredentialsInput: ListSourceCredentialsInput
    ListSourceCredentialsOutput: ListSourceCredentialsOutput
    PutResourcePolicyInput: PutResourcePolicyInput
    PutResourcePolicyOutput: PutResourcePolicyOutput
    RetryBuildInput: RetryBuildInput
    RetryBuildOutput: RetryBuildOutput
    RetryBuildBatchInput: RetryBuildBatchInput
    RetryBuildBatchOutput: RetryBuildBatchOutput
    StartBuildInput: StartBuildInput
    StartBuildOutput: StartBuildOutput
    StartBuildBatchInput: StartBuildBatchInput
    StartBuildBatchOutput: StartBuildBatchOutput
    StartCommandExecutionInput: StartCommandExecutionInput
    StartCommandExecutionOutput: StartCommandExecutionOutput
    StartSandboxInput: StartSandboxInput
    StartSandboxOutput: StartSandboxOutput
    StartSandboxConnectionInput: StartSandboxConnectionInput
    StartSandboxConnectionOutput: StartSandboxConnectionOutput
    StopBuildInput: StopBuildInput
    StopBuildOutput: StopBuildOutput
    StopBuildBatchInput: StopBuildBatchInput
    StopBuildBatchOutput: StopBuildBatchOutput
    StopSandboxInput: StopSandboxInput
    StopSandboxOutput: StopSandboxOutput
    UpdateFleetInput: UpdateFleetInput
    UpdateFleetOutput: UpdateFleetOutput
    UpdateProjectInput: UpdateProjectInput
    UpdateProjectOutput: UpdateProjectOutput
    UpdateProjectVisibilityInput: UpdateProjectVisibilityInput
    UpdateProjectVisibilityOutput: UpdateProjectVisibilityOutput
    UpdateReportGroupInput: UpdateReportGroupInput
    UpdateReportGroupOutput: UpdateReportGroupOutput
    UpdateWebhookInput: UpdateWebhookInput
    UpdateWebhookOutput: UpdateWebhookOutput
end

return M
