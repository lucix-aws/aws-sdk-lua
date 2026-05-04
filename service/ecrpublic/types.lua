local M = {}

M.AuthorizationData = {
    type = "structure",
    members = {
        authorizationToken = {
            type = "string",
        },
        expiresAt = {
            type = "timestamp",
        },
    },
}

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

M.RegistryNotFoundException = {
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

M.UnsupportedCommandException = {
    type = "structure",
    error = "client",
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

M.RepositoryCatalogDataInput = {
    type = "structure",
    members = {
        description = {
            type = "string",
        },
        architectures = {
            type = "list",
            member_type = "string",
        },
        operatingSystems = {
            type = "list",
            member_type = "string",
        },
        logoImageBlob = {
            type = "blob",
        },
        aboutText = {
            type = "string",
        },
        usageText = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.CreateRepositoryInput = {
    type = "structure",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        catalogData = {
            type = "structure",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RepositoryCatalogData = {
    type = "structure",
    members = {
        description = {
            type = "string",
        },
        architectures = {
            type = "list",
            member_type = "string",
        },
        operatingSystems = {
            type = "list",
            member_type = "string",
        },
        logoUrl = {
            type = "string",
        },
        aboutText = {
            type = "string",
        },
        usageText = {
            type = "string",
        },
        marketplaceCertified = {
            type = "boolean",
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
    },
}

M.CreateRepositoryOutput = {
    type = "structure",
    members = {
        repository = {
            type = "structure",
        },
        catalogData = {
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

M.LimitExceededException = {
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
    },
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
        imageManifestMediaType = {
            type = "string",
        },
        artifactMediaType = {
            type = "string",
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

M.ImageNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeImageTagsInput = {
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
    },
}

M.ReferencedImageDetail = {
    type = "structure",
    members = {
        imageDigest = {
            type = "string",
        },
        imageSizeInBytes = {
            type = "number",
        },
        imagePushedAt = {
            type = "timestamp",
        },
        imageManifestMediaType = {
            type = "string",
        },
        artifactMediaType = {
            type = "string",
        },
    },
}

M.ImageTagDetail = {
    type = "structure",
    members = {
        imageTag = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        imageDetail = {
            type = "structure",
        },
    },
}

M.DescribeImageTagsOutput = {
    type = "structure",
    members = {
        imageTagDetails = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeRegistriesInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.RegistryAliasStatus = {
    ACTIVE = "ACTIVE",
    PENDING = "PENDING",
    REJECTED = "REJECTED",
}

M.RegistryAlias = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        primaryRegistryAlias = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        defaultRegistryAlias = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.Registry = {
    type = "structure",
    members = {
        registryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        registryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        registryUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        verified = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        aliases = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeRegistriesOutput = {
    type = "structure",
    members = {
        registries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
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

M.GetAuthorizationTokenInput = {
    type = "structure",
}

M.GetAuthorizationTokenOutput = {
    type = "structure",
    members = {
        authorizationData = {
            type = "structure",
        },
    },
}

M.GetRegistryCatalogDataInput = {
    type = "structure",
}

M.RegistryCatalogData = {
    type = "structure",
    members = {
        displayName = {
            type = "string",
        },
    },
}

M.GetRegistryCatalogDataOutput = {
    type = "structure",
    members = {
        registryCatalogData = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRepositoryCatalogDataInput = {
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

M.GetRepositoryCatalogDataOutput = {
    type = "structure",
    members = {
        catalogData = {
            type = "structure",
        },
    },
}

M.RepositoryCatalogDataNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
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

M.LayersNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
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

M.PutRegistryCatalogDataInput = {
    type = "structure",
    members = {
        displayName = {
            type = "string",
        },
    },
}

M.PutRegistryCatalogDataOutput = {
    type = "structure",
    members = {
        registryCatalogData = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutRepositoryCatalogDataInput = {
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
        catalogData = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutRepositoryCatalogDataOutput = {
    type = "structure",
    members = {
        catalogData = {
            type = "structure",
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

return M
