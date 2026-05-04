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
            member_type = "string",
        },
    },
}

M.BatchGetSecretValueInput = {
    type = "structure",
    members = {
        SecretIdList = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxResults = {
            type = "number",
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
            member_type = "string",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        Errors = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        AddReplicaRegions = {
            type = "list",
            member_type = "structure",
        },
        ForceOverwriteReplicaSecret = {
            type = "boolean",
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
            member_type = "structure",
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
            type = "number",
        },
        ForceDeleteWithoutRecovery = {
            type = "boolean",
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
            type = "number",
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
        },
        RotationLambdaARN = {
            type = "string",
        },
        RotationRules = {
            type = "structure",
        },
        ExternalSecretRotationMetadata = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        VersionIdsToStages = {
            type = "map",
            key_type = "string",
            value_type = "list",
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
            member_type = "structure",
        },
    },
}

M.GetRandomPasswordInput = {
    type = "structure",
    members = {
        PasswordLength = {
            type = "number",
        },
        ExcludeCharacters = {
            type = "string",
        },
        ExcludeNumbers = {
            type = "boolean",
        },
        ExcludePunctuation = {
            type = "boolean",
        },
        ExcludeUppercase = {
            type = "boolean",
        },
        ExcludeLowercase = {
            type = "boolean",
        },
        IncludeSpace = {
            type = "boolean",
        },
        RequireEachIncludedType = {
            type = "boolean",
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
            member_type = "string",
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
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
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
        },
        RotationLambdaARN = {
            type = "string",
        },
        RotationRules = {
            type = "structure",
        },
        ExternalSecretRotationMetadata = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        SecretVersionsToStages = {
            type = "map",
            key_type = "string",
            value_type = "list",
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
            member_type = "structure",
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
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        IncludeDeprecated = {
            type = "boolean",
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
            member_type = "string",
        },
        LastAccessedDate = {
            type = "timestamp",
        },
        CreatedDate = {
            type = "timestamp",
        },
        KmsKeyIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListSecretVersionIdsOutput = {
    type = "structure",
    members = {
        Versions = {
            type = "list",
            member_type = "structure",
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
        },
        SecretBinary = {
            type = "blob",
        },
        SecretString = {
            type = "string",
        },
        VersionStages = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ForceOverwriteReplicaSecret = {
            type = "boolean",
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
            member_type = "structure",
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
        },
        RotationLambdaARN = {
            type = "string",
        },
        RotationRules = {
            type = "structure",
        },
        ExternalSecretRotationMetadata = {
            type = "list",
            member_type = "structure",
        },
        ExternalSecretRotationRoleArn = {
            type = "string",
        },
        RotateImmediately = {
            type = "boolean",
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
        SecretId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
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
        },
        ValidationErrors = {
            type = "list",
            member_type = "structure",
        },
    },
}

return M
