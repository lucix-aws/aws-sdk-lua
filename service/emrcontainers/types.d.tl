local record CancelJobRunInput
    id: string
    virtualClusterId: string
end

local record CancelJobRunOutput
    id: string
    virtualClusterId: string
end

local record CreateJobTemplateInput
    name: string
    clientToken: string
    jobTemplateData: JobTemplateData
    tags: {string : string}
    kmsKeyArn: string
end

local record CreateJobTemplateOutput
    id: string
    name: string
    arn: string
    createdAt: number
end

local record CreateManagedEndpointInput
    name: string
    virtualClusterId: string
    type: string
    releaseLabel: string
    executionRoleArn: string
    certificateArn: string
    configurationOverrides: ConfigurationOverrides
    clientToken: string
    tags: {string : string}
end

local record CreateManagedEndpointOutput
    id: string
    name: string
    arn: string
    virtualClusterId: string
end

local record CreateSecurityConfigurationInput
    clientToken: string
    name: string
    containerProvider: ContainerProvider
    securityConfigurationData: SecurityConfigurationData
    tags: {string : string}
end

local record CreateSecurityConfigurationOutput
    id: string
    name: string
    arn: string
end

local record CreateVirtualClusterInput
    name: string
    containerProvider: ContainerProvider
    clientToken: string
    tags: {string : string}
    securityConfigurationId: string
end

local record CreateVirtualClusterOutput
    id: string
    name: string
    arn: string
end

local record DeleteJobTemplateInput
    id: string
end

local record DeleteJobTemplateOutput
    id: string
end

local record DeleteManagedEndpointInput
    id: string
    virtualClusterId: string
end

local record DeleteManagedEndpointOutput
    id: string
    virtualClusterId: string
end

local record DeleteVirtualClusterInput
    id: string
end

local record DeleteVirtualClusterOutput
    id: string
end

local record DescribeJobRunInput
    id: string
    virtualClusterId: string
end

local record DescribeJobRunOutput
    jobRun: JobRun
end

local record DescribeJobTemplateInput
    id: string
end

local record DescribeJobTemplateOutput
    jobTemplate: JobTemplate
end

local record DescribeManagedEndpointInput
    id: string
    virtualClusterId: string
end

local record DescribeManagedEndpointOutput
    endpoint: Endpoint
end

local record DescribeSecurityConfigurationInput
    id: string
end

local record DescribeSecurityConfigurationOutput
    securityConfiguration: SecurityConfiguration
end

local record DescribeVirtualClusterInput
    id: string
end

local record DescribeVirtualClusterOutput
    virtualCluster: VirtualCluster
end

local record GetManagedEndpointSessionCredentialsInput
    endpointIdentifier: string
    virtualClusterIdentifier: string
    executionRoleArn: string
    credentialType: string
    durationInSeconds: number
    logContext: string
    clientToken: string
end

local record GetManagedEndpointSessionCredentialsOutput
    id: string
    credentials: Credentials
    expiresAt: number
end

local record ListJobRunsInput
    virtualClusterId: string
    createdBefore: number
    createdAfter: number
    name: string
    states: {string}
    maxResults: number
    nextToken: string
end

local record ListJobRunsOutput
    jobRuns: {JobRun}
    nextToken: string
end

local record ListJobTemplatesInput
    createdAfter: number
    createdBefore: number
    maxResults: number
    nextToken: string
end

local record ListJobTemplatesOutput
    templates: {JobTemplate}
    nextToken: string
end

local record ListManagedEndpointsInput
    virtualClusterId: string
    createdBefore: number
    createdAfter: number
    types: {string}
    states: {string}
    maxResults: number
    nextToken: string
end

local record ListManagedEndpointsOutput
    endpoints: {Endpoint}
    nextToken: string
end

local record ListSecurityConfigurationsInput
    createdAfter: number
    createdBefore: number
    maxResults: number
    nextToken: string
end

local record ListSecurityConfigurationsOutput
    securityConfigurations: {SecurityConfiguration}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListVirtualClustersInput
    containerProviderId: string
    containerProviderType: string
    createdAfter: number
    createdBefore: number
    states: {string}
    maxResults: number
    nextToken: string
    eksAccessEntryIntegrated: boolean
end

local record ListVirtualClustersOutput
    virtualClusters: {VirtualCluster}
    nextToken: string
end

local record StartJobRunInput
    name: string
    virtualClusterId: string
    clientToken: string
    executionRoleArn: string
    releaseLabel: string
    jobDriver: JobDriver
    configurationOverrides: ConfigurationOverrides
    tags: {string : string}
    jobTemplateId: string
    jobTemplateParameters: {string : string}
    retryPolicyConfiguration: RetryPolicyConfiguration
end

local record StartJobRunOutput
    id: string
    name: string
    arn: string
    virtualClusterId: string
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

local record InternalServerException
    message: string
end

local record ValidationException
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

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
end

local record EKSRequestThrottledException
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

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
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

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
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

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
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

local record InternalServerException
    message: string
end

local record RequestThrottledException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
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

local record InternalServerException
    message: string
end

local record ValidationException
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

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
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

local type ContainerProviderType = "EKS"

local record M
    CancelJobRunInput: CancelJobRunInput
    CancelJobRunOutput: CancelJobRunOutput
    CreateJobTemplateInput: CreateJobTemplateInput
    CreateJobTemplateOutput: CreateJobTemplateOutput
    CreateManagedEndpointInput: CreateManagedEndpointInput
    CreateManagedEndpointOutput: CreateManagedEndpointOutput
    CreateSecurityConfigurationInput: CreateSecurityConfigurationInput
    CreateSecurityConfigurationOutput: CreateSecurityConfigurationOutput
    CreateVirtualClusterInput: CreateVirtualClusterInput
    CreateVirtualClusterOutput: CreateVirtualClusterOutput
    DeleteJobTemplateInput: DeleteJobTemplateInput
    DeleteJobTemplateOutput: DeleteJobTemplateOutput
    DeleteManagedEndpointInput: DeleteManagedEndpointInput
    DeleteManagedEndpointOutput: DeleteManagedEndpointOutput
    DeleteVirtualClusterInput: DeleteVirtualClusterInput
    DeleteVirtualClusterOutput: DeleteVirtualClusterOutput
    DescribeJobRunInput: DescribeJobRunInput
    DescribeJobRunOutput: DescribeJobRunOutput
    DescribeJobTemplateInput: DescribeJobTemplateInput
    DescribeJobTemplateOutput: DescribeJobTemplateOutput
    DescribeManagedEndpointInput: DescribeManagedEndpointInput
    DescribeManagedEndpointOutput: DescribeManagedEndpointOutput
    DescribeSecurityConfigurationInput: DescribeSecurityConfigurationInput
    DescribeSecurityConfigurationOutput: DescribeSecurityConfigurationOutput
    DescribeVirtualClusterInput: DescribeVirtualClusterInput
    DescribeVirtualClusterOutput: DescribeVirtualClusterOutput
    GetManagedEndpointSessionCredentialsInput: GetManagedEndpointSessionCredentialsInput
    GetManagedEndpointSessionCredentialsOutput: GetManagedEndpointSessionCredentialsOutput
    ListJobRunsInput: ListJobRunsInput
    ListJobRunsOutput: ListJobRunsOutput
    ListJobTemplatesInput: ListJobTemplatesInput
    ListJobTemplatesOutput: ListJobTemplatesOutput
    ListManagedEndpointsInput: ListManagedEndpointsInput
    ListManagedEndpointsOutput: ListManagedEndpointsOutput
    ListSecurityConfigurationsInput: ListSecurityConfigurationsInput
    ListSecurityConfigurationsOutput: ListSecurityConfigurationsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListVirtualClustersInput: ListVirtualClustersInput
    ListVirtualClustersOutput: ListVirtualClustersOutput
    StartJobRunInput: StartJobRunInput
    StartJobRunOutput: StartJobRunOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
end

return M
