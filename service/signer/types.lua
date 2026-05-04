local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "string",
        },
    },
}

M.AddProfilePermissionInput = {
    type = "structure",
    id = "AddProfilePermissionInput",
    members = {
        profileName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        profileVersion = {
            type = "string",
        },
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principal = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revisionId = {
            type = "string",
        },
        statementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AddProfilePermissionOutput = {
    type = "structure",
    id = "AddProfilePermissionOutput",
    members = {
        revisionId = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "string",
        },
    },
}

M.InternalServiceErrorException = {
    type = "structure",
    id = "InternalServiceErrorException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "string",
        },
    },
}

M.ServiceLimitExceededException = {
    type = "structure",
    id = "ServiceLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "string",
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
        code = {
            type = "string",
        },
    },
}

M.BadRequestException = {
    type = "structure",
    id = "BadRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "string",
        },
    },
}

M.CancelSigningProfileInput = {
    type = "structure",
    id = "CancelSigningProfileInput",
    members = {
        profileName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelSigningProfileOutput = {
    type = "structure",
    id = "CancelSigningProfileOutput",
}

M.Category = {
    AWSIoT = "AWSIoT",
}

M.DescribeSigningJobInput = {
    type = "structure",
    id = "DescribeSigningJobInput",
    members = {
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.EncryptionAlgorithm = {
    RSA = "RSA",
    ECDSA = "ECDSA",
}

M.HashAlgorithm = {
    SHA1 = "SHA1",
    SHA256 = "SHA256",
}

M.SigningConfigurationOverrides = {
    type = "structure",
    id = "SigningConfigurationOverrides",
    members = {
        encryptionAlgorithm = {
            type = "string",
        },
        hashAlgorithm = {
            type = "string",
        },
    },
}

M.ImageFormat = {
    JSON = "JSON",
    JSONEmbedded = "JSONEmbedded",
    JSONDetached = "JSONDetached",
}

M.SigningPlatformOverrides = {
    type = "structure",
    id = "SigningPlatformOverrides",
    members = {
        signingConfiguration = M.SigningConfigurationOverrides,
        signingImageFormat = {
            type = "string",
        },
    },
}

M.SigningJobRevocationRecord = {
    type = "structure",
    id = "SigningJobRevocationRecord",
    members = {
        reason = {
            type = "string",
        },
        revokedAt = {
            type = "timestamp",
        },
        revokedBy = {
            type = "string",
        },
    },
}

M.S3SignedObject = {
    type = "structure",
    id = "S3SignedObject",
    members = {
        bucketName = {
            type = "string",
        },
        key = {
            type = "string",
        },
    },
}

M.SignedObject = {
    type = "structure",
    id = "SignedObject",
    members = {
        s3 = M.S3SignedObject,
    },
}

M.SigningMaterial = {
    type = "structure",
    id = "SigningMaterial",
    members = {
        certificateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3Source = {
    type = "structure",
    id = "S3Source",
    members = {
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Source = {
    type = "structure",
    id = "Source",
    members = {
        s3 = M.S3Source,
    },
}

M.SigningStatus = {
    InProgress = "InProgress",
    Failed = "Failed",
    Succeeded = "Succeeded",
}

M.DescribeSigningJobOutput = {
    type = "structure",
    id = "DescribeSigningJobOutput",
    members = {
        jobId = {
            type = "string",
        },
        source = M.Source,
        signingMaterial = M.SigningMaterial,
        platformId = {
            type = "string",
        },
        platformDisplayName = {
            type = "string",
        },
        profileName = {
            type = "string",
        },
        profileVersion = {
            type = "string",
        },
        overrides = M.SigningPlatformOverrides,
        signingParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        createdAt = {
            type = "timestamp",
        },
        completedAt = {
            type = "timestamp",
        },
        signatureExpiresAt = {
            type = "timestamp",
        },
        requestedBy = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        revocationRecord = M.SigningJobRevocationRecord,
        signedObject = M.SignedObject,
        jobOwner = {
            type = "string",
        },
        jobInvoker = {
            type = "string",
        },
    },
}

M.S3Destination = {
    type = "structure",
    id = "S3Destination",
    members = {
        bucketName = {
            type = "string",
        },
        prefix = {
            type = "string",
        },
    },
}

M.Destination = {
    type = "structure",
    id = "Destination",
    members = {
        s3 = M.S3Destination,
    },
}

M.EncryptionAlgorithmOptions = {
    type = "structure",
    id = "EncryptionAlgorithmOptions",
    members = {
        allowedValues = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        defaultValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRevocationStatusInput = {
    type = "structure",
    id = "GetRevocationStatusInput",
    members = {
        signatureTimestamp = {
            type = "timestamp",
            traits = {
                http_query = "signatureTimestamp",
                required = true,
            },
        },
        platformId = {
            type = "string",
            traits = {
                http_query = "platformId",
                required = true,
            },
        },
        profileVersionArn = {
            type = "string",
            traits = {
                http_query = "profileVersionArn",
                required = true,
            },
        },
        jobArn = {
            type = "string",
            traits = {
                http_query = "jobArn",
                required = true,
            },
        },
        certificateHashes = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "certificateHashes",
                required = true,
            },
        },
    },
}

M.GetRevocationStatusOutput = {
    type = "structure",
    id = "GetRevocationStatusOutput",
    members = {
        revokedEntities = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetSigningPlatformInput = {
    type = "structure",
    id = "GetSigningPlatformInput",
    members = {
        platformId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.HashAlgorithmOptions = {
    type = "structure",
    id = "HashAlgorithmOptions",
    members = {
        allowedValues = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        defaultValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SigningConfiguration = {
    type = "structure",
    id = "SigningConfiguration",
    members = {
        encryptionAlgorithmOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EncryptionAlgorithmOptions }),
        hashAlgorithmOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HashAlgorithmOptions }),
    },
}

M.SigningImageFormat = {
    type = "structure",
    id = "SigningImageFormat",
    members = {
        supportedFormats = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        defaultFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSigningPlatformOutput = {
    type = "structure",
    id = "GetSigningPlatformOutput",
    members = {
        platformId = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        partner = {
            type = "string",
        },
        target = {
            type = "string",
        },
        category = {
            type = "string",
        },
        signingConfiguration = M.SigningConfiguration,
        signingImageFormat = M.SigningImageFormat,
        maxSizeInMB = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        revocationSupported = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.GetSigningProfileInput = {
    type = "structure",
    id = "GetSigningProfileInput",
    members = {
        profileName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        profileOwner = {
            type = "string",
            traits = {
                http_query = "profileOwner",
            },
        },
    },
}

M.SigningProfileRevocationRecord = {
    type = "structure",
    id = "SigningProfileRevocationRecord",
    members = {
        revocationEffectiveFrom = {
            type = "timestamp",
        },
        revokedAt = {
            type = "timestamp",
        },
        revokedBy = {
            type = "string",
        },
    },
}

M.ValidityType = {
    DAYS = "DAYS",
    MONTHS = "MONTHS",
    YEARS = "YEARS",
}

M.SignatureValidityPeriod = {
    type = "structure",
    id = "SignatureValidityPeriod",
    members = {
        value = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        type = {
            type = "string",
        },
    },
}

M.SigningProfileStatus = {
    Active = "Active",
    Canceled = "Canceled",
    Revoked = "Revoked",
}

M.GetSigningProfileOutput = {
    type = "structure",
    id = "GetSigningProfileOutput",
    members = {
        profileName = {
            type = "string",
        },
        profileVersion = {
            type = "string",
        },
        profileVersionArn = {
            type = "string",
        },
        revocationRecord = M.SigningProfileRevocationRecord,
        signingMaterial = M.SigningMaterial,
        platformId = {
            type = "string",
        },
        platformDisplayName = {
            type = "string",
        },
        signatureValidityPeriod = M.SignatureValidityPeriod,
        overrides = M.SigningPlatformOverrides,
        signingParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        status = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListProfilePermissionsInput = {
    type = "structure",
    id = "ListProfilePermissionsInput",
    members = {
        profileName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.Permission = {
    type = "structure",
    id = "Permission",
    members = {
        action = {
            type = "string",
        },
        principal = {
            type = "string",
        },
        statementId = {
            type = "string",
        },
        profileVersion = {
            type = "string",
        },
    },
}

M.ListProfilePermissionsOutput = {
    type = "structure",
    id = "ListProfilePermissionsOutput",
    members = {
        revisionId = {
            type = "string",
        },
        policySizeBytes = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        permissions = {
            type = "list",
            member = M.Permission,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSigningJobsInput = {
    type = "structure",
    id = "ListSigningJobsInput",
    members = {
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        platformId = {
            type = "string",
            traits = {
                http_query = "platformId",
            },
        },
        requestedBy = {
            type = "string",
            traits = {
                http_query = "requestedBy",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        isRevoked = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "isRevoked",
            },
        },
        signatureExpiresBefore = {
            type = "timestamp",
            traits = {
                http_query = "signatureExpiresBefore",
            },
        },
        signatureExpiresAfter = {
            type = "timestamp",
            traits = {
                http_query = "signatureExpiresAfter",
            },
        },
        jobInvoker = {
            type = "string",
            traits = {
                http_query = "jobInvoker",
            },
        },
    },
}

M.SigningJob = {
    type = "structure",
    id = "SigningJob",
    members = {
        jobId = {
            type = "string",
        },
        source = M.Source,
        signedObject = M.SignedObject,
        signingMaterial = M.SigningMaterial,
        createdAt = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        isRevoked = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        profileName = {
            type = "string",
        },
        profileVersion = {
            type = "string",
        },
        platformId = {
            type = "string",
        },
        platformDisplayName = {
            type = "string",
        },
        signatureExpiresAt = {
            type = "timestamp",
        },
        jobOwner = {
            type = "string",
        },
        jobInvoker = {
            type = "string",
        },
    },
}

M.ListSigningJobsOutput = {
    type = "structure",
    id = "ListSigningJobsOutput",
    members = {
        jobs = {
            type = "list",
            member = M.SigningJob,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSigningPlatformsInput = {
    type = "structure",
    id = "ListSigningPlatformsInput",
    members = {
        category = {
            type = "string",
            traits = {
                http_query = "category",
            },
        },
        partner = {
            type = "string",
            traits = {
                http_query = "partner",
            },
        },
        target = {
            type = "string",
            traits = {
                http_query = "target",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.SigningPlatform = {
    type = "structure",
    id = "SigningPlatform",
    members = {
        platformId = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        partner = {
            type = "string",
        },
        target = {
            type = "string",
        },
        category = {
            type = "string",
        },
        signingConfiguration = M.SigningConfiguration,
        signingImageFormat = M.SigningImageFormat,
        maxSizeInMB = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        revocationSupported = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ListSigningPlatformsOutput = {
    type = "structure",
    id = "ListSigningPlatformsOutput",
    members = {
        platforms = {
            type = "list",
            member = M.SigningPlatform,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSigningProfilesInput = {
    type = "structure",
    id = "ListSigningProfilesInput",
    members = {
        includeCanceled = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "includeCanceled",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        platformId = {
            type = "string",
            traits = {
                http_query = "platformId",
            },
        },
        statuses = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "statuses",
            },
        },
    },
}

M.SigningProfile = {
    type = "structure",
    id = "SigningProfile",
    members = {
        profileName = {
            type = "string",
        },
        profileVersion = {
            type = "string",
        },
        profileVersionArn = {
            type = "string",
        },
        signingMaterial = M.SigningMaterial,
        signatureValidityPeriod = M.SignatureValidityPeriod,
        platformId = {
            type = "string",
        },
        platformDisplayName = {
            type = "string",
        },
        signingParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        status = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListSigningProfilesOutput = {
    type = "structure",
    id = "ListSigningProfilesOutput",
    members = {
        profiles = {
            type = "list",
            member = M.SigningProfile,
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
                http_label = true,
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
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.NotFoundException = {
    type = "structure",
    id = "NotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        code = {
            type = "string",
        },
    },
}

M.PutSigningProfileInput = {
    type = "structure",
    id = "PutSigningProfileInput",
    members = {
        profileName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        signingMaterial = M.SigningMaterial,
        signatureValidityPeriod = M.SignatureValidityPeriod,
        platformId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        overrides = M.SigningPlatformOverrides,
        signingParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PutSigningProfileOutput = {
    type = "structure",
    id = "PutSigningProfileOutput",
    members = {
        arn = {
            type = "string",
        },
        profileVersion = {
            type = "string",
        },
        profileVersionArn = {
            type = "string",
        },
    },
}

M.RemoveProfilePermissionInput = {
    type = "structure",
    id = "RemoveProfilePermissionInput",
    members = {
        profileName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        revisionId = {
            type = "string",
            traits = {
                http_query = "revisionId",
                required = true,
            },
        },
        statementId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RemoveProfilePermissionOutput = {
    type = "structure",
    id = "RemoveProfilePermissionOutput",
    members = {
        revisionId = {
            type = "string",
        },
    },
}

M.RevokeSignatureInput = {
    type = "structure",
    id = "RevokeSignatureInput",
    members = {
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobOwner = {
            type = "string",
        },
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RevokeSignatureOutput = {
    type = "structure",
    id = "RevokeSignatureOutput",
}

M.RevokeSigningProfileInput = {
    type = "structure",
    id = "RevokeSigningProfileInput",
    members = {
        profileName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        profileVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        effectiveTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.RevokeSigningProfileOutput = {
    type = "structure",
    id = "RevokeSigningProfileOutput",
}

M.SignPayloadInput = {
    type = "structure",
    id = "SignPayloadInput",
    members = {
        profileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        profileOwner = {
            type = "string",
        },
        payload = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        payloadFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SignPayloadOutput = {
    type = "structure",
    id = "SignPayloadOutput",
    members = {
        jobId = {
            type = "string",
        },
        jobOwner = {
            type = "string",
        },
        metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        signature = {
            type = "blob",
        },
    },
}

M.StartSigningJobInput = {
    type = "structure",
    id = "StartSigningJobInput",
    members = {
        source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Source }),
        destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Destination }),
        profileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        profileOwner = {
            type = "string",
        },
    },
}

M.StartSigningJobOutput = {
    type = "structure",
    id = "StartSigningJobOutput",
    members = {
        jobId = {
            type = "string",
        },
        jobOwner = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        code = {
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
                http_label = true,
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

return M
