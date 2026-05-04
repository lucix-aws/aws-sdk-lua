local M = {}

M.BatchCheckLayerAvailabilityInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RepositoryNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ImageIdentifier = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnableToGetUpstreamImageException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchGetRepositoryScanningConfigurationInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CompleteLayerUploadInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidLayerException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KmsException = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LayerPartTooSmallException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UploadNotFoundException = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SecretNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnableToAccessSecretException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnableToDecryptSecretValueException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedUpstreamRegistryException = {
    type = "structure",
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
    members = {
        repository = M.Repository,
    },
}

M.InvalidTagParameterException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RepositoryAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyTagsException = {
    type = "structure",
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
    members = {
        registryId = {
            type = "string",
        },
        repositoryCreationTemplate = M.RepositoryCreationTemplate,
    },
}

M.TemplateAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteLifecyclePolicyInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeletePullThroughCacheRuleInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteRegistryPolicyInput = {
    type = "structure",
}

M.DeleteRegistryPolicyOutput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteRepositoryInput = {
    type = "structure",
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
    members = {
        repository = M.Repository,
    },
}

M.RepositoryNotEmptyException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteRepositoryCreationTemplateInput = {
    type = "structure",
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
    members = {
        registryId = {
            type = "string",
        },
        repositoryCreationTemplate = M.RepositoryCreationTemplate,
    },
}

M.TemplateNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteRepositoryPolicyInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteSigningConfigurationInput = {
    type = "structure",
}

M.SigningRepositoryFilterType = {
    WILDCARD_MATCH = "WILDCARD_MATCH",
}

M.SigningRepositoryFilter = {
    type = "structure",
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
    members = {
        registryId = {
            type = "string",
        },
        signingConfiguration = M.SigningConfiguration,
    },
}

M.SigningConfigurationNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeregisterPullTimeUpdateExclusionInput = {
    type = "structure",
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
    members = {
        principalArn = {
            type = "string",
        },
    },
}

M.ExclusionNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeImageReplicationStatusInput = {
    type = "structure",
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
    members = {
        recommendation = M.Recommendation,
    },
}

M.AwsEcrContainerImageDetails = {
    type = "structure",
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
    members = {
        awsEcrContainerImage = M.AwsEcrContainerImageDetails,
    },
}

M.Resource = {
    type = "structure",
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
    members = {
        cvss = M.CvssScoreDetails,
    },
}

M.EnhancedImageScanFinding = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeImageSigningStatusInput = {
    type = "structure",
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
}

M.ReplicationDestination = {
    type = "structure",
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
    members = {
        registryId = {
            type = "string",
        },
        replicationConfiguration = M.ReplicationConfiguration,
    },
}

M.DescribeRepositoriesInput = {
    type = "structure",
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
    members = {
        registryIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AuthorizationData = {
    type = "structure",
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
    members = {
        authorizationData = {
            type = "list",
            member = M.AuthorizationData,
        },
    },
}

M.GetDownloadUrlForLayerInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LayersNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnableToGetUpstreamLayerException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetLifecyclePolicyInput = {
    type = "structure",
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
    members = {
        tagStatus = {
            type = "string",
        },
    },
}

M.GetLifecyclePolicyPreviewInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetRegistryPolicyInput = {
    type = "structure",
}

M.GetRegistryPolicyOutput = {
    type = "structure",
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
}

M.RegistryScanningRule = {
    type = "structure",
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
    members = {
        registryId = {
            type = "string",
        },
        scanningConfiguration = M.RegistryScanningConfiguration,
    },
}

M.GetRepositoryPolicyInput = {
    type = "structure",
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
}

M.GetSigningConfigurationOutput = {
    type = "structure",
    members = {
        registryId = {
            type = "string",
        },
        signingConfiguration = M.SigningConfiguration,
    },
}

M.InitiateLayerUploadInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListImagesFilter = {
    type = "structure",
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
    members = {
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutAccountSettingInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ImageDigestDoesNotMatchException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ImageTagAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutImageInput = {
    type = "structure",
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
    members = {
        image = M.Image,
    },
}

M.ReferencedImagesNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutImageScanningConfigurationInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutRegistryScanningConfigurationInput = {
    type = "structure",
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
    members = {
        registryScanningConfiguration = M.RegistryScanningConfiguration,
    },
}

M.PutReplicationConfigurationInput = {
    type = "structure",
    members = {
        replicationConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReplicationConfiguration }),
    },
}

M.PutReplicationConfigurationOutput = {
    type = "structure",
    members = {
        replicationConfiguration = M.ReplicationConfiguration,
    },
}

M.PutSigningConfigurationInput = {
    type = "structure",
    members = {
        signingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SigningConfiguration }),
    },
}

M.PutSigningConfigurationOutput = {
    type = "structure",
    members = {
        signingConfiguration = M.SigningConfiguration,
    },
}

M.ExclusionAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RegisterPullTimeUpdateExclusionInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StartImageScanInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LifecyclePolicyPreviewInProgressException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StartLifecyclePolicyPreviewInput = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

M.ImageStorageClassUpdateNotSupportedException = {
    type = "structure",
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
    members = {
        registryId = {
            type = "string",
        },
        repositoryCreationTemplate = M.RepositoryCreationTemplate,
    },
}

M.InvalidLayerPartException = {
    type = "structure",
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
