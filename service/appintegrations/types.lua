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

M.ContactHandlingScope = {
    CROSS_CONTACTS = "CROSS_CONTACTS",
    PER_CONTACT = "PER_CONTACT",
}

M.ContactHandling = {
    type = "structure",
    members = {
        Scope = {
            type = "string",
        },
    },
}

M.ApplicationConfig = {
    type = "structure",
    members = {
        ContactHandling = M.ContactHandling,
    },
}

M.ExternalUrlConfig = {
    type = "structure",
    members = {
        AccessUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApprovedOrigins = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ApplicationSourceConfig = {
    type = "structure",
    members = {
        ExternalUrlConfig = M.ExternalUrlConfig,
    },
}

M.ApplicationType = {
    STANDARD = "STANDARD",
    SERVICE = "SERVICE",
    MCP_SERVER = "MCP_SERVER",
}

M.IframeConfig = {
    type = "structure",
    members = {
        Allow = {
            type = "list",
            member = { type = "string" },
        },
        Sandbox = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Publication = {
    type = "structure",
    members = {
        Event = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Schema = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
    },
}

M.Subscription = {
    type = "structure",
    members = {
        Event = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
    },
}

M.CreateApplicationInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ApplicationSourceConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApplicationSourceConfig }),
        Subscriptions = {
            type = "list",
            member = M.Subscription,
        },
        Publications = {
            type = "list",
            member = M.Publication,
        },
        ClientToken = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Permissions = {
            type = "list",
            member = { type = "string" },
        },
        IsService = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        InitializationTimeout = {
            type = "integer",
        },
        ApplicationConfig = M.ApplicationConfig,
        IframeConfig = M.IframeConfig,
        ApplicationType = {
            type = "string",
        },
    },
}

M.CreateApplicationOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
    },
}

M.DuplicateResourceException = {
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

M.InvalidRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceQuotaExceededException = {
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

M.UnsupportedOperationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.FileConfiguration = {
    type = "structure",
    members = {
        Folders = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.ScheduleConfiguration = {
    type = "structure",
    members = {
        FirstExecutionFrom = {
            type = "string",
        },
        Object = {
            type = "string",
        },
        ScheduleExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDataIntegrationInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        KmsKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceURI = {
            type = "string",
        },
        ScheduleConfig = M.ScheduleConfiguration,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ClientToken = {
            type = "string",
        },
        FileConfiguration = M.FileConfiguration,
        ObjectConfiguration = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
        },
    },
}

M.CreateDataIntegrationOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        KmsKey = {
            type = "string",
        },
        SourceURI = {
            type = "string",
        },
        ScheduleConfiguration = M.ScheduleConfiguration,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ClientToken = {
            type = "string",
        },
        FileConfiguration = M.FileConfiguration,
        ObjectConfiguration = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
        },
    },
}

M.ExecutionMode = {
    ON_DEMAND = "ON_DEMAND",
    SCHEDULED = "SCHEDULED",
}

M.OnDemandConfiguration = {
    type = "structure",
    members = {
        StartTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "string",
        },
    },
}

M.ExecutionConfiguration = {
    type = "structure",
    members = {
        ExecutionMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OnDemandConfiguration = M.OnDemandConfiguration,
        ScheduleConfiguration = M.ScheduleConfiguration,
    },
}

M.CreateDataIntegrationAssociationInput = {
    type = "structure",
    members = {
        DataIntegrationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ClientId = {
            type = "string",
        },
        ObjectConfiguration = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
        },
        DestinationURI = {
            type = "string",
        },
        ClientAssociationMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ClientToken = {
            type = "string",
        },
        ExecutionConfiguration = M.ExecutionConfiguration,
    },
}

M.CreateDataIntegrationAssociationOutput = {
    type = "structure",
    members = {
        DataIntegrationAssociationId = {
            type = "string",
        },
        DataIntegrationArn = {
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

M.EventFilter = {
    type = "structure",
    members = {
        Source = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateEventIntegrationInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        EventFilter = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventFilter }),
        EventBridgeBus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateEventIntegrationOutput = {
    type = "structure",
    members = {
        EventIntegrationArn = {
            type = "string",
        },
    },
}

M.DeleteApplicationInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteApplicationOutput = {
    type = "structure",
}

M.DeleteDataIntegrationInput = {
    type = "structure",
    members = {
        DataIntegrationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDataIntegrationOutput = {
    type = "structure",
}

M.DeleteEventIntegrationInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEventIntegrationOutput = {
    type = "structure",
}

M.GetApplicationInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetApplicationOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Namespace = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ApplicationSourceConfig = M.ApplicationSourceConfig,
        Subscriptions = {
            type = "list",
            member = M.Subscription,
        },
        Publications = {
            type = "list",
            member = M.Publication,
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Permissions = {
            type = "list",
            member = { type = "string" },
        },
        IsService = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        InitializationTimeout = {
            type = "integer",
        },
        ApplicationConfig = M.ApplicationConfig,
        IframeConfig = M.IframeConfig,
        ApplicationType = {
            type = "string",
        },
    },
}

M.GetDataIntegrationInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDataIntegrationOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        KmsKey = {
            type = "string",
        },
        SourceURI = {
            type = "string",
        },
        ScheduleConfiguration = M.ScheduleConfiguration,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        FileConfiguration = M.FileConfiguration,
        ObjectConfiguration = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
        },
    },
}

M.GetEventIntegrationInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetEventIntegrationOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EventIntegrationArn = {
            type = "string",
        },
        EventBridgeBus = {
            type = "string",
        },
        EventFilter = M.EventFilter,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListApplicationAssociationsInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ApplicationAssociationSummary = {
    type = "structure",
    members = {
        ApplicationAssociationArn = {
            type = "string",
        },
        ApplicationArn = {
            type = "string",
        },
        ClientId = {
            type = "string",
        },
    },
}

M.ListApplicationAssociationsOutput = {
    type = "structure",
    members = {
        ApplicationAssociations = {
            type = "list",
            member = M.ApplicationAssociationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListApplicationsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        ApplicationType = {
            type = "string",
            traits = {
                http_query = "applicationType",
            },
        },
    },
}

M.ApplicationSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Namespace = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        IsService = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ApplicationType = {
            type = "string",
        },
    },
}

M.ListApplicationsOutput = {
    type = "structure",
    members = {
        Applications = {
            type = "list",
            member = M.ApplicationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDataIntegrationAssociationsInput = {
    type = "structure",
    members = {
        DataIntegrationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ExecutionStatus = {
    COMPLETED = "COMPLETED",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
}

M.LastExecutionStatus = {
    type = "structure",
    members = {
        ExecutionStatus = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.DataIntegrationAssociationSummary = {
    type = "structure",
    members = {
        DataIntegrationAssociationArn = {
            type = "string",
        },
        DataIntegrationArn = {
            type = "string",
        },
        ClientId = {
            type = "string",
        },
        DestinationURI = {
            type = "string",
        },
        LastExecutionStatus = M.LastExecutionStatus,
        ExecutionConfiguration = M.ExecutionConfiguration,
    },
}

M.ListDataIntegrationAssociationsOutput = {
    type = "structure",
    members = {
        DataIntegrationAssociations = {
            type = "list",
            member = M.DataIntegrationAssociationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDataIntegrationsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.DataIntegrationSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        SourceURI = {
            type = "string",
        },
    },
}

M.ListDataIntegrationsOutput = {
    type = "structure",
    members = {
        DataIntegrations = {
            type = "list",
            member = M.DataIntegrationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEventIntegrationAssociationsInput = {
    type = "structure",
    members = {
        EventIntegrationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.EventIntegrationAssociation = {
    type = "structure",
    members = {
        EventIntegrationAssociationArn = {
            type = "string",
        },
        EventIntegrationAssociationId = {
            type = "string",
        },
        EventIntegrationName = {
            type = "string",
        },
        ClientId = {
            type = "string",
        },
        EventBridgeRuleName = {
            type = "string",
        },
        ClientAssociationMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListEventIntegrationAssociationsOutput = {
    type = "structure",
    members = {
        EventIntegrationAssociations = {
            type = "list",
            member = M.EventIntegrationAssociation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEventIntegrationsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.EventIntegration = {
    type = "structure",
    members = {
        EventIntegrationArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EventFilter = M.EventFilter,
        EventBridgeBus = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListEventIntegrationsOutput = {
    type = "structure",
    members = {
        EventIntegrations = {
            type = "list",
            member = M.EventIntegration,
        },
        NextToken = {
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

M.UpdateApplicationInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ApplicationSourceConfig = M.ApplicationSourceConfig,
        Subscriptions = {
            type = "list",
            member = M.Subscription,
        },
        Publications = {
            type = "list",
            member = M.Publication,
        },
        Permissions = {
            type = "list",
            member = { type = "string" },
        },
        IsService = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        InitializationTimeout = {
            type = "integer",
        },
        ApplicationConfig = M.ApplicationConfig,
        IframeConfig = M.IframeConfig,
        ApplicationType = {
            type = "string",
        },
    },
}

M.UpdateApplicationOutput = {
    type = "structure",
}

M.UpdateDataIntegrationInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateDataIntegrationOutput = {
    type = "structure",
}

M.UpdateDataIntegrationAssociationInput = {
    type = "structure",
    members = {
        DataIntegrationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataIntegrationAssociationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExecutionConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExecutionConfiguration }),
    },
}

M.UpdateDataIntegrationAssociationOutput = {
    type = "structure",
}

M.UpdateEventIntegrationInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateEventIntegrationOutput = {
    type = "structure",
}

return M
