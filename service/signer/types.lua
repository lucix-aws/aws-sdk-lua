local M = {}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        revisionId = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
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
}

M.Category = {
    AWSIoT = "AWSIoT",
}

M.DescribeSigningJobInput = {
    type = "structure",
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
    members = {
        signingConfiguration = M.SigningConfigurationOverrides,
        signingImageFormat = {
            type = "string",
        },
    },
}

M.SigningJobRevocationRecord = {
    type = "structure",
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
    members = {
        s3 = M.S3SignedObject,
    },
}

M.SigningMaterial = {
    type = "structure",
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
    members = {
        s3 = M.S3Destination,
    },
}

M.EncryptionAlgorithmOptions = {
    type = "structure",
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
    members = {
        revokedEntities = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetSigningPlatformInput = {
    type = "structure",
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
    members = {
        revisionId = {
            type = "string",
        },
    },
}

M.RevokeSignatureInput = {
    type = "structure",
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
}

M.RevokeSigningProfileInput = {
    type = "structure",
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
}

M.SignPayloadInput = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

return M
