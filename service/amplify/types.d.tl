local record CreateAppInput
    name: string
    description: string
    repository: string
    platform: string
    computeRoleArn: string
    iamServiceRoleArn: string
    oauthToken: string
    accessToken: string
    environmentVariables: {string : string}
    enableBranchAutoBuild: boolean
    enableBranchAutoDeletion: boolean
    enableBasicAuth: boolean
    basicAuthCredentials: string
    customRules: {CustomRule}
    tags: {string : string}
    buildSpec: string
    customHeaders: string
    enableAutoBranchCreation: boolean
    autoBranchCreationPatterns: {string}
    autoBranchCreationConfig: AutoBranchCreationConfig
    jobConfig: JobConfig
    cacheConfig: CacheConfig
end

local record CreateAppOutput
    app: App
end

local record CreateBackendEnvironmentInput
    appId: string
    environmentName: string
    stackName: string
    deploymentArtifacts: string
end

local record CreateBackendEnvironmentOutput
    backendEnvironment: BackendEnvironment
end

local record CreateBranchInput
    appId: string
    branchName: string
    description: string
    stage: string
    framework: string
    enableNotification: boolean
    enableAutoBuild: boolean
    enableSkewProtection: boolean
    environmentVariables: {string : string}
    basicAuthCredentials: string
    enableBasicAuth: boolean
    enablePerformanceMode: boolean
    tags: {string : string}
    buildSpec: string
    ttl: string
    displayName: string
    enablePullRequestPreview: boolean
    pullRequestEnvironmentName: string
    backendEnvironmentArn: string
    backend: Backend
    computeRoleArn: string
end

local record CreateBranchOutput
    branch: Branch
end

local record CreateDeploymentInput
    appId: string
    branchName: string
    fileMap: {string : string}
end

local record CreateDeploymentOutput
    jobId: string
    fileUploadUrls: {string : string}
    zipUploadUrl: string
end

local record CreateDomainAssociationInput
    appId: string
    domainName: string
    enableAutoSubDomain: boolean
    subDomainSettings: {SubDomainSetting}
    autoSubDomainCreationPatterns: {string}
    autoSubDomainIAMRole: string
    certificateSettings: CertificateSettings
end

local record CreateDomainAssociationOutput
    domainAssociation: DomainAssociation
end

local record CreateWebhookInput
    appId: string
    branchName: string
    description: string
end

local record CreateWebhookOutput
    webhook: Webhook
end

local record DeleteAppInput
    appId: string
end

local record DeleteAppOutput
    app: App
end

local record DeleteBackendEnvironmentInput
    appId: string
    environmentName: string
end

local record DeleteBackendEnvironmentOutput
    backendEnvironment: BackendEnvironment
end

local record DeleteBranchInput
    appId: string
    branchName: string
end

local record DeleteBranchOutput
    branch: Branch
end

local record DeleteDomainAssociationInput
    appId: string
    domainName: string
end

local record DeleteDomainAssociationOutput
    domainAssociation: DomainAssociation
end

local record DeleteJobInput
    appId: string
    branchName: string
    jobId: string
end

local record DeleteJobOutput
    jobSummary: JobSummary
end

local record DeleteWebhookInput
    webhookId: string
end

local record DeleteWebhookOutput
    webhook: Webhook
end

local record GenerateAccessLogsInput
    startTime: number
    endTime: number
    domainName: string
    appId: string
end

local record GenerateAccessLogsOutput
    logUrl: string
end

local record GetAppInput
    appId: string
end

local record GetAppOutput
    app: App
end

local record GetArtifactUrlInput
    artifactId: string
end

local record GetArtifactUrlOutput
    artifactId: string
    artifactUrl: string
end

local record GetBackendEnvironmentInput
    appId: string
    environmentName: string
end

local record GetBackendEnvironmentOutput
    backendEnvironment: BackendEnvironment
end

local record GetBranchInput
    appId: string
    branchName: string
end

local record GetBranchOutput
    branch: Branch
end

local record GetDomainAssociationInput
    appId: string
    domainName: string
end

local record GetDomainAssociationOutput
    domainAssociation: DomainAssociation
end

local record GetJobInput
    appId: string
    branchName: string
    jobId: string
end

local record GetJobOutput
    job: Job
end

local record GetWebhookInput
    webhookId: string
end

local record GetWebhookOutput
    webhook: Webhook
end

local record ListAppsInput
    nextToken: string
    maxResults: number
end

local record ListAppsOutput
    apps: {App}
    nextToken: string
end

local record ListArtifactsInput
    appId: string
    branchName: string
    jobId: string
    nextToken: string
    maxResults: number
end

local record ListArtifactsOutput
    artifacts: {Artifact}
    nextToken: string
end

local record ListBackendEnvironmentsInput
    appId: string
    environmentName: string
    nextToken: string
    maxResults: number
end

local record ListBackendEnvironmentsOutput
    backendEnvironments: {BackendEnvironment}
    nextToken: string
end

local record ListBranchesInput
    appId: string
    nextToken: string
    maxResults: number
end

local record ListBranchesOutput
    branches: {Branch}
    nextToken: string
end

local record ListDomainAssociationsInput
    appId: string
    nextToken: string
    maxResults: number
end

local record ListDomainAssociationsOutput
    domainAssociations: {DomainAssociation}
    nextToken: string
end

local record ListJobsInput
    appId: string
    branchName: string
    nextToken: string
    maxResults: number
end

local record ListJobsOutput
    jobSummaries: {JobSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListWebhooksInput
    appId: string
    nextToken: string
    maxResults: number
end

local record ListWebhooksOutput
    webhooks: {Webhook}
    nextToken: string
end

local record StartDeploymentInput
    appId: string
    branchName: string
    jobId: string
    sourceUrl: string
    sourceUrlType: string
end

local record StartDeploymentOutput
    jobSummary: JobSummary
end

local record StartJobInput
    appId: string
    branchName: string
    jobId: string
    jobType: string
    jobReason: string
    commitId: string
    commitMessage: string
    commitTime: number
end

local record StartJobOutput
    jobSummary: JobSummary
end

local record StopJobInput
    appId: string
    branchName: string
    jobId: string
end

local record StopJobOutput
    jobSummary: JobSummary
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

local record UpdateAppInput
    appId: string
    name: string
    description: string
    platform: string
    computeRoleArn: string
    iamServiceRoleArn: string
    environmentVariables: {string : string}
    enableBranchAutoBuild: boolean
    enableBranchAutoDeletion: boolean
    enableBasicAuth: boolean
    basicAuthCredentials: string
    customRules: {CustomRule}
    buildSpec: string
    customHeaders: string
    enableAutoBranchCreation: boolean
    autoBranchCreationPatterns: {string}
    autoBranchCreationConfig: AutoBranchCreationConfig
    repository: string
    oauthToken: string
    accessToken: string
    jobConfig: JobConfig
    cacheConfig: CacheConfig
end

local record UpdateAppOutput
    app: App
end

local record UpdateBranchInput
    appId: string
    branchName: string
    description: string
    framework: string
    stage: string
    enableNotification: boolean
    enableAutoBuild: boolean
    enableSkewProtection: boolean
    environmentVariables: {string : string}
    basicAuthCredentials: string
    enableBasicAuth: boolean
    enablePerformanceMode: boolean
    buildSpec: string
    ttl: string
    displayName: string
    enablePullRequestPreview: boolean
    pullRequestEnvironmentName: string
    backendEnvironmentArn: string
    backend: Backend
    computeRoleArn: string
end

local record UpdateBranchOutput
    branch: Branch
end

local record UpdateDomainAssociationInput
    appId: string
    domainName: string
    enableAutoSubDomain: boolean
    subDomainSettings: {SubDomainSetting}
    autoSubDomainCreationPatterns: {string}
    autoSubDomainIAMRole: string
    certificateSettings: CertificateSettings
end

local record UpdateDomainAssociationOutput
    domainAssociation: DomainAssociation
end

local record UpdateWebhookInput
    webhookId: string
    branchName: string
    description: string
end

local record UpdateWebhookOutput
    webhook: Webhook
end

local record BadRequestException
    message: string
end

local record DependentServiceFailureException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record DependentServiceFailureException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record DependentServiceFailureException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record DependentServiceFailureException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record DependentServiceFailureException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record DependentServiceFailureException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record DependentServiceFailureException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record DependentServiceFailureException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record ResourceNotFoundException
    code: string
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record ResourceNotFoundException
    code: string
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record ResourceNotFoundException
    code: string
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record DependentServiceFailureException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record DependentServiceFailureException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record DependentServiceFailureException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local type Platform = "WEB" | "WEB_DYNAMIC" | "WEB_COMPUTE"

local type JobType = "RELEASE" | "RETRY" | "MANUAL" | "WEB_HOOK"

local type Stage = "PRODUCTION" | "BETA" | "DEVELOPMENT" | "EXPERIMENTAL" | "PULL_REQUEST"

local type SourceUrlType = "ZIP" | "BUCKET_PREFIX"

local record M
    CreateAppInput: CreateAppInput
    CreateAppOutput: CreateAppOutput
    CreateBackendEnvironmentInput: CreateBackendEnvironmentInput
    CreateBackendEnvironmentOutput: CreateBackendEnvironmentOutput
    CreateBranchInput: CreateBranchInput
    CreateBranchOutput: CreateBranchOutput
    CreateDeploymentInput: CreateDeploymentInput
    CreateDeploymentOutput: CreateDeploymentOutput
    CreateDomainAssociationInput: CreateDomainAssociationInput
    CreateDomainAssociationOutput: CreateDomainAssociationOutput
    CreateWebhookInput: CreateWebhookInput
    CreateWebhookOutput: CreateWebhookOutput
    DeleteAppInput: DeleteAppInput
    DeleteAppOutput: DeleteAppOutput
    DeleteBackendEnvironmentInput: DeleteBackendEnvironmentInput
    DeleteBackendEnvironmentOutput: DeleteBackendEnvironmentOutput
    DeleteBranchInput: DeleteBranchInput
    DeleteBranchOutput: DeleteBranchOutput
    DeleteDomainAssociationInput: DeleteDomainAssociationInput
    DeleteDomainAssociationOutput: DeleteDomainAssociationOutput
    DeleteJobInput: DeleteJobInput
    DeleteJobOutput: DeleteJobOutput
    DeleteWebhookInput: DeleteWebhookInput
    DeleteWebhookOutput: DeleteWebhookOutput
    GenerateAccessLogsInput: GenerateAccessLogsInput
    GenerateAccessLogsOutput: GenerateAccessLogsOutput
    GetAppInput: GetAppInput
    GetAppOutput: GetAppOutput
    GetArtifactUrlInput: GetArtifactUrlInput
    GetArtifactUrlOutput: GetArtifactUrlOutput
    GetBackendEnvironmentInput: GetBackendEnvironmentInput
    GetBackendEnvironmentOutput: GetBackendEnvironmentOutput
    GetBranchInput: GetBranchInput
    GetBranchOutput: GetBranchOutput
    GetDomainAssociationInput: GetDomainAssociationInput
    GetDomainAssociationOutput: GetDomainAssociationOutput
    GetJobInput: GetJobInput
    GetJobOutput: GetJobOutput
    GetWebhookInput: GetWebhookInput
    GetWebhookOutput: GetWebhookOutput
    ListAppsInput: ListAppsInput
    ListAppsOutput: ListAppsOutput
    ListArtifactsInput: ListArtifactsInput
    ListArtifactsOutput: ListArtifactsOutput
    ListBackendEnvironmentsInput: ListBackendEnvironmentsInput
    ListBackendEnvironmentsOutput: ListBackendEnvironmentsOutput
    ListBranchesInput: ListBranchesInput
    ListBranchesOutput: ListBranchesOutput
    ListDomainAssociationsInput: ListDomainAssociationsInput
    ListDomainAssociationsOutput: ListDomainAssociationsOutput
    ListJobsInput: ListJobsInput
    ListJobsOutput: ListJobsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListWebhooksInput: ListWebhooksInput
    ListWebhooksOutput: ListWebhooksOutput
    StartDeploymentInput: StartDeploymentInput
    StartDeploymentOutput: StartDeploymentOutput
    StartJobInput: StartJobInput
    StartJobOutput: StartJobOutput
    StopJobInput: StopJobInput
    StopJobOutput: StopJobOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAppInput: UpdateAppInput
    UpdateAppOutput: UpdateAppOutput
    UpdateBranchInput: UpdateBranchInput
    UpdateBranchOutput: UpdateBranchOutput
    UpdateDomainAssociationInput: UpdateDomainAssociationInput
    UpdateDomainAssociationOutput: UpdateDomainAssociationOutput
    UpdateWebhookInput: UpdateWebhookInput
    UpdateWebhookOutput: UpdateWebhookOutput
end

return M
