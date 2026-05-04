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

M.ContactHandlingScope = {
    CROSS_CONTACTS = "CROSS_CONTACTS",
    PER_CONTACT = "PER_CONTACT",
}

M.ContactHandling = {
    type = "structure",
    id = "ContactHandling",
    members = {
        Scope = {
            type = "string",
        },
    },
}

M.ApplicationConfig = {
    type = "structure",
    id = "ApplicationConfig",
    members = {
        ContactHandling = M.ContactHandling,
    },
}

M.ExternalUrlConfig = {
    type = "structure",
    id = "ExternalUrlConfig",
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
    id = "ApplicationSourceConfig",
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
    id = "IframeConfig",
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
    id = "Publication",
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
    id = "Subscription",
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
    id = "CreateApplicationInput",
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
            traits = {
                idempotency_token = true,
            },
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
    id = "CreateApplicationOutput",
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
    id = "DuplicateResourceException",
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

M.ResourceQuotaExceededException = {
    type = "structure",
    id = "ResourceQuotaExceededException",
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

M.FileConfiguration = {
    type = "structure",
    id = "FileConfiguration",
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
    id = "ScheduleConfiguration",
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
    id = "CreateDataIntegrationInput",
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
            traits = {
                idempotency_token = true,
            },
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
    id = "CreateDataIntegrationOutput",
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
    id = "OnDemandConfiguration",
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
    id = "ExecutionConfiguration",
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
    id = "CreateDataIntegrationAssociationInput",
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
            traits = {
                idempotency_token = true,
            },
        },
        ExecutionConfiguration = M.ExecutionConfiguration,
    },
}

M.CreateDataIntegrationAssociationOutput = {
    type = "structure",
    id = "CreateDataIntegrationAssociationOutput",
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
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EventFilter = {
    type = "structure",
    id = "EventFilter",
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
    id = "CreateEventIntegrationInput",
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
            traits = {
                idempotency_token = true,
            },
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
    id = "CreateEventIntegrationOutput",
    members = {
        EventIntegrationArn = {
            type = "string",
        },
    },
}

M.DeleteApplicationInput = {
    type = "structure",
    id = "DeleteApplicationInput",
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
    id = "DeleteApplicationOutput",
}

M.DeleteDataIntegrationInput = {
    type = "structure",
    id = "DeleteDataIntegrationInput",
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
    id = "DeleteDataIntegrationOutput",
}

M.DeleteEventIntegrationInput = {
    type = "structure",
    id = "DeleteEventIntegrationInput",
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
    id = "DeleteEventIntegrationOutput",
}

M.GetApplicationInput = {
    type = "structure",
    id = "GetApplicationInput",
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
    id = "GetApplicationOutput",
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
    id = "GetDataIntegrationInput",
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
    id = "GetDataIntegrationOutput",
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
    id = "GetEventIntegrationInput",
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
    id = "GetEventIntegrationOutput",
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
    id = "ListApplicationAssociationsInput",
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
    id = "ApplicationAssociationSummary",
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
    id = "ListApplicationAssociationsOutput",
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
    id = "ListApplicationsInput",
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
    id = "ApplicationSummary",
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
    id = "ListApplicationsOutput",
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
    id = "ListDataIntegrationAssociationsInput",
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
    id = "LastExecutionStatus",
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
    id = "DataIntegrationAssociationSummary",
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
    id = "ListDataIntegrationAssociationsOutput",
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
    id = "ListDataIntegrationsInput",
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
    id = "DataIntegrationSummary",
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
    id = "ListDataIntegrationsOutput",
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
    id = "ListEventIntegrationAssociationsInput",
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
    id = "EventIntegrationAssociation",
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
    id = "ListEventIntegrationAssociationsOutput",
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
    id = "ListEventIntegrationsInput",
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
    id = "EventIntegration",
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
    id = "ListEventIntegrationsOutput",
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

M.UpdateApplicationInput = {
    type = "structure",
    id = "UpdateApplicationInput",
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
    id = "UpdateApplicationOutput",
}

M.UpdateDataIntegrationInput = {
    type = "structure",
    id = "UpdateDataIntegrationInput",
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
    id = "UpdateDataIntegrationOutput",
}

M.UpdateDataIntegrationAssociationInput = {
    type = "structure",
    id = "UpdateDataIntegrationAssociationInput",
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
    id = "UpdateDataIntegrationAssociationOutput",
}

M.UpdateEventIntegrationInput = {
    type = "structure",
    id = "UpdateEventIntegrationInput",
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
    id = "UpdateEventIntegrationOutput",
}

return M
