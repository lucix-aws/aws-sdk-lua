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
            member_type = "string",
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
            type = "number",
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
            member_type = "structure",
        },
        failures = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        imageId = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        failures = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        acceptedMediaTypes = {
            type = "list",
            member_type = "string",
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
        imageId = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        failures = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
        },
        scanFrequency = {
            type = "string",
        },
        appliedScanFilters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchGetRepositoryScanningConfigurationOutput = {
    type = "structure",
    members = {
        scanningConfigurations = {
            type = "list",
            member_type = "structure",
        },
        failures = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
        },
        imageTagMutability = {
            type = "string",
        },
        imageTagMutabilityExclusionFilters = {
            type = "list",
            member_type = "structure",
        },
        imageScanningConfiguration = {
            type = "structure",
        },
        encryptionConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        imageScanningConfiguration = {
            type = "structure",
        },
        encryptionConfiguration = {
            type = "structure",
        },
    },
}

M.CreateRepositoryOutput = {
    type = "structure",
    members = {
        repository = {
            type = "structure",
        },
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
        encryptionConfiguration = {
            type = "structure",
        },
        resourceTags = {
            type = "list",
            member_type = "structure",
        },
        imageTagMutability = {
            type = "string",
        },
        imageTagMutabilityExclusionFilters = {
            type = "list",
            member_type = "structure",
        },
        repositoryPolicy = {
            type = "string",
        },
        lifecyclePolicy = {
            type = "string",
        },
        appliedFor = {
            type = "list",
            member_type = "string",
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
        encryptionConfiguration = {
            type = "structure",
        },
        resourceTags = {
            type = "list",
            member_type = "structure",
        },
        imageTagMutability = {
            type = "string",
        },
        imageTagMutabilityExclusionFilters = {
            type = "list",
            member_type = "structure",
        },
        repositoryPolicy = {
            type = "string",
        },
        lifecyclePolicy = {
            type = "string",
        },
        appliedFor = {
            type = "list",
            member_type = "string",
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
        repositoryCreationTemplate = {
            type = "structure",
        },
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
        },
    },
}

M.DeleteRepositoryOutput = {
    type = "structure",
    members = {
        repository = {
            type = "structure",
        },
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
        repositoryCreationTemplate = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.SigningConfiguration = {
    type = "structure",
    members = {
        rules = {
            type = "list",
            member_type = "structure",
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
        signingConfiguration = {
            type = "structure",
        },
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
        imageId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        imageId = {
            type = "structure",
        },
        replicationStatuses = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        filter = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "number",
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
            member_type = "string",
        },
        imageSizeInBytes = {
            type = "number",
        },
        imagePushedAt = {
            type = "timestamp",
        },
        imageScanStatus = {
            type = "structure",
        },
        imageScanFindingsSummary = {
            type = "structure",
        },
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
            member_type = "structure",
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
        imageId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.CvssScore = {
    type = "structure",
    members = {
        baseScore = {
            type = "number",
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
            type = "number",
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
            member_type = "structure",
        },
        referenceUrls = {
            type = "list",
            member_type = "string",
        },
        relatedVulnerabilities = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
        recommendation = {
            type = "structure",
        },
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
            member_type = "string",
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
            type = "number",
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
        awsEcrContainerImage = {
            type = "structure",
        },
    },
}

M.Resource = {
    type = "structure",
    members = {
        details = {
            type = "structure",
        },
        id = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
        },
        score = {
            type = "number",
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
        cvss = {
            type = "structure",
        },
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
        packageVulnerabilityDetails = {
            type = "structure",
        },
        remediation = {
            type = "structure",
        },
        resources = {
            type = "list",
            member_type = "structure",
        },
        score = {
            type = "number",
        },
        scoreDetails = {
            type = "structure",
        },
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "number",
        },
        findings = {
            type = "list",
            member_type = "structure",
        },
        enhancedFindings = {
            type = "list",
            member_type = "structure",
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
        imageId = {
            type = "structure",
        },
        imageScanStatus = {
            type = "structure",
        },
        imageScanFindings = {
            type = "structure",
        },
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
        imageId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        imageId = {
            type = "structure",
        },
        registryId = {
            type = "string",
        },
        signingStatuses = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        repositoryFilters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ReplicationConfiguration = {
    type = "structure",
    members = {
        rules = {
            type = "list",
            member_type = "structure",
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
        replicationConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.DescribeRepositoriesOutput = {
    type = "structure",
    members = {
        repositories = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        filter = {
            type = "structure",
        },
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
            member_type = "string",
        },
        imageDigest = {
            type = "string",
        },
        imagePushedAt = {
            type = "timestamp",
        },
        action = {
            type = "structure",
        },
        appliedRulePriority = {
            type = "number",
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
            type = "number",
        },
    },
}

M.LifecyclePolicyPreviewSummary = {
    type = "structure",
    members = {
        expiringImageTotalCount = {
            type = "number",
        },
        transitioningImageTotalCounts = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        summary = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
        },
    },
}

M.GetRegistryScanningConfigurationOutput = {
    type = "structure",
    members = {
        registryId = {
            type = "string",
        },
        scanningConfiguration = {
            type = "structure",
        },
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
        signingConfiguration = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "string",
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
        subjectId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        filter = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        annotations = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
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
            type = "number",
        },
        filter = {
            type = "structure",
        },
    },
}

M.ListImagesOutput = {
    type = "structure",
    members = {
        imageIds = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "string",
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
            member_type = "structure",
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
        image = {
            type = "structure",
        },
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
        imageScanningConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        imageScanningConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
    },
}

M.PutRegistryScanningConfigurationOutput = {
    type = "structure",
    members = {
        registryScanningConfiguration = {
            type = "structure",
        },
    },
}

M.PutReplicationConfigurationInput = {
    type = "structure",
    members = {
        replicationConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutReplicationConfigurationOutput = {
    type = "structure",
    members = {
        replicationConfiguration = {
            type = "structure",
        },
    },
}

M.PutSigningConfigurationInput = {
    type = "structure",
    members = {
        signingConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutSigningConfigurationOutput = {
    type = "structure",
    members = {
        signingConfiguration = {
            type = "structure",
        },
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
        imageId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        imageId = {
            type = "structure",
        },
        imageScanStatus = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
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
        imageId = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        imageId = {
            type = "structure",
        },
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
        encryptionConfiguration = {
            type = "structure",
        },
        resourceTags = {
            type = "list",
            member_type = "structure",
        },
        imageTagMutability = {
            type = "string",
        },
        imageTagMutabilityExclusionFilters = {
            type = "list",
            member_type = "structure",
        },
        repositoryPolicy = {
            type = "string",
        },
        lifecyclePolicy = {
            type = "string",
        },
        appliedFor = {
            type = "list",
            member_type = "string",
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
        repositoryCreationTemplate = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        partLastByte = {
            type = "number",
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
            type = "number",
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
        },
        failure = {
            type = "string",
        },
    },
}

return M
