local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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
    id = "Tag",
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
    id = "CreateConnectionInput",
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
            member = M.Tag,
        },
        HostArn = {
            type = "string",
        },
    },
}

M.CreateConnectionOutput = {
    type = "structure",
    id = "CreateConnectionOutput",
    members = {
        ConnectionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
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

M.ResourceUnavailableException = {
    type = "structure",
    id = "ResourceUnavailableException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.VpcConfiguration = {
    type = "structure",
    id = "VpcConfiguration",
    members = {
        VpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
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
    id = "CreateHostInput",
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
        VpcConfiguration = M.VpcConfiguration,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateHostOutput = {
    type = "structure",
    id = "CreateHostOutput",
    members = {
        HostArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    id = "ConcurrentModificationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateRepositoryLinkInput = {
    type = "structure",
    id = "CreateRepositoryLinkInput",
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
            member = M.Tag,
        },
    },
}

M.RepositoryLinkInfo = {
    type = "structure",
    id = "RepositoryLinkInfo",
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
    id = "CreateRepositoryLinkOutput",
    members = {
        RepositoryLinkInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RepositoryLinkInfo }),
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidInputException = {
    type = "structure",
    id = "InvalidInputException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    id = "ResourceAlreadyExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
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
    id = "CreateSyncConfigurationInput",
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
    id = "SyncConfiguration",
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
    id = "CreateSyncConfigurationOutput",
    members = {
        SyncConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SyncConfiguration }),
    },
}

M.DeleteConnectionInput = {
    type = "structure",
    id = "DeleteConnectionInput",
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
    id = "DeleteConnectionOutput",
}

M.DeleteHostInput = {
    type = "structure",
    id = "DeleteHostInput",
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
    id = "DeleteHostOutput",
}

M.DeleteRepositoryLinkInput = {
    type = "structure",
    id = "DeleteRepositoryLinkInput",
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
    id = "DeleteRepositoryLinkOutput",
}

M.SyncConfigurationStillExistsException = {
    type = "structure",
    id = "SyncConfigurationStillExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedProviderTypeException = {
    type = "structure",
    id = "UnsupportedProviderTypeException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteSyncConfigurationInput = {
    type = "structure",
    id = "DeleteSyncConfigurationInput",
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
    id = "DeleteSyncConfigurationOutput",
}

M.GetConnectionInput = {
    type = "structure",
    id = "GetConnectionInput",
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
    id = "Connection",
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
    id = "GetConnectionOutput",
    members = {
        Connection = M.Connection,
    },
}

M.GetHostInput = {
    type = "structure",
    id = "GetHostInput",
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
    id = "GetHostOutput",
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
        VpcConfiguration = M.VpcConfiguration,
    },
}

M.GetRepositoryLinkInput = {
    type = "structure",
    id = "GetRepositoryLinkInput",
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
    id = "GetRepositoryLinkOutput",
    members = {
        RepositoryLinkInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RepositoryLinkInfo }),
    },
}

M.GetRepositorySyncStatusInput = {
    type = "structure",
    id = "GetRepositorySyncStatusInput",
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
    id = "RepositorySyncEvent",
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
    id = "RepositorySyncAttempt",
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
            member = M.RepositorySyncEvent,
            traits = {
                required = true,
            },
        },
    },
}

M.GetRepositorySyncStatusOutput = {
    type = "structure",
    id = "GetRepositorySyncStatusOutput",
    members = {
        LatestSync = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RepositorySyncAttempt }),
    },
}

M.GetResourceSyncStatusInput = {
    type = "structure",
    id = "GetResourceSyncStatusInput",
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
    id = "Revision",
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
    id = "ResourceSyncEvent",
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
    id = "ResourceSyncAttempt",
    members = {
        Events = {
            type = "list",
            member = M.ResourceSyncEvent,
            traits = {
                required = true,
            },
        },
        InitialRevision = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Revision }),
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
        TargetRevision = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Revision }),
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
    id = "GetResourceSyncStatusOutput",
    members = {
        DesiredState = M.Revision,
        LatestSuccessfulSync = M.ResourceSyncAttempt,
        LatestSync = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceSyncAttempt }),
    },
}

M.GetSyncBlockerSummaryInput = {
    type = "structure",
    id = "GetSyncBlockerSummaryInput",
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
    id = "SyncBlockerContext",
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
    id = "SyncBlocker",
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
            member = M.SyncBlockerContext,
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
    id = "SyncBlockerSummary",
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
            member = M.SyncBlocker,
        },
    },
}

M.GetSyncBlockerSummaryOutput = {
    type = "structure",
    id = "GetSyncBlockerSummaryOutput",
    members = {
        SyncBlockerSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SyncBlockerSummary }),
    },
}

M.GetSyncConfigurationInput = {
    type = "structure",
    id = "GetSyncConfigurationInput",
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
    id = "GetSyncConfigurationOutput",
    members = {
        SyncConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SyncConfiguration }),
    },
}

M.ListConnectionsInput = {
    type = "structure",
    id = "ListConnectionsInput",
    members = {
        ProviderTypeFilter = {
            type = "string",
        },
        HostArnFilter = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListConnectionsOutput = {
    type = "structure",
    id = "ListConnectionsOutput",
    members = {
        Connections = {
            type = "list",
            member = M.Connection,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListHostsInput = {
    type = "structure",
    id = "ListHostsInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Host = {
    type = "structure",
    id = "Host",
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
        VpcConfiguration = M.VpcConfiguration,
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
    id = "ListHostsOutput",
    members = {
        Hosts = {
            type = "list",
            member = M.Host,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRepositoryLinksInput = {
    type = "structure",
    id = "ListRepositoryLinksInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRepositoryLinksOutput = {
    type = "structure",
    id = "ListRepositoryLinksOutput",
    members = {
        RepositoryLinks = {
            type = "list",
            member = M.RepositoryLinkInfo,
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
    id = "ListRepositorySyncDefinitionsInput",
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
    id = "RepositorySyncDefinition",
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
    id = "ListRepositorySyncDefinitionsOutput",
    members = {
        RepositorySyncDefinitions = {
            type = "list",
            member = M.RepositorySyncDefinition,
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
    id = "ListSyncConfigurationsInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
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
    id = "ListSyncConfigurationsOutput",
    members = {
        SyncConfigurations = {
            type = "list",
            member = M.SyncConfiguration,
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceArn = {
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
        ResourceArn = {
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

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedOperationException = {
    type = "structure",
    id = "UnsupportedOperationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateHostInput = {
    type = "structure",
    id = "UpdateHostInput",
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
        VpcConfiguration = M.VpcConfiguration,
    },
}

M.UpdateHostOutput = {
    type = "structure",
    id = "UpdateHostOutput",
}

M.ConditionalCheckFailedException = {
    type = "structure",
    id = "ConditionalCheckFailedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateOutOfSyncException = {
    type = "structure",
    id = "UpdateOutOfSyncException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateRepositoryLinkInput = {
    type = "structure",
    id = "UpdateRepositoryLinkInput",
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
    id = "UpdateRepositoryLinkOutput",
    members = {
        RepositoryLinkInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RepositoryLinkInfo }),
    },
}

M.RetryLatestCommitFailedException = {
    type = "structure",
    id = "RetryLatestCommitFailedException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SyncBlockerDoesNotExistException = {
    type = "structure",
    id = "SyncBlockerDoesNotExistException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateSyncBlockerInput = {
    type = "structure",
    id = "UpdateSyncBlockerInput",
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
    id = "UpdateSyncBlockerOutput",
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
        SyncBlocker = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SyncBlocker }),
    },
}

M.UpdateSyncConfigurationInput = {
    type = "structure",
    id = "UpdateSyncConfigurationInput",
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
    id = "UpdateSyncConfigurationOutput",
    members = {
        SyncConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SyncConfiguration }),
    },
}

return M
