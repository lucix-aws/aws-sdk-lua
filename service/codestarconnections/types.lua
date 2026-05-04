local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.BlockerStatus = {
    ACTIVE = "ACTIVE",
    RESOLVED = "RESOLVED",
}

M.BlockerType = {
    AUTOMATED = "AUTOMATED",
}

M.ProviderType = {
    BITBUCKET = "Bitbucket",
    GITHUB = "GitHub",
    GITHUB_ENTERPRISE_SERVER = "GitHubEnterpriseServer",
    GITLAB = "GitLab",
    GITLAB_SELF_MANAGED = "GitLabSelfManaged",
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

M.CreateConnectionInput = {
    type = "structure",
    members = {
        ProviderType = {
            type = "string",
        },
        ConnectionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        HostArn = {
            type = "string",
        },
    },
}

M.CreateConnectionOutput = {
    type = "structure",
    members = {
        ConnectionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
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

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceUnavailableException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.VpcConfiguration = {
    type = "structure",
    members = {
        VpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        TlsCertificate = {
            type = "string",
        },
    },
}

M.CreateHostInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProviderType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProviderEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcConfiguration = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateHostOutput = {
    type = "structure",
    members = {
        HostArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateRepositoryLinkInput = {
    type = "structure",
    members = {
        ConnectionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OwnerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RepositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionKeyArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RepositoryLinkInfo = {
    type = "structure",
    members = {
        ConnectionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionKeyArn = {
            type = "string",
        },
        OwnerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProviderType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RepositoryLinkArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RepositoryLinkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RepositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateRepositoryLinkOutput = {
    type = "structure",
    members = {
        RepositoryLinkInfo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidInputException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PublishDeploymentStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.SyncConfigurationType = {
    CFN_STACK_SYNC = "CFN_STACK_SYNC",
}

M.TriggerResourceUpdateOn = {
    ANY_CHANGE = "ANY_CHANGE",
    FILE_CHANGE = "FILE_CHANGE",
}

M.CreateSyncConfigurationInput = {
    type = "structure",
    members = {
        Branch = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigFile = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RepositoryLinkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SyncType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PublishDeploymentStatus = {
            type = "string",
        },
        TriggerResourceUpdateOn = {
            type = "string",
        },
    },
}

M.SyncConfiguration = {
    type = "structure",
    members = {
        Branch = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigFile = {
            type = "string",
        },
        OwnerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProviderType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RepositoryLinkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RepositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SyncType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PublishDeploymentStatus = {
            type = "string",
        },
        TriggerResourceUpdateOn = {
            type = "string",
        },
    },
}

M.CreateSyncConfigurationOutput = {
    type = "structure",
    members = {
        SyncConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConnectionInput = {
    type = "structure",
    members = {
        ConnectionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConnectionOutput = {
    type = "structure",
}

M.DeleteHostInput = {
    type = "structure",
    members = {
        HostArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteHostOutput = {
    type = "structure",
}

M.DeleteRepositoryLinkInput = {
    type = "structure",
    members = {
        RepositoryLinkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRepositoryLinkOutput = {
    type = "structure",
}

M.SyncConfigurationStillExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedProviderTypeException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteSyncConfigurationInput = {
    type = "structure",
    members = {
        SyncType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSyncConfigurationOutput = {
    type = "structure",
}

M.GetConnectionInput = {
    type = "structure",
    members = {
        ConnectionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConnectionStatus = {
    PENDING = "PENDING",
    AVAILABLE = "AVAILABLE",
    ERROR = "ERROR",
}

M.Connection = {
    type = "structure",
    members = {
        ConnectionName = {
            type = "string",
        },
        ConnectionArn = {
            type = "string",
        },
        ProviderType = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
        ConnectionStatus = {
            type = "string",
        },
        HostArn = {
            type = "string",
        },
    },
}

M.GetConnectionOutput = {
    type = "structure",
    members = {
        Connection = {
            type = "structure",
        },
    },
}

M.GetHostInput = {
    type = "structure",
    members = {
        HostArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetHostOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ProviderType = {
            type = "string",
        },
        ProviderEndpoint = {
            type = "string",
        },
        VpcConfiguration = {
            type = "structure",
        },
    },
}

M.GetRepositoryLinkInput = {
    type = "structure",
    members = {
        RepositoryLinkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRepositoryLinkOutput = {
    type = "structure",
    members = {
        RepositoryLinkInfo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRepositorySyncStatusInput = {
    type = "structure",
    members = {
        Branch = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RepositoryLinkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SyncType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RepositorySyncEvent = {
    type = "structure",
    members = {
        Event = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExternalId = {
            type = "string",
        },
        Time = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RepositorySyncStatus = {
    FAILED = "FAILED",
    INITIATED = "INITIATED",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    QUEUED = "QUEUED",
}

M.RepositorySyncAttempt = {
    type = "structure",
    members = {
        StartedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Events = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRepositorySyncStatusOutput = {
    type = "structure",
    members = {
        LatestSync = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResourceSyncStatusInput = {
    type = "structure",
    members = {
        ResourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SyncType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Revision = {
    type = "structure",
    members = {
        Branch = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Directory = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OwnerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RepositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProviderType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Sha = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceSyncEvent = {
    type = "structure",
    members = {
        Event = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExternalId = {
            type = "string",
        },
        Time = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceSyncStatus = {
    FAILED = "FAILED",
    INITIATED = "INITIATED",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
}

M.ResourceSyncAttempt = {
    type = "structure",
    members = {
        Events = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        InitialRevision = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        StartedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetRevision = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Target = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResourceSyncStatusOutput = {
    type = "structure",
    members = {
        DesiredState = {
            type = "structure",
        },
        LatestSuccessfulSync = {
            type = "structure",
        },
        LatestSync = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSyncBlockerSummaryInput = {
    type = "structure",
    members = {
        SyncType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SyncBlockerContext = {
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

M.SyncBlocker = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Contexts = {
            type = "list",
            member_type = "structure",
        },
        ResolvedReason = {
            type = "string",
        },
        ResolvedAt = {
            type = "timestamp",
        },
    },
}

M.SyncBlockerSummary = {
    type = "structure",
    members = {
        ResourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParentResourceName = {
            type = "string",
        },
        LatestBlockers = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetSyncBlockerSummaryOutput = {
    type = "structure",
    members = {
        SyncBlockerSummary = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSyncConfigurationInput = {
    type = "structure",
    members = {
        SyncType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSyncConfigurationOutput = {
    type = "structure",
    members = {
        SyncConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListConnectionsInput = {
    type = "structure",
    members = {
        ProviderTypeFilter = {
            type = "string",
        },
        HostArnFilter = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListConnectionsOutput = {
    type = "structure",
    members = {
        Connections = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListHostsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Host = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        HostArn = {
            type = "string",
        },
        ProviderType = {
            type = "string",
        },
        ProviderEndpoint = {
            type = "string",
        },
        VpcConfiguration = {
            type = "structure",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.ListHostsOutput = {
    type = "structure",
    members = {
        Hosts = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRepositoryLinksInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRepositoryLinksOutput = {
    type = "structure",
    members = {
        RepositoryLinks = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRepositorySyncDefinitionsInput = {
    type = "structure",
    members = {
        RepositoryLinkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SyncType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RepositorySyncDefinition = {
    type = "structure",
    members = {
        Branch = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Directory = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parent = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Target = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListRepositorySyncDefinitionsOutput = {
    type = "structure",
    members = {
        RepositorySyncDefinitions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSyncConfigurationsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        RepositoryLinkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SyncType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListSyncConfigurationsOutput = {
    type = "structure",
    members = {
        SyncConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
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
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
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
        ResourceArn = {
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

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedOperationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateHostInput = {
    type = "structure",
    members = {
        HostArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProviderEndpoint = {
            type = "string",
        },
        VpcConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateHostOutput = {
    type = "structure",
}

M.ConditionalCheckFailedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateOutOfSyncException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateRepositoryLinkInput = {
    type = "structure",
    members = {
        ConnectionArn = {
            type = "string",
        },
        EncryptionKeyArn = {
            type = "string",
        },
        RepositoryLinkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRepositoryLinkOutput = {
    type = "structure",
    members = {
        RepositoryLinkInfo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RetryLatestCommitFailedException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SyncBlockerDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateSyncBlockerInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SyncType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResolvedReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSyncBlockerOutput = {
    type = "structure",
    members = {
        ResourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParentResourceName = {
            type = "string",
        },
        SyncBlocker = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSyncConfigurationInput = {
    type = "structure",
    members = {
        Branch = {
            type = "string",
        },
        ConfigFile = {
            type = "string",
        },
        RepositoryLinkId = {
            type = "string",
        },
        ResourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
        },
        SyncType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PublishDeploymentStatus = {
            type = "string",
        },
        TriggerResourceUpdateOn = {
            type = "string",
        },
    },
}

M.UpdateSyncConfigurationOutput = {
    type = "structure",
    members = {
        SyncConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

return M
