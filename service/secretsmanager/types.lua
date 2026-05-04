local M = {}

M.ReplicaRegionType = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InternalServiceError = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CancelRotateSecretInput = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MalformedPolicyDocumentException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PreconditionNotMetException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteResourcePolicyInput = {
    type = "structure",
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
    members = {
        RandomPassword = {
            type = "string",
        },
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
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
    members = {
        ARN = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

M.UpdateSecretInput = {
    type = "structure",
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
