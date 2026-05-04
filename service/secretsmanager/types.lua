local M = {}

M.ReplicaRegionType = {
    type = "structure",
    id = "ReplicaRegionType",
    members = {
        Region = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
    },
}

M.APIErrorType = {
    type = "structure",
    id = "APIErrorType",
    members = {
        SecretId = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.FilterNameStringType = {
    description = "description",
    name = "name",
    tag_key = "tag-key",
    tag_value = "tag-value",
    primary_region = "primary-region",
    owning_service = "owning-service",
    all = "all",
}

M.Filter = {
    type = "structure",
    id = "Filter",
    members = {
        Key = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchGetSecretValueInput = {
    type = "structure",
    id = "BatchGetSecretValueInput",
    members = {
        SecretIdList = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SecretValueEntry = {
    type = "structure",
    id = "SecretValueEntry",
    members = {
        ARN = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
        SecretBinary = {
            type = "blob",
        },
        SecretString = {
            type = "string",
        },
        VersionStages = {
            type = "list",
            member = { type = "string" },
        },
        CreatedDate = {
            type = "timestamp",
        },
    },
}

M.BatchGetSecretValueOutput = {
    type = "structure",
    id = "BatchGetSecretValueOutput",
    members = {
        SecretValues = {
            type = "list",
            member = M.SecretValueEntry,
        },
        NextToken = {
            type = "string",
        },
        Errors = {
            type = "list",
            member = M.APIErrorType,
        },
    },
}

M.DecryptionFailure = {
    type = "structure",
    id = "DecryptionFailure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InternalServiceError = {
    type = "structure",
    id = "InternalServiceError",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    id = "InvalidNextTokenException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    id = "InvalidParameterException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    id = "InvalidRequestException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CancelRotateSecretInput = {
    type = "structure",
    id = "CancelRotateSecretInput",
    members = {
        SecretId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelRotateSecretOutput = {
    type = "structure",
    id = "CancelRotateSecretOutput",
    members = {
        ARN = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        VersionId = {
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

M.CreateSecretInput = {
    type = "structure",
    id = "CreateSecretInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Description = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        SecretBinary = {
            type = "blob",
        },
        SecretString = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        AddReplicaRegions = {
            type = "list",
            member = M.ReplicaRegionType,
        },
        ForceOverwriteReplicaSecret = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Type = {
            type = "string",
        },
    },
}

M.StatusType = {
    InSync = "InSync",
    Failed = "Failed",
    InProgress = "InProgress",
}

M.ReplicationStatusType = {
    type = "structure",
    id = "ReplicationStatusType",
    members = {
        Region = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        LastAccessedDate = {
            type = "timestamp",
        },
    },
}

M.CreateSecretOutput = {
    type = "structure",
    id = "CreateSecretOutput",
    members = {
        ARN = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
        ReplicationStatus = {
            type = "list",
            member = M.ReplicationStatusType,
        },
    },
}

M.EncryptionFailure = {
    type = "structure",
    id = "EncryptionFailure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MalformedPolicyDocumentException = {
    type = "structure",
    id = "MalformedPolicyDocumentException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PreconditionNotMetException = {
    type = "structure",
    id = "PreconditionNotMetException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceExistsException = {
    type = "structure",
    id = "ResourceExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    id = "DeleteResourcePolicyInput",
    members = {
        SecretId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteResourcePolicyOutput = {
    type = "structure",
    id = "DeleteResourcePolicyOutput",
    members = {
        ARN = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.DeleteSecretInput = {
    type = "structure",
    id = "DeleteSecretInput",
    members = {
        SecretId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecoveryWindowInDays = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        ForceDeleteWithoutRecovery = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.DeleteSecretOutput = {
    type = "structure",
    id = "DeleteSecretOutput",
    members = {
        ARN = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        DeletionDate = {
            type = "timestamp",
        },
    },
}

M.DescribeSecretInput = {
    type = "structure",
    id = "DescribeSecretInput",
    members = {
        SecretId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExternalSecretRotationMetadataItem = {
    type = "structure",
    id = "ExternalSecretRotationMetadataItem",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.RotationRulesType = {
    type = "structure",
    id = "RotationRulesType",
    members = {
        AutomaticallyAfterDays = {
            type = "long",
        },
        Duration = {
            type = "string",
        },
        ScheduleExpression = {
            type = "string",
        },
    },
}

M.DescribeSecretOutput = {
    type = "structure",
    id = "DescribeSecretOutput",
    members = {
        ARN = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        RotationEnabled = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        RotationLambdaARN = {
            type = "string",
        },
        RotationRules = M.RotationRulesType,
        ExternalSecretRotationMetadata = {
            type = "list",
            member = M.ExternalSecretRotationMetadataItem,
        },
        ExternalSecretRotationRoleArn = {
            type = "string",
        },
        LastRotatedDate = {
            type = "timestamp",
        },
        LastChangedDate = {
            type = "timestamp",
        },
        LastAccessedDate = {
            type = "timestamp",
        },
        DeletedDate = {
            type = "timestamp",
        },
        NextRotationDate = {
            type = "timestamp",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        VersionIdsToStages = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        OwningService = {
            type = "string",
        },
        CreatedDate = {
            type = "timestamp",
        },
        PrimaryRegion = {
            type = "string",
        },
        ReplicationStatus = {
            type = "list",
            member = M.ReplicationStatusType,
        },
    },
}

M.GetRandomPasswordInput = {
    type = "structure",
    id = "GetRandomPasswordInput",
    members = {
        PasswordLength = {
            type = "long",
        },
        ExcludeCharacters = {
            type = "string",
        },
        ExcludeNumbers = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        ExcludePunctuation = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        ExcludeUppercase = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        ExcludeLowercase = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        IncludeSpace = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        RequireEachIncludedType = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.GetRandomPasswordOutput = {
    type = "structure",
    id = "GetRandomPasswordOutput",
    members = {
        RandomPassword = {
            type = "string",
        },
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
    id = "GetResourcePolicyInput",
    members = {
        SecretId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResourcePolicyOutput = {
    type = "structure",
    id = "GetResourcePolicyOutput",
    members = {
        ARN = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        ResourcePolicy = {
            type = "string",
        },
    },
}

M.GetSecretValueInput = {
    type = "structure",
    id = "GetSecretValueInput",
    members = {
        SecretId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionId = {
            type = "string",
        },
        VersionStage = {
            type = "string",
        },
    },
}

M.GetSecretValueOutput = {
    type = "structure",
    id = "GetSecretValueOutput",
    members = {
        ARN = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
        SecretBinary = {
            type = "blob",
        },
        SecretString = {
            type = "string",
        },
        VersionStages = {
            type = "list",
            member = { type = "string" },
        },
        CreatedDate = {
            type = "timestamp",
        },
    },
}

M.SortByType = {
    created_date = "created-date",
    last_accessed_date = "last-accessed-date",
    last_changed_date = "last-changed-date",
    name = "name",
}

M.SortOrderType = {
    asc = "asc",
    desc = "desc",
}

M.ListSecretsInput = {
    type = "structure",
    id = "ListSecretsInput",
    members = {
        IncludePlannedDeletion = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        SortOrder = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
    },
}

M.SecretListEntry = {
    type = "structure",
    id = "SecretListEntry",
    members = {
        ARN = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        RotationEnabled = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        RotationLambdaARN = {
            type = "string",
        },
        RotationRules = M.RotationRulesType,
        ExternalSecretRotationMetadata = {
            type = "list",
            member = M.ExternalSecretRotationMetadataItem,
        },
        ExternalSecretRotationRoleArn = {
            type = "string",
        },
        LastRotatedDate = {
            type = "timestamp",
        },
        LastChangedDate = {
            type = "timestamp",
        },
        LastAccessedDate = {
            type = "timestamp",
        },
        DeletedDate = {
            type = "timestamp",
        },
        NextRotationDate = {
            type = "timestamp",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        SecretVersionsToStages = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        OwningService = {
            type = "string",
        },
        CreatedDate = {
            type = "timestamp",
        },
        PrimaryRegion = {
            type = "string",
        },
    },
}

M.ListSecretsOutput = {
    type = "structure",
    id = "ListSecretsOutput",
    members = {
        SecretList = {
            type = "list",
            member = M.SecretListEntry,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSecretVersionIdsInput = {
    type = "structure",
    id = "ListSecretVersionIdsInput",
    members = {
        SecretId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        IncludeDeprecated = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.SecretVersionsListEntry = {
    type = "structure",
    id = "SecretVersionsListEntry",
    members = {
        VersionId = {
            type = "string",
        },
        VersionStages = {
            type = "list",
            member = { type = "string" },
        },
        LastAccessedDate = {
            type = "timestamp",
        },
        CreatedDate = {
            type = "timestamp",
        },
        KmsKeyIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListSecretVersionIdsOutput = {
    type = "structure",
    id = "ListSecretVersionIdsOutput",
    members = {
        Versions = {
            type = "list",
            member = M.SecretVersionsListEntry,
        },
        NextToken = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.PublicPolicyException = {
    type = "structure",
    id = "PublicPolicyException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    id = "PutResourcePolicyInput",
    members = {
        SecretId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourcePolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BlockPublicPolicy = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
    id = "PutResourcePolicyOutput",
    members = {
        ARN = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.PutSecretValueInput = {
    type = "structure",
    id = "PutSecretValueInput",
    members = {
        SecretId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        SecretBinary = {
            type = "blob",
        },
        SecretString = {
            type = "string",
        },
        VersionStages = {
            type = "list",
            member = { type = "string" },
        },
        RotationToken = {
            type = "string",
        },
    },
}

M.PutSecretValueOutput = {
    type = "structure",
    id = "PutSecretValueOutput",
    members = {
        ARN = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
        VersionStages = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RemoveRegionsFromReplicationInput = {
    type = "structure",
    id = "RemoveRegionsFromReplicationInput",
    members = {
        SecretId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RemoveReplicaRegions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveRegionsFromReplicationOutput = {
    type = "structure",
    id = "RemoveRegionsFromReplicationOutput",
    members = {
        ARN = {
            type = "string",
        },
        ReplicationStatus = {
            type = "list",
            member = M.ReplicationStatusType,
        },
    },
}

M.ReplicateSecretToRegionsInput = {
    type = "structure",
    id = "ReplicateSecretToRegionsInput",
    members = {
        SecretId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AddReplicaRegions = {
            type = "list",
            member = M.ReplicaRegionType,
            traits = {
                required = true,
            },
        },
        ForceOverwriteReplicaSecret = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ReplicateSecretToRegionsOutput = {
    type = "structure",
    id = "ReplicateSecretToRegionsOutput",
    members = {
        ARN = {
            type = "string",
        },
        ReplicationStatus = {
            type = "list",
            member = M.ReplicationStatusType,
        },
    },
}

M.RestoreSecretInput = {
    type = "structure",
    id = "RestoreSecretInput",
    members = {
        SecretId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RestoreSecretOutput = {
    type = "structure",
    id = "RestoreSecretOutput",
    members = {
        ARN = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.RotateSecretInput = {
    type = "structure",
    id = "RotateSecretInput",
    members = {
        SecretId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        RotationLambdaARN = {
            type = "string",
        },
        RotationRules = M.RotationRulesType,
        ExternalSecretRotationMetadata = {
            type = "list",
            member = M.ExternalSecretRotationMetadataItem,
        },
        ExternalSecretRotationRoleArn = {
            type = "string",
        },
        RotateImmediately = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.RotateSecretOutput = {
    type = "structure",
    id = "RotateSecretOutput",
    members = {
        ARN = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
    },
}

M.StopReplicationToReplicaInput = {
    type = "structure",
    id = "StopReplicationToReplicaInput",
    members = {
        SecretId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopReplicationToReplicaOutput = {
    type = "structure",
    id = "StopReplicationToReplicaOutput",
    members = {
        ARN = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        SecretId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
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
        SecretId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
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

M.UpdateSecretInput = {
    type = "structure",
    id = "UpdateSecretInput",
    members = {
        SecretId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Description = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        SecretBinary = {
            type = "blob",
        },
        SecretString = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.UpdateSecretOutput = {
    type = "structure",
    id = "UpdateSecretOutput",
    members = {
        ARN = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
    },
}

M.UpdateSecretVersionStageInput = {
    type = "structure",
    id = "UpdateSecretVersionStageInput",
    members = {
        SecretId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionStage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RemoveFromVersionId = {
            type = "string",
        },
        MoveToVersionId = {
            type = "string",
        },
    },
}

M.UpdateSecretVersionStageOutput = {
    type = "structure",
    id = "UpdateSecretVersionStageOutput",
    members = {
        ARN = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.ValidateResourcePolicyInput = {
    type = "structure",
    id = "ValidateResourcePolicyInput",
    members = {
        SecretId = {
            type = "string",
        },
        ResourcePolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationErrorsEntry = {
    type = "structure",
    id = "ValidationErrorsEntry",
    members = {
        CheckName = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.ValidateResourcePolicyOutput = {
    type = "structure",
    id = "ValidateResourcePolicyOutput",
    members = {
        PolicyValidationPassed = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ValidationErrors = {
            type = "list",
            member = M.ValidationErrorsEntry,
        },
    },
}

return M
