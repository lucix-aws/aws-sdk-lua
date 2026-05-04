local M = {}

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
    },
}

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

M.RegistryNotFoundException = {
    type = "structure",
    id = "RegistryNotFoundException",
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

M.UnsupportedCommandException = {
    type = "structure",
    id = "UnsupportedCommandException",
    error = "client",
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

M.RepositoryCatalogDataInput = {
    type = "structure",
    id = "RepositoryCatalogDataInput",
    members = {
        description = {
            type = "string",
        },
        architectures = {
            type = "list",
            member = { type = "string" },
        },
        operatingSystems = {
            type = "list",
            member = { type = "string" },
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
    id = "Tag",
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
    id = "CreateRepositoryInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        catalogData = M.RepositoryCatalogDataInput,
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.RepositoryCatalogData = {
    type = "structure",
    id = "RepositoryCatalogData",
    members = {
        description = {
            type = "string",
        },
        architectures = {
            type = "list",
            member = { type = "string" },
        },
        operatingSystems = {
            type = "list",
            member = { type = "string" },
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
    },
}

M.CreateRepositoryOutput = {
    type = "structure",
    id = "CreateRepositoryOutput",
    members = {
        repository = M.Repository,
        catalogData = M.RepositoryCatalogData,
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
    },
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

M.DescribeImageTagsInput = {
    type = "structure",
    id = "DescribeImageTagsInput",
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
    },
}

M.ReferencedImageDetail = {
    type = "structure",
    id = "ReferencedImageDetail",
    members = {
        imageDigest = {
            type = "string",
        },
        imageSizeInBytes = {
            type = "long",
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
    id = "ImageTagDetail",
    members = {
        imageTag = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        imageDetail = M.ReferencedImageDetail,
    },
}

M.DescribeImageTagsOutput = {
    type = "structure",
    id = "DescribeImageTagsOutput",
    members = {
        imageTagDetails = {
            type = "list",
            member = M.ImageTagDetail,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeRegistriesInput = {
    type = "structure",
    id = "DescribeRegistriesInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
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
    id = "RegistryAlias",
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
                default = false,
                required = true,
            },
        },
        defaultRegistryAlias = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.Registry = {
    type = "structure",
    id = "Registry",
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
            member = M.RegistryAlias,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeRegistriesOutput = {
    type = "structure",
    id = "DescribeRegistriesOutput",
    members = {
        registries = {
            type = "list",
            member = M.Registry,
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

M.GetAuthorizationTokenInput = {
    type = "structure",
    id = "GetAuthorizationTokenInput",
}

M.GetAuthorizationTokenOutput = {
    type = "structure",
    id = "GetAuthorizationTokenOutput",
    members = {
        authorizationData = M.AuthorizationData,
    },
}

M.GetRegistryCatalogDataInput = {
    type = "structure",
    id = "GetRegistryCatalogDataInput",
}

M.RegistryCatalogData = {
    type = "structure",
    id = "RegistryCatalogData",
    members = {
        displayName = {
            type = "string",
        },
    },
}

M.GetRegistryCatalogDataOutput = {
    type = "structure",
    id = "GetRegistryCatalogDataOutput",
    members = {
        registryCatalogData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RegistryCatalogData }),
    },
}

M.GetRepositoryCatalogDataInput = {
    type = "structure",
    id = "GetRepositoryCatalogDataInput",
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
    id = "GetRepositoryCatalogDataOutput",
    members = {
        catalogData = M.RepositoryCatalogData,
    },
}

M.RepositoryCatalogDataNotFoundException = {
    type = "structure",
    id = "RepositoryCatalogDataNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
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

M.PutRegistryCatalogDataInput = {
    type = "structure",
    id = "PutRegistryCatalogDataInput",
    members = {
        displayName = {
            type = "string",
        },
    },
}

M.PutRegistryCatalogDataOutput = {
    type = "structure",
    id = "PutRegistryCatalogDataOutput",
    members = {
        registryCatalogData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RegistryCatalogData }),
    },
}

M.PutRepositoryCatalogDataInput = {
    type = "structure",
    id = "PutRepositoryCatalogDataInput",
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
        catalogData = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RepositoryCatalogDataInput }),
    },
}

M.PutRepositoryCatalogDataOutput = {
    type = "structure",
    id = "PutRepositoryCatalogDataOutput",
    members = {
        catalogData = M.RepositoryCatalogData,
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

return M
