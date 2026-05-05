local record AssociateExternalConnectionInput
    domain: string
    domainOwner: string
    repository: string
    externalConnection: string
end

local record AssociateExternalConnectionOutput
    repository: RepositoryDescription
end

local record CopyPackageVersionsInput
    domain: string
    domainOwner: string
    sourceRepository: string
    destinationRepository: string
    format: string
    namespace: string
    package: string
    versions: {string}
    versionRevisions: {string : string}
    allowOverwrite: boolean
    includeFromUpstream: boolean
end

local record CopyPackageVersionsOutput
    successfulVersions: {string : SuccessfulPackageVersionInfo}
    failedVersions: {string : PackageVersionError}
end

local record CreateDomainInput
    domain: string
    encryptionKey: string
    tags: {Tag}
end

local record CreateDomainOutput
    domain: DomainDescription
end

local record CreatePackageGroupInput
    domain: string
    domainOwner: string
    packageGroup: string
    contactInfo: string
    description: string
    tags: {Tag}
end

local record CreatePackageGroupOutput
    packageGroup: PackageGroupDescription
end

local record CreateRepositoryInput
    domain: string
    domainOwner: string
    repository: string
    description: string
    upstreams: {UpstreamRepository}
    tags: {Tag}
end

local record CreateRepositoryOutput
    repository: RepositoryDescription
end

local record DeleteDomainInput
    domain: string
    domainOwner: string
end

local record DeleteDomainOutput
    domain: DomainDescription
end

local record DeleteDomainPermissionsPolicyInput
    domain: string
    domainOwner: string
    policyRevision: string
end

local record DeleteDomainPermissionsPolicyOutput
    policy: ResourcePolicy
end

local record DeletePackageInput
    domain: string
    domainOwner: string
    repository: string
    format: string
    namespace: string
    package: string
end

local record DeletePackageOutput
    deletedPackage: PackageSummary
end

local record DeletePackageGroupInput
    domain: string
    domainOwner: string
    packageGroup: string
end

local record DeletePackageGroupOutput
    packageGroup: PackageGroupDescription
end

local record DeletePackageVersionsInput
    domain: string
    domainOwner: string
    repository: string
    format: string
    namespace: string
    package: string
    versions: {string}
    expectedStatus: string
end

local record DeletePackageVersionsOutput
    successfulVersions: {string : SuccessfulPackageVersionInfo}
    failedVersions: {string : PackageVersionError}
end

local record DeleteRepositoryInput
    domain: string
    domainOwner: string
    repository: string
end

local record DeleteRepositoryOutput
    repository: RepositoryDescription
end

local record DeleteRepositoryPermissionsPolicyInput
    domain: string
    domainOwner: string
    repository: string
    policyRevision: string
end

local record DeleteRepositoryPermissionsPolicyOutput
    policy: ResourcePolicy
end

local record DescribeDomainInput
    domain: string
    domainOwner: string
end

local record DescribeDomainOutput
    domain: DomainDescription
end

local record DescribePackageInput
    domain: string
    domainOwner: string
    repository: string
    format: string
    namespace: string
    package: string
end

local record DescribePackageOutput
    package: PackageDescription
end

local record DescribePackageGroupInput
    domain: string
    domainOwner: string
    packageGroup: string
end

local record DescribePackageGroupOutput
    packageGroup: PackageGroupDescription
end

local record DescribePackageVersionInput
    domain: string
    domainOwner: string
    repository: string
    format: string
    namespace: string
    package: string
    packageVersion: string
end

local record DescribePackageVersionOutput
    packageVersion: PackageVersionDescription
end

local record DescribeRepositoryInput
    domain: string
    domainOwner: string
    repository: string
end

local record DescribeRepositoryOutput
    repository: RepositoryDescription
end

local record DisassociateExternalConnectionInput
    domain: string
    domainOwner: string
    repository: string
    externalConnection: string
end

local record DisassociateExternalConnectionOutput
    repository: RepositoryDescription
end

local record DisposePackageVersionsInput
    domain: string
    domainOwner: string
    repository: string
    format: string
    namespace: string
    package: string
    versions: {string}
    versionRevisions: {string : string}
    expectedStatus: string
end

local record DisposePackageVersionsOutput
    successfulVersions: {string : SuccessfulPackageVersionInfo}
    failedVersions: {string : PackageVersionError}
end

local record GetAssociatedPackageGroupInput
    domain: string
    domainOwner: string
    format: string
    namespace: string
    package: string
end

local record GetAssociatedPackageGroupOutput
    packageGroup: PackageGroupDescription
    associationType: string
end

local record GetAuthorizationTokenInput
    domain: string
    domainOwner: string
    durationSeconds: number
end

local record GetAuthorizationTokenOutput
    authorizationToken: string
    expiration: number
end

local record GetDomainPermissionsPolicyInput
    domain: string
    domainOwner: string
end

local record GetDomainPermissionsPolicyOutput
    policy: ResourcePolicy
end

local record GetPackageVersionAssetInput
    domain: string
    domainOwner: string
    repository: string
    format: string
    namespace: string
    package: string
    packageVersion: string
    asset: string
    packageVersionRevision: string
end

local record GetPackageVersionAssetOutput
    asset: string
    assetName: string
    packageVersion: string
    packageVersionRevision: string
end

local record GetPackageVersionReadmeInput
    domain: string
    domainOwner: string
    repository: string
    format: string
    namespace: string
    package: string
    packageVersion: string
end

local record GetPackageVersionReadmeOutput
    format: string
    namespace: string
    package: string
    version: string
    versionRevision: string
    readme: string
end

local record GetRepositoryEndpointInput
    domain: string
    domainOwner: string
    repository: string
    format: string
    endpointType: string
end

local record GetRepositoryEndpointOutput
    repositoryEndpoint: string
end

local record GetRepositoryPermissionsPolicyInput
    domain: string
    domainOwner: string
    repository: string
end

local record GetRepositoryPermissionsPolicyOutput
    policy: ResourcePolicy
end

local record ListAllowedRepositoriesForGroupInput
    domain: string
    domainOwner: string
    packageGroup: string
    originRestrictionType: string
    maxResults: number
    nextToken: string
end

local record ListAllowedRepositoriesForGroupOutput
    allowedRepositories: {string}
    nextToken: string
end

local record ListAssociatedPackagesInput
    domain: string
    domainOwner: string
    packageGroup: string
    maxResults: number
    nextToken: string
    preview: boolean
end

local record ListAssociatedPackagesOutput
    packages: {AssociatedPackage}
    nextToken: string
end

local record ListDomainsInput
    maxResults: number
    nextToken: string
end

local record ListDomainsOutput
    domains: {DomainSummary}
    nextToken: string
end

local record ListPackageGroupsInput
    domain: string
    domainOwner: string
    maxResults: number
    nextToken: string
    prefix: string
end

local record ListPackageGroupsOutput
    packageGroups: {PackageGroupSummary}
    nextToken: string
end

local record ListPackagesInput
    domain: string
    domainOwner: string
    repository: string
    format: string
    namespace: string
    packagePrefix: string
    maxResults: number
    nextToken: string
    publish: string
    upstream: string
end

local record ListPackagesOutput
    packages: {PackageSummary}
    nextToken: string
end

local record ListPackageVersionAssetsInput
    domain: string
    domainOwner: string
    repository: string
    format: string
    namespace: string
    package: string
    packageVersion: string
    maxResults: number
    nextToken: string
end

local record ListPackageVersionAssetsOutput
    format: string
    namespace: string
    package: string
    version: string
    versionRevision: string
    nextToken: string
    assets: {AssetSummary}
end

local record ListPackageVersionDependenciesInput
    domain: string
    domainOwner: string
    repository: string
    format: string
    namespace: string
    package: string
    packageVersion: string
    nextToken: string
end

local record ListPackageVersionDependenciesOutput
    format: string
    namespace: string
    package: string
    version: string
    versionRevision: string
    nextToken: string
    dependencies: {PackageDependency}
end

local record ListPackageVersionsInput
    domain: string
    domainOwner: string
    repository: string
    format: string
    namespace: string
    package: string
    status: string
    sortBy: string
    maxResults: number
    nextToken: string
    originType: string
end

local record ListPackageVersionsOutput
    defaultDisplayVersion: string
    format: string
    namespace: string
    package: string
    versions: {PackageVersionSummary}
    nextToken: string
end

local record ListRepositoriesInput
    repositoryPrefix: string
    maxResults: number
    nextToken: string
end

local record ListRepositoriesOutput
    repositories: {RepositorySummary}
    nextToken: string
end

local record ListRepositoriesInDomainInput
    domain: string
    domainOwner: string
    administratorAccount: string
    repositoryPrefix: string
    maxResults: number
    nextToken: string
end

local record ListRepositoriesInDomainOutput
    repositories: {RepositorySummary}
    nextToken: string
end

local record ListSubPackageGroupsInput
    domain: string
    domainOwner: string
    packageGroup: string
    maxResults: number
    nextToken: string
end

local record ListSubPackageGroupsOutput
    packageGroups: {PackageGroupSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {Tag}
end

local record PublishPackageVersionInput
    domain: string
    domainOwner: string
    repository: string
    format: string
    namespace: string
    package: string
    packageVersion: string
    assetContent: string
    assetName: string
    assetSHA256: string
    unfinished: boolean
end

local record PublishPackageVersionOutput
    format: string
    namespace: string
    package: string
    version: string
    versionRevision: string
    status: string
    asset: AssetSummary
end

local record PutDomainPermissionsPolicyInput
    domain: string
    domainOwner: string
    policyRevision: string
    policyDocument: string
end

local record PutDomainPermissionsPolicyOutput
    policy: ResourcePolicy
end

local record PutPackageOriginConfigurationInput
    domain: string
    domainOwner: string
    repository: string
    format: string
    namespace: string
    package: string
    restrictions: PackageOriginRestrictions
end

local record PutPackageOriginConfigurationOutput
    originConfiguration: PackageOriginConfiguration
end

local record PutRepositoryPermissionsPolicyInput
    domain: string
    domainOwner: string
    repository: string
    policyRevision: string
    policyDocument: string
end

local record PutRepositoryPermissionsPolicyOutput
    policy: ResourcePolicy
end

local record TagResourceInput
    resourceArn: string
    tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdatePackageGroupInput
    domain: string
    domainOwner: string
    packageGroup: string
    contactInfo: string
    description: string
end

local record UpdatePackageGroupOutput
    packageGroup: PackageGroupDescription
end

local record UpdatePackageGroupOriginConfigurationInput
    domain: string
    domainOwner: string
    packageGroup: string
    restrictions: {string : string}
    addAllowedRepositories: {PackageGroupAllowedRepository}
    removeAllowedRepositories: {PackageGroupAllowedRepository}
end

local record UpdatePackageGroupOriginConfigurationOutput
    packageGroup: PackageGroupDescription
    allowedRepositoryUpdates: {string : {string : {string}}}
end

local record UpdatePackageVersionsStatusInput
    domain: string
    domainOwner: string
    repository: string
    format: string
    namespace: string
    package: string
    versions: {string}
    versionRevisions: {string : string}
    expectedStatus: string
    targetStatus: string
end

local record UpdatePackageVersionsStatusOutput
    successfulVersions: {string : SuccessfulPackageVersionInfo}
    failedVersions: {string : PackageVersionError}
end

local record UpdateRepositoryInput
    domain: string
    domainOwner: string
    repository: string
    description: string
    upstreams: {UpstreamRepository}
end

local record UpdateRepositoryOutput
    repository: RepositoryDescription
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

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
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

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
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

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
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

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
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

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
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

local record ValidationException
    message: string
    reason: string
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

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
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

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
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

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
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

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
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

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
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

local record ValidationException
    message: string
    reason: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
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

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
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

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
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

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
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

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
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

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
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

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
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

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
end

local record AccessDeniedException
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

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
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
end

local record AccessDeniedException
    message: string
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
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
end

local record AccessDeniedException
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
end

local type PackageGroupAssociationType = "STRONG" | "WEAK"

local type PackageVersionStatus = "Published" | "Unfinished" | "Unlisted" | "Archived" | "Disposed" | "Deleted"

local type PackageVersionSortType = "PUBLISHED_TIME"

local type AllowUpstream = "ALLOW" | "BLOCK"

local type PackageFormat = "npm" | "pypi" | "maven" | "nuget" | "generic" | "ruby" | "swift" | "cargo"

local type AllowPublish = "ALLOW" | "BLOCK"

local type EndpointType = "dualstack" | "ipv4"

local type PackageGroupOriginRestrictionType = "EXTERNAL_UPSTREAM" | "INTERNAL_UPSTREAM" | "PUBLISH"

local type PackageVersionOriginType = "INTERNAL" | "EXTERNAL" | "UNKNOWN"

local record M
    AssociateExternalConnectionInput: AssociateExternalConnectionInput
    AssociateExternalConnectionOutput: AssociateExternalConnectionOutput
    CopyPackageVersionsInput: CopyPackageVersionsInput
    CopyPackageVersionsOutput: CopyPackageVersionsOutput
    CreateDomainInput: CreateDomainInput
    CreateDomainOutput: CreateDomainOutput
    CreatePackageGroupInput: CreatePackageGroupInput
    CreatePackageGroupOutput: CreatePackageGroupOutput
    CreateRepositoryInput: CreateRepositoryInput
    CreateRepositoryOutput: CreateRepositoryOutput
    DeleteDomainInput: DeleteDomainInput
    DeleteDomainOutput: DeleteDomainOutput
    DeleteDomainPermissionsPolicyInput: DeleteDomainPermissionsPolicyInput
    DeleteDomainPermissionsPolicyOutput: DeleteDomainPermissionsPolicyOutput
    DeletePackageInput: DeletePackageInput
    DeletePackageOutput: DeletePackageOutput
    DeletePackageGroupInput: DeletePackageGroupInput
    DeletePackageGroupOutput: DeletePackageGroupOutput
    DeletePackageVersionsInput: DeletePackageVersionsInput
    DeletePackageVersionsOutput: DeletePackageVersionsOutput
    DeleteRepositoryInput: DeleteRepositoryInput
    DeleteRepositoryOutput: DeleteRepositoryOutput
    DeleteRepositoryPermissionsPolicyInput: DeleteRepositoryPermissionsPolicyInput
    DeleteRepositoryPermissionsPolicyOutput: DeleteRepositoryPermissionsPolicyOutput
    DescribeDomainInput: DescribeDomainInput
    DescribeDomainOutput: DescribeDomainOutput
    DescribePackageInput: DescribePackageInput
    DescribePackageOutput: DescribePackageOutput
    DescribePackageGroupInput: DescribePackageGroupInput
    DescribePackageGroupOutput: DescribePackageGroupOutput
    DescribePackageVersionInput: DescribePackageVersionInput
    DescribePackageVersionOutput: DescribePackageVersionOutput
    DescribeRepositoryInput: DescribeRepositoryInput
    DescribeRepositoryOutput: DescribeRepositoryOutput
    DisassociateExternalConnectionInput: DisassociateExternalConnectionInput
    DisassociateExternalConnectionOutput: DisassociateExternalConnectionOutput
    DisposePackageVersionsInput: DisposePackageVersionsInput
    DisposePackageVersionsOutput: DisposePackageVersionsOutput
    GetAssociatedPackageGroupInput: GetAssociatedPackageGroupInput
    GetAssociatedPackageGroupOutput: GetAssociatedPackageGroupOutput
    GetAuthorizationTokenInput: GetAuthorizationTokenInput
    GetAuthorizationTokenOutput: GetAuthorizationTokenOutput
    GetDomainPermissionsPolicyInput: GetDomainPermissionsPolicyInput
    GetDomainPermissionsPolicyOutput: GetDomainPermissionsPolicyOutput
    GetPackageVersionAssetInput: GetPackageVersionAssetInput
    GetPackageVersionAssetOutput: GetPackageVersionAssetOutput
    GetPackageVersionReadmeInput: GetPackageVersionReadmeInput
    GetPackageVersionReadmeOutput: GetPackageVersionReadmeOutput
    GetRepositoryEndpointInput: GetRepositoryEndpointInput
    GetRepositoryEndpointOutput: GetRepositoryEndpointOutput
    GetRepositoryPermissionsPolicyInput: GetRepositoryPermissionsPolicyInput
    GetRepositoryPermissionsPolicyOutput: GetRepositoryPermissionsPolicyOutput
    ListAllowedRepositoriesForGroupInput: ListAllowedRepositoriesForGroupInput
    ListAllowedRepositoriesForGroupOutput: ListAllowedRepositoriesForGroupOutput
    ListAssociatedPackagesInput: ListAssociatedPackagesInput
    ListAssociatedPackagesOutput: ListAssociatedPackagesOutput
    ListDomainsInput: ListDomainsInput
    ListDomainsOutput: ListDomainsOutput
    ListPackageGroupsInput: ListPackageGroupsInput
    ListPackageGroupsOutput: ListPackageGroupsOutput
    ListPackagesInput: ListPackagesInput
    ListPackagesOutput: ListPackagesOutput
    ListPackageVersionAssetsInput: ListPackageVersionAssetsInput
    ListPackageVersionAssetsOutput: ListPackageVersionAssetsOutput
    ListPackageVersionDependenciesInput: ListPackageVersionDependenciesInput
    ListPackageVersionDependenciesOutput: ListPackageVersionDependenciesOutput
    ListPackageVersionsInput: ListPackageVersionsInput
    ListPackageVersionsOutput: ListPackageVersionsOutput
    ListRepositoriesInput: ListRepositoriesInput
    ListRepositoriesOutput: ListRepositoriesOutput
    ListRepositoriesInDomainInput: ListRepositoriesInDomainInput
    ListRepositoriesInDomainOutput: ListRepositoriesInDomainOutput
    ListSubPackageGroupsInput: ListSubPackageGroupsInput
    ListSubPackageGroupsOutput: ListSubPackageGroupsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PublishPackageVersionInput: PublishPackageVersionInput
    PublishPackageVersionOutput: PublishPackageVersionOutput
    PutDomainPermissionsPolicyInput: PutDomainPermissionsPolicyInput
    PutDomainPermissionsPolicyOutput: PutDomainPermissionsPolicyOutput
    PutPackageOriginConfigurationInput: PutPackageOriginConfigurationInput
    PutPackageOriginConfigurationOutput: PutPackageOriginConfigurationOutput
    PutRepositoryPermissionsPolicyInput: PutRepositoryPermissionsPolicyInput
    PutRepositoryPermissionsPolicyOutput: PutRepositoryPermissionsPolicyOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdatePackageGroupInput: UpdatePackageGroupInput
    UpdatePackageGroupOutput: UpdatePackageGroupOutput
    UpdatePackageGroupOriginConfigurationInput: UpdatePackageGroupOriginConfigurationInput
    UpdatePackageGroupOriginConfigurationOutput: UpdatePackageGroupOriginConfigurationOutput
    UpdatePackageVersionsStatusInput: UpdatePackageVersionsStatusInput
    UpdatePackageVersionsStatusOutput: UpdatePackageVersionsStatusOutput
    UpdateRepositoryInput: UpdateRepositoryInput
    UpdateRepositoryOutput: UpdateRepositoryOutput
end

return M
