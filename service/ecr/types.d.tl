local record BatchCheckLayerAvailabilityInput
    registryId: string
    repositoryName: string
    layerDigests: {string}
end

local record BatchCheckLayerAvailabilityOutput
    layers: {Layer}
    failures: {LayerFailure}
end

local record BatchDeleteImageInput
    registryId: string
    repositoryName: string
    imageIds: {ImageIdentifier}
end

local record BatchDeleteImageOutput
    imageIds: {ImageIdentifier}
    failures: {ImageFailure}
end

local record BatchGetImageInput
    registryId: string
    repositoryName: string
    imageIds: {ImageIdentifier}
    acceptedMediaTypes: {string}
end

local record BatchGetImageOutput
    images: {Image}
    failures: {ImageFailure}
end

local record BatchGetRepositoryScanningConfigurationInput
    repositoryNames: {string}
end

local record BatchGetRepositoryScanningConfigurationOutput
    scanningConfigurations: {RepositoryScanningConfiguration}
    failures: {RepositoryScanningConfigurationFailure}
end

local record CompleteLayerUploadInput
    registryId: string
    repositoryName: string
    uploadId: string
    layerDigests: {string}
end

local record CompleteLayerUploadOutput
    registryId: string
    repositoryName: string
    uploadId: string
    layerDigest: string
end

local record CreatePullThroughCacheRuleInput
    ecrRepositoryPrefix: string
    upstreamRegistryUrl: string
    registryId: string
    upstreamRegistry: string
    credentialArn: string
    customRoleArn: string
    upstreamRepositoryPrefix: string
end

local record CreatePullThroughCacheRuleOutput
    ecrRepositoryPrefix: string
    upstreamRegistryUrl: string
    createdAt: number
    registryId: string
    upstreamRegistry: string
    credentialArn: string
    customRoleArn: string
    upstreamRepositoryPrefix: string
end

local record CreateRepositoryInput
    registryId: string
    repositoryName: string
    tags: {Tag}
    imageTagMutability: string
    imageTagMutabilityExclusionFilters: {ImageTagMutabilityExclusionFilter}
    imageScanningConfiguration: ImageScanningConfiguration
    encryptionConfiguration: EncryptionConfiguration
end

local record CreateRepositoryOutput
    repository: Repository
end

local record CreateRepositoryCreationTemplateInput
    prefix: string
    description: string
    encryptionConfiguration: EncryptionConfigurationForRepositoryCreationTemplate
    resourceTags: {Tag}
    imageTagMutability: string
    imageTagMutabilityExclusionFilters: {ImageTagMutabilityExclusionFilter}
    repositoryPolicy: string
    lifecyclePolicy: string
    appliedFor: {string}
    customRoleArn: string
end

local record CreateRepositoryCreationTemplateOutput
    registryId: string
    repositoryCreationTemplate: RepositoryCreationTemplate
end

local record DeleteLifecyclePolicyInput
    registryId: string
    repositoryName: string
end

local record DeleteLifecyclePolicyOutput
    registryId: string
    repositoryName: string
    lifecyclePolicyText: string
    lastEvaluatedAt: number
end

local record DeletePullThroughCacheRuleInput
    ecrRepositoryPrefix: string
    registryId: string
end

local record DeletePullThroughCacheRuleOutput
    ecrRepositoryPrefix: string
    upstreamRegistryUrl: string
    createdAt: number
    registryId: string
    credentialArn: string
    customRoleArn: string
    upstreamRepositoryPrefix: string
end

local record DeleteRegistryPolicyInput
end

local record DeleteRegistryPolicyOutput
    registryId: string
    policyText: string
end

local record DeleteRepositoryInput
    registryId: string
    repositoryName: string
    force: boolean
end

local record DeleteRepositoryOutput
    repository: Repository
end

local record DeleteRepositoryCreationTemplateInput
    prefix: string
end

local record DeleteRepositoryCreationTemplateOutput
    registryId: string
    repositoryCreationTemplate: RepositoryCreationTemplate
end

local record DeleteRepositoryPolicyInput
    registryId: string
    repositoryName: string
end

local record DeleteRepositoryPolicyOutput
    registryId: string
    repositoryName: string
    policyText: string
end

local record DeleteSigningConfigurationInput
end

local record DeleteSigningConfigurationOutput
    registryId: string
    signingConfiguration: SigningConfiguration
end

local record DeregisterPullTimeUpdateExclusionInput
    principalArn: string
end

local record DeregisterPullTimeUpdateExclusionOutput
    principalArn: string
end

local record DescribeImageReplicationStatusInput
    repositoryName: string
    imageId: ImageIdentifier
    registryId: string
end

local record DescribeImageReplicationStatusOutput
    repositoryName: string
    imageId: ImageIdentifier
    replicationStatuses: {ImageReplicationStatus}
end

local record DescribeImagesInput
    registryId: string
    repositoryName: string
    imageIds: {ImageIdentifier}
    nextToken: string
    maxResults: number
    filter: DescribeImagesFilter
end

local record DescribeImagesOutput
    imageDetails: {ImageDetail}
    nextToken: string
end

local record DescribeImageScanFindingsInput
    registryId: string
    repositoryName: string
    imageId: ImageIdentifier
    nextToken: string
    maxResults: number
end

local record DescribeImageScanFindingsOutput
    registryId: string
    repositoryName: string
    imageId: ImageIdentifier
    imageScanStatus: ImageScanStatus
    imageScanFindings: ImageScanFindings
    nextToken: string
end

local record DescribeImageSigningStatusInput
    repositoryName: string
    imageId: ImageIdentifier
    registryId: string
end

local record DescribeImageSigningStatusOutput
    repositoryName: string
    imageId: ImageIdentifier
    registryId: string
    signingStatuses: {ImageSigningStatus}
end

local record DescribePullThroughCacheRulesInput
    registryId: string
    ecrRepositoryPrefixes: {string}
    nextToken: string
    maxResults: number
end

local record DescribePullThroughCacheRulesOutput
    pullThroughCacheRules: {PullThroughCacheRule}
    nextToken: string
end

local record DescribeRegistryInput
end

local record DescribeRegistryOutput
    registryId: string
    replicationConfiguration: ReplicationConfiguration
end

local record DescribeRepositoriesInput
    registryId: string
    repositoryNames: {string}
    nextToken: string
    maxResults: number
end

local record DescribeRepositoriesOutput
    repositories: {Repository}
    nextToken: string
end

local record DescribeRepositoryCreationTemplatesInput
    prefixes: {string}
    nextToken: string
    maxResults: number
end

local record DescribeRepositoryCreationTemplatesOutput
    registryId: string
    repositoryCreationTemplates: {RepositoryCreationTemplate}
    nextToken: string
end

local record GetAccountSettingInput
    name: string
end

local record GetAccountSettingOutput
    name: string
    value: string
end

local record GetAuthorizationTokenInput
    registryIds: {string}
end

local record GetAuthorizationTokenOutput
    authorizationData: {AuthorizationData}
end

local record GetDownloadUrlForLayerInput
    registryId: string
    repositoryName: string
    layerDigest: string
end

local record GetDownloadUrlForLayerOutput
    downloadUrl: string
    layerDigest: string
end

local record GetLifecyclePolicyInput
    registryId: string
    repositoryName: string
end

local record GetLifecyclePolicyOutput
    registryId: string
    repositoryName: string
    lifecyclePolicyText: string
    lastEvaluatedAt: number
end

local record GetLifecyclePolicyPreviewInput
    registryId: string
    repositoryName: string
    imageIds: {ImageIdentifier}
    nextToken: string
    maxResults: number
    filter: LifecyclePolicyPreviewFilter
end

local record GetLifecyclePolicyPreviewOutput
    registryId: string
    repositoryName: string
    lifecyclePolicyText: string
    status: string
    nextToken: string
    previewResults: {LifecyclePolicyPreviewResult}
    summary: LifecyclePolicyPreviewSummary
end

local record GetRegistryPolicyInput
end

local record GetRegistryPolicyOutput
    registryId: string
    policyText: string
end

local record GetRegistryScanningConfigurationInput
end

local record GetRegistryScanningConfigurationOutput
    registryId: string
    scanningConfiguration: RegistryScanningConfiguration
end

local record GetRepositoryPolicyInput
    registryId: string
    repositoryName: string
end

local record GetRepositoryPolicyOutput
    registryId: string
    repositoryName: string
    policyText: string
end

local record GetSigningConfigurationInput
end

local record GetSigningConfigurationOutput
    registryId: string
    signingConfiguration: SigningConfiguration
end

local record InitiateLayerUploadInput
    registryId: string
    repositoryName: string
end

local record InitiateLayerUploadOutput
    uploadId: string
    partSize: number
end

local record ListImageReferrersInput
    registryId: string
    repositoryName: string
    subjectId: SubjectIdentifier
    filter: ListImageReferrersFilter
    nextToken: string
    maxResults: number
end

local record ListImageReferrersOutput
    referrers: {ImageReferrer}
    nextToken: string
end

local record ListImagesInput
    registryId: string
    repositoryName: string
    nextToken: string
    maxResults: number
    filter: ListImagesFilter
end

local record ListImagesOutput
    imageIds: {ImageIdentifier}
    nextToken: string
end

local record ListPullTimeUpdateExclusionsInput
    maxResults: number
    nextToken: string
end

local record ListPullTimeUpdateExclusionsOutput
    pullTimeUpdateExclusions: {string}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {Tag}
end

local record PutAccountSettingInput
    name: string
    value: string
end

local record PutAccountSettingOutput
    name: string
    value: string
end

local record PutImageInput
    registryId: string
    repositoryName: string
    imageManifest: string
    imageManifestMediaType: string
    imageTag: string
    imageDigest: string
end

local record PutImageOutput
    image: Image
end

local record PutImageScanningConfigurationInput
    registryId: string
    repositoryName: string
    imageScanningConfiguration: ImageScanningConfiguration
end

local record PutImageScanningConfigurationOutput
    registryId: string
    repositoryName: string
    imageScanningConfiguration: ImageScanningConfiguration
end

local record PutImageTagMutabilityInput
    registryId: string
    repositoryName: string
    imageTagMutability: string
    imageTagMutabilityExclusionFilters: {ImageTagMutabilityExclusionFilter}
end

local record PutImageTagMutabilityOutput
    registryId: string
    repositoryName: string
    imageTagMutability: string
    imageTagMutabilityExclusionFilters: {ImageTagMutabilityExclusionFilter}
end

local record PutLifecyclePolicyInput
    registryId: string
    repositoryName: string
    lifecyclePolicyText: string
end

local record PutLifecyclePolicyOutput
    registryId: string
    repositoryName: string
    lifecyclePolicyText: string
end

local record PutRegistryPolicyInput
    policyText: string
end

local record PutRegistryPolicyOutput
    registryId: string
    policyText: string
end

local record PutRegistryScanningConfigurationInput
    scanType: string
    rules: {RegistryScanningRule}
end

local record PutRegistryScanningConfigurationOutput
    registryScanningConfiguration: RegistryScanningConfiguration
end

local record PutReplicationConfigurationInput
    replicationConfiguration: ReplicationConfiguration
end

local record PutReplicationConfigurationOutput
    replicationConfiguration: ReplicationConfiguration
end

local record PutSigningConfigurationInput
    signingConfiguration: SigningConfiguration
end

local record PutSigningConfigurationOutput
    signingConfiguration: SigningConfiguration
end

local record RegisterPullTimeUpdateExclusionInput
    principalArn: string
end

local record RegisterPullTimeUpdateExclusionOutput
    principalArn: string
    createdAt: number
end

local record SetRepositoryPolicyInput
    registryId: string
    repositoryName: string
    policyText: string
    force: boolean
end

local record SetRepositoryPolicyOutput
    registryId: string
    repositoryName: string
    policyText: string
end

local record StartImageScanInput
    registryId: string
    repositoryName: string
    imageId: ImageIdentifier
end

local record StartImageScanOutput
    registryId: string
    repositoryName: string
    imageId: ImageIdentifier
    imageScanStatus: ImageScanStatus
end

local record StartLifecyclePolicyPreviewInput
    registryId: string
    repositoryName: string
    lifecyclePolicyText: string
end

local record StartLifecyclePolicyPreviewOutput
    registryId: string
    repositoryName: string
    lifecyclePolicyText: string
    status: string
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

local record UpdateImageStorageClassInput
    registryId: string
    repositoryName: string
    imageId: ImageIdentifier
    targetStorageClass: string
end

local record UpdateImageStorageClassOutput
    registryId: string
    repositoryName: string
    imageId: ImageIdentifier
    imageStatus: string
end

local record UpdatePullThroughCacheRuleInput
    registryId: string
    ecrRepositoryPrefix: string
    credentialArn: string
    customRoleArn: string
end

local record UpdatePullThroughCacheRuleOutput
    ecrRepositoryPrefix: string
    registryId: string
    updatedAt: number
    credentialArn: string
    customRoleArn: string
    upstreamRepositoryPrefix: string
end

local record UpdateRepositoryCreationTemplateInput
    prefix: string
    description: string
    encryptionConfiguration: EncryptionConfigurationForRepositoryCreationTemplate
    resourceTags: {Tag}
    imageTagMutability: string
    imageTagMutabilityExclusionFilters: {ImageTagMutabilityExclusionFilter}
    repositoryPolicy: string
    lifecyclePolicy: string
    appliedFor: {string}
    customRoleArn: string
end

local record UpdateRepositoryCreationTemplateOutput
    registryId: string
    repositoryCreationTemplate: RepositoryCreationTemplate
end

local record UploadLayerPartInput
    registryId: string
    repositoryName: string
    uploadId: string
    partFirstByte: number
    partLastByte: number
    layerPartBlob: string
end

local record UploadLayerPartOutput
    registryId: string
    repositoryName: string
    uploadId: string
    lastByteReceived: number
end

local record ValidatePullThroughCacheRuleInput
    ecrRepositoryPrefix: string
    registryId: string
end

local record ValidatePullThroughCacheRuleOutput
    ecrRepositoryPrefix: string
    registryId: string
    upstreamRegistryUrl: string
    credentialArn: string
    customRoleArn: string
    upstreamRepositoryPrefix: string
    isValid: boolean
    failure: string
end

local record InvalidParameterException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record UnableToGetUpstreamImageException
    message: string
end

local record InvalidParameterException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local record EmptyUploadException
    message: string
end

local record InvalidLayerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record KmsException
    message: string
    kmsError: string
end

local record LayerAlreadyExistsException
    message: string
end

local record LayerPartTooSmallException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record UploadNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record PullThroughCacheRuleAlreadyExistsException
    message: string
end

local record SecretNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record UnableToAccessSecretException
    message: string
end

local record UnableToDecryptSecretValueException
    message: string
end

local record UnsupportedUpstreamRegistryException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidTagParameterException
    message: string
end

local record KmsException
    message: string
    kmsError: string
end

local record LimitExceededException
    message: string
end

local record RepositoryAlreadyExistsException
    message: string
end

local record ServerException
    message: string
end

local record TooManyTagsException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record ServerException
    message: string
end

local record TemplateAlreadyExistsException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LifecyclePolicyNotFoundException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record PullThroughCacheRuleNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record RegistryPolicyNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record KmsException
    message: string
    kmsError: string
end

local record RepositoryNotEmptyException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record TemplateNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record RepositoryPolicyNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record ServerException
    message: string
end

local record SigningConfigurationNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ExclusionNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local record ImageNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local record ImageNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record ImageNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ScanNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local record ImageNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record PullThroughCacheRuleNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LayerInaccessibleException
    message: string
end

local record LayersNotFoundException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record UnableToGetUpstreamLayerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LifecyclePolicyNotFoundException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LifecyclePolicyPreviewNotFoundException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record RegistryPolicyNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record RepositoryPolicyNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record SigningConfigurationNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record KmsException
    message: string
    kmsError: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record UnableToListUpstreamImageReferrersException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local record ImageAlreadyExistsException
    message: string
end

local record ImageDigestDoesNotMatchException
    message: string
end

local record ImageTagAlreadyExistsException
    message: string
end

local record InvalidParameterException
    message: string
end

local record KmsException
    message: string
    kmsError: string
end

local record LayersNotFoundException
    message: string
end

local record LimitExceededException
    message: string
end

local record ReferencedImagesNotFoundException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local record BlockedByOrganizationPolicyException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local record ExclusionAlreadyExistsException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record ImageArchivedException
    message: string
end

local record ImageNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LimitExceededException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record UnsupportedImageTypeException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LifecyclePolicyNotFoundException
    message: string
end

local record LifecyclePolicyPreviewInProgressException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidTagParameterException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record TooManyTagsException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidTagParameterException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record TooManyTagsException
    message: string
end

local record ImageNotFoundException
    message: string
end

local record ImageStorageClassUpdateNotSupportedException
    message: string
end

local record InvalidParameterException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record PullThroughCacheRuleNotFoundException
    message: string
end

local record SecretNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record UnableToAccessSecretException
    message: string
end

local record UnableToDecryptSecretValueException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerException
    message: string
end

local record TemplateNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidLayerPartException
    registryId: string
    repositoryName: string
    uploadId: string
    lastValidByteReceived: number
    message: string
end

local record InvalidParameterException
    message: string
end

local record KmsException
    message: string
    kmsError: string
end

local record LimitExceededException
    message: string
end

local record RepositoryNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record UploadNotFoundException
    message: string
end

local record InvalidParameterException
    message: string
end

local record PullThroughCacheRuleNotFoundException
    message: string
end

local record ServerException
    message: string
end

local record ValidationException
    message: string
end

local type TargetStorageClass = "STANDARD" | "ARCHIVE"

local type UpstreamRegistry = "ecr" | "ecr-public" | "quay" | "k8s" | "docker-hub" | "github-container-registry" | "azure-container-registry" | "gitlab-container-registry" | "chainguard"

local type ImageTagMutability = "MUTABLE" | "IMMUTABLE" | "IMMUTABLE_WITH_EXCLUSION" | "MUTABLE_WITH_EXCLUSION"

local type ImageStatus = "ACTIVE" | "ARCHIVED" | "ACTIVATING"

local type ScanType = "BASIC" | "ENHANCED"

local type LifecyclePolicyPreviewStatus = "IN_PROGRESS" | "COMPLETE" | "EXPIRED" | "FAILED"

local record M
    BatchCheckLayerAvailabilityInput: BatchCheckLayerAvailabilityInput
    BatchCheckLayerAvailabilityOutput: BatchCheckLayerAvailabilityOutput
    BatchDeleteImageInput: BatchDeleteImageInput
    BatchDeleteImageOutput: BatchDeleteImageOutput
    BatchGetImageInput: BatchGetImageInput
    BatchGetImageOutput: BatchGetImageOutput
    BatchGetRepositoryScanningConfigurationInput: BatchGetRepositoryScanningConfigurationInput
    BatchGetRepositoryScanningConfigurationOutput: BatchGetRepositoryScanningConfigurationOutput
    CompleteLayerUploadInput: CompleteLayerUploadInput
    CompleteLayerUploadOutput: CompleteLayerUploadOutput
    CreatePullThroughCacheRuleInput: CreatePullThroughCacheRuleInput
    CreatePullThroughCacheRuleOutput: CreatePullThroughCacheRuleOutput
    CreateRepositoryInput: CreateRepositoryInput
    CreateRepositoryOutput: CreateRepositoryOutput
    CreateRepositoryCreationTemplateInput: CreateRepositoryCreationTemplateInput
    CreateRepositoryCreationTemplateOutput: CreateRepositoryCreationTemplateOutput
    DeleteLifecyclePolicyInput: DeleteLifecyclePolicyInput
    DeleteLifecyclePolicyOutput: DeleteLifecyclePolicyOutput
    DeletePullThroughCacheRuleInput: DeletePullThroughCacheRuleInput
    DeletePullThroughCacheRuleOutput: DeletePullThroughCacheRuleOutput
    DeleteRegistryPolicyInput: DeleteRegistryPolicyInput
    DeleteRegistryPolicyOutput: DeleteRegistryPolicyOutput
    DeleteRepositoryInput: DeleteRepositoryInput
    DeleteRepositoryOutput: DeleteRepositoryOutput
    DeleteRepositoryCreationTemplateInput: DeleteRepositoryCreationTemplateInput
    DeleteRepositoryCreationTemplateOutput: DeleteRepositoryCreationTemplateOutput
    DeleteRepositoryPolicyInput: DeleteRepositoryPolicyInput
    DeleteRepositoryPolicyOutput: DeleteRepositoryPolicyOutput
    DeleteSigningConfigurationInput: DeleteSigningConfigurationInput
    DeleteSigningConfigurationOutput: DeleteSigningConfigurationOutput
    DeregisterPullTimeUpdateExclusionInput: DeregisterPullTimeUpdateExclusionInput
    DeregisterPullTimeUpdateExclusionOutput: DeregisterPullTimeUpdateExclusionOutput
    DescribeImageReplicationStatusInput: DescribeImageReplicationStatusInput
    DescribeImageReplicationStatusOutput: DescribeImageReplicationStatusOutput
    DescribeImagesInput: DescribeImagesInput
    DescribeImagesOutput: DescribeImagesOutput
    DescribeImageScanFindingsInput: DescribeImageScanFindingsInput
    DescribeImageScanFindingsOutput: DescribeImageScanFindingsOutput
    DescribeImageSigningStatusInput: DescribeImageSigningStatusInput
    DescribeImageSigningStatusOutput: DescribeImageSigningStatusOutput
    DescribePullThroughCacheRulesInput: DescribePullThroughCacheRulesInput
    DescribePullThroughCacheRulesOutput: DescribePullThroughCacheRulesOutput
    DescribeRegistryInput: DescribeRegistryInput
    DescribeRegistryOutput: DescribeRegistryOutput
    DescribeRepositoriesInput: DescribeRepositoriesInput
    DescribeRepositoriesOutput: DescribeRepositoriesOutput
    DescribeRepositoryCreationTemplatesInput: DescribeRepositoryCreationTemplatesInput
    DescribeRepositoryCreationTemplatesOutput: DescribeRepositoryCreationTemplatesOutput
    GetAccountSettingInput: GetAccountSettingInput
    GetAccountSettingOutput: GetAccountSettingOutput
    GetAuthorizationTokenInput: GetAuthorizationTokenInput
    GetAuthorizationTokenOutput: GetAuthorizationTokenOutput
    GetDownloadUrlForLayerInput: GetDownloadUrlForLayerInput
    GetDownloadUrlForLayerOutput: GetDownloadUrlForLayerOutput
    GetLifecyclePolicyInput: GetLifecyclePolicyInput
    GetLifecyclePolicyOutput: GetLifecyclePolicyOutput
    GetLifecyclePolicyPreviewInput: GetLifecyclePolicyPreviewInput
    GetLifecyclePolicyPreviewOutput: GetLifecyclePolicyPreviewOutput
    GetRegistryPolicyInput: GetRegistryPolicyInput
    GetRegistryPolicyOutput: GetRegistryPolicyOutput
    GetRegistryScanningConfigurationInput: GetRegistryScanningConfigurationInput
    GetRegistryScanningConfigurationOutput: GetRegistryScanningConfigurationOutput
    GetRepositoryPolicyInput: GetRepositoryPolicyInput
    GetRepositoryPolicyOutput: GetRepositoryPolicyOutput
    GetSigningConfigurationInput: GetSigningConfigurationInput
    GetSigningConfigurationOutput: GetSigningConfigurationOutput
    InitiateLayerUploadInput: InitiateLayerUploadInput
    InitiateLayerUploadOutput: InitiateLayerUploadOutput
    ListImageReferrersInput: ListImageReferrersInput
    ListImageReferrersOutput: ListImageReferrersOutput
    ListImagesInput: ListImagesInput
    ListImagesOutput: ListImagesOutput
    ListPullTimeUpdateExclusionsInput: ListPullTimeUpdateExclusionsInput
    ListPullTimeUpdateExclusionsOutput: ListPullTimeUpdateExclusionsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutAccountSettingInput: PutAccountSettingInput
    PutAccountSettingOutput: PutAccountSettingOutput
    PutImageInput: PutImageInput
    PutImageOutput: PutImageOutput
    PutImageScanningConfigurationInput: PutImageScanningConfigurationInput
    PutImageScanningConfigurationOutput: PutImageScanningConfigurationOutput
    PutImageTagMutabilityInput: PutImageTagMutabilityInput
    PutImageTagMutabilityOutput: PutImageTagMutabilityOutput
    PutLifecyclePolicyInput: PutLifecyclePolicyInput
    PutLifecyclePolicyOutput: PutLifecyclePolicyOutput
    PutRegistryPolicyInput: PutRegistryPolicyInput
    PutRegistryPolicyOutput: PutRegistryPolicyOutput
    PutRegistryScanningConfigurationInput: PutRegistryScanningConfigurationInput
    PutRegistryScanningConfigurationOutput: PutRegistryScanningConfigurationOutput
    PutReplicationConfigurationInput: PutReplicationConfigurationInput
    PutReplicationConfigurationOutput: PutReplicationConfigurationOutput
    PutSigningConfigurationInput: PutSigningConfigurationInput
    PutSigningConfigurationOutput: PutSigningConfigurationOutput
    RegisterPullTimeUpdateExclusionInput: RegisterPullTimeUpdateExclusionInput
    RegisterPullTimeUpdateExclusionOutput: RegisterPullTimeUpdateExclusionOutput
    SetRepositoryPolicyInput: SetRepositoryPolicyInput
    SetRepositoryPolicyOutput: SetRepositoryPolicyOutput
    StartImageScanInput: StartImageScanInput
    StartImageScanOutput: StartImageScanOutput
    StartLifecyclePolicyPreviewInput: StartLifecyclePolicyPreviewInput
    StartLifecyclePolicyPreviewOutput: StartLifecyclePolicyPreviewOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateImageStorageClassInput: UpdateImageStorageClassInput
    UpdateImageStorageClassOutput: UpdateImageStorageClassOutput
    UpdatePullThroughCacheRuleInput: UpdatePullThroughCacheRuleInput
    UpdatePullThroughCacheRuleOutput: UpdatePullThroughCacheRuleOutput
    UpdateRepositoryCreationTemplateInput: UpdateRepositoryCreationTemplateInput
    UpdateRepositoryCreationTemplateOutput: UpdateRepositoryCreationTemplateOutput
    UploadLayerPartInput: UploadLayerPartInput
    UploadLayerPartOutput: UploadLayerPartOutput
    ValidatePullThroughCacheRuleInput: ValidatePullThroughCacheRuleInput
    ValidatePullThroughCacheRuleOutput: ValidatePullThroughCacheRuleOutput
end

return M
