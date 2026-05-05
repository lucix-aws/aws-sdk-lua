local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.secretsmanager"

local M = {}

M.ReplicaRegionType = schema.new({
    id = id.from(_N, "ReplicaRegionType"),
    type = "structure",
    members = {
        Region = schema.new({
            id = id.from(_N, "ReplicaRegionType", "Region"),
            type = "string",
            name = "Region",
            target_id = prelude.String.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "ReplicaRegionType", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
    },
})

M.APIErrorType = schema.new({
    id = id.from(_N, "APIErrorType"),
    type = "structure",
    members = {
        SecretId = schema.new({
            id = id.from(_N, "APIErrorType", "SecretId"),
            type = "string",
            name = "SecretId",
            target_id = prelude.String.id,
        }),
        ErrorCode = schema.new({
            id = id.from(_N, "APIErrorType", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "APIErrorType", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.Filter = schema.new({
    id = id.from(_N, "Filter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "Filter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Values = schema.new({
            id = id.from(_N, "Filter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.BatchGetSecretValueInput = schema.new({
    id = id.from(_N, "BatchGetSecretValueRequest"),
    type = "structure",
    members = {
        SecretIdList = schema.new({
            id = id.from(_N, "BatchGetSecretValueInput", "SecretIdList"),
            type = "list",
            name = "SecretIdList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Filters = schema.new({
            id = id.from(_N, "BatchGetSecretValueInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.Filter,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "BatchGetSecretValueInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "BatchGetSecretValueInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SecretValueEntry = schema.new({
    id = id.from(_N, "SecretValueEntry"),
    type = "structure",
    members = {
        ARN = schema.new({
            id = id.from(_N, "SecretValueEntry", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "SecretValueEntry", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        VersionId = schema.new({
            id = id.from(_N, "SecretValueEntry", "VersionId"),
            type = "string",
            name = "VersionId",
            target_id = prelude.String.id,
        }),
        SecretBinary = schema.new({
            id = id.from(_N, "SecretValueEntry", "SecretBinary"),
            type = "blob",
            name = "SecretBinary",
            target_id = prelude.Blob.id,
        }),
        SecretString = schema.new({
            id = id.from(_N, "SecretValueEntry", "SecretString"),
            type = "string",
            name = "SecretString",
            target_id = prelude.String.id,
        }),
        VersionStages = schema.new({
            id = id.from(_N, "SecretValueEntry", "VersionStages"),
            type = "list",
            name = "VersionStages",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "SecretValueEntry", "CreatedDate"),
            type = "timestamp",
            name = "CreatedDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.BatchGetSecretValueOutput = schema.new({
    id = id.from(_N, "BatchGetSecretValueResponse"),
    type = "structure",
    members = {
        SecretValues = schema.new({
            id = id.from(_N, "BatchGetSecretValueOutput", "SecretValues"),
            type = "list",
            name = "SecretValues",
            target_id = prelude.Document.id,
            list_member = M.SecretValueEntry,
        }),
        NextToken = schema.new({
            id = id.from(_N, "BatchGetSecretValueOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Errors = schema.new({
            id = id.from(_N, "BatchGetSecretValueOutput", "Errors"),
            type = "list",
            name = "Errors",
            target_id = prelude.Document.id,
            list_member = M.APIErrorType,
        }),
    },
})

M.DecryptionFailure = schema.new({
    id = id.from(_N, "DecryptionFailure"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DecryptionFailure", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InternalServiceError = schema.new({
    id = id.from(_N, "InternalServiceError"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalServiceError", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidNextTokenException = schema.new({
    id = id.from(_N, "InvalidNextTokenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidNextTokenException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidParameterException = schema.new({
    id = id.from(_N, "InvalidParameterException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidParameterException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidRequestException = schema.new({
    id = id.from(_N, "InvalidRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidRequestException", "Message"),
            type = "string",
            name = "Message",
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
        Message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CancelRotateSecretInput = schema.new({
    id = id.from(_N, "CancelRotateSecretRequest"),
    type = "structure",
    members = {
        SecretId = schema.new({
            id = id.from(_N, "CancelRotateSecretInput", "SecretId"),
            type = "string",
            name = "SecretId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CancelRotateSecretOutput = schema.new({
    id = id.from(_N, "CancelRotateSecretResponse"),
    type = "structure",
    members = {
        ARN = schema.new({
            id = id.from(_N, "CancelRotateSecretOutput", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CancelRotateSecretOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        VersionId = schema.new({
            id = id.from(_N, "CancelRotateSecretOutput", "VersionId"),
            type = "string",
            name = "VersionId",
            target_id = prelude.String.id,
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "Tag", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSecretInput = schema.new({
    id = id.from(_N, "CreateSecretRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateSecretInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "CreateSecretInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateSecretInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "CreateSecretInput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        SecretBinary = schema.new({
            id = id.from(_N, "CreateSecretInput", "SecretBinary"),
            type = "blob",
            name = "SecretBinary",
            target_id = prelude.Blob.id,
        }),
        SecretString = schema.new({
            id = id.from(_N, "CreateSecretInput", "SecretString"),
            type = "string",
            name = "SecretString",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateSecretInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        AddReplicaRegions = schema.new({
            id = id.from(_N, "CreateSecretInput", "AddReplicaRegions"),
            type = "list",
            name = "AddReplicaRegions",
            target_id = prelude.Document.id,
            list_member = M.ReplicaRegionType,
        }),
        ForceOverwriteReplicaSecret = schema.new({
            id = id.from(_N, "CreateSecretInput", "ForceOverwriteReplicaSecret"),
            type = "boolean",
            name = "ForceOverwriteReplicaSecret",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Type = schema.new({
            id = id.from(_N, "CreateSecretInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.ReplicationStatusType = schema.new({
    id = id.from(_N, "ReplicationStatusType"),
    type = "structure",
    members = {
        Region = schema.new({
            id = id.from(_N, "ReplicationStatusType", "Region"),
            type = "string",
            name = "Region",
            target_id = prelude.String.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "ReplicationStatusType", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ReplicationStatusType", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "ReplicationStatusType", "StatusMessage"),
            type = "string",
            name = "StatusMessage",
            target_id = prelude.String.id,
        }),
        LastAccessedDate = schema.new({
            id = id.from(_N, "ReplicationStatusType", "LastAccessedDate"),
            type = "timestamp",
            name = "LastAccessedDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.CreateSecretOutput = schema.new({
    id = id.from(_N, "CreateSecretResponse"),
    type = "structure",
    members = {
        ARN = schema.new({
            id = id.from(_N, "CreateSecretOutput", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CreateSecretOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        VersionId = schema.new({
            id = id.from(_N, "CreateSecretOutput", "VersionId"),
            type = "string",
            name = "VersionId",
            target_id = prelude.String.id,
        }),
        ReplicationStatus = schema.new({
            id = id.from(_N, "CreateSecretOutput", "ReplicationStatus"),
            type = "list",
            name = "ReplicationStatus",
            target_id = prelude.Document.id,
            list_member = M.ReplicationStatusType,
        }),
    },
})

M.EncryptionFailure = schema.new({
    id = id.from(_N, "EncryptionFailure"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "EncryptionFailure", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.LimitExceededException = schema.new({
    id = id.from(_N, "LimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "LimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.MalformedPolicyDocumentException = schema.new({
    id = id.from(_N, "MalformedPolicyDocumentException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "MalformedPolicyDocumentException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.PreconditionNotMetException = schema.new({
    id = id.from(_N, "PreconditionNotMetException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "PreconditionNotMetException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceExistsException = schema.new({
    id = id.from(_N, "ResourceExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceExistsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteResourcePolicyInput = schema.new({
    id = id.from(_N, "DeleteResourcePolicyRequest"),
    type = "structure",
    members = {
        SecretId = schema.new({
            id = id.from(_N, "DeleteResourcePolicyInput", "SecretId"),
            type = "string",
            name = "SecretId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteResourcePolicyOutput = schema.new({
    id = id.from(_N, "DeleteResourcePolicyResponse"),
    type = "structure",
    members = {
        ARN = schema.new({
            id = id.from(_N, "DeleteResourcePolicyOutput", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DeleteResourcePolicyOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteSecretInput = schema.new({
    id = id.from(_N, "DeleteSecretRequest"),
    type = "structure",
    members = {
        SecretId = schema.new({
            id = id.from(_N, "DeleteSecretInput", "SecretId"),
            type = "string",
            name = "SecretId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RecoveryWindowInDays = schema.new({
            id = id.from(_N, "DeleteSecretInput", "RecoveryWindowInDays"),
            type = "long",
            name = "RecoveryWindowInDays",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        ForceDeleteWithoutRecovery = schema.new({
            id = id.from(_N, "DeleteSecretInput", "ForceDeleteWithoutRecovery"),
            type = "boolean",
            name = "ForceDeleteWithoutRecovery",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.DeleteSecretOutput = schema.new({
    id = id.from(_N, "DeleteSecretResponse"),
    type = "structure",
    members = {
        ARN = schema.new({
            id = id.from(_N, "DeleteSecretOutput", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DeleteSecretOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        DeletionDate = schema.new({
            id = id.from(_N, "DeleteSecretOutput", "DeletionDate"),
            type = "timestamp",
            name = "DeletionDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeSecretInput = schema.new({
    id = id.from(_N, "DescribeSecretRequest"),
    type = "structure",
    members = {
        SecretId = schema.new({
            id = id.from(_N, "DescribeSecretInput", "SecretId"),
            type = "string",
            name = "SecretId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ExternalSecretRotationMetadataItem = schema.new({
    id = id.from(_N, "ExternalSecretRotationMetadataItem"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "ExternalSecretRotationMetadataItem", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "ExternalSecretRotationMetadataItem", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.RotationRulesType = schema.new({
    id = id.from(_N, "RotationRulesType"),
    type = "structure",
    members = {
        AutomaticallyAfterDays = schema.new({
            id = id.from(_N, "RotationRulesType", "AutomaticallyAfterDays"),
            type = "long",
            name = "AutomaticallyAfterDays",
            target_id = prelude.Long.id,
        }),
        Duration = schema.new({
            id = id.from(_N, "RotationRulesType", "Duration"),
            type = "string",
            name = "Duration",
            target_id = prelude.String.id,
        }),
        ScheduleExpression = schema.new({
            id = id.from(_N, "RotationRulesType", "ScheduleExpression"),
            type = "string",
            name = "ScheduleExpression",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeSecretOutput = schema.new({
    id = id.from(_N, "DescribeSecretResponse"),
    type = "structure",
    members = {
        ARN = schema.new({
            id = id.from(_N, "DescribeSecretOutput", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DescribeSecretOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "DescribeSecretOutput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "DescribeSecretOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "DescribeSecretOutput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        RotationEnabled = schema.new({
            id = id.from(_N, "DescribeSecretOutput", "RotationEnabled"),
            type = "boolean",
            name = "RotationEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        RotationLambdaARN = schema.new({
            id = id.from(_N, "DescribeSecretOutput", "RotationLambdaARN"),
            type = "string",
            name = "RotationLambdaARN",
            target_id = prelude.String.id,
        }),
        RotationRules = schema.new({
            id = id.from(_N, "DescribeSecretOutput", "RotationRules"),
            type = "structure",
            name = "RotationRules",
            target_id = id.from(_N, "RotationRulesType"),
            target = M.RotationRulesType,
        }),
        ExternalSecretRotationMetadata = schema.new({
            id = id.from(_N, "DescribeSecretOutput", "ExternalSecretRotationMetadata"),
            type = "list",
            name = "ExternalSecretRotationMetadata",
            target_id = prelude.Document.id,
            list_member = M.ExternalSecretRotationMetadataItem,
        }),
        ExternalSecretRotationRoleArn = schema.new({
            id = id.from(_N, "DescribeSecretOutput", "ExternalSecretRotationRoleArn"),
            type = "string",
            name = "ExternalSecretRotationRoleArn",
            target_id = prelude.String.id,
        }),
        LastRotatedDate = schema.new({
            id = id.from(_N, "DescribeSecretOutput", "LastRotatedDate"),
            type = "timestamp",
            name = "LastRotatedDate",
            target_id = prelude.Timestamp.id,
        }),
        LastChangedDate = schema.new({
            id = id.from(_N, "DescribeSecretOutput", "LastChangedDate"),
            type = "timestamp",
            name = "LastChangedDate",
            target_id = prelude.Timestamp.id,
        }),
        LastAccessedDate = schema.new({
            id = id.from(_N, "DescribeSecretOutput", "LastAccessedDate"),
            type = "timestamp",
            name = "LastAccessedDate",
            target_id = prelude.Timestamp.id,
        }),
        DeletedDate = schema.new({
            id = id.from(_N, "DescribeSecretOutput", "DeletedDate"),
            type = "timestamp",
            name = "DeletedDate",
            target_id = prelude.Timestamp.id,
        }),
        NextRotationDate = schema.new({
            id = id.from(_N, "DescribeSecretOutput", "NextRotationDate"),
            type = "timestamp",
            name = "NextRotationDate",
            target_id = prelude.Timestamp.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeSecretOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        VersionIdsToStages = schema.new({
            id = id.from(_N, "DescribeSecretOutput", "VersionIdsToStages"),
            type = "map",
            name = "VersionIdsToStages",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
        OwningService = schema.new({
            id = id.from(_N, "DescribeSecretOutput", "OwningService"),
            type = "string",
            name = "OwningService",
            target_id = prelude.String.id,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "DescribeSecretOutput", "CreatedDate"),
            type = "timestamp",
            name = "CreatedDate",
            target_id = prelude.Timestamp.id,
        }),
        PrimaryRegion = schema.new({
            id = id.from(_N, "DescribeSecretOutput", "PrimaryRegion"),
            type = "string",
            name = "PrimaryRegion",
            target_id = prelude.String.id,
        }),
        ReplicationStatus = schema.new({
            id = id.from(_N, "DescribeSecretOutput", "ReplicationStatus"),
            type = "list",
            name = "ReplicationStatus",
            target_id = prelude.Document.id,
            list_member = M.ReplicationStatusType,
        }),
    },
})

M.GetRandomPasswordInput = schema.new({
    id = id.from(_N, "GetRandomPasswordRequest"),
    type = "structure",
    members = {
        PasswordLength = schema.new({
            id = id.from(_N, "GetRandomPasswordInput", "PasswordLength"),
            type = "long",
            name = "PasswordLength",
            target_id = prelude.Long.id,
        }),
        ExcludeCharacters = schema.new({
            id = id.from(_N, "GetRandomPasswordInput", "ExcludeCharacters"),
            type = "string",
            name = "ExcludeCharacters",
            target_id = prelude.String.id,
        }),
        ExcludeNumbers = schema.new({
            id = id.from(_N, "GetRandomPasswordInput", "ExcludeNumbers"),
            type = "boolean",
            name = "ExcludeNumbers",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        ExcludePunctuation = schema.new({
            id = id.from(_N, "GetRandomPasswordInput", "ExcludePunctuation"),
            type = "boolean",
            name = "ExcludePunctuation",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        ExcludeUppercase = schema.new({
            id = id.from(_N, "GetRandomPasswordInput", "ExcludeUppercase"),
            type = "boolean",
            name = "ExcludeUppercase",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        ExcludeLowercase = schema.new({
            id = id.from(_N, "GetRandomPasswordInput", "ExcludeLowercase"),
            type = "boolean",
            name = "ExcludeLowercase",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        IncludeSpace = schema.new({
            id = id.from(_N, "GetRandomPasswordInput", "IncludeSpace"),
            type = "boolean",
            name = "IncludeSpace",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        RequireEachIncludedType = schema.new({
            id = id.from(_N, "GetRandomPasswordInput", "RequireEachIncludedType"),
            type = "boolean",
            name = "RequireEachIncludedType",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.GetRandomPasswordOutput = schema.new({
    id = id.from(_N, "GetRandomPasswordResponse"),
    type = "structure",
    members = {
        RandomPassword = schema.new({
            id = id.from(_N, "GetRandomPasswordOutput", "RandomPassword"),
            type = "string",
            name = "RandomPassword",
            target_id = prelude.String.id,
        }),
    },
})

M.GetResourcePolicyInput = schema.new({
    id = id.from(_N, "GetResourcePolicyRequest"),
    type = "structure",
    members = {
        SecretId = schema.new({
            id = id.from(_N, "GetResourcePolicyInput", "SecretId"),
            type = "string",
            name = "SecretId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetResourcePolicyOutput = schema.new({
    id = id.from(_N, "GetResourcePolicyResponse"),
    type = "structure",
    members = {
        ARN = schema.new({
            id = id.from(_N, "GetResourcePolicyOutput", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetResourcePolicyOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ResourcePolicy = schema.new({
            id = id.from(_N, "GetResourcePolicyOutput", "ResourcePolicy"),
            type = "string",
            name = "ResourcePolicy",
            target_id = prelude.String.id,
        }),
    },
})

M.GetSecretValueInput = schema.new({
    id = id.from(_N, "GetSecretValueRequest"),
    type = "structure",
    members = {
        SecretId = schema.new({
            id = id.from(_N, "GetSecretValueInput", "SecretId"),
            type = "string",
            name = "SecretId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VersionId = schema.new({
            id = id.from(_N, "GetSecretValueInput", "VersionId"),
            type = "string",
            name = "VersionId",
            target_id = prelude.String.id,
        }),
        VersionStage = schema.new({
            id = id.from(_N, "GetSecretValueInput", "VersionStage"),
            type = "string",
            name = "VersionStage",
            target_id = prelude.String.id,
        }),
    },
})

M.GetSecretValueOutput = schema.new({
    id = id.from(_N, "GetSecretValueResponse"),
    type = "structure",
    members = {
        ARN = schema.new({
            id = id.from(_N, "GetSecretValueOutput", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetSecretValueOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        VersionId = schema.new({
            id = id.from(_N, "GetSecretValueOutput", "VersionId"),
            type = "string",
            name = "VersionId",
            target_id = prelude.String.id,
        }),
        SecretBinary = schema.new({
            id = id.from(_N, "GetSecretValueOutput", "SecretBinary"),
            type = "blob",
            name = "SecretBinary",
            target_id = prelude.Blob.id,
        }),
        SecretString = schema.new({
            id = id.from(_N, "GetSecretValueOutput", "SecretString"),
            type = "string",
            name = "SecretString",
            target_id = prelude.String.id,
        }),
        VersionStages = schema.new({
            id = id.from(_N, "GetSecretValueOutput", "VersionStages"),
            type = "list",
            name = "VersionStages",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "GetSecretValueOutput", "CreatedDate"),
            type = "timestamp",
            name = "CreatedDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListSecretsInput = schema.new({
    id = id.from(_N, "ListSecretsRequest"),
    type = "structure",
    members = {
        IncludePlannedDeletion = schema.new({
            id = id.from(_N, "ListSecretsInput", "IncludePlannedDeletion"),
            type = "boolean",
            name = "IncludePlannedDeletion",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListSecretsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSecretsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListSecretsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.Filter,
        }),
        SortOrder = schema.new({
            id = id.from(_N, "ListSecretsInput", "SortOrder"),
            type = "string",
            name = "SortOrder",
            target_id = prelude.String.id,
        }),
        SortBy = schema.new({
            id = id.from(_N, "ListSecretsInput", "SortBy"),
            type = "string",
            name = "SortBy",
            target_id = prelude.String.id,
        }),
    },
})

M.SecretListEntry = schema.new({
    id = id.from(_N, "SecretListEntry"),
    type = "structure",
    members = {
        ARN = schema.new({
            id = id.from(_N, "SecretListEntry", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "SecretListEntry", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "SecretListEntry", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "SecretListEntry", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "SecretListEntry", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        RotationEnabled = schema.new({
            id = id.from(_N, "SecretListEntry", "RotationEnabled"),
            type = "boolean",
            name = "RotationEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        RotationLambdaARN = schema.new({
            id = id.from(_N, "SecretListEntry", "RotationLambdaARN"),
            type = "string",
            name = "RotationLambdaARN",
            target_id = prelude.String.id,
        }),
        RotationRules = schema.new({
            id = id.from(_N, "SecretListEntry", "RotationRules"),
            type = "structure",
            name = "RotationRules",
            target_id = id.from(_N, "RotationRulesType"),
            target = M.RotationRulesType,
        }),
        ExternalSecretRotationMetadata = schema.new({
            id = id.from(_N, "SecretListEntry", "ExternalSecretRotationMetadata"),
            type = "list",
            name = "ExternalSecretRotationMetadata",
            target_id = prelude.Document.id,
            list_member = M.ExternalSecretRotationMetadataItem,
        }),
        ExternalSecretRotationRoleArn = schema.new({
            id = id.from(_N, "SecretListEntry", "ExternalSecretRotationRoleArn"),
            type = "string",
            name = "ExternalSecretRotationRoleArn",
            target_id = prelude.String.id,
        }),
        LastRotatedDate = schema.new({
            id = id.from(_N, "SecretListEntry", "LastRotatedDate"),
            type = "timestamp",
            name = "LastRotatedDate",
            target_id = prelude.Timestamp.id,
        }),
        LastChangedDate = schema.new({
            id = id.from(_N, "SecretListEntry", "LastChangedDate"),
            type = "timestamp",
            name = "LastChangedDate",
            target_id = prelude.Timestamp.id,
        }),
        LastAccessedDate = schema.new({
            id = id.from(_N, "SecretListEntry", "LastAccessedDate"),
            type = "timestamp",
            name = "LastAccessedDate",
            target_id = prelude.Timestamp.id,
        }),
        DeletedDate = schema.new({
            id = id.from(_N, "SecretListEntry", "DeletedDate"),
            type = "timestamp",
            name = "DeletedDate",
            target_id = prelude.Timestamp.id,
        }),
        NextRotationDate = schema.new({
            id = id.from(_N, "SecretListEntry", "NextRotationDate"),
            type = "timestamp",
            name = "NextRotationDate",
            target_id = prelude.Timestamp.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "SecretListEntry", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        SecretVersionsToStages = schema.new({
            id = id.from(_N, "SecretListEntry", "SecretVersionsToStages"),
            type = "map",
            name = "SecretVersionsToStages",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
        OwningService = schema.new({
            id = id.from(_N, "SecretListEntry", "OwningService"),
            type = "string",
            name = "OwningService",
            target_id = prelude.String.id,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "SecretListEntry", "CreatedDate"),
            type = "timestamp",
            name = "CreatedDate",
            target_id = prelude.Timestamp.id,
        }),
        PrimaryRegion = schema.new({
            id = id.from(_N, "SecretListEntry", "PrimaryRegion"),
            type = "string",
            name = "PrimaryRegion",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSecretsOutput = schema.new({
    id = id.from(_N, "ListSecretsResponse"),
    type = "structure",
    members = {
        SecretList = schema.new({
            id = id.from(_N, "ListSecretsOutput", "SecretList"),
            type = "list",
            name = "SecretList",
            target_id = prelude.Document.id,
            list_member = M.SecretListEntry,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSecretsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSecretVersionIdsInput = schema.new({
    id = id.from(_N, "ListSecretVersionIdsRequest"),
    type = "structure",
    members = {
        SecretId = schema.new({
            id = id.from(_N, "ListSecretVersionIdsInput", "SecretId"),
            type = "string",
            name = "SecretId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListSecretVersionIdsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSecretVersionIdsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        IncludeDeprecated = schema.new({
            id = id.from(_N, "ListSecretVersionIdsInput", "IncludeDeprecated"),
            type = "boolean",
            name = "IncludeDeprecated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.SecretVersionsListEntry = schema.new({
    id = id.from(_N, "SecretVersionsListEntry"),
    type = "structure",
    members = {
        VersionId = schema.new({
            id = id.from(_N, "SecretVersionsListEntry", "VersionId"),
            type = "string",
            name = "VersionId",
            target_id = prelude.String.id,
        }),
        VersionStages = schema.new({
            id = id.from(_N, "SecretVersionsListEntry", "VersionStages"),
            type = "list",
            name = "VersionStages",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        LastAccessedDate = schema.new({
            id = id.from(_N, "SecretVersionsListEntry", "LastAccessedDate"),
            type = "timestamp",
            name = "LastAccessedDate",
            target_id = prelude.Timestamp.id,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "SecretVersionsListEntry", "CreatedDate"),
            type = "timestamp",
            name = "CreatedDate",
            target_id = prelude.Timestamp.id,
        }),
        KmsKeyIds = schema.new({
            id = id.from(_N, "SecretVersionsListEntry", "KmsKeyIds"),
            type = "list",
            name = "KmsKeyIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListSecretVersionIdsOutput = schema.new({
    id = id.from(_N, "ListSecretVersionIdsResponse"),
    type = "structure",
    members = {
        Versions = schema.new({
            id = id.from(_N, "ListSecretVersionIdsOutput", "Versions"),
            type = "list",
            name = "Versions",
            target_id = prelude.Document.id,
            list_member = M.SecretVersionsListEntry,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSecretVersionIdsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        ARN = schema.new({
            id = id.from(_N, "ListSecretVersionIdsOutput", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ListSecretVersionIdsOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.PublicPolicyException = schema.new({
    id = id.from(_N, "PublicPolicyException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "PublicPolicyException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.PutResourcePolicyInput = schema.new({
    id = id.from(_N, "PutResourcePolicyRequest"),
    type = "structure",
    members = {
        SecretId = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "SecretId"),
            type = "string",
            name = "SecretId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourcePolicy = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "ResourcePolicy"),
            type = "string",
            name = "ResourcePolicy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BlockPublicPolicy = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "BlockPublicPolicy"),
            type = "boolean",
            name = "BlockPublicPolicy",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.PutResourcePolicyOutput = schema.new({
    id = id.from(_N, "PutResourcePolicyResponse"),
    type = "structure",
    members = {
        ARN = schema.new({
            id = id.from(_N, "PutResourcePolicyOutput", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "PutResourcePolicyOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.PutSecretValueInput = schema.new({
    id = id.from(_N, "PutSecretValueRequest"),
    type = "structure",
    members = {
        SecretId = schema.new({
            id = id.from(_N, "PutSecretValueInput", "SecretId"),
            type = "string",
            name = "SecretId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "PutSecretValueInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        SecretBinary = schema.new({
            id = id.from(_N, "PutSecretValueInput", "SecretBinary"),
            type = "blob",
            name = "SecretBinary",
            target_id = prelude.Blob.id,
        }),
        SecretString = schema.new({
            id = id.from(_N, "PutSecretValueInput", "SecretString"),
            type = "string",
            name = "SecretString",
            target_id = prelude.String.id,
        }),
        VersionStages = schema.new({
            id = id.from(_N, "PutSecretValueInput", "VersionStages"),
            type = "list",
            name = "VersionStages",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        RotationToken = schema.new({
            id = id.from(_N, "PutSecretValueInput", "RotationToken"),
            type = "string",
            name = "RotationToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PutSecretValueOutput = schema.new({
    id = id.from(_N, "PutSecretValueResponse"),
    type = "structure",
    members = {
        ARN = schema.new({
            id = id.from(_N, "PutSecretValueOutput", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "PutSecretValueOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        VersionId = schema.new({
            id = id.from(_N, "PutSecretValueOutput", "VersionId"),
            type = "string",
            name = "VersionId",
            target_id = prelude.String.id,
        }),
        VersionStages = schema.new({
            id = id.from(_N, "PutSecretValueOutput", "VersionStages"),
            type = "list",
            name = "VersionStages",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.RemoveRegionsFromReplicationInput = schema.new({
    id = id.from(_N, "RemoveRegionsFromReplicationRequest"),
    type = "structure",
    members = {
        SecretId = schema.new({
            id = id.from(_N, "RemoveRegionsFromReplicationInput", "SecretId"),
            type = "string",
            name = "SecretId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RemoveReplicaRegions = schema.new({
            id = id.from(_N, "RemoveRegionsFromReplicationInput", "RemoveReplicaRegions"),
            type = "list",
            name = "RemoveReplicaRegions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RemoveRegionsFromReplicationOutput = schema.new({
    id = id.from(_N, "RemoveRegionsFromReplicationResponse"),
    type = "structure",
    members = {
        ARN = schema.new({
            id = id.from(_N, "RemoveRegionsFromReplicationOutput", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        ReplicationStatus = schema.new({
            id = id.from(_N, "RemoveRegionsFromReplicationOutput", "ReplicationStatus"),
            type = "list",
            name = "ReplicationStatus",
            target_id = prelude.Document.id,
            list_member = M.ReplicationStatusType,
        }),
    },
})

M.ReplicateSecretToRegionsInput = schema.new({
    id = id.from(_N, "ReplicateSecretToRegionsRequest"),
    type = "structure",
    members = {
        SecretId = schema.new({
            id = id.from(_N, "ReplicateSecretToRegionsInput", "SecretId"),
            type = "string",
            name = "SecretId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AddReplicaRegions = schema.new({
            id = id.from(_N, "ReplicateSecretToRegionsInput", "AddReplicaRegions"),
            type = "list",
            name = "AddReplicaRegions",
            target_id = prelude.Document.id,
            list_member = M.ReplicaRegionType,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ForceOverwriteReplicaSecret = schema.new({
            id = id.from(_N, "ReplicateSecretToRegionsInput", "ForceOverwriteReplicaSecret"),
            type = "boolean",
            name = "ForceOverwriteReplicaSecret",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.ReplicateSecretToRegionsOutput = schema.new({
    id = id.from(_N, "ReplicateSecretToRegionsResponse"),
    type = "structure",
    members = {
        ARN = schema.new({
            id = id.from(_N, "ReplicateSecretToRegionsOutput", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        ReplicationStatus = schema.new({
            id = id.from(_N, "ReplicateSecretToRegionsOutput", "ReplicationStatus"),
            type = "list",
            name = "ReplicationStatus",
            target_id = prelude.Document.id,
            list_member = M.ReplicationStatusType,
        }),
    },
})

M.RestoreSecretInput = schema.new({
    id = id.from(_N, "RestoreSecretRequest"),
    type = "structure",
    members = {
        SecretId = schema.new({
            id = id.from(_N, "RestoreSecretInput", "SecretId"),
            type = "string",
            name = "SecretId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RestoreSecretOutput = schema.new({
    id = id.from(_N, "RestoreSecretResponse"),
    type = "structure",
    members = {
        ARN = schema.new({
            id = id.from(_N, "RestoreSecretOutput", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "RestoreSecretOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.RotateSecretInput = schema.new({
    id = id.from(_N, "RotateSecretRequest"),
    type = "structure",
    members = {
        SecretId = schema.new({
            id = id.from(_N, "RotateSecretInput", "SecretId"),
            type = "string",
            name = "SecretId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "RotateSecretInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        RotationLambdaARN = schema.new({
            id = id.from(_N, "RotateSecretInput", "RotationLambdaARN"),
            type = "string",
            name = "RotationLambdaARN",
            target_id = prelude.String.id,
        }),
        RotationRules = schema.new({
            id = id.from(_N, "RotateSecretInput", "RotationRules"),
            type = "structure",
            name = "RotationRules",
            target_id = id.from(_N, "RotationRulesType"),
            target = M.RotationRulesType,
        }),
        ExternalSecretRotationMetadata = schema.new({
            id = id.from(_N, "RotateSecretInput", "ExternalSecretRotationMetadata"),
            type = "list",
            name = "ExternalSecretRotationMetadata",
            target_id = prelude.Document.id,
            list_member = M.ExternalSecretRotationMetadataItem,
        }),
        ExternalSecretRotationRoleArn = schema.new({
            id = id.from(_N, "RotateSecretInput", "ExternalSecretRotationRoleArn"),
            type = "string",
            name = "ExternalSecretRotationRoleArn",
            target_id = prelude.String.id,
        }),
        RotateImmediately = schema.new({
            id = id.from(_N, "RotateSecretInput", "RotateImmediately"),
            type = "boolean",
            name = "RotateImmediately",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.RotateSecretOutput = schema.new({
    id = id.from(_N, "RotateSecretResponse"),
    type = "structure",
    members = {
        ARN = schema.new({
            id = id.from(_N, "RotateSecretOutput", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "RotateSecretOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        VersionId = schema.new({
            id = id.from(_N, "RotateSecretOutput", "VersionId"),
            type = "string",
            name = "VersionId",
            target_id = prelude.String.id,
        }),
    },
})

M.StopReplicationToReplicaInput = schema.new({
    id = id.from(_N, "StopReplicationToReplicaRequest"),
    type = "structure",
    members = {
        SecretId = schema.new({
            id = id.from(_N, "StopReplicationToReplicaInput", "SecretId"),
            type = "string",
            name = "SecretId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopReplicationToReplicaOutput = schema.new({
    id = id.from(_N, "StopReplicationToReplicaResponse"),
    type = "structure",
    members = {
        ARN = schema.new({
            id = id.from(_N, "StopReplicationToReplicaOutput", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        SecretId = schema.new({
            id = id.from(_N, "TagResourceInput", "SecretId"),
            type = "string",
            name = "SecretId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceRequest"),
    type = "structure",
    members = {
        SecretId = schema.new({
            id = id.from(_N, "UntagResourceInput", "SecretId"),
            type = "string",
            name = "SecretId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "TagKeys"),
            type = "list",
            name = "TagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.UpdateSecretInput = schema.new({
    id = id.from(_N, "UpdateSecretRequest"),
    type = "structure",
    members = {
        SecretId = schema.new({
            id = id.from(_N, "UpdateSecretInput", "SecretId"),
            type = "string",
            name = "SecretId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "UpdateSecretInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateSecretInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "UpdateSecretInput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        SecretBinary = schema.new({
            id = id.from(_N, "UpdateSecretInput", "SecretBinary"),
            type = "blob",
            name = "SecretBinary",
            target_id = prelude.Blob.id,
        }),
        SecretString = schema.new({
            id = id.from(_N, "UpdateSecretInput", "SecretString"),
            type = "string",
            name = "SecretString",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "UpdateSecretInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateSecretOutput = schema.new({
    id = id.from(_N, "UpdateSecretResponse"),
    type = "structure",
    members = {
        ARN = schema.new({
            id = id.from(_N, "UpdateSecretOutput", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateSecretOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        VersionId = schema.new({
            id = id.from(_N, "UpdateSecretOutput", "VersionId"),
            type = "string",
            name = "VersionId",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateSecretVersionStageInput = schema.new({
    id = id.from(_N, "UpdateSecretVersionStageRequest"),
    type = "structure",
    members = {
        SecretId = schema.new({
            id = id.from(_N, "UpdateSecretVersionStageInput", "SecretId"),
            type = "string",
            name = "SecretId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VersionStage = schema.new({
            id = id.from(_N, "UpdateSecretVersionStageInput", "VersionStage"),
            type = "string",
            name = "VersionStage",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RemoveFromVersionId = schema.new({
            id = id.from(_N, "UpdateSecretVersionStageInput", "RemoveFromVersionId"),
            type = "string",
            name = "RemoveFromVersionId",
            target_id = prelude.String.id,
        }),
        MoveToVersionId = schema.new({
            id = id.from(_N, "UpdateSecretVersionStageInput", "MoveToVersionId"),
            type = "string",
            name = "MoveToVersionId",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateSecretVersionStageOutput = schema.new({
    id = id.from(_N, "UpdateSecretVersionStageResponse"),
    type = "structure",
    members = {
        ARN = schema.new({
            id = id.from(_N, "UpdateSecretVersionStageOutput", "ARN"),
            type = "string",
            name = "ARN",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateSecretVersionStageOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.ValidateResourcePolicyInput = schema.new({
    id = id.from(_N, "ValidateResourcePolicyRequest"),
    type = "structure",
    members = {
        SecretId = schema.new({
            id = id.from(_N, "ValidateResourcePolicyInput", "SecretId"),
            type = "string",
            name = "SecretId",
            target_id = prelude.String.id,
        }),
        ResourcePolicy = schema.new({
            id = id.from(_N, "ValidateResourcePolicyInput", "ResourcePolicy"),
            type = "string",
            name = "ResourcePolicy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ValidationErrorsEntry = schema.new({
    id = id.from(_N, "ValidationErrorsEntry"),
    type = "structure",
    members = {
        CheckName = schema.new({
            id = id.from(_N, "ValidationErrorsEntry", "CheckName"),
            type = "string",
            name = "CheckName",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "ValidationErrorsEntry", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.ValidateResourcePolicyOutput = schema.new({
    id = id.from(_N, "ValidateResourcePolicyResponse"),
    type = "structure",
    members = {
        PolicyValidationPassed = schema.new({
            id = id.from(_N, "ValidateResourcePolicyOutput", "PolicyValidationPassed"),
            type = "boolean",
            name = "PolicyValidationPassed",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        ValidationErrors = schema.new({
            id = id.from(_N, "ValidateResourcePolicyOutput", "ValidationErrors"),
            type = "list",
            name = "ValidationErrors",
            target_id = prelude.Document.id,
            list_member = M.ValidationErrorsEntry,
        }),
    },
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
