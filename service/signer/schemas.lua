local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.signer"

local M = {}

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AccessDeniedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        code = schema.new({
            id = id.from(_N, "AccessDeniedException", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
    },
})

M.AddProfilePermissionInput = schema.new({
    id = id.from(_N, "AddProfilePermissionInput"),
    type = "structure",
    members = {
        profileName = schema.new({
            id = id.from(_N, "AddProfilePermissionInput", "profileName"),
            type = "string",
            name = "profileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        profileVersion = schema.new({
            id = id.from(_N, "AddProfilePermissionInput", "profileVersion"),
            type = "string",
            name = "profileVersion",
            target_id = prelude.String.id,
        }),
        action = schema.new({
            id = id.from(_N, "AddProfilePermissionInput", "action"),
            type = "string",
            name = "action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        principal = schema.new({
            id = id.from(_N, "AddProfilePermissionInput", "principal"),
            type = "string",
            name = "principal",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        revisionId = schema.new({
            id = id.from(_N, "AddProfilePermissionInput", "revisionId"),
            type = "string",
            name = "revisionId",
            target_id = prelude.String.id,
        }),
        statementId = schema.new({
            id = id.from(_N, "AddProfilePermissionInput", "statementId"),
            type = "string",
            name = "statementId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddProfilePermissionOutput = schema.new({
    id = id.from(_N, "AddProfilePermissionOutput"),
    type = "structure",
    members = {
        revisionId = schema.new({
            id = id.from(_N, "AddProfilePermissionOutput", "revisionId"),
            type = "string",
            name = "revisionId",
            target_id = prelude.String.id,
        }),
    },
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        code = schema.new({
            id = id.from(_N, "ConflictException", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
    },
})

M.InternalServiceErrorException = schema.new({
    id = id.from(_N, "InternalServiceErrorException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalServiceErrorException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        code = schema.new({
            id = id.from(_N, "InternalServiceErrorException", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        code = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceLimitExceededException = schema.new({
    id = id.from(_N, "ServiceLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceLimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        code = schema.new({
            id = id.from(_N, "ServiceLimitExceededException", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyRequestsException = schema.new({
    id = id.from(_N, "TooManyRequestsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TooManyRequestsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        code = schema.new({
            id = id.from(_N, "TooManyRequestsException", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ValidationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        code = schema.new({
            id = id.from(_N, "ValidationException", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
    },
})

M.BadRequestException = schema.new({
    id = id.from(_N, "BadRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "BadRequestException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        code = schema.new({
            id = id.from(_N, "BadRequestException", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
    },
})

M.CancelSigningProfileInput = schema.new({
    id = id.from(_N, "CancelSigningProfileInput"),
    type = "structure",
    members = {
        profileName = schema.new({
            id = id.from(_N, "CancelSigningProfileInput", "profileName"),
            type = "string",
            name = "profileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.CancelSigningProfileOutput = schema.new({
    id = id.from(_N, "CancelSigningProfileOutput"),
    type = "structure",
})

M.DescribeSigningJobInput = schema.new({
    id = id.from(_N, "DescribeSigningJobInput"),
    type = "structure",
    members = {
        jobId = schema.new({
            id = id.from(_N, "DescribeSigningJobInput", "jobId"),
            type = "string",
            name = "jobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.SigningConfigurationOverrides = schema.new({
    id = id.from(_N, "SigningConfigurationOverrides"),
    type = "structure",
    members = {
        encryptionAlgorithm = schema.new({
            id = id.from(_N, "SigningConfigurationOverrides", "encryptionAlgorithm"),
            type = "string",
            name = "encryptionAlgorithm",
            target_id = prelude.String.id,
        }),
        hashAlgorithm = schema.new({
            id = id.from(_N, "SigningConfigurationOverrides", "hashAlgorithm"),
            type = "string",
            name = "hashAlgorithm",
            target_id = prelude.String.id,
        }),
    },
})

M.SigningPlatformOverrides = schema.new({
    id = id.from(_N, "SigningPlatformOverrides"),
    type = "structure",
    members = {
        signingConfiguration = schema.new({
            id = id.from(_N, "SigningPlatformOverrides", "signingConfiguration"),
            type = "structure",
            name = "signingConfiguration",
            target_id = id.from(_N, "SigningConfigurationOverrides"),
            target = M.SigningConfigurationOverrides,
        }),
        signingImageFormat = schema.new({
            id = id.from(_N, "SigningPlatformOverrides", "signingImageFormat"),
            type = "string",
            name = "signingImageFormat",
            target_id = prelude.String.id,
        }),
    },
})

M.SigningJobRevocationRecord = schema.new({
    id = id.from(_N, "SigningJobRevocationRecord"),
    type = "structure",
    members = {
        reason = schema.new({
            id = id.from(_N, "SigningJobRevocationRecord", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
        }),
        revokedAt = schema.new({
            id = id.from(_N, "SigningJobRevocationRecord", "revokedAt"),
            type = "timestamp",
            name = "revokedAt",
            target_id = prelude.Timestamp.id,
        }),
        revokedBy = schema.new({
            id = id.from(_N, "SigningJobRevocationRecord", "revokedBy"),
            type = "string",
            name = "revokedBy",
            target_id = prelude.String.id,
        }),
    },
})

M.S3SignedObject = schema.new({
    id = id.from(_N, "S3SignedObject"),
    type = "structure",
    members = {
        bucketName = schema.new({
            id = id.from(_N, "S3SignedObject", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
        }),
        key = schema.new({
            id = id.from(_N, "S3SignedObject", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
        }),
    },
})

M.SignedObject = schema.new({
    id = id.from(_N, "SignedObject"),
    type = "structure",
    members = {
        s3 = schema.new({
            id = id.from(_N, "SignedObject", "s3"),
            type = "structure",
            name = "s3",
            target_id = id.from(_N, "S3SignedObject"),
            target = M.S3SignedObject,
        }),
    },
})

M.SigningMaterial = schema.new({
    id = id.from(_N, "SigningMaterial"),
    type = "structure",
    members = {
        certificateArn = schema.new({
            id = id.from(_N, "SigningMaterial", "certificateArn"),
            type = "string",
            name = "certificateArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.S3Source = schema.new({
    id = id.from(_N, "S3Source"),
    type = "structure",
    members = {
        bucketName = schema.new({
            id = id.from(_N, "S3Source", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        key = schema.new({
            id = id.from(_N, "S3Source", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        version = schema.new({
            id = id.from(_N, "S3Source", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Source = schema.new({
    id = id.from(_N, "Source"),
    type = "structure",
    members = {
        s3 = schema.new({
            id = id.from(_N, "Source", "s3"),
            type = "structure",
            name = "s3",
            target_id = id.from(_N, "S3Source"),
            target = M.S3Source,
        }),
    },
})

M.DescribeSigningJobOutput = schema.new({
    id = id.from(_N, "DescribeSigningJobOutput"),
    type = "structure",
    members = {
        jobId = schema.new({
            id = id.from(_N, "DescribeSigningJobOutput", "jobId"),
            type = "string",
            name = "jobId",
            target_id = prelude.String.id,
        }),
        source = schema.new({
            id = id.from(_N, "DescribeSigningJobOutput", "source"),
            type = "structure",
            name = "source",
            target_id = id.from(_N, "Source"),
            target = M.Source,
        }),
        signingMaterial = schema.new({
            id = id.from(_N, "DescribeSigningJobOutput", "signingMaterial"),
            type = "structure",
            name = "signingMaterial",
            target_id = id.from(_N, "SigningMaterial"),
            target = M.SigningMaterial,
        }),
        platformId = schema.new({
            id = id.from(_N, "DescribeSigningJobOutput", "platformId"),
            type = "string",
            name = "platformId",
            target_id = prelude.String.id,
        }),
        platformDisplayName = schema.new({
            id = id.from(_N, "DescribeSigningJobOutput", "platformDisplayName"),
            type = "string",
            name = "platformDisplayName",
            target_id = prelude.String.id,
        }),
        profileName = schema.new({
            id = id.from(_N, "DescribeSigningJobOutput", "profileName"),
            type = "string",
            name = "profileName",
            target_id = prelude.String.id,
        }),
        profileVersion = schema.new({
            id = id.from(_N, "DescribeSigningJobOutput", "profileVersion"),
            type = "string",
            name = "profileVersion",
            target_id = prelude.String.id,
        }),
        overrides = schema.new({
            id = id.from(_N, "DescribeSigningJobOutput", "overrides"),
            type = "structure",
            name = "overrides",
            target_id = id.from(_N, "SigningPlatformOverrides"),
            target = M.SigningPlatformOverrides,
        }),
        signingParameters = schema.new({
            id = id.from(_N, "DescribeSigningJobOutput", "signingParameters"),
            type = "map",
            name = "signingParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        createdAt = schema.new({
            id = id.from(_N, "DescribeSigningJobOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        completedAt = schema.new({
            id = id.from(_N, "DescribeSigningJobOutput", "completedAt"),
            type = "timestamp",
            name = "completedAt",
            target_id = prelude.Timestamp.id,
        }),
        signatureExpiresAt = schema.new({
            id = id.from(_N, "DescribeSigningJobOutput", "signatureExpiresAt"),
            type = "timestamp",
            name = "signatureExpiresAt",
            target_id = prelude.Timestamp.id,
        }),
        requestedBy = schema.new({
            id = id.from(_N, "DescribeSigningJobOutput", "requestedBy"),
            type = "string",
            name = "requestedBy",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "DescribeSigningJobOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusReason = schema.new({
            id = id.from(_N, "DescribeSigningJobOutput", "statusReason"),
            type = "string",
            name = "statusReason",
            target_id = prelude.String.id,
        }),
        revocationRecord = schema.new({
            id = id.from(_N, "DescribeSigningJobOutput", "revocationRecord"),
            type = "structure",
            name = "revocationRecord",
            target_id = id.from(_N, "SigningJobRevocationRecord"),
            target = M.SigningJobRevocationRecord,
        }),
        signedObject = schema.new({
            id = id.from(_N, "DescribeSigningJobOutput", "signedObject"),
            type = "structure",
            name = "signedObject",
            target_id = id.from(_N, "SignedObject"),
            target = M.SignedObject,
        }),
        jobOwner = schema.new({
            id = id.from(_N, "DescribeSigningJobOutput", "jobOwner"),
            type = "string",
            name = "jobOwner",
            target_id = prelude.String.id,
        }),
        jobInvoker = schema.new({
            id = id.from(_N, "DescribeSigningJobOutput", "jobInvoker"),
            type = "string",
            name = "jobInvoker",
            target_id = prelude.String.id,
        }),
    },
})

M.S3Destination = schema.new({
    id = id.from(_N, "S3Destination"),
    type = "structure",
    members = {
        bucketName = schema.new({
            id = id.from(_N, "S3Destination", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
        }),
        prefix = schema.new({
            id = id.from(_N, "S3Destination", "prefix"),
            type = "string",
            name = "prefix",
            target_id = prelude.String.id,
        }),
    },
})

M.Destination = schema.new({
    id = id.from(_N, "Destination"),
    type = "structure",
    members = {
        s3 = schema.new({
            id = id.from(_N, "Destination", "s3"),
            type = "structure",
            name = "s3",
            target_id = id.from(_N, "S3Destination"),
            target = M.S3Destination,
        }),
    },
})

M.EncryptionAlgorithmOptions = schema.new({
    id = id.from(_N, "EncryptionAlgorithmOptions"),
    type = "structure",
    members = {
        allowedValues = schema.new({
            id = id.from(_N, "EncryptionAlgorithmOptions", "allowedValues"),
            type = "list",
            name = "allowedValues",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        defaultValue = schema.new({
            id = id.from(_N, "EncryptionAlgorithmOptions", "defaultValue"),
            type = "string",
            name = "defaultValue",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetRevocationStatusInput = schema.new({
    id = id.from(_N, "GetRevocationStatusInput"),
    type = "structure",
    members = {
        signatureTimestamp = schema.new({
            id = id.from(_N, "GetRevocationStatusInput", "signatureTimestamp"),
            type = "timestamp",
            name = "signatureTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "signatureTimestamp" },
            },
        }),
        platformId = schema.new({
            id = id.from(_N, "GetRevocationStatusInput", "platformId"),
            type = "string",
            name = "platformId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "platformId" },
            },
        }),
        profileVersionArn = schema.new({
            id = id.from(_N, "GetRevocationStatusInput", "profileVersionArn"),
            type = "string",
            name = "profileVersionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "profileVersionArn" },
            },
        }),
        jobArn = schema.new({
            id = id.from(_N, "GetRevocationStatusInput", "jobArn"),
            type = "string",
            name = "jobArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "jobArn" },
            },
        }),
        certificateHashes = schema.new({
            id = id.from(_N, "GetRevocationStatusInput", "certificateHashes"),
            type = "list",
            name = "certificateHashes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "certificateHashes" },
            },
        }),
    },
})

M.GetRevocationStatusOutput = schema.new({
    id = id.from(_N, "GetRevocationStatusOutput"),
    type = "structure",
    members = {
        revokedEntities = schema.new({
            id = id.from(_N, "GetRevocationStatusOutput", "revokedEntities"),
            type = "list",
            name = "revokedEntities",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GetSigningPlatformInput = schema.new({
    id = id.from(_N, "GetSigningPlatformInput"),
    type = "structure",
    members = {
        platformId = schema.new({
            id = id.from(_N, "GetSigningPlatformInput", "platformId"),
            type = "string",
            name = "platformId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.HashAlgorithmOptions = schema.new({
    id = id.from(_N, "HashAlgorithmOptions"),
    type = "structure",
    members = {
        allowedValues = schema.new({
            id = id.from(_N, "HashAlgorithmOptions", "allowedValues"),
            type = "list",
            name = "allowedValues",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        defaultValue = schema.new({
            id = id.from(_N, "HashAlgorithmOptions", "defaultValue"),
            type = "string",
            name = "defaultValue",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SigningConfiguration = schema.new({
    id = id.from(_N, "SigningConfiguration"),
    type = "structure",
    members = {
        encryptionAlgorithmOptions = schema.new({
            id = id.from(_N, "SigningConfiguration", "encryptionAlgorithmOptions"),
            type = "structure",
            name = "encryptionAlgorithmOptions",
            target_id = id.from(_N, "EncryptionAlgorithmOptions"),
            target = M.EncryptionAlgorithmOptions,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        hashAlgorithmOptions = schema.new({
            id = id.from(_N, "SigningConfiguration", "hashAlgorithmOptions"),
            type = "structure",
            name = "hashAlgorithmOptions",
            target_id = id.from(_N, "HashAlgorithmOptions"),
            target = M.HashAlgorithmOptions,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SigningImageFormat = schema.new({
    id = id.from(_N, "SigningImageFormat"),
    type = "structure",
    members = {
        supportedFormats = schema.new({
            id = id.from(_N, "SigningImageFormat", "supportedFormats"),
            type = "list",
            name = "supportedFormats",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        defaultFormat = schema.new({
            id = id.from(_N, "SigningImageFormat", "defaultFormat"),
            type = "string",
            name = "defaultFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetSigningPlatformOutput = schema.new({
    id = id.from(_N, "GetSigningPlatformOutput"),
    type = "structure",
    members = {
        platformId = schema.new({
            id = id.from(_N, "GetSigningPlatformOutput", "platformId"),
            type = "string",
            name = "platformId",
            target_id = prelude.String.id,
        }),
        displayName = schema.new({
            id = id.from(_N, "GetSigningPlatformOutput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        partner = schema.new({
            id = id.from(_N, "GetSigningPlatformOutput", "partner"),
            type = "string",
            name = "partner",
            target_id = prelude.String.id,
        }),
        target = schema.new({
            id = id.from(_N, "GetSigningPlatformOutput", "target"),
            type = "string",
            name = "target",
            target_id = prelude.String.id,
        }),
        category = schema.new({
            id = id.from(_N, "GetSigningPlatformOutput", "category"),
            type = "string",
            name = "category",
            target_id = prelude.String.id,
        }),
        signingConfiguration = schema.new({
            id = id.from(_N, "GetSigningPlatformOutput", "signingConfiguration"),
            type = "structure",
            name = "signingConfiguration",
            target_id = id.from(_N, "SigningConfiguration"),
            target = M.SigningConfiguration,
        }),
        signingImageFormat = schema.new({
            id = id.from(_N, "GetSigningPlatformOutput", "signingImageFormat"),
            type = "structure",
            name = "signingImageFormat",
            target_id = id.from(_N, "SigningImageFormat"),
            target = M.SigningImageFormat,
        }),
        maxSizeInMB = schema.new({
            id = id.from(_N, "GetSigningPlatformOutput", "maxSizeInMB"),
            type = "integer",
            name = "maxSizeInMB",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        revocationSupported = schema.new({
            id = id.from(_N, "GetSigningPlatformOutput", "revocationSupported"),
            type = "boolean",
            name = "revocationSupported",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.GetSigningProfileInput = schema.new({
    id = id.from(_N, "GetSigningProfileInput"),
    type = "structure",
    members = {
        profileName = schema.new({
            id = id.from(_N, "GetSigningProfileInput", "profileName"),
            type = "string",
            name = "profileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        profileOwner = schema.new({
            id = id.from(_N, "GetSigningProfileInput", "profileOwner"),
            type = "string",
            name = "profileOwner",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "profileOwner" },
            },
        }),
    },
})

M.SigningProfileRevocationRecord = schema.new({
    id = id.from(_N, "SigningProfileRevocationRecord"),
    type = "structure",
    members = {
        revocationEffectiveFrom = schema.new({
            id = id.from(_N, "SigningProfileRevocationRecord", "revocationEffectiveFrom"),
            type = "timestamp",
            name = "revocationEffectiveFrom",
            target_id = prelude.Timestamp.id,
        }),
        revokedAt = schema.new({
            id = id.from(_N, "SigningProfileRevocationRecord", "revokedAt"),
            type = "timestamp",
            name = "revokedAt",
            target_id = prelude.Timestamp.id,
        }),
        revokedBy = schema.new({
            id = id.from(_N, "SigningProfileRevocationRecord", "revokedBy"),
            type = "string",
            name = "revokedBy",
            target_id = prelude.String.id,
        }),
    },
})

M.SignatureValidityPeriod = schema.new({
    id = id.from(_N, "SignatureValidityPeriod"),
    type = "structure",
    members = {
        value = schema.new({
            id = id.from(_N, "SignatureValidityPeriod", "value"),
            type = "integer",
            name = "value",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        type = schema.new({
            id = id.from(_N, "SignatureValidityPeriod", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
    },
})

M.GetSigningProfileOutput = schema.new({
    id = id.from(_N, "GetSigningProfileOutput"),
    type = "structure",
    members = {
        profileName = schema.new({
            id = id.from(_N, "GetSigningProfileOutput", "profileName"),
            type = "string",
            name = "profileName",
            target_id = prelude.String.id,
        }),
        profileVersion = schema.new({
            id = id.from(_N, "GetSigningProfileOutput", "profileVersion"),
            type = "string",
            name = "profileVersion",
            target_id = prelude.String.id,
        }),
        profileVersionArn = schema.new({
            id = id.from(_N, "GetSigningProfileOutput", "profileVersionArn"),
            type = "string",
            name = "profileVersionArn",
            target_id = prelude.String.id,
        }),
        revocationRecord = schema.new({
            id = id.from(_N, "GetSigningProfileOutput", "revocationRecord"),
            type = "structure",
            name = "revocationRecord",
            target_id = id.from(_N, "SigningProfileRevocationRecord"),
            target = M.SigningProfileRevocationRecord,
        }),
        signingMaterial = schema.new({
            id = id.from(_N, "GetSigningProfileOutput", "signingMaterial"),
            type = "structure",
            name = "signingMaterial",
            target_id = id.from(_N, "SigningMaterial"),
            target = M.SigningMaterial,
        }),
        platformId = schema.new({
            id = id.from(_N, "GetSigningProfileOutput", "platformId"),
            type = "string",
            name = "platformId",
            target_id = prelude.String.id,
        }),
        platformDisplayName = schema.new({
            id = id.from(_N, "GetSigningProfileOutput", "platformDisplayName"),
            type = "string",
            name = "platformDisplayName",
            target_id = prelude.String.id,
        }),
        signatureValidityPeriod = schema.new({
            id = id.from(_N, "GetSigningProfileOutput", "signatureValidityPeriod"),
            type = "structure",
            name = "signatureValidityPeriod",
            target_id = id.from(_N, "SignatureValidityPeriod"),
            target = M.SignatureValidityPeriod,
        }),
        overrides = schema.new({
            id = id.from(_N, "GetSigningProfileOutput", "overrides"),
            type = "structure",
            name = "overrides",
            target_id = id.from(_N, "SigningPlatformOverrides"),
            target = M.SigningPlatformOverrides,
        }),
        signingParameters = schema.new({
            id = id.from(_N, "GetSigningProfileOutput", "signingParameters"),
            type = "map",
            name = "signingParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        status = schema.new({
            id = id.from(_N, "GetSigningProfileOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusReason = schema.new({
            id = id.from(_N, "GetSigningProfileOutput", "statusReason"),
            type = "string",
            name = "statusReason",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "GetSigningProfileOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GetSigningProfileOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListProfilePermissionsInput = schema.new({
    id = id.from(_N, "ListProfilePermissionsInput"),
    type = "structure",
    members = {
        profileName = schema.new({
            id = id.from(_N, "ListProfilePermissionsInput", "profileName"),
            type = "string",
            name = "profileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListProfilePermissionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.Permission = schema.new({
    id = id.from(_N, "Permission"),
    type = "structure",
    members = {
        action = schema.new({
            id = id.from(_N, "Permission", "action"),
            type = "string",
            name = "action",
            target_id = prelude.String.id,
        }),
        principal = schema.new({
            id = id.from(_N, "Permission", "principal"),
            type = "string",
            name = "principal",
            target_id = prelude.String.id,
        }),
        statementId = schema.new({
            id = id.from(_N, "Permission", "statementId"),
            type = "string",
            name = "statementId",
            target_id = prelude.String.id,
        }),
        profileVersion = schema.new({
            id = id.from(_N, "Permission", "profileVersion"),
            type = "string",
            name = "profileVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.ListProfilePermissionsOutput = schema.new({
    id = id.from(_N, "ListProfilePermissionsOutput"),
    type = "structure",
    members = {
        revisionId = schema.new({
            id = id.from(_N, "ListProfilePermissionsOutput", "revisionId"),
            type = "string",
            name = "revisionId",
            target_id = prelude.String.id,
        }),
        policySizeBytes = schema.new({
            id = id.from(_N, "ListProfilePermissionsOutput", "policySizeBytes"),
            type = "integer",
            name = "policySizeBytes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        permissions = schema.new({
            id = id.from(_N, "ListProfilePermissionsOutput", "permissions"),
            type = "list",
            name = "permissions",
            target_id = prelude.Document.id,
            list_member = M.Permission,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListProfilePermissionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSigningJobsInput = schema.new({
    id = id.from(_N, "ListSigningJobsInput"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "ListSigningJobsInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "status" },
            },
        }),
        platformId = schema.new({
            id = id.from(_N, "ListSigningJobsInput", "platformId"),
            type = "string",
            name = "platformId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "platformId" },
            },
        }),
        requestedBy = schema.new({
            id = id.from(_N, "ListSigningJobsInput", "requestedBy"),
            type = "string",
            name = "requestedBy",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "requestedBy" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListSigningJobsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSigningJobsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        isRevoked = schema.new({
            id = id.from(_N, "ListSigningJobsInput", "isRevoked"),
            type = "boolean",
            name = "isRevoked",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
                [traits.HTTP_QUERY] = { name = "isRevoked" },
            },
        }),
        signatureExpiresBefore = schema.new({
            id = id.from(_N, "ListSigningJobsInput", "signatureExpiresBefore"),
            type = "timestamp",
            name = "signatureExpiresBefore",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "signatureExpiresBefore" },
            },
        }),
        signatureExpiresAfter = schema.new({
            id = id.from(_N, "ListSigningJobsInput", "signatureExpiresAfter"),
            type = "timestamp",
            name = "signatureExpiresAfter",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "signatureExpiresAfter" },
            },
        }),
        jobInvoker = schema.new({
            id = id.from(_N, "ListSigningJobsInput", "jobInvoker"),
            type = "string",
            name = "jobInvoker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "jobInvoker" },
            },
        }),
    },
})

M.SigningJob = schema.new({
    id = id.from(_N, "SigningJob"),
    type = "structure",
    members = {
        jobId = schema.new({
            id = id.from(_N, "SigningJob", "jobId"),
            type = "string",
            name = "jobId",
            target_id = prelude.String.id,
        }),
        source = schema.new({
            id = id.from(_N, "SigningJob", "source"),
            type = "structure",
            name = "source",
            target_id = id.from(_N, "Source"),
            target = M.Source,
        }),
        signedObject = schema.new({
            id = id.from(_N, "SigningJob", "signedObject"),
            type = "structure",
            name = "signedObject",
            target_id = id.from(_N, "SignedObject"),
            target = M.SignedObject,
        }),
        signingMaterial = schema.new({
            id = id.from(_N, "SigningJob", "signingMaterial"),
            type = "structure",
            name = "signingMaterial",
            target_id = id.from(_N, "SigningMaterial"),
            target = M.SigningMaterial,
        }),
        createdAt = schema.new({
            id = id.from(_N, "SigningJob", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "SigningJob", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        isRevoked = schema.new({
            id = id.from(_N, "SigningJob", "isRevoked"),
            type = "boolean",
            name = "isRevoked",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        profileName = schema.new({
            id = id.from(_N, "SigningJob", "profileName"),
            type = "string",
            name = "profileName",
            target_id = prelude.String.id,
        }),
        profileVersion = schema.new({
            id = id.from(_N, "SigningJob", "profileVersion"),
            type = "string",
            name = "profileVersion",
            target_id = prelude.String.id,
        }),
        platformId = schema.new({
            id = id.from(_N, "SigningJob", "platformId"),
            type = "string",
            name = "platformId",
            target_id = prelude.String.id,
        }),
        platformDisplayName = schema.new({
            id = id.from(_N, "SigningJob", "platformDisplayName"),
            type = "string",
            name = "platformDisplayName",
            target_id = prelude.String.id,
        }),
        signatureExpiresAt = schema.new({
            id = id.from(_N, "SigningJob", "signatureExpiresAt"),
            type = "timestamp",
            name = "signatureExpiresAt",
            target_id = prelude.Timestamp.id,
        }),
        jobOwner = schema.new({
            id = id.from(_N, "SigningJob", "jobOwner"),
            type = "string",
            name = "jobOwner",
            target_id = prelude.String.id,
        }),
        jobInvoker = schema.new({
            id = id.from(_N, "SigningJob", "jobInvoker"),
            type = "string",
            name = "jobInvoker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSigningJobsOutput = schema.new({
    id = id.from(_N, "ListSigningJobsOutput"),
    type = "structure",
    members = {
        jobs = schema.new({
            id = id.from(_N, "ListSigningJobsOutput", "jobs"),
            type = "list",
            name = "jobs",
            target_id = prelude.Document.id,
            list_member = M.SigningJob,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSigningJobsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSigningPlatformsInput = schema.new({
    id = id.from(_N, "ListSigningPlatformsInput"),
    type = "structure",
    members = {
        category = schema.new({
            id = id.from(_N, "ListSigningPlatformsInput", "category"),
            type = "string",
            name = "category",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "category" },
            },
        }),
        partner = schema.new({
            id = id.from(_N, "ListSigningPlatformsInput", "partner"),
            type = "string",
            name = "partner",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "partner" },
            },
        }),
        target = schema.new({
            id = id.from(_N, "ListSigningPlatformsInput", "target"),
            type = "string",
            name = "target",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "target" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListSigningPlatformsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSigningPlatformsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.SigningPlatform = schema.new({
    id = id.from(_N, "SigningPlatform"),
    type = "structure",
    members = {
        platformId = schema.new({
            id = id.from(_N, "SigningPlatform", "platformId"),
            type = "string",
            name = "platformId",
            target_id = prelude.String.id,
        }),
        displayName = schema.new({
            id = id.from(_N, "SigningPlatform", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        partner = schema.new({
            id = id.from(_N, "SigningPlatform", "partner"),
            type = "string",
            name = "partner",
            target_id = prelude.String.id,
        }),
        target = schema.new({
            id = id.from(_N, "SigningPlatform", "target"),
            type = "string",
            name = "target",
            target_id = prelude.String.id,
        }),
        category = schema.new({
            id = id.from(_N, "SigningPlatform", "category"),
            type = "string",
            name = "category",
            target_id = prelude.String.id,
        }),
        signingConfiguration = schema.new({
            id = id.from(_N, "SigningPlatform", "signingConfiguration"),
            type = "structure",
            name = "signingConfiguration",
            target_id = id.from(_N, "SigningConfiguration"),
            target = M.SigningConfiguration,
        }),
        signingImageFormat = schema.new({
            id = id.from(_N, "SigningPlatform", "signingImageFormat"),
            type = "structure",
            name = "signingImageFormat",
            target_id = id.from(_N, "SigningImageFormat"),
            target = M.SigningImageFormat,
        }),
        maxSizeInMB = schema.new({
            id = id.from(_N, "SigningPlatform", "maxSizeInMB"),
            type = "integer",
            name = "maxSizeInMB",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        revocationSupported = schema.new({
            id = id.from(_N, "SigningPlatform", "revocationSupported"),
            type = "boolean",
            name = "revocationSupported",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.ListSigningPlatformsOutput = schema.new({
    id = id.from(_N, "ListSigningPlatformsOutput"),
    type = "structure",
    members = {
        platforms = schema.new({
            id = id.from(_N, "ListSigningPlatformsOutput", "platforms"),
            type = "list",
            name = "platforms",
            target_id = prelude.Document.id,
            list_member = M.SigningPlatform,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSigningPlatformsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSigningProfilesInput = schema.new({
    id = id.from(_N, "ListSigningProfilesInput"),
    type = "structure",
    members = {
        includeCanceled = schema.new({
            id = id.from(_N, "ListSigningProfilesInput", "includeCanceled"),
            type = "boolean",
            name = "includeCanceled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
                [traits.HTTP_QUERY] = { name = "includeCanceled" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListSigningProfilesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSigningProfilesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        platformId = schema.new({
            id = id.from(_N, "ListSigningProfilesInput", "platformId"),
            type = "string",
            name = "platformId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "platformId" },
            },
        }),
        statuses = schema.new({
            id = id.from(_N, "ListSigningProfilesInput", "statuses"),
            type = "list",
            name = "statuses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "statuses" },
            },
        }),
    },
})

M.SigningProfile = schema.new({
    id = id.from(_N, "SigningProfile"),
    type = "structure",
    members = {
        profileName = schema.new({
            id = id.from(_N, "SigningProfile", "profileName"),
            type = "string",
            name = "profileName",
            target_id = prelude.String.id,
        }),
        profileVersion = schema.new({
            id = id.from(_N, "SigningProfile", "profileVersion"),
            type = "string",
            name = "profileVersion",
            target_id = prelude.String.id,
        }),
        profileVersionArn = schema.new({
            id = id.from(_N, "SigningProfile", "profileVersionArn"),
            type = "string",
            name = "profileVersionArn",
            target_id = prelude.String.id,
        }),
        signingMaterial = schema.new({
            id = id.from(_N, "SigningProfile", "signingMaterial"),
            type = "structure",
            name = "signingMaterial",
            target_id = id.from(_N, "SigningMaterial"),
            target = M.SigningMaterial,
        }),
        signatureValidityPeriod = schema.new({
            id = id.from(_N, "SigningProfile", "signatureValidityPeriod"),
            type = "structure",
            name = "signatureValidityPeriod",
            target_id = id.from(_N, "SignatureValidityPeriod"),
            target = M.SignatureValidityPeriod,
        }),
        platformId = schema.new({
            id = id.from(_N, "SigningProfile", "platformId"),
            type = "string",
            name = "platformId",
            target_id = prelude.String.id,
        }),
        platformDisplayName = schema.new({
            id = id.from(_N, "SigningProfile", "platformDisplayName"),
            type = "string",
            name = "platformDisplayName",
            target_id = prelude.String.id,
        }),
        signingParameters = schema.new({
            id = id.from(_N, "SigningProfile", "signingParameters"),
            type = "map",
            name = "signingParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        status = schema.new({
            id = id.from(_N, "SigningProfile", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "SigningProfile", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "SigningProfile", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListSigningProfilesOutput = schema.new({
    id = id.from(_N, "ListSigningProfilesOutput"),
    type = "structure",
    members = {
        profiles = schema.new({
            id = id.from(_N, "ListSigningProfilesOutput", "profiles"),
            type = "list",
            name = "profiles",
            target_id = prelude.Document.id,
            list_member = M.SigningProfile,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSigningProfilesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceOutput"),
    type = "structure",
    members = {
        tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.NotFoundException = schema.new({
    id = id.from(_N, "NotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        code = schema.new({
            id = id.from(_N, "NotFoundException", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
    },
})

M.PutSigningProfileInput = schema.new({
    id = id.from(_N, "PutSigningProfileInput"),
    type = "structure",
    members = {
        profileName = schema.new({
            id = id.from(_N, "PutSigningProfileInput", "profileName"),
            type = "string",
            name = "profileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        signingMaterial = schema.new({
            id = id.from(_N, "PutSigningProfileInput", "signingMaterial"),
            type = "structure",
            name = "signingMaterial",
            target_id = id.from(_N, "SigningMaterial"),
            target = M.SigningMaterial,
        }),
        signatureValidityPeriod = schema.new({
            id = id.from(_N, "PutSigningProfileInput", "signatureValidityPeriod"),
            type = "structure",
            name = "signatureValidityPeriod",
            target_id = id.from(_N, "SignatureValidityPeriod"),
            target = M.SignatureValidityPeriod,
        }),
        platformId = schema.new({
            id = id.from(_N, "PutSigningProfileInput", "platformId"),
            type = "string",
            name = "platformId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        overrides = schema.new({
            id = id.from(_N, "PutSigningProfileInput", "overrides"),
            type = "structure",
            name = "overrides",
            target_id = id.from(_N, "SigningPlatformOverrides"),
            target = M.SigningPlatformOverrides,
        }),
        signingParameters = schema.new({
            id = id.from(_N, "PutSigningProfileInput", "signingParameters"),
            type = "map",
            name = "signingParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        tags = schema.new({
            id = id.from(_N, "PutSigningProfileInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.PutSigningProfileOutput = schema.new({
    id = id.from(_N, "PutSigningProfileOutput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "PutSigningProfileOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        profileVersion = schema.new({
            id = id.from(_N, "PutSigningProfileOutput", "profileVersion"),
            type = "string",
            name = "profileVersion",
            target_id = prelude.String.id,
        }),
        profileVersionArn = schema.new({
            id = id.from(_N, "PutSigningProfileOutput", "profileVersionArn"),
            type = "string",
            name = "profileVersionArn",
            target_id = prelude.String.id,
        }),
    },
})

M.RemoveProfilePermissionInput = schema.new({
    id = id.from(_N, "RemoveProfilePermissionInput"),
    type = "structure",
    members = {
        profileName = schema.new({
            id = id.from(_N, "RemoveProfilePermissionInput", "profileName"),
            type = "string",
            name = "profileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        revisionId = schema.new({
            id = id.from(_N, "RemoveProfilePermissionInput", "revisionId"),
            type = "string",
            name = "revisionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "revisionId" },
            },
        }),
        statementId = schema.new({
            id = id.from(_N, "RemoveProfilePermissionInput", "statementId"),
            type = "string",
            name = "statementId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.RemoveProfilePermissionOutput = schema.new({
    id = id.from(_N, "RemoveProfilePermissionOutput"),
    type = "structure",
    members = {
        revisionId = schema.new({
            id = id.from(_N, "RemoveProfilePermissionOutput", "revisionId"),
            type = "string",
            name = "revisionId",
            target_id = prelude.String.id,
        }),
    },
})

M.RevokeSignatureInput = schema.new({
    id = id.from(_N, "RevokeSignatureInput"),
    type = "structure",
    members = {
        jobId = schema.new({
            id = id.from(_N, "RevokeSignatureInput", "jobId"),
            type = "string",
            name = "jobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        jobOwner = schema.new({
            id = id.from(_N, "RevokeSignatureInput", "jobOwner"),
            type = "string",
            name = "jobOwner",
            target_id = prelude.String.id,
        }),
        reason = schema.new({
            id = id.from(_N, "RevokeSignatureInput", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RevokeSignatureOutput = schema.new({
    id = id.from(_N, "RevokeSignatureOutput"),
    type = "structure",
})

M.RevokeSigningProfileInput = schema.new({
    id = id.from(_N, "RevokeSigningProfileInput"),
    type = "structure",
    members = {
        profileName = schema.new({
            id = id.from(_N, "RevokeSigningProfileInput", "profileName"),
            type = "string",
            name = "profileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        profileVersion = schema.new({
            id = id.from(_N, "RevokeSigningProfileInput", "profileVersion"),
            type = "string",
            name = "profileVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        reason = schema.new({
            id = id.from(_N, "RevokeSigningProfileInput", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        effectiveTime = schema.new({
            id = id.from(_N, "RevokeSigningProfileInput", "effectiveTime"),
            type = "timestamp",
            name = "effectiveTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RevokeSigningProfileOutput = schema.new({
    id = id.from(_N, "RevokeSigningProfileOutput"),
    type = "structure",
})

M.SignPayloadInput = schema.new({
    id = id.from(_N, "SignPayloadInput"),
    type = "structure",
    members = {
        profileName = schema.new({
            id = id.from(_N, "SignPayloadInput", "profileName"),
            type = "string",
            name = "profileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        profileOwner = schema.new({
            id = id.from(_N, "SignPayloadInput", "profileOwner"),
            type = "string",
            name = "profileOwner",
            target_id = prelude.String.id,
        }),
        payload = schema.new({
            id = id.from(_N, "SignPayloadInput", "payload"),
            type = "blob",
            name = "payload",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        payloadFormat = schema.new({
            id = id.from(_N, "SignPayloadInput", "payloadFormat"),
            type = "string",
            name = "payloadFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SignPayloadOutput = schema.new({
    id = id.from(_N, "SignPayloadOutput"),
    type = "structure",
    members = {
        jobId = schema.new({
            id = id.from(_N, "SignPayloadOutput", "jobId"),
            type = "string",
            name = "jobId",
            target_id = prelude.String.id,
        }),
        jobOwner = schema.new({
            id = id.from(_N, "SignPayloadOutput", "jobOwner"),
            type = "string",
            name = "jobOwner",
            target_id = prelude.String.id,
        }),
        metadata = schema.new({
            id = id.from(_N, "SignPayloadOutput", "metadata"),
            type = "map",
            name = "metadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        signature = schema.new({
            id = id.from(_N, "SignPayloadOutput", "signature"),
            type = "blob",
            name = "signature",
            target_id = prelude.Blob.id,
        }),
    },
})

M.StartSigningJobInput = schema.new({
    id = id.from(_N, "StartSigningJobInput"),
    type = "structure",
    members = {
        source = schema.new({
            id = id.from(_N, "StartSigningJobInput", "source"),
            type = "structure",
            name = "source",
            target_id = id.from(_N, "Source"),
            target = M.Source,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destination = schema.new({
            id = id.from(_N, "StartSigningJobInput", "destination"),
            type = "structure",
            name = "destination",
            target_id = id.from(_N, "Destination"),
            target = M.Destination,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        profileName = schema.new({
            id = id.from(_N, "StartSigningJobInput", "profileName"),
            type = "string",
            name = "profileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "StartSigningJobInput", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        profileOwner = schema.new({
            id = id.from(_N, "StartSigningJobInput", "profileOwner"),
            type = "string",
            name = "profileOwner",
            target_id = prelude.String.id,
        }),
    },
})

M.StartSigningJobOutput = schema.new({
    id = id.from(_N, "StartSigningJobOutput"),
    type = "structure",
    members = {
        jobId = schema.new({
            id = id.from(_N, "StartSigningJobOutput", "jobId"),
            type = "string",
            name = "jobId",
            target_id = prelude.String.id,
        }),
        jobOwner = schema.new({
            id = id.from(_N, "StartSigningJobOutput", "jobOwner"),
            type = "string",
            name = "jobOwner",
            target_id = prelude.String.id,
        }),
    },
})

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ThrottlingException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        code = schema.new({
            id = id.from(_N, "ThrottlingException", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "TagResourceInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceOutput"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        tagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "tagKeys"),
            type = "list",
            name = "tagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "tagKeys" },
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

return M
