local record AddArtifactInput
    agentSpaceId: string
    artifactContent: string
    artifactType: string
    fileName: string
end

local record AddArtifactOutput
    artifactId: string
end

local record BatchDeletePentestsInput
    pentestIds: {string}
    agentSpaceId: string
end

local record BatchDeletePentestsOutput
    deleted: {Pentest}
    failed: {DeletePentestFailure}
end

local record BatchGetAgentSpacesInput
    agentSpaceIds: {string}
end

local record BatchGetAgentSpacesOutput
    agentSpaces: {AgentSpace}
    notFound: {string}
end

local record BatchGetArtifactMetadataInput
    agentSpaceId: string
    artifactIds: {string}
end

local record BatchGetArtifactMetadataOutput
    artifactMetadataList: {ArtifactMetadataItem}
end

local record BatchGetFindingsInput
    findingIds: {string}
    agentSpaceId: string
end

local record BatchGetFindingsOutput
    findings: {Finding}
    notFound: {string}
end

local record BatchGetPentestJobsInput
    pentestJobIds: {string}
    agentSpaceId: string
end

local record BatchGetPentestJobsOutput
    pentestJobs: {PentestJob}
    notFound: {string}
end

local record BatchGetPentestJobTasksInput
    agentSpaceId: string
    taskIds: {string}
end

local record BatchGetPentestJobTasksOutput
    tasks: {Task}
    notFound: {string}
end

local record BatchGetPentestsInput
    pentestIds: {string}
    agentSpaceId: string
end

local record BatchGetPentestsOutput
    pentests: {Pentest}
    notFound: {string}
end

local record BatchGetTargetDomainsInput
    targetDomainIds: {string}
end

local record BatchGetTargetDomainsOutput
    targetDomains: {TargetDomain}
    notFound: {string}
end

local record CreateAgentSpaceInput
    name: string
    description: string
    awsResources: AWSResources
    targetDomainIds: {string}
    codeReviewSettings: CodeReviewSettings
    kmsKeyId: string
    tags: {string : string}
end

local record CreateAgentSpaceOutput
    agentSpaceId: string
    name: string
    description: string
    awsResources: AWSResources
    targetDomainIds: {string}
    codeReviewSettings: CodeReviewSettings
    kmsKeyId: string
    createdAt: number
    updatedAt: number
end

local record CreateApplicationInput
    idcInstanceArn: string
    roleArn: string
    defaultKmsKeyId: string
    tags: {string : string}
end

local record CreateApplicationOutput
    applicationId: string
end

local record CreateIntegrationInput
    provider: string
    input: ProviderInput
    integrationDisplayName: string
    kmsKeyId: string
    tags: {string : string}
end

local record CreateIntegrationOutput
    integrationId: string
end

local record CreateMembershipInput
    applicationId: string
    agentSpaceId: string
    membershipId: string
    memberType: string
    config: MembershipConfig
end

local record CreateMembershipOutput
end

local record CreatePentestInput
    title: string
    agentSpaceId: string
    assets: Assets
    excludeRiskTypes: {string}
    serviceRole: string
    logConfig: CloudWatchLog
    vpcConfig: VpcConfig
    networkTrafficConfig: NetworkTrafficConfig
    codeRemediationStrategy: string
end

local record CreatePentestOutput
    pentestId: string
    title: string
    createdAt: number
    updatedAt: number
    assets: Assets
    excludeRiskTypes: {string}
    serviceRole: string
    logConfig: CloudWatchLog
    agentSpaceId: string
end

local record CreateTargetDomainInput
    targetDomainName: string
    verificationMethod: string
    tags: {string : string}
end

local record CreateTargetDomainOutput
    targetDomainId: string
    domainName: string
    verificationStatus: string
    verificationDetails: VerificationDetails
    createdAt: number
    verifiedAt: number
end

local record DeleteAgentSpaceInput
    agentSpaceId: string
end

local record DeleteAgentSpaceOutput
    agentSpaceId: string
end

local record DeleteApplicationInput
    applicationId: string
end

local record DeleteApplicationOutput
end

local record DeleteArtifactInput
    agentSpaceId: string
    artifactId: string
end

local record DeleteArtifactOutput
end

local record DeleteIntegrationInput
    integrationId: string
end

local record DeleteIntegrationOutput
end

local record DeleteMembershipInput
    applicationId: string
    agentSpaceId: string
    membershipId: string
    memberType: string
end

local record DeleteMembershipOutput
end

local record DeleteTargetDomainInput
    targetDomainId: string
end

local record DeleteTargetDomainOutput
    targetDomainId: string
end

local record GetApplicationInput
    applicationId: string
end

local record GetApplicationOutput
    applicationId: string
    domain: string
    applicationName: string
    idcConfiguration: IdCConfiguration
    roleArn: string
    defaultKmsKeyId: string
end

local record GetArtifactInput
    agentSpaceId: string
    artifactId: string
end

local record GetArtifactOutput
    agentSpaceId: string
    artifactId: string
    artifact: Artifact
    fileName: string
    updatedAt: number
end

local record GetIntegrationInput
    integrationId: string
end

local record GetIntegrationOutput
    integrationId: string
    installationId: string
    provider: string
    providerType: string
    displayName: string
    kmsKeyId: string
end

local record InitiateProviderRegistrationInput
    provider: string
end

local record InitiateProviderRegistrationOutput
    redirectTo: string
    csrfState: string
end

local record ListAgentSpacesInput
    nextToken: string
    maxResults: number
end

local record ListAgentSpacesOutput
    agentSpaceSummaries: {AgentSpaceSummary}
    nextToken: string
end

local record ListApplicationsInput
    nextToken: string
    maxResults: number
end

local record ListApplicationsOutput
    applicationSummaries: {ApplicationSummary}
    nextToken: string
end

local record ListArtifactsInput
    agentSpaceId: string
    nextToken: string
    maxResults: number
end

local record ListArtifactsOutput
    artifactSummaries: {ArtifactSummary}
    nextToken: string
end

local record ListDiscoveredEndpointsInput
    maxResults: number
    pentestJobId: string
    agentSpaceId: string
    prefix: string
    nextToken: string
end

local record ListDiscoveredEndpointsOutput
    discoveredEndpoints: {DiscoveredEndpoint}
    nextToken: string
end

local record ListFindingsInput
    maxResults: number
    pentestJobId: string
    agentSpaceId: string
    nextToken: string
    riskType: string
    riskLevel: string
    status: string
    confidence: string
    name: string
end

local record ListFindingsOutput
    findingsSummaries: {FindingSummary}
    nextToken: string
end

local record ListIntegratedResourcesInput
    agentSpaceId: string
    integrationId: string
    resourceType: string
    nextToken: string
    maxResults: number
end

local record ListIntegratedResourcesOutput
    integratedResourceSummaries: {IntegratedResourceSummary}
    nextToken: string
end

local record ListIntegrationsInput
    filter: IntegrationFilter
    nextToken: string
    maxResults: number
end

local record ListIntegrationsOutput
    integrationSummaries: {IntegrationSummary}
    nextToken: string
end

local record ListMembershipsInput
    applicationId: string
    agentSpaceId: string
    memberType: string
    maxResults: number
    nextToken: string
end

local record ListMembershipsOutput
    membershipSummaries: {MembershipSummary}
    nextToken: string
end

local record ListPentestJobsForPentestInput
    maxResults: number
    pentestId: string
    agentSpaceId: string
    nextToken: string
end

local record ListPentestJobsForPentestOutput
    pentestJobSummaries: {PentestJobSummary}
    nextToken: string
end

local record ListPentestJobTasksInput
    agentSpaceId: string
    maxResults: number
    pentestJobId: string
    stepName: string
    categoryName: string
    nextToken: string
end

local record ListPentestJobTasksOutput
    taskSummaries: {TaskSummary}
    nextToken: string
end

local record ListPentestsInput
    maxResults: number
    nextToken: string
    agentSpaceId: string
end

local record ListPentestsOutput
    pentestSummaries: {PentestSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListTargetDomainsInput
    nextToken: string
    maxResults: number
end

local record ListTargetDomainsOutput
    targetDomainSummaries: {TargetDomainSummary}
    nextToken: string
end

local record StartCodeRemediationInput
    agentSpaceId: string
    pentestJobId: string
    findingIds: {string}
end

local record StartCodeRemediationOutput
end

local record StartPentestJobInput
    agentSpaceId: string
    pentestId: string
end

local record StartPentestJobOutput
    title: string
    status: string
    createdAt: number
    updatedAt: number
    pentestId: string
    pentestJobId: string
    agentSpaceId: string
end

local record StopPentestJobInput
    agentSpaceId: string
    pentestJobId: string
end

local record StopPentestJobOutput
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

local record UpdateAgentSpaceInput
    agentSpaceId: string
    name: string
    description: string
    awsResources: AWSResources
    targetDomainIds: {string}
    codeReviewSettings: CodeReviewSettings
end

local record UpdateAgentSpaceOutput
    agentSpaceId: string
    name: string
    description: string
    awsResources: AWSResources
    targetDomainIds: {string}
    codeReviewSettings: CodeReviewSettings
    createdAt: number
    updatedAt: number
end

local record UpdateApplicationInput
    applicationId: string
    roleArn: string
    defaultKmsKeyId: string
end

local record UpdateApplicationOutput
    applicationId: string
end

local record UpdateFindingInput
    findingId: string
    agentSpaceId: string
    riskLevel: string
    status: string
end

local record UpdateFindingOutput
end

local record UpdateIntegratedResourcesInput
    agentSpaceId: string
    integrationId: string
    items: {IntegratedResourceInputItem}
end

local record UpdateIntegratedResourcesOutput
end

local record UpdatePentestInput
    pentestId: string
    agentSpaceId: string
    title: string
    assets: Assets
    excludeRiskTypes: {string}
    serviceRole: string
    logConfig: CloudWatchLog
    vpcConfig: VpcConfig
    networkTrafficConfig: NetworkTrafficConfig
    codeRemediationStrategy: string
end

local record UpdatePentestOutput
    pentestId: string
    title: string
    createdAt: number
    updatedAt: number
    assets: Assets
    excludeRiskTypes: {string}
    serviceRole: string
    logConfig: CloudWatchLog
    agentSpaceId: string
end

local record UpdateTargetDomainInput
    targetDomainId: string
    verificationMethod: string
end

local record UpdateTargetDomainOutput
    targetDomainId: string
    domainName: string
    verificationStatus: string
    verificationDetails: VerificationDetails
    createdAt: number
    verifiedAt: number
end

local record VerifyTargetDomainInput
    targetDomainId: string
end

local record VerifyTargetDomainOutput
    targetDomainId: string
    domainName: string
    createdAt: number
    updatedAt: number
    verifiedAt: number
    status: string
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
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
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
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
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
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
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
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
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
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
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
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
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
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
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
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
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
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
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
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
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
    serviceCode: string
    quotaCode: string
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
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local type ConfidenceLevel = "FALSE_POSITIVE" | "UNCONFIRMED" | "LOW" | "MEDIUM" | "HIGH"

local type DomainVerificationMethod = "DNS_TXT" | "HTTP_ROUTE"

local type Provider = "GITHUB"

local type StepName = "PREFLIGHT" | "STATIC_ANALYSIS" | "PENTEST" | "FINALIZING"

local type RiskLevel = "UNKNOWN" | "INFORMATIONAL" | "LOW" | "MEDIUM" | "HIGH" | "CRITICAL"

local type ProviderType = "SOURCE_CODE" | "DOCUMENTATION"

local type ResourceType = "CODE_REPOSITORY"

local type MembershipType = "USER"

local type FindingStatus = "ACTIVE" | "RESOLVED" | "ACCEPTED" | "FALSE_POSITIVE"

local type CodeRemediationStrategy = "AUTOMATIC" | "DISABLED"

local type JobStatus = "IN_PROGRESS" | "STOPPING" | "STOPPED" | "FAILED" | "COMPLETED"

local type MembershipTypeFilter = "USER" | "ALL"

local type ArtifactType = "TXT" | "PNG" | "JPEG" | "MD" | "PDF" | "DOCX" | "DOC" | "JSON" | "YAML"

local type TargetDomainStatus = "PENDING" | "VERIFIED" | "FAILED" | "UNREACHABLE"

local record M
    AddArtifactInput: AddArtifactInput
    AddArtifactOutput: AddArtifactOutput
    BatchDeletePentestsInput: BatchDeletePentestsInput
    BatchDeletePentestsOutput: BatchDeletePentestsOutput
    BatchGetAgentSpacesInput: BatchGetAgentSpacesInput
    BatchGetAgentSpacesOutput: BatchGetAgentSpacesOutput
    BatchGetArtifactMetadataInput: BatchGetArtifactMetadataInput
    BatchGetArtifactMetadataOutput: BatchGetArtifactMetadataOutput
    BatchGetFindingsInput: BatchGetFindingsInput
    BatchGetFindingsOutput: BatchGetFindingsOutput
    BatchGetPentestJobsInput: BatchGetPentestJobsInput
    BatchGetPentestJobsOutput: BatchGetPentestJobsOutput
    BatchGetPentestJobTasksInput: BatchGetPentestJobTasksInput
    BatchGetPentestJobTasksOutput: BatchGetPentestJobTasksOutput
    BatchGetPentestsInput: BatchGetPentestsInput
    BatchGetPentestsOutput: BatchGetPentestsOutput
    BatchGetTargetDomainsInput: BatchGetTargetDomainsInput
    BatchGetTargetDomainsOutput: BatchGetTargetDomainsOutput
    CreateAgentSpaceInput: CreateAgentSpaceInput
    CreateAgentSpaceOutput: CreateAgentSpaceOutput
    CreateApplicationInput: CreateApplicationInput
    CreateApplicationOutput: CreateApplicationOutput
    CreateIntegrationInput: CreateIntegrationInput
    CreateIntegrationOutput: CreateIntegrationOutput
    CreateMembershipInput: CreateMembershipInput
    CreateMembershipOutput: CreateMembershipOutput
    CreatePentestInput: CreatePentestInput
    CreatePentestOutput: CreatePentestOutput
    CreateTargetDomainInput: CreateTargetDomainInput
    CreateTargetDomainOutput: CreateTargetDomainOutput
    DeleteAgentSpaceInput: DeleteAgentSpaceInput
    DeleteAgentSpaceOutput: DeleteAgentSpaceOutput
    DeleteApplicationInput: DeleteApplicationInput
    DeleteApplicationOutput: DeleteApplicationOutput
    DeleteArtifactInput: DeleteArtifactInput
    DeleteArtifactOutput: DeleteArtifactOutput
    DeleteIntegrationInput: DeleteIntegrationInput
    DeleteIntegrationOutput: DeleteIntegrationOutput
    DeleteMembershipInput: DeleteMembershipInput
    DeleteMembershipOutput: DeleteMembershipOutput
    DeleteTargetDomainInput: DeleteTargetDomainInput
    DeleteTargetDomainOutput: DeleteTargetDomainOutput
    GetApplicationInput: GetApplicationInput
    GetApplicationOutput: GetApplicationOutput
    GetArtifactInput: GetArtifactInput
    GetArtifactOutput: GetArtifactOutput
    GetIntegrationInput: GetIntegrationInput
    GetIntegrationOutput: GetIntegrationOutput
    InitiateProviderRegistrationInput: InitiateProviderRegistrationInput
    InitiateProviderRegistrationOutput: InitiateProviderRegistrationOutput
    ListAgentSpacesInput: ListAgentSpacesInput
    ListAgentSpacesOutput: ListAgentSpacesOutput
    ListApplicationsInput: ListApplicationsInput
    ListApplicationsOutput: ListApplicationsOutput
    ListArtifactsInput: ListArtifactsInput
    ListArtifactsOutput: ListArtifactsOutput
    ListDiscoveredEndpointsInput: ListDiscoveredEndpointsInput
    ListDiscoveredEndpointsOutput: ListDiscoveredEndpointsOutput
    ListFindingsInput: ListFindingsInput
    ListFindingsOutput: ListFindingsOutput
    ListIntegratedResourcesInput: ListIntegratedResourcesInput
    ListIntegratedResourcesOutput: ListIntegratedResourcesOutput
    ListIntegrationsInput: ListIntegrationsInput
    ListIntegrationsOutput: ListIntegrationsOutput
    ListMembershipsInput: ListMembershipsInput
    ListMembershipsOutput: ListMembershipsOutput
    ListPentestJobsForPentestInput: ListPentestJobsForPentestInput
    ListPentestJobsForPentestOutput: ListPentestJobsForPentestOutput
    ListPentestJobTasksInput: ListPentestJobTasksInput
    ListPentestJobTasksOutput: ListPentestJobTasksOutput
    ListPentestsInput: ListPentestsInput
    ListPentestsOutput: ListPentestsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTargetDomainsInput: ListTargetDomainsInput
    ListTargetDomainsOutput: ListTargetDomainsOutput
    StartCodeRemediationInput: StartCodeRemediationInput
    StartCodeRemediationOutput: StartCodeRemediationOutput
    StartPentestJobInput: StartPentestJobInput
    StartPentestJobOutput: StartPentestJobOutput
    StopPentestJobInput: StopPentestJobInput
    StopPentestJobOutput: StopPentestJobOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAgentSpaceInput: UpdateAgentSpaceInput
    UpdateAgentSpaceOutput: UpdateAgentSpaceOutput
    UpdateApplicationInput: UpdateApplicationInput
    UpdateApplicationOutput: UpdateApplicationOutput
    UpdateFindingInput: UpdateFindingInput
    UpdateFindingOutput: UpdateFindingOutput
    UpdateIntegratedResourcesInput: UpdateIntegratedResourcesInput
    UpdateIntegratedResourcesOutput: UpdateIntegratedResourcesOutput
    UpdatePentestInput: UpdatePentestInput
    UpdatePentestOutput: UpdatePentestOutput
    UpdateTargetDomainInput: UpdateTargetDomainInput
    UpdateTargetDomainOutput: UpdateTargetDomainOutput
    VerifyTargetDomainInput: VerifyTargetDomainInput
    VerifyTargetDomainOutput: VerifyTargetDomainOutput
end

return M
