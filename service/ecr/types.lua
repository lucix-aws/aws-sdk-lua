local M = {}

M.BatchCheckLayerAvailabilityInput = {
    type = "structure",
    id = "BatchCheckLayerAvailabilityInput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        layerDigests = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.LayerFailureCode = {
    InvalidLayerDigest = "InvalidLayerDigest",
    MissingLayerDigest = "MissingLayerDigest",
}

M.LayerFailure = {
    type = "structure",
    id = "LayerFailure",
    members = {
        layerDigest = {
            type = "string",
        },
        failureCode = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
    },
}

M.LayerAvailability = {
    AVAILABLE = "AVAILABLE",
    UNAVAILABLE = "UNAVAILABLE",
    ARCHIVED = "ARCHIVED",
}

M.Layer = {
    type = "structure",
    id = "Layer",
    members = {
        layerDigest = {
            type = "string",
        },
        layerAvailability = {
            type = "string",
        },
        layerSize = {
            type = "long",
        },
        mediaType = {
            type = "string",
        },
    },
}

M.BatchCheckLayerAvailabilityOutput = {
    type = "structure",
    id = "BatchCheckLayerAvailabilityOutput",
    members = {
        layers = {
            type = "list",
            member = M.Layer,
        },
        failures = {
            type = "list",
            member = M.LayerFailure,
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    id = "InvalidParameterException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RepositoryNotFoundException = {
    type = "structure",
    id = "RepositoryNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServerException = {
    type = "structure",
    id = "ServerException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ImageIdentifier = {
    type = "structure",
    id = "ImageIdentifier",
    members = {
        imageDigest = {
            type = "string",
        },
        imageTag = {
            type = "string",
        },
    },
}

M.BatchDeleteImageInput = {
    type = "structure",
    id = "BatchDeleteImageInput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageIds = {
            type = "list",
            member = M.ImageIdentifier,
            traits = {
                required = true,
            },
        },
    },
}

M.ImageFailureCode = {
    InvalidImageDigest = "InvalidImageDigest",
    InvalidImageTag = "InvalidImageTag",
    ImageTagDoesNotMatchDigest = "ImageTagDoesNotMatchDigest",
    ImageNotFound = "ImageNotFound",
    MissingDigestAndTag = "MissingDigestAndTag",
    ImageReferencedByManifestList = "ImageReferencedByManifestList",
    KmsError = "KmsError",
    UpstreamAccessDenied = "UpstreamAccessDenied",
    UpstreamTooManyRequests = "UpstreamTooManyRequests",
    UpstreamUnavailable = "UpstreamUnavailable",
    ImageInaccessible = "ImageInaccessible",
}

M.ImageFailure = {
    type = "structure",
    id = "ImageFailure",
    members = {
        imageId = M.ImageIdentifier,
        failureCode = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
    },
}

M.BatchDeleteImageOutput = {
    type = "structure",
    id = "BatchDeleteImageOutput",
    members = {
        imageIds = {
            type = "list",
            member = M.ImageIdentifier,
        },
        failures = {
            type = "list",
            member = M.ImageFailure,
        },
    },
}

M.BatchGetImageInput = {
    type = "structure",
    id = "BatchGetImageInput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageIds = {
            type = "list",
            member = M.ImageIdentifier,
            traits = {
                required = true,
            },
        },
        acceptedMediaTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Image = {
    type = "structure",
    id = "Image",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
        },
        imageId = M.ImageIdentifier,
        imageManifest = {
            type = "string",
        },
        imageManifestMediaType = {
            type = "string",
        },
    },
}

M.BatchGetImageOutput = {
    type = "structure",
    id = "BatchGetImageOutput",
    members = {
        images = {
            type = "list",
            member = M.Image,
        },
        failures = {
            type = "list",
            member = M.ImageFailure,
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnableToGetUpstreamImageException = {
    type = "structure",
    id = "UnableToGetUpstreamImageException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchGetRepositoryScanningConfigurationInput = {
    type = "structure",
    id = "BatchGetRepositoryScanningConfigurationInput",
    members = {
        repositoryNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ScanningConfigurationFailureCode = {
    REPOSITORY_NOT_FOUND = "REPOSITORY_NOT_FOUND",
}

M.RepositoryScanningConfigurationFailure = {
    type = "structure",
    id = "RepositoryScanningConfigurationFailure",
    members = {
        repositoryName = {
            type = "string",
        },
        failureCode = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
    },
}

M.ScanningRepositoryFilterType = {
    WILDCARD = "WILDCARD",
}

M.ScanningRepositoryFilter = {
    type = "structure",
    id = "ScanningRepositoryFilter",
    members = {
        filter = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ScanFrequency = {
    SCAN_ON_PUSH = "SCAN_ON_PUSH",
    CONTINUOUS_SCAN = "CONTINUOUS_SCAN",
    MANUAL = "MANUAL",
}

M.RepositoryScanningConfiguration = {
    type = "structure",
    id = "RepositoryScanningConfiguration",
    members = {
        repositoryArn = {
            type = "string",
        },
        repositoryName = {
            type = "string",
        },
        scanOnPush = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        scanFrequency = {
            type = "string",
        },
        appliedScanFilters = {
            type = "list",
            member = M.ScanningRepositoryFilter,
        },
    },
}

M.BatchGetRepositoryScanningConfigurationOutput = {
    type = "structure",
    id = "BatchGetRepositoryScanningConfigurationOutput",
    members = {
        scanningConfigurations = {
            type = "list",
            member = M.RepositoryScanningConfiguration,
        },
        failures = {
            type = "list",
            member = M.RepositoryScanningConfigurationFailure,
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CompleteLayerUploadInput = {
    type = "structure",
    id = "CompleteLayerUploadInput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        uploadId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        layerDigests = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CompleteLayerUploadOutput = {
    type = "structure",
    id = "CompleteLayerUploadOutput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
        },
        uploadId = {
            type = "string",
        },
        layerDigest = {
            type = "string",
        },
    },
}

M.EmptyUploadException = {
    type = "structure",
    id = "EmptyUploadException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidLayerException = {
    type = "structure",
    id = "InvalidLayerException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KmsException = {
    type = "structure",
    id = "KmsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        kmsError = {
            type = "string",
        },
    },
}

M.LayerAlreadyExistsException = {
    type = "structure",
    id = "LayerAlreadyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LayerPartTooSmallException = {
    type = "structure",
    id = "LayerPartTooSmallException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UploadNotFoundException = {
    type = "structure",
    id = "UploadNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpstreamRegistry = {
    Ecr = "ecr",
    EcrPublic = "ecr-public",
    Quay = "quay",
    K8s = "k8s",
    DockerHub = "docker-hub",
    GitHubContainerRegistry = "github-container-registry",
    AzureContainerRegistry = "azure-container-registry",
    GitLabContainerRegistry = "gitlab-container-registry",
    Chainguard = "chainguard",
}

M.CreatePullThroughCacheRuleInput = {
    type = "structure",
    id = "CreatePullThroughCacheRuleInput",
    members = {
        ecrRepositoryPrefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
        upstreamRegistryUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        registryId = {
            type = "string",
        },
        upstreamRegistry = {
            type = "string",
        },
        credentialArn = {
            type = "string",
        },
        customRoleArn = {
            type = "string",
        },
        upstreamRepositoryPrefix = {
            type = "string",
        },
    },
}

M.CreatePullThroughCacheRuleOutput = {
    type = "structure",
    id = "CreatePullThroughCacheRuleOutput",
    members = {
        ecrRepositoryPrefix = {
            type = "string",
        },
        upstreamRegistryUrl = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        registryId = {
            type = "string",
        },
        upstreamRegistry = {
            type = "string",
        },
        credentialArn = {
            type = "string",
        },
        customRoleArn = {
            type = "string",
        },
        upstreamRepositoryPrefix = {
            type = "string",
        },
    },
}

M.PullThroughCacheRuleAlreadyExistsException = {
    type = "structure",
    id = "PullThroughCacheRuleAlreadyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SecretNotFoundException = {
    type = "structure",
    id = "SecretNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnableToAccessSecretException = {
    type = "structure",
    id = "UnableToAccessSecretException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnableToDecryptSecretValueException = {
    type = "structure",
    id = "UnableToDecryptSecretValueException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedUpstreamRegistryException = {
    type = "structure",
    id = "UnsupportedUpstreamRegistryException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EncryptionType = {
    AES256 = "AES256",
    KMS = "KMS",
    KMS_DSSE = "KMS_DSSE",
}

M.EncryptionConfiguration = {
    type = "structure",
    id = "EncryptionConfiguration",
    members = {
        encryptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKey = {
            type = "string",
        },
    },
}

M.ImageScanningConfiguration = {
    type = "structure",
    id = "ImageScanningConfiguration",
    members = {
        scanOnPush = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ImageTagMutability = {
    MUTABLE = "MUTABLE",
    IMMUTABLE = "IMMUTABLE",
    IMMUTABLE_WITH_EXCLUSION = "IMMUTABLE_WITH_EXCLUSION",
    MUTABLE_WITH_EXCLUSION = "MUTABLE_WITH_EXCLUSION",
}

M.ImageTagMutabilityExclusionFilterType = {
    WILDCARD = "WILDCARD",
}

M.ImageTagMutabilityExclusionFilter = {
    type = "structure",
    id = "ImageTagMutabilityExclusionFilter",
    members = {
        filterType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filter = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateRepositoryInput = {
    type = "structure",
    id = "CreateRepositoryInput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        imageTagMutability = {
            type = "string",
        },
        imageTagMutabilityExclusionFilters = {
            type = "list",
            member = M.ImageTagMutabilityExclusionFilter,
        },
        imageScanningConfiguration = M.ImageScanningConfiguration,
        encryptionConfiguration = M.EncryptionConfiguration,
    },
}

M.Repository = {
    type = "structure",
    id = "Repository",
    members = {
        repositoryArn = {
            type = "string",
        },
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
        },
        repositoryUri = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        imageTagMutability = {
            type = "string",
        },
        imageTagMutabilityExclusionFilters = {
            type = "list",
            member = M.ImageTagMutabilityExclusionFilter,
        },
        imageScanningConfiguration = M.ImageScanningConfiguration,
        encryptionConfiguration = M.EncryptionConfiguration,
    },
}

M.CreateRepositoryOutput = {
    type = "structure",
    id = "CreateRepositoryOutput",
    members = {
        repository = M.Repository,
    },
}

M.InvalidTagParameterException = {
    type = "structure",
    id = "InvalidTagParameterException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RepositoryAlreadyExistsException = {
    type = "structure",
    id = "RepositoryAlreadyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyTagsException = {
    type = "structure",
    id = "TooManyTagsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RCTAppliedFor = {
    REPLICATION = "REPLICATION",
    PULL_THROUGH_CACHE = "PULL_THROUGH_CACHE",
    CREATE_ON_PUSH = "CREATE_ON_PUSH",
}

M.EncryptionConfigurationForRepositoryCreationTemplate = {
    type = "structure",
    id = "EncryptionConfigurationForRepositoryCreationTemplate",
    members = {
        encryptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKey = {
            type = "string",
        },
    },
}

M.CreateRepositoryCreationTemplateInput = {
    type = "structure",
    id = "CreateRepositoryCreationTemplateInput",
    members = {
        prefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        encryptionConfiguration = M.EncryptionConfigurationForRepositoryCreationTemplate,
        resourceTags = {
            type = "list",
            member = M.Tag,
        },
        imageTagMutability = {
            type = "string",
        },
        imageTagMutabilityExclusionFilters = {
            type = "list",
            member = M.ImageTagMutabilityExclusionFilter,
        },
        repositoryPolicy = {
            type = "string",
        },
        lifecyclePolicy = {
            type = "string",
        },
        appliedFor = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        customRoleArn = {
            type = "string",
        },
    },
}

M.RepositoryCreationTemplate = {
    type = "structure",
    id = "RepositoryCreationTemplate",
    members = {
        prefix = {
            type = "string",
        },
        description = {
            type = "string",
        },
        encryptionConfiguration = M.EncryptionConfigurationForRepositoryCreationTemplate,
        resourceTags = {
            type = "list",
            member = M.Tag,
        },
        imageTagMutability = {
            type = "string",
        },
        imageTagMutabilityExclusionFilters = {
            type = "list",
            member = M.ImageTagMutabilityExclusionFilter,
        },
        repositoryPolicy = {
            type = "string",
        },
        lifecyclePolicy = {
            type = "string",
        },
        appliedFor = {
            type = "list",
            member = { type = "string" },
        },
        customRoleArn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.CreateRepositoryCreationTemplateOutput = {
    type = "structure",
    id = "CreateRepositoryCreationTemplateOutput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryCreationTemplate = M.RepositoryCreationTemplate,
    },
}

M.TemplateAlreadyExistsException = {
    type = "structure",
    id = "TemplateAlreadyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteLifecyclePolicyInput = {
    type = "structure",
    id = "DeleteLifecyclePolicyInput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLifecyclePolicyOutput = {
    type = "structure",
    id = "DeleteLifecyclePolicyOutput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
        },
        lifecyclePolicyText = {
            type = "string",
        },
        lastEvaluatedAt = {
            type = "timestamp",
        },
    },
}

M.LifecyclePolicyNotFoundException = {
    type = "structure",
    id = "LifecyclePolicyNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeletePullThroughCacheRuleInput = {
    type = "structure",
    id = "DeletePullThroughCacheRuleInput",
    members = {
        ecrRepositoryPrefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
        registryId = {
            type = "string",
        },
    },
}

M.DeletePullThroughCacheRuleOutput = {
    type = "structure",
    id = "DeletePullThroughCacheRuleOutput",
    members = {
        ecrRepositoryPrefix = {
            type = "string",
        },
        upstreamRegistryUrl = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        registryId = {
            type = "string",
        },
        credentialArn = {
            type = "string",
        },
        customRoleArn = {
            type = "string",
        },
        upstreamRepositoryPrefix = {
            type = "string",
        },
    },
}

M.PullThroughCacheRuleNotFoundException = {
    type = "structure",
    id = "PullThroughCacheRuleNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteRegistryPolicyInput = {
    type = "structure",
    id = "DeleteRegistryPolicyInput",
}

M.DeleteRegistryPolicyOutput = {
    type = "structure",
    id = "DeleteRegistryPolicyOutput",
    members = {
        registryId = {
            type = "string",
        },
        policyText = {
            type = "string",
        },
    },
}

M.RegistryPolicyNotFoundException = {
    type = "structure",
    id = "RegistryPolicyNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteRepositoryInput = {
    type = "structure",
    id = "DeleteRepositoryInput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        force = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DeleteRepositoryOutput = {
    type = "structure",
    id = "DeleteRepositoryOutput",
    members = {
        repository = M.Repository,
    },
}

M.RepositoryNotEmptyException = {
    type = "structure",
    id = "RepositoryNotEmptyException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteRepositoryCreationTemplateInput = {
    type = "structure",
    id = "DeleteRepositoryCreationTemplateInput",
    members = {
        prefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRepositoryCreationTemplateOutput = {
    type = "structure",
    id = "DeleteRepositoryCreationTemplateOutput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryCreationTemplate = M.RepositoryCreationTemplate,
    },
}

M.TemplateNotFoundException = {
    type = "structure",
    id = "TemplateNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteRepositoryPolicyInput = {
    type = "structure",
    id = "DeleteRepositoryPolicyInput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRepositoryPolicyOutput = {
    type = "structure",
    id = "DeleteRepositoryPolicyOutput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
        },
        policyText = {
            type = "string",
        },
    },
}

M.RepositoryPolicyNotFoundException = {
    type = "structure",
    id = "RepositoryPolicyNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteSigningConfigurationInput = {
    type = "structure",
    id = "DeleteSigningConfigurationInput",
}

M.SigningRepositoryFilterType = {
    WILDCARD_MATCH = "WILDCARD_MATCH",
}

M.SigningRepositoryFilter = {
    type = "structure",
    id = "SigningRepositoryFilter",
    members = {
        filter = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SigningRule = {
    type = "structure",
    id = "SigningRule",
    members = {
        signingProfileArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryFilters = {
            type = "list",
            member = M.SigningRepositoryFilter,
        },
    },
}

M.SigningConfiguration = {
    type = "structure",
    id = "SigningConfiguration",
    members = {
        rules = {
            type = "list",
            member = M.SigningRule,
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSigningConfigurationOutput = {
    type = "structure",
    id = "DeleteSigningConfigurationOutput",
    members = {
        registryId = {
            type = "string",
        },
        signingConfiguration = M.SigningConfiguration,
    },
}

M.SigningConfigurationNotFoundException = {
    type = "structure",
    id = "SigningConfigurationNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeregisterPullTimeUpdateExclusionInput = {
    type = "structure",
    id = "DeregisterPullTimeUpdateExclusionInput",
    members = {
        principalArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeregisterPullTimeUpdateExclusionOutput = {
    type = "structure",
    id = "DeregisterPullTimeUpdateExclusionOutput",
    members = {
        principalArn = {
            type = "string",
        },
    },
}

M.ExclusionNotFoundException = {
    type = "structure",
    id = "ExclusionNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeImageReplicationStatusInput = {
    type = "structure",
    id = "DescribeImageReplicationStatusInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImageIdentifier }),
        registryId = {
            type = "string",
        },
    },
}

M.ReplicationStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETE = "COMPLETE",
    FAILED = "FAILED",
}

M.ImageReplicationStatus = {
    type = "structure",
    id = "ImageReplicationStatus",
    members = {
        region = {
            type = "string",
        },
        registryId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        failureCode = {
            type = "string",
        },
    },
}

M.DescribeImageReplicationStatusOutput = {
    type = "structure",
    id = "DescribeImageReplicationStatusOutput",
    members = {
        repositoryName = {
            type = "string",
        },
        imageId = M.ImageIdentifier,
        replicationStatuses = {
            type = "list",
            member = M.ImageReplicationStatus,
        },
    },
}

M.ImageNotFoundException = {
    type = "structure",
    id = "ImageNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ImageStatusFilter = {
    ACTIVE = "ACTIVE",
    ARCHIVED = "ARCHIVED",
    ACTIVATING = "ACTIVATING",
    ANY = "ANY",
}

M.TagStatus = {
    TAGGED = "TAGGED",
    UNTAGGED = "UNTAGGED",
    ANY = "ANY",
}

M.DescribeImagesFilter = {
    type = "structure",
    id = "DescribeImagesFilter",
    members = {
        tagStatus = {
            type = "string",
        },
        imageStatus = {
            type = "string",
        },
    },
}

M.DescribeImagesInput = {
    type = "structure",
    id = "DescribeImagesInput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageIds = {
            type = "list",
            member = M.ImageIdentifier,
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        filter = M.DescribeImagesFilter,
    },
}

M.FindingSeverity = {
    INFORMATIONAL = "INFORMATIONAL",
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
    CRITICAL = "CRITICAL",
    UNDEFINED = "UNDEFINED",
}

M.ImageScanFindingsSummary = {
    type = "structure",
    id = "ImageScanFindingsSummary",
    members = {
        imageScanCompletedAt = {
            type = "timestamp",
        },
        vulnerabilitySourceUpdatedAt = {
            type = "timestamp",
        },
        findingSeverityCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
    },
}

M.ScanStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETE = "COMPLETE",
    FAILED = "FAILED",
    UNSUPPORTED_IMAGE = "UNSUPPORTED_IMAGE",
    ACTIVE = "ACTIVE",
    PENDING = "PENDING",
    SCAN_ELIGIBILITY_EXPIRED = "SCAN_ELIGIBILITY_EXPIRED",
    FINDINGS_UNAVAILABLE = "FINDINGS_UNAVAILABLE",
    LIMIT_EXCEEDED = "LIMIT_EXCEEDED",
    IMAGE_ARCHIVED = "IMAGE_ARCHIVED",
}

M.ImageScanStatus = {
    type = "structure",
    id = "ImageScanStatus",
    members = {
        status = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.ImageStatus = {
    ACTIVE = "ACTIVE",
    ARCHIVED = "ARCHIVED",
    ACTIVATING = "ACTIVATING",
}

M.ImageDetail = {
    type = "structure",
    id = "ImageDetail",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
        },
        imageDigest = {
            type = "string",
        },
        imageTags = {
            type = "list",
            member = { type = "string" },
        },
        imageSizeInBytes = {
            type = "long",
        },
        imagePushedAt = {
            type = "timestamp",
        },
        imageScanStatus = M.ImageScanStatus,
        imageScanFindingsSummary = M.ImageScanFindingsSummary,
        imageManifestMediaType = {
            type = "string",
        },
        artifactMediaType = {
            type = "string",
        },
        lastRecordedPullTime = {
            type = "timestamp",
        },
        subjectManifestDigest = {
            type = "string",
        },
        imageStatus = {
            type = "string",
        },
        lastArchivedAt = {
            type = "timestamp",
        },
        lastActivatedAt = {
            type = "timestamp",
        },
    },
}

M.DescribeImagesOutput = {
    type = "structure",
    id = "DescribeImagesOutput",
    members = {
        imageDetails = {
            type = "list",
            member = M.ImageDetail,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeImageScanFindingsInput = {
    type = "structure",
    id = "DescribeImageScanFindingsInput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImageIdentifier }),
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.CvssScore = {
    type = "structure",
    id = "CvssScore",
    members = {
        baseScore = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        scoringVector = {
            type = "string",
        },
        source = {
            type = "string",
        },
        version = {
            type = "string",
        },
    },
}

M.VulnerablePackage = {
    type = "structure",
    id = "VulnerablePackage",
    members = {
        arch = {
            type = "string",
        },
        epoch = {
            type = "integer",
        },
        filePath = {
            type = "string",
        },
        name = {
            type = "string",
        },
        packageManager = {
            type = "string",
        },
        release = {
            type = "string",
        },
        sourceLayerHash = {
            type = "string",
        },
        version = {
            type = "string",
        },
        fixedInVersion = {
            type = "string",
        },
    },
}

M.PackageVulnerabilityDetails = {
    type = "structure",
    id = "PackageVulnerabilityDetails",
    members = {
        cvss = {
            type = "list",
            member = M.CvssScore,
        },
        referenceUrls = {
            type = "list",
            member = { type = "string" },
        },
        relatedVulnerabilities = {
            type = "list",
            member = { type = "string" },
        },
        source = {
            type = "string",
        },
        sourceUrl = {
            type = "string",
        },
        vendorCreatedAt = {
            type = "timestamp",
        },
        vendorSeverity = {
            type = "string",
        },
        vendorUpdatedAt = {
            type = "timestamp",
        },
        vulnerabilityId = {
            type = "string",
        },
        vulnerablePackages = {
            type = "list",
            member = M.VulnerablePackage,
        },
    },
}

M.Recommendation = {
    type = "structure",
    id = "Recommendation",
    members = {
        url = {
            type = "string",
        },
        text = {
            type = "string",
        },
    },
}

M.Remediation = {
    type = "structure",
    id = "Remediation",
    members = {
        recommendation = M.Recommendation,
    },
}

M.AwsEcrContainerImageDetails = {
    type = "structure",
    id = "AwsEcrContainerImageDetails",
    members = {
        architecture = {
            type = "string",
        },
        author = {
            type = "string",
        },
        imageHash = {
            type = "string",
        },
        imageTags = {
            type = "list",
            member = { type = "string" },
        },
        platform = {
            type = "string",
        },
        pushedAt = {
            type = "timestamp",
        },
        lastInUseAt = {
            type = "timestamp",
        },
        inUseCount = {
            type = "long",
        },
        registry = {
            type = "string",
        },
        repositoryName = {
            type = "string",
        },
    },
}

M.ResourceDetails = {
    type = "structure",
    id = "ResourceDetails",
    members = {
        awsEcrContainerImage = M.AwsEcrContainerImageDetails,
    },
}

M.Resource = {
    type = "structure",
    id = "Resource",
    members = {
        details = M.ResourceDetails,
        id = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        type = {
            type = "string",
        },
    },
}

M.CvssScoreAdjustment = {
    type = "structure",
    id = "CvssScoreAdjustment",
    members = {
        metric = {
            type = "string",
        },
        reason = {
            type = "string",
        },
    },
}

M.CvssScoreDetails = {
    type = "structure",
    id = "CvssScoreDetails",
    members = {
        adjustments = {
            type = "list",
            member = M.CvssScoreAdjustment,
        },
        score = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        scoreSource = {
            type = "string",
        },
        scoringVector = {
            type = "string",
        },
        version = {
            type = "string",
        },
    },
}

M.ScoreDetails = {
    type = "structure",
    id = "ScoreDetails",
    members = {
        cvss = M.CvssScoreDetails,
    },
}

M.EnhancedImageScanFinding = {
    type = "structure",
    id = "EnhancedImageScanFinding",
    members = {
        awsAccountId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        findingArn = {
            type = "string",
        },
        firstObservedAt = {
            type = "timestamp",
        },
        lastObservedAt = {
            type = "timestamp",
        },
        packageVulnerabilityDetails = M.PackageVulnerabilityDetails,
        remediation = M.Remediation,
        resources = {
            type = "list",
            member = M.Resource,
        },
        score = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        scoreDetails = M.ScoreDetails,
        severity = {
            type = "string",
        },
        status = {
            type = "string",
        },
        title = {
            type = "string",
        },
        type = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
        fixAvailable = {
            type = "string",
        },
        exploitAvailable = {
            type = "string",
        },
    },
}

M.Attribute = {
    type = "structure",
    id = "Attribute",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
        },
    },
}

M.ImageScanFinding = {
    type = "structure",
    id = "ImageScanFinding",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        uri = {
            type = "string",
        },
        severity = {
            type = "string",
        },
        attributes = {
            type = "list",
            member = M.Attribute,
        },
    },
}

M.ImageScanFindings = {
    type = "structure",
    id = "ImageScanFindings",
    members = {
        imageScanCompletedAt = {
            type = "timestamp",
        },
        vulnerabilitySourceUpdatedAt = {
            type = "timestamp",
        },
        findingSeverityCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        findings = {
            type = "list",
            member = M.ImageScanFinding,
        },
        enhancedFindings = {
            type = "list",
            member = M.EnhancedImageScanFinding,
        },
    },
}

M.DescribeImageScanFindingsOutput = {
    type = "structure",
    id = "DescribeImageScanFindingsOutput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
        },
        imageId = M.ImageIdentifier,
        imageScanStatus = M.ImageScanStatus,
        imageScanFindings = M.ImageScanFindings,
        nextToken = {
            type = "string",
        },
    },
}

M.ScanNotFoundException = {
    type = "structure",
    id = "ScanNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeImageSigningStatusInput = {
    type = "structure",
    id = "DescribeImageSigningStatusInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImageIdentifier }),
        registryId = {
            type = "string",
        },
    },
}

M.SigningStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETE = "COMPLETE",
    FAILED = "FAILED",
}

M.ImageSigningStatus = {
    type = "structure",
    id = "ImageSigningStatus",
    members = {
        signingProfileArn = {
            type = "string",
        },
        failureCode = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.DescribeImageSigningStatusOutput = {
    type = "structure",
    id = "DescribeImageSigningStatusOutput",
    members = {
        repositoryName = {
            type = "string",
        },
        imageId = M.ImageIdentifier,
        registryId = {
            type = "string",
        },
        signingStatuses = {
            type = "list",
            member = M.ImageSigningStatus,
        },
    },
}

M.DescribePullThroughCacheRulesInput = {
    type = "structure",
    id = "DescribePullThroughCacheRulesInput",
    members = {
        registryId = {
            type = "string",
        },
        ecrRepositoryPrefixes = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.PullThroughCacheRule = {
    type = "structure",
    id = "PullThroughCacheRule",
    members = {
        ecrRepositoryPrefix = {
            type = "string",
        },
        upstreamRegistryUrl = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        registryId = {
            type = "string",
        },
        credentialArn = {
            type = "string",
        },
        customRoleArn = {
            type = "string",
        },
        upstreamRepositoryPrefix = {
            type = "string",
        },
        upstreamRegistry = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.DescribePullThroughCacheRulesOutput = {
    type = "structure",
    id = "DescribePullThroughCacheRulesOutput",
    members = {
        pullThroughCacheRules = {
            type = "list",
            member = M.PullThroughCacheRule,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeRegistryInput = {
    type = "structure",
    id = "DescribeRegistryInput",
}

M.ReplicationDestination = {
    type = "structure",
    id = "ReplicationDestination",
    members = {
        region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        registryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RepositoryFilterType = {
    PREFIX_MATCH = "PREFIX_MATCH",
}

M.RepositoryFilter = {
    type = "structure",
    id = "RepositoryFilter",
    members = {
        filter = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReplicationRule = {
    type = "structure",
    id = "ReplicationRule",
    members = {
        destinations = {
            type = "list",
            member = M.ReplicationDestination,
            traits = {
                required = true,
            },
        },
        repositoryFilters = {
            type = "list",
            member = M.RepositoryFilter,
        },
    },
}

M.ReplicationConfiguration = {
    type = "structure",
    id = "ReplicationConfiguration",
    members = {
        rules = {
            type = "list",
            member = M.ReplicationRule,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeRegistryOutput = {
    type = "structure",
    id = "DescribeRegistryOutput",
    members = {
        registryId = {
            type = "string",
        },
        replicationConfiguration = M.ReplicationConfiguration,
    },
}

M.DescribeRepositoriesInput = {
    type = "structure",
    id = "DescribeRepositoriesInput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryNames = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.DescribeRepositoriesOutput = {
    type = "structure",
    id = "DescribeRepositoriesOutput",
    members = {
        repositories = {
            type = "list",
            member = M.Repository,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeRepositoryCreationTemplatesInput = {
    type = "structure",
    id = "DescribeRepositoryCreationTemplatesInput",
    members = {
        prefixes = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.DescribeRepositoryCreationTemplatesOutput = {
    type = "structure",
    id = "DescribeRepositoryCreationTemplatesOutput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryCreationTemplates = {
            type = "list",
            member = M.RepositoryCreationTemplate,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetAccountSettingInput = {
    type = "structure",
    id = "GetAccountSettingInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAccountSettingOutput = {
    type = "structure",
    id = "GetAccountSettingOutput",
    members = {
        name = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.GetAuthorizationTokenInput = {
    type = "structure",
    id = "GetAuthorizationTokenInput",
    members = {
        registryIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AuthorizationData = {
    type = "structure",
    id = "AuthorizationData",
    members = {
        authorizationToken = {
            type = "string",
        },
        expiresAt = {
            type = "timestamp",
        },
        proxyEndpoint = {
            type = "string",
        },
    },
}

M.GetAuthorizationTokenOutput = {
    type = "structure",
    id = "GetAuthorizationTokenOutput",
    members = {
        authorizationData = {
            type = "list",
            member = M.AuthorizationData,
        },
    },
}

M.GetDownloadUrlForLayerInput = {
    type = "structure",
    id = "GetDownloadUrlForLayerInput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        layerDigest = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDownloadUrlForLayerOutput = {
    type = "structure",
    id = "GetDownloadUrlForLayerOutput",
    members = {
        downloadUrl = {
            type = "string",
        },
        layerDigest = {
            type = "string",
        },
    },
}

M.LayerInaccessibleException = {
    type = "structure",
    id = "LayerInaccessibleException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LayersNotFoundException = {
    type = "structure",
    id = "LayersNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnableToGetUpstreamLayerException = {
    type = "structure",
    id = "UnableToGetUpstreamLayerException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetLifecyclePolicyInput = {
    type = "structure",
    id = "GetLifecyclePolicyInput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetLifecyclePolicyOutput = {
    type = "structure",
    id = "GetLifecyclePolicyOutput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
        },
        lifecyclePolicyText = {
            type = "string",
        },
        lastEvaluatedAt = {
            type = "timestamp",
        },
    },
}

M.LifecyclePolicyPreviewFilter = {
    type = "structure",
    id = "LifecyclePolicyPreviewFilter",
    members = {
        tagStatus = {
            type = "string",
        },
    },
}

M.GetLifecyclePolicyPreviewInput = {
    type = "structure",
    id = "GetLifecyclePolicyPreviewInput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageIds = {
            type = "list",
            member = M.ImageIdentifier,
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        filter = M.LifecyclePolicyPreviewFilter,
    },
}

M.LifecyclePolicyTargetStorageClass = {
    ARCHIVE = "ARCHIVE",
}

M.ImageActionType = {
    EXPIRE = "EXPIRE",
    TRANSITION = "TRANSITION",
}

M.LifecyclePolicyRuleAction = {
    type = "structure",
    id = "LifecyclePolicyRuleAction",
    members = {
        type = {
            type = "string",
        },
        targetStorageClass = {
            type = "string",
        },
    },
}

M.LifecyclePolicyStorageClass = {
    ARCHIVE = "ARCHIVE",
    STANDARD = "STANDARD",
}

M.LifecyclePolicyPreviewResult = {
    type = "structure",
    id = "LifecyclePolicyPreviewResult",
    members = {
        imageTags = {
            type = "list",
            member = { type = "string" },
        },
        imageDigest = {
            type = "string",
        },
        imagePushedAt = {
            type = "timestamp",
        },
        action = M.LifecyclePolicyRuleAction,
        appliedRulePriority = {
            type = "integer",
        },
        storageClass = {
            type = "string",
        },
    },
}

M.LifecyclePolicyPreviewStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETE = "COMPLETE",
    EXPIRED = "EXPIRED",
    FAILED = "FAILED",
}

M.TransitioningImageTotalCount = {
    type = "structure",
    id = "TransitioningImageTotalCount",
    members = {
        targetStorageClass = {
            type = "string",
        },
        imageTotalCount = {
            type = "integer",
        },
    },
}

M.LifecyclePolicyPreviewSummary = {
    type = "structure",
    id = "LifecyclePolicyPreviewSummary",
    members = {
        expiringImageTotalCount = {
            type = "integer",
        },
        transitioningImageTotalCounts = {
            type = "list",
            member = M.TransitioningImageTotalCount,
        },
    },
}

M.GetLifecyclePolicyPreviewOutput = {
    type = "structure",
    id = "GetLifecyclePolicyPreviewOutput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
        },
        lifecyclePolicyText = {
            type = "string",
        },
        status = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        previewResults = {
            type = "list",
            member = M.LifecyclePolicyPreviewResult,
        },
        summary = M.LifecyclePolicyPreviewSummary,
    },
}

M.LifecyclePolicyPreviewNotFoundException = {
    type = "structure",
    id = "LifecyclePolicyPreviewNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetRegistryPolicyInput = {
    type = "structure",
    id = "GetRegistryPolicyInput",
}

M.GetRegistryPolicyOutput = {
    type = "structure",
    id = "GetRegistryPolicyOutput",
    members = {
        registryId = {
            type = "string",
        },
        policyText = {
            type = "string",
        },
    },
}

M.GetRegistryScanningConfigurationInput = {
    type = "structure",
    id = "GetRegistryScanningConfigurationInput",
}

M.RegistryScanningRule = {
    type = "structure",
    id = "RegistryScanningRule",
    members = {
        scanFrequency = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryFilters = {
            type = "list",
            member = M.ScanningRepositoryFilter,
            traits = {
                required = true,
            },
        },
    },
}

M.ScanType = {
    BASIC = "BASIC",
    ENHANCED = "ENHANCED",
}

M.RegistryScanningConfiguration = {
    type = "structure",
    id = "RegistryScanningConfiguration",
    members = {
        scanType = {
            type = "string",
        },
        rules = {
            type = "list",
            member = M.RegistryScanningRule,
        },
    },
}

M.GetRegistryScanningConfigurationOutput = {
    type = "structure",
    id = "GetRegistryScanningConfigurationOutput",
    members = {
        registryId = {
            type = "string",
        },
        scanningConfiguration = M.RegistryScanningConfiguration,
    },
}

M.GetRepositoryPolicyInput = {
    type = "structure",
    id = "GetRepositoryPolicyInput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRepositoryPolicyOutput = {
    type = "structure",
    id = "GetRepositoryPolicyOutput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
        },
        policyText = {
            type = "string",
        },
    },
}

M.GetSigningConfigurationInput = {
    type = "structure",
    id = "GetSigningConfigurationInput",
}

M.GetSigningConfigurationOutput = {
    type = "structure",
    id = "GetSigningConfigurationOutput",
    members = {
        registryId = {
            type = "string",
        },
        signingConfiguration = M.SigningConfiguration,
    },
}

M.InitiateLayerUploadInput = {
    type = "structure",
    id = "InitiateLayerUploadInput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InitiateLayerUploadOutput = {
    type = "structure",
    id = "InitiateLayerUploadOutput",
    members = {
        uploadId = {
            type = "string",
        },
        partSize = {
            type = "long",
        },
    },
}

M.ArtifactStatusFilter = {
    ACTIVE = "ACTIVE",
    ARCHIVED = "ARCHIVED",
    ACTIVATING = "ACTIVATING",
    ANY = "ANY",
}

M.ListImageReferrersFilter = {
    type = "structure",
    id = "ListImageReferrersFilter",
    members = {
        artifactTypes = {
            type = "list",
            member = { type = "string" },
        },
        artifactStatus = {
            type = "string",
        },
    },
}

M.SubjectIdentifier = {
    type = "structure",
    id = "SubjectIdentifier",
    members = {
        imageDigest = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListImageReferrersInput = {
    type = "structure",
    id = "ListImageReferrersInput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subjectId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SubjectIdentifier }),
        filter = M.ListImageReferrersFilter,
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ArtifactStatus = {
    ACTIVE = "ACTIVE",
    ARCHIVED = "ARCHIVED",
    ACTIVATING = "ACTIVATING",
}

M.ImageReferrer = {
    type = "structure",
    id = "ImageReferrer",
    members = {
        digest = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mediaType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        artifactType = {
            type = "string",
        },
        size = {
            type = "long",
            traits = {
                required = true,
            },
        },
        annotations = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        artifactStatus = {
            type = "string",
        },
    },
}

M.ListImageReferrersOutput = {
    type = "structure",
    id = "ListImageReferrersOutput",
    members = {
        referrers = {
            type = "list",
            member = M.ImageReferrer,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UnableToListUpstreamImageReferrersException = {
    type = "structure",
    id = "UnableToListUpstreamImageReferrersException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListImagesFilter = {
    type = "structure",
    id = "ListImagesFilter",
    members = {
        tagStatus = {
            type = "string",
        },
        imageStatus = {
            type = "string",
        },
    },
}

M.ListImagesInput = {
    type = "structure",
    id = "ListImagesInput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        filter = M.ListImagesFilter,
    },
}

M.ListImagesOutput = {
    type = "structure",
    id = "ListImagesOutput",
    members = {
        imageIds = {
            type = "list",
            member = M.ImageIdentifier,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPullTimeUpdateExclusionsInput = {
    type = "structure",
    id = "ListPullTimeUpdateExclusionsInput",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPullTimeUpdateExclusionsOutput = {
    type = "structure",
    id = "ListPullTimeUpdateExclusionsOutput",
    members = {
        pullTimeUpdateExclusions = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutAccountSettingInput = {
    type = "structure",
    id = "PutAccountSettingInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutAccountSettingOutput = {
    type = "structure",
    id = "PutAccountSettingOutput",
    members = {
        name = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.ImageAlreadyExistsException = {
    type = "structure",
    id = "ImageAlreadyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ImageDigestDoesNotMatchException = {
    type = "structure",
    id = "ImageDigestDoesNotMatchException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ImageTagAlreadyExistsException = {
    type = "structure",
    id = "ImageTagAlreadyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutImageInput = {
    type = "structure",
    id = "PutImageInput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageManifest = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageManifestMediaType = {
            type = "string",
        },
        imageTag = {
            type = "string",
        },
        imageDigest = {
            type = "string",
        },
    },
}

M.PutImageOutput = {
    type = "structure",
    id = "PutImageOutput",
    members = {
        image = M.Image,
    },
}

M.ReferencedImagesNotFoundException = {
    type = "structure",
    id = "ReferencedImagesNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutImageScanningConfigurationInput = {
    type = "structure",
    id = "PutImageScanningConfigurationInput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageScanningConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImageScanningConfiguration }),
    },
}

M.PutImageScanningConfigurationOutput = {
    type = "structure",
    id = "PutImageScanningConfigurationOutput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
        },
        imageScanningConfiguration = M.ImageScanningConfiguration,
    },
}

M.PutImageTagMutabilityInput = {
    type = "structure",
    id = "PutImageTagMutabilityInput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageTagMutability = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageTagMutabilityExclusionFilters = {
            type = "list",
            member = M.ImageTagMutabilityExclusionFilter,
        },
    },
}

M.PutImageTagMutabilityOutput = {
    type = "structure",
    id = "PutImageTagMutabilityOutput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
        },
        imageTagMutability = {
            type = "string",
        },
        imageTagMutabilityExclusionFilters = {
            type = "list",
            member = M.ImageTagMutabilityExclusionFilter,
        },
    },
}

M.PutLifecyclePolicyInput = {
    type = "structure",
    id = "PutLifecyclePolicyInput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lifecyclePolicyText = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutLifecyclePolicyOutput = {
    type = "structure",
    id = "PutLifecyclePolicyOutput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
        },
        lifecyclePolicyText = {
            type = "string",
        },
    },
}

M.PutRegistryPolicyInput = {
    type = "structure",
    id = "PutRegistryPolicyInput",
    members = {
        policyText = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutRegistryPolicyOutput = {
    type = "structure",
    id = "PutRegistryPolicyOutput",
    members = {
        registryId = {
            type = "string",
        },
        policyText = {
            type = "string",
        },
    },
}

M.BlockedByOrganizationPolicyException = {
    type = "structure",
    id = "BlockedByOrganizationPolicyException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutRegistryScanningConfigurationInput = {
    type = "structure",
    id = "PutRegistryScanningConfigurationInput",
    members = {
        scanType = {
            type = "string",
        },
        rules = {
            type = "list",
            member = M.RegistryScanningRule,
        },
    },
}

M.PutRegistryScanningConfigurationOutput = {
    type = "structure",
    id = "PutRegistryScanningConfigurationOutput",
    members = {
        registryScanningConfiguration = M.RegistryScanningConfiguration,
    },
}

M.PutReplicationConfigurationInput = {
    type = "structure",
    id = "PutReplicationConfigurationInput",
    members = {
        replicationConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReplicationConfiguration }),
    },
}

M.PutReplicationConfigurationOutput = {
    type = "structure",
    id = "PutReplicationConfigurationOutput",
    members = {
        replicationConfiguration = M.ReplicationConfiguration,
    },
}

M.PutSigningConfigurationInput = {
    type = "structure",
    id = "PutSigningConfigurationInput",
    members = {
        signingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SigningConfiguration }),
    },
}

M.PutSigningConfigurationOutput = {
    type = "structure",
    id = "PutSigningConfigurationOutput",
    members = {
        signingConfiguration = M.SigningConfiguration,
    },
}

M.ExclusionAlreadyExistsException = {
    type = "structure",
    id = "ExclusionAlreadyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RegisterPullTimeUpdateExclusionInput = {
    type = "structure",
    id = "RegisterPullTimeUpdateExclusionInput",
    members = {
        principalArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterPullTimeUpdateExclusionOutput = {
    type = "structure",
    id = "RegisterPullTimeUpdateExclusionOutput",
    members = {
        principalArn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
    },
}

M.SetRepositoryPolicyInput = {
    type = "structure",
    id = "SetRepositoryPolicyInput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyText = {
            type = "string",
            traits = {
                required = true,
            },
        },
        force = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.SetRepositoryPolicyOutput = {
    type = "structure",
    id = "SetRepositoryPolicyOutput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
        },
        policyText = {
            type = "string",
        },
    },
}

M.ImageArchivedException = {
    type = "structure",
    id = "ImageArchivedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StartImageScanInput = {
    type = "structure",
    id = "StartImageScanInput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImageIdentifier }),
    },
}

M.StartImageScanOutput = {
    type = "structure",
    id = "StartImageScanOutput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
        },
        imageId = M.ImageIdentifier,
        imageScanStatus = M.ImageScanStatus,
    },
}

M.UnsupportedImageTypeException = {
    type = "structure",
    id = "UnsupportedImageTypeException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LifecyclePolicyPreviewInProgressException = {
    type = "structure",
    id = "LifecyclePolicyPreviewInProgressException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StartLifecyclePolicyPreviewInput = {
    type = "structure",
    id = "StartLifecyclePolicyPreviewInput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lifecyclePolicyText = {
            type = "string",
        },
    },
}

M.StartLifecyclePolicyPreviewOutput = {
    type = "structure",
    id = "StartLifecyclePolicyPreviewOutput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
        },
        lifecyclePolicyText = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.ImageStorageClassUpdateNotSupportedException = {
    type = "structure",
    id = "ImageStorageClassUpdateNotSupportedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TargetStorageClass = {
    STANDARD = "STANDARD",
    ARCHIVE = "ARCHIVE",
}

M.UpdateImageStorageClassInput = {
    type = "structure",
    id = "UpdateImageStorageClassInput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageId = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImageIdentifier }),
        targetStorageClass = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateImageStorageClassOutput = {
    type = "structure",
    id = "UpdateImageStorageClassOutput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
        },
        imageId = M.ImageIdentifier,
        imageStatus = {
            type = "string",
        },
    },
}

M.UpdatePullThroughCacheRuleInput = {
    type = "structure",
    id = "UpdatePullThroughCacheRuleInput",
    members = {
        registryId = {
            type = "string",
        },
        ecrRepositoryPrefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialArn = {
            type = "string",
        },
        customRoleArn = {
            type = "string",
        },
    },
}

M.UpdatePullThroughCacheRuleOutput = {
    type = "structure",
    id = "UpdatePullThroughCacheRuleOutput",
    members = {
        ecrRepositoryPrefix = {
            type = "string",
        },
        registryId = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
        credentialArn = {
            type = "string",
        },
        customRoleArn = {
            type = "string",
        },
        upstreamRepositoryPrefix = {
            type = "string",
        },
    },
}

M.UpdateRepositoryCreationTemplateInput = {
    type = "structure",
    id = "UpdateRepositoryCreationTemplateInput",
    members = {
        prefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        encryptionConfiguration = M.EncryptionConfigurationForRepositoryCreationTemplate,
        resourceTags = {
            type = "list",
            member = M.Tag,
        },
        imageTagMutability = {
            type = "string",
        },
        imageTagMutabilityExclusionFilters = {
            type = "list",
            member = M.ImageTagMutabilityExclusionFilter,
        },
        repositoryPolicy = {
            type = "string",
        },
        lifecyclePolicy = {
            type = "string",
        },
        appliedFor = {
            type = "list",
            member = { type = "string" },
        },
        customRoleArn = {
            type = "string",
        },
    },
}

M.UpdateRepositoryCreationTemplateOutput = {
    type = "structure",
    id = "UpdateRepositoryCreationTemplateOutput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryCreationTemplate = M.RepositoryCreationTemplate,
    },
}

M.InvalidLayerPartException = {
    type = "structure",
    id = "InvalidLayerPartException",
    error = "client",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
        },
        uploadId = {
            type = "string",
        },
        lastValidByteReceived = {
            type = "long",
        },
        message = {
            type = "string",
        },
    },
}

M.UploadLayerPartInput = {
    type = "structure",
    id = "UploadLayerPartInput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        uploadId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        partFirstByte = {
            type = "long",
            traits = {
                required = true,
            },
        },
        partLastByte = {
            type = "long",
            traits = {
                required = true,
            },
        },
        layerPartBlob = {
            type = "blob",
            traits = {
                required = true,
            },
        },
    },
}

M.UploadLayerPartOutput = {
    type = "structure",
    id = "UploadLayerPartOutput",
    members = {
        registryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
        },
        uploadId = {
            type = "string",
        },
        lastByteReceived = {
            type = "long",
        },
    },
}

M.ValidatePullThroughCacheRuleInput = {
    type = "structure",
    id = "ValidatePullThroughCacheRuleInput",
    members = {
        ecrRepositoryPrefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
        registryId = {
            type = "string",
        },
    },
}

M.ValidatePullThroughCacheRuleOutput = {
    type = "structure",
    id = "ValidatePullThroughCacheRuleOutput",
    members = {
        ecrRepositoryPrefix = {
            type = "string",
        },
        registryId = {
            type = "string",
        },
        upstreamRegistryUrl = {
            type = "string",
        },
        credentialArn = {
            type = "string",
        },
        customRoleArn = {
            type = "string",
        },
        upstreamRepositoryPrefix = {
            type = "string",
        },
        isValid = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        failure = {
            type = "string",
        },
    },
}

return M
