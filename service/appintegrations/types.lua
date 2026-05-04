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
        ContactHandling = {
            type = "structure",
        },
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
            member_type = "string",
        },
    },
}

M.ApplicationSourceConfig = {
    type = "structure",
    members = {
        ExternalUrlConfig = {
            type = "structure",
        },
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
            member_type = "string",
        },
        Sandbox = {
            type = "list",
            member_type = "string",
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
        ApplicationSourceConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Subscriptions = {
            type = "list",
            member_type = "structure",
        },
        Publications = {
            type = "list",
            member_type = "structure",
        },
        ClientToken = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Permissions = {
            type = "list",
            member_type = "string",
        },
        IsService = {
            type = "boolean",
        },
        InitializationTimeout = {
            type = "number",
        },
        ApplicationConfig = {
            type = "structure",
        },
        IframeConfig = {
            type = "structure",
        },
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "map",
            key_type = "string",
            value_type = "list",
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
        ScheduleConfig = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ClientToken = {
            type = "string",
        },
        FileConfiguration = {
            type = "structure",
        },
        ObjectConfiguration = {
            type = "map",
            key_type = "string",
            value_type = "map",
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
        ScheduleConfiguration = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ClientToken = {
            type = "string",
        },
        FileConfiguration = {
            type = "structure",
        },
        ObjectConfiguration = {
            type = "map",
            key_type = "string",
            value_type = "map",
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
        OnDemandConfiguration = {
            type = "structure",
        },
        ScheduleConfiguration = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "map",
        },
        DestinationURI = {
            type = "string",
        },
        ClientAssociationMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ClientToken = {
            type = "string",
        },
        ExecutionConfiguration = {
            type = "structure",
        },
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
        EventFilter = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            key_type = "string",
            value_type = "string",
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
        ApplicationSourceConfig = {
            type = "structure",
        },
        Subscriptions = {
            type = "list",
            member_type = "structure",
        },
        Publications = {
            type = "list",
            member_type = "structure",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Permissions = {
            type = "list",
            member_type = "string",
        },
        IsService = {
            type = "boolean",
        },
        InitializationTimeout = {
            type = "number",
        },
        ApplicationConfig = {
            type = "structure",
        },
        IframeConfig = {
            type = "structure",
        },
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
        ScheduleConfiguration = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        FileConfiguration = {
            type = "structure",
        },
        ObjectConfiguration = {
            type = "map",
            key_type = "string",
            value_type = "map",
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
        EventFilter = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
        LastExecutionStatus = {
            type = "structure",
        },
        ExecutionConfiguration = {
            type = "structure",
        },
    },
}

M.ListDataIntegrationAssociationsOutput = {
    type = "structure",
    members = {
        DataIntegrationAssociations = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListEventIntegrationAssociationsOutput = {
    type = "structure",
    members = {
        EventIntegrationAssociations = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        EventFilter = {
            type = "structure",
        },
        EventBridgeBus = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListEventIntegrationsOutput = {
    type = "structure",
    members = {
        EventIntegrations = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
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
        ApplicationSourceConfig = {
            type = "structure",
        },
        Subscriptions = {
            type = "list",
            member_type = "structure",
        },
        Publications = {
            type = "list",
            member_type = "structure",
        },
        Permissions = {
            type = "list",
            member_type = "string",
        },
        IsService = {
            type = "boolean",
        },
        InitializationTimeout = {
            type = "number",
        },
        ApplicationConfig = {
            type = "structure",
        },
        IframeConfig = {
            type = "structure",
        },
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
        ExecutionConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
