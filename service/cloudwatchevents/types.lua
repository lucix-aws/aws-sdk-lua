local M = {}

M.ActivateEventSourceInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ActivateEventSourceOutput = {
    type = "structure",
}

M.ConcurrentModificationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidStateException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OperationDisabledException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApiDestinationState = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.ApiDestinationHttpMethod = {
    POST = "POST",
    GET = "GET",
    HEAD = "HEAD",
    OPTIONS = "OPTIONS",
    PUT = "PUT",
    PATCH = "PATCH",
    DELETE = "DELETE",
}

M.ApiDestination = {
    type = "structure",
    members = {
        ApiDestinationArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        ApiDestinationState = {
            type = "string",
        },
        ConnectionArn = {
            type = "string",
        },
        InvocationEndpoint = {
            type = "string",
        },
        HttpMethod = {
            type = "string",
        },
        InvocationRateLimitPerSecond = {
            type = "number",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.ArchiveState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.Archive = {
    type = "structure",
    members = {
        ArchiveName = {
            type = "string",
        },
        EventSourceArn = {
            type = "string",
        },
        State = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
        RetentionDays = {
            type = "number",
        },
        SizeBytes = {
            type = "number",
        },
        EventCount = {
            type = "number",
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.AssignPublicIp = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CancelReplayInput = {
    type = "structure",
    members = {
        ReplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReplayState = {
    STARTING = "STARTING",
    RUNNING = "RUNNING",
    CANCELLING = "CANCELLING",
    COMPLETED = "COMPLETED",
    CANCELLED = "CANCELLED",
    FAILED = "FAILED",
}

M.CancelReplayOutput = {
    type = "structure",
    members = {
        ReplayArn = {
            type = "string",
        },
        State = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
    },
}

M.IllegalStatusException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateApiDestinationInput = {
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
        ConnectionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InvocationEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HttpMethod = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InvocationRateLimitPerSecond = {
            type = "number",
        },
    },
}

M.CreateApiDestinationOutput = {
    type = "structure",
    members = {
        ApiDestinationArn = {
            type = "string",
        },
        ApiDestinationState = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateArchiveInput = {
    type = "structure",
    members = {
        ArchiveName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventSourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        EventPattern = {
            type = "string",
        },
        RetentionDays = {
            type = "number",
        },
    },
}

M.CreateArchiveOutput = {
    type = "structure",
    members = {
        ArchiveArn = {
            type = "string",
        },
        State = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.InvalidEventPatternException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConnectionAuthorizationType = {
    BASIC = "BASIC",
    OAUTH_CLIENT_CREDENTIALS = "OAUTH_CLIENT_CREDENTIALS",
    API_KEY = "API_KEY",
}

M.CreateConnectionApiKeyAuthRequestParameters = {
    type = "structure",
    members = {
        ApiKeyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApiKeyValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateConnectionBasicAuthRequestParameters = {
    type = "structure",
    members = {
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Password = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConnectionBodyParameter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        IsValueSecret = {
            type = "boolean",
        },
    },
}

M.ConnectionHeaderParameter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        IsValueSecret = {
            type = "boolean",
        },
    },
}

M.ConnectionQueryStringParameter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        IsValueSecret = {
            type = "boolean",
        },
    },
}

M.ConnectionHttpParameters = {
    type = "structure",
    members = {
        HeaderParameters = {
            type = "list",
            member_type = "structure",
        },
        QueryStringParameters = {
            type = "list",
            member_type = "structure",
        },
        BodyParameters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateConnectionOAuthClientRequestParameters = {
    type = "structure",
    members = {
        ClientID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientSecret = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConnectionOAuthHttpMethod = {
    GET = "GET",
    POST = "POST",
    PUT = "PUT",
}

M.CreateConnectionOAuthRequestParameters = {
    type = "structure",
    members = {
        ClientParameters = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AuthorizationEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HttpMethod = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OAuthHttpParameters = {
            type = "structure",
        },
    },
}

M.CreateConnectionAuthRequestParameters = {
    type = "structure",
    members = {
        BasicAuthParameters = {
            type = "structure",
        },
        OAuthParameters = {
            type = "structure",
        },
        ApiKeyAuthParameters = {
            type = "structure",
        },
        InvocationHttpParameters = {
            type = "structure",
        },
    },
}

M.CreateConnectionInput = {
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
        AuthorizationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthParameters = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ConnectionState = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    AUTHORIZED = "AUTHORIZED",
    DEAUTHORIZED = "DEAUTHORIZED",
    AUTHORIZING = "AUTHORIZING",
    DEAUTHORIZING = "DEAUTHORIZING",
}

M.CreateConnectionOutput = {
    type = "structure",
    members = {
        ConnectionArn = {
            type = "string",
        },
        ConnectionState = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
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

M.CreateEventBusInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventSourceName = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateEventBusOutput = {
    type = "structure",
    members = {
        EventBusArn = {
            type = "string",
        },
    },
}

M.CreatePartnerEventSourceInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Account = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreatePartnerEventSourceOutput = {
    type = "structure",
    members = {
        EventSourceArn = {
            type = "string",
        },
    },
}

M.DeactivateEventSourceInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeactivateEventSourceOutput = {
    type = "structure",
}

M.DeauthorizeConnectionInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeauthorizeConnectionOutput = {
    type = "structure",
    members = {
        ConnectionArn = {
            type = "string",
        },
        ConnectionState = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastAuthorizedTime = {
            type = "timestamp",
        },
    },
}

M.DeleteApiDestinationInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteApiDestinationOutput = {
    type = "structure",
}

M.DeleteArchiveInput = {
    type = "structure",
    members = {
        ArchiveName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteArchiveOutput = {
    type = "structure",
}

M.DeleteConnectionInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConnectionOutput = {
    type = "structure",
    members = {
        ConnectionArn = {
            type = "string",
        },
        ConnectionState = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastAuthorizedTime = {
            type = "timestamp",
        },
    },
}

M.DeleteEventBusInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEventBusOutput = {
    type = "structure",
}

M.DeletePartnerEventSourceInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Account = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePartnerEventSourceOutput = {
    type = "structure",
}

M.DeleteRuleInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventBusName = {
            type = "string",
        },
        Force = {
            type = "boolean",
        },
    },
}

M.DeleteRuleOutput = {
    type = "structure",
}

M.ManagedRuleException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeApiDestinationInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeApiDestinationOutput = {
    type = "structure",
    members = {
        ApiDestinationArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ApiDestinationState = {
            type = "string",
        },
        ConnectionArn = {
            type = "string",
        },
        InvocationEndpoint = {
            type = "string",
        },
        HttpMethod = {
            type = "string",
        },
        InvocationRateLimitPerSecond = {
            type = "number",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.DescribeArchiveInput = {
    type = "structure",
    members = {
        ArchiveName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeArchiveOutput = {
    type = "structure",
    members = {
        ArchiveArn = {
            type = "string",
        },
        ArchiveName = {
            type = "string",
        },
        EventSourceArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EventPattern = {
            type = "string",
        },
        State = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
        RetentionDays = {
            type = "number",
        },
        SizeBytes = {
            type = "number",
        },
        EventCount = {
            type = "number",
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.DescribeConnectionInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConnectionApiKeyAuthResponseParameters = {
    type = "structure",
    members = {
        ApiKeyName = {
            type = "string",
        },
    },
}

M.ConnectionBasicAuthResponseParameters = {
    type = "structure",
    members = {
        Username = {
            type = "string",
        },
    },
}

M.ConnectionOAuthClientResponseParameters = {
    type = "structure",
    members = {
        ClientID = {
            type = "string",
        },
    },
}

M.ConnectionOAuthResponseParameters = {
    type = "structure",
    members = {
        ClientParameters = {
            type = "structure",
        },
        AuthorizationEndpoint = {
            type = "string",
        },
        HttpMethod = {
            type = "string",
        },
        OAuthHttpParameters = {
            type = "structure",
        },
    },
}

M.ConnectionAuthResponseParameters = {
    type = "structure",
    members = {
        BasicAuthParameters = {
            type = "structure",
        },
        OAuthParameters = {
            type = "structure",
        },
        ApiKeyAuthParameters = {
            type = "structure",
        },
        InvocationHttpParameters = {
            type = "structure",
        },
    },
}

M.DescribeConnectionOutput = {
    type = "structure",
    members = {
        ConnectionArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ConnectionState = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
        AuthorizationType = {
            type = "string",
        },
        SecretArn = {
            type = "string",
        },
        AuthParameters = {
            type = "structure",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastAuthorizedTime = {
            type = "timestamp",
        },
    },
}

M.DescribeEventBusInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.DescribeEventBusOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Policy = {
            type = "string",
        },
    },
}

M.DescribeEventSourceInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EventSourceState = {
    PENDING = "PENDING",
    ACTIVE = "ACTIVE",
    DELETED = "DELETED",
}

M.DescribeEventSourceOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreatedBy = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        ExpirationTime = {
            type = "timestamp",
        },
        Name = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.DescribePartnerEventSourceInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribePartnerEventSourceOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.DescribeReplayInput = {
    type = "structure",
    members = {
        ReplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReplayDestination = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FilterArns = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeReplayOutput = {
    type = "structure",
    members = {
        ReplayName = {
            type = "string",
        },
        ReplayArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        State = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
        EventSourceArn = {
            type = "string",
        },
        Destination = {
            type = "structure",
        },
        EventStartTime = {
            type = "timestamp",
        },
        EventEndTime = {
            type = "timestamp",
        },
        EventLastReplayedTime = {
            type = "timestamp",
        },
        ReplayStartTime = {
            type = "timestamp",
        },
        ReplayEndTime = {
            type = "timestamp",
        },
    },
}

M.DescribeRuleInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventBusName = {
            type = "string",
        },
    },
}

M.RuleState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.DescribeRuleOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        EventPattern = {
            type = "string",
        },
        ScheduleExpression = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        ManagedBy = {
            type = "string",
        },
        EventBusName = {
            type = "string",
        },
        CreatedBy = {
            type = "string",
        },
    },
}

M.DisableRuleInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventBusName = {
            type = "string",
        },
    },
}

M.DisableRuleOutput = {
    type = "structure",
}

M.EnableRuleInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventBusName = {
            type = "string",
        },
    },
}

M.EnableRuleOutput = {
    type = "structure",
}

M.ListApiDestinationsInput = {
    type = "structure",
    members = {
        NamePrefix = {
            type = "string",
        },
        ConnectionArn = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
    },
}

M.ListApiDestinationsOutput = {
    type = "structure",
    members = {
        ApiDestinations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListArchivesInput = {
    type = "structure",
    members = {
        NamePrefix = {
            type = "string",
        },
        EventSourceArn = {
            type = "string",
        },
        State = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
    },
}

M.ListArchivesOutput = {
    type = "structure",
    members = {
        Archives = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListConnectionsInput = {
    type = "structure",
    members = {
        NamePrefix = {
            type = "string",
        },
        ConnectionState = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
    },
}

M.Connection = {
    type = "structure",
    members = {
        ConnectionArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        ConnectionState = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
        AuthorizationType = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastAuthorizedTime = {
            type = "timestamp",
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

M.ListEventBusesInput = {
    type = "structure",
    members = {
        NamePrefix = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
    },
}

M.EventBus = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Policy = {
            type = "string",
        },
    },
}

M.ListEventBusesOutput = {
    type = "structure",
    members = {
        EventBuses = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEventSourcesInput = {
    type = "structure",
    members = {
        NamePrefix = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
    },
}

M.EventSource = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreatedBy = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        ExpirationTime = {
            type = "timestamp",
        },
        Name = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.ListEventSourcesOutput = {
    type = "structure",
    members = {
        EventSources = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPartnerEventSourceAccountsInput = {
    type = "structure",
    members = {
        EventSourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
    },
}

M.PartnerEventSourceAccount = {
    type = "structure",
    members = {
        Account = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        ExpirationTime = {
            type = "timestamp",
        },
        State = {
            type = "string",
        },
    },
}

M.ListPartnerEventSourceAccountsOutput = {
    type = "structure",
    members = {
        PartnerEventSourceAccounts = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPartnerEventSourcesInput = {
    type = "structure",
    members = {
        NamePrefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
    },
}

M.PartnerEventSource = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.ListPartnerEventSourcesOutput = {
    type = "structure",
    members = {
        PartnerEventSources = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListReplaysInput = {
    type = "structure",
    members = {
        NamePrefix = {
            type = "string",
        },
        State = {
            type = "string",
        },
        EventSourceArn = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
    },
}

M.Replay = {
    type = "structure",
    members = {
        ReplayName = {
            type = "string",
        },
        EventSourceArn = {
            type = "string",
        },
        State = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
        EventStartTime = {
            type = "timestamp",
        },
        EventEndTime = {
            type = "timestamp",
        },
        EventLastReplayedTime = {
            type = "timestamp",
        },
        ReplayStartTime = {
            type = "timestamp",
        },
        ReplayEndTime = {
            type = "timestamp",
        },
    },
}

M.ListReplaysOutput = {
    type = "structure",
    members = {
        Replays = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRuleNamesByTargetInput = {
    type = "structure",
    members = {
        TargetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventBusName = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
    },
}

M.ListRuleNamesByTargetOutput = {
    type = "structure",
    members = {
        RuleNames = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRulesInput = {
    type = "structure",
    members = {
        NamePrefix = {
            type = "string",
        },
        EventBusName = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
    },
}

M.Rule = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        EventPattern = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ScheduleExpression = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        ManagedBy = {
            type = "string",
        },
        EventBusName = {
            type = "string",
        },
    },
}

M.ListRulesOutput = {
    type = "structure",
    members = {
        Rules = {
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
        ResourceARN = {
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

M.ListTargetsByRuleInput = {
    type = "structure",
    members = {
        Rule = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventBusName = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
    },
}

M.BatchArrayProperties = {
    type = "structure",
    members = {
        Size = {
            type = "number",
        },
    },
}

M.BatchRetryStrategy = {
    type = "structure",
    members = {
        Attempts = {
            type = "number",
        },
    },
}

M.BatchParameters = {
    type = "structure",
    members = {
        JobDefinition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ArrayProperties = {
            type = "structure",
        },
        RetryStrategy = {
            type = "structure",
        },
    },
}

M.DeadLetterConfig = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.CapacityProviderStrategyItem = {
    type = "structure",
    members = {
        capacityProvider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        weight = {
            type = "number",
        },
        base = {
            type = "number",
        },
    },
}

M.LaunchType = {
    EC2 = "EC2",
    FARGATE = "FARGATE",
    EXTERNAL = "EXTERNAL",
}

M.AwsVpcConfiguration = {
    type = "structure",
    members = {
        Subnets = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        SecurityGroups = {
            type = "list",
            member_type = "string",
        },
        AssignPublicIp = {
            type = "string",
        },
    },
}

M.NetworkConfiguration = {
    type = "structure",
    members = {
        awsvpcConfiguration = {
            type = "structure",
        },
    },
}

M.PlacementConstraintType = {
    DISTINCT_INSTANCE = "distinctInstance",
    MEMBER_OF = "memberOf",
}

M.PlacementConstraint = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        expression = {
            type = "string",
        },
    },
}

M.PlacementStrategyType = {
    RANDOM = "random",
    SPREAD = "spread",
    BINPACK = "binpack",
}

M.PlacementStrategy = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        field = {
            type = "string",
        },
    },
}

M.PropagateTags = {
    TASK_DEFINITION = "TASK_DEFINITION",
}

M.EcsParameters = {
    type = "structure",
    members = {
        TaskDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskCount = {
            type = "number",
        },
        LaunchType = {
            type = "string",
        },
        NetworkConfiguration = {
            type = "structure",
        },
        PlatformVersion = {
            type = "string",
        },
        Group = {
            type = "string",
        },
        CapacityProviderStrategy = {
            type = "list",
            member_type = "structure",
        },
        EnableECSManagedTags = {
            type = "boolean",
        },
        EnableExecuteCommand = {
            type = "boolean",
        },
        PlacementConstraints = {
            type = "list",
            member_type = "structure",
        },
        PlacementStrategy = {
            type = "list",
            member_type = "structure",
        },
        PropagateTags = {
            type = "string",
        },
        ReferenceId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.HttpParameters = {
    type = "structure",
    members = {
        PathParameterValues = {
            type = "list",
            member_type = "string",
        },
        HeaderParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        QueryStringParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.InputTransformer = {
    type = "structure",
    members = {
        InputPathsMap = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        InputTemplate = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KinesisParameters = {
    type = "structure",
    members = {
        PartitionKeyPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RedshiftDataParameters = {
    type = "structure",
    members = {
        SecretManagerArn = {
            type = "string",
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DbUser = {
            type = "string",
        },
        Sql = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StatementName = {
            type = "string",
        },
        WithEvent = {
            type = "boolean",
        },
    },
}

M.RetryPolicy = {
    type = "structure",
    members = {
        MaximumRetryAttempts = {
            type = "number",
        },
        MaximumEventAgeInSeconds = {
            type = "number",
        },
    },
}

M.RunCommandTarget = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RunCommandParameters = {
    type = "structure",
    members = {
        RunCommandTargets = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SageMakerPipelineParameter = {
    type = "structure",
    members = {
        Name = {
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

M.SageMakerPipelineParameters = {
    type = "structure",
    members = {
        PipelineParameterList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SqsParameters = {
    type = "structure",
    members = {
        MessageGroupId = {
            type = "string",
        },
    },
}

M.Target = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
        },
        Input = {
            type = "string",
        },
        InputPath = {
            type = "string",
        },
        InputTransformer = {
            type = "structure",
        },
        KinesisParameters = {
            type = "structure",
        },
        RunCommandParameters = {
            type = "structure",
        },
        EcsParameters = {
            type = "structure",
        },
        BatchParameters = {
            type = "structure",
        },
        SqsParameters = {
            type = "structure",
        },
        HttpParameters = {
            type = "structure",
        },
        RedshiftDataParameters = {
            type = "structure",
        },
        SageMakerPipelineParameters = {
            type = "structure",
        },
        DeadLetterConfig = {
            type = "structure",
        },
        RetryPolicy = {
            type = "structure",
        },
    },
}

M.ListTargetsByRuleOutput = {
    type = "structure",
    members = {
        Targets = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PutEventsRequestEntry = {
    type = "structure",
    members = {
        Time = {
            type = "timestamp",
        },
        Source = {
            type = "string",
        },
        Resources = {
            type = "list",
            member_type = "string",
        },
        DetailType = {
            type = "string",
        },
        Detail = {
            type = "string",
        },
        EventBusName = {
            type = "string",
        },
        TraceHeader = {
            type = "string",
        },
    },
}

M.PutEventsInput = {
    type = "structure",
    members = {
        Entries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutEventsResultEntry = {
    type = "structure",
    members = {
        EventId = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.PutEventsOutput = {
    type = "structure",
    members = {
        FailedEntryCount = {
            type = "number",
        },
        Entries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PutPartnerEventsRequestEntry = {
    type = "structure",
    members = {
        Time = {
            type = "timestamp",
        },
        Source = {
            type = "string",
        },
        Resources = {
            type = "list",
            member_type = "string",
        },
        DetailType = {
            type = "string",
        },
        Detail = {
            type = "string",
        },
    },
}

M.PutPartnerEventsInput = {
    type = "structure",
    members = {
        Entries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutPartnerEventsResultEntry = {
    type = "structure",
    members = {
        EventId = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.PutPartnerEventsOutput = {
    type = "structure",
    members = {
        FailedEntryCount = {
            type = "number",
        },
        Entries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PolicyLengthExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Condition = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
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

M.PutPermissionInput = {
    type = "structure",
    members = {
        EventBusName = {
            type = "string",
        },
        Action = {
            type = "string",
        },
        Principal = {
            type = "string",
        },
        StatementId = {
            type = "string",
        },
        Condition = {
            type = "structure",
        },
        Policy = {
            type = "string",
        },
    },
}

M.PutPermissionOutput = {
    type = "structure",
}

M.PutRuleInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScheduleExpression = {
            type = "string",
        },
        EventPattern = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        EventBusName = {
            type = "string",
        },
    },
}

M.PutRuleOutput = {
    type = "structure",
    members = {
        RuleArn = {
            type = "string",
        },
    },
}

M.PutTargetsInput = {
    type = "structure",
    members = {
        Rule = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventBusName = {
            type = "string",
        },
        Targets = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutTargetsResultEntry = {
    type = "structure",
    members = {
        TargetId = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.PutTargetsOutput = {
    type = "structure",
    members = {
        FailedEntryCount = {
            type = "number",
        },
        FailedEntries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RemovePermissionInput = {
    type = "structure",
    members = {
        StatementId = {
            type = "string",
        },
        RemoveAllPermissions = {
            type = "boolean",
        },
        EventBusName = {
            type = "string",
        },
    },
}

M.RemovePermissionOutput = {
    type = "structure",
}

M.RemoveTargetsInput = {
    type = "structure",
    members = {
        Rule = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventBusName = {
            type = "string",
        },
        Ids = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Force = {
            type = "boolean",
        },
    },
}

M.RemoveTargetsResultEntry = {
    type = "structure",
    members = {
        TargetId = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.RemoveTargetsOutput = {
    type = "structure",
    members = {
        FailedEntryCount = {
            type = "number",
        },
        FailedEntries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StartReplayInput = {
    type = "structure",
    members = {
        ReplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        EventSourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventStartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EventEndTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Destination = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StartReplayOutput = {
    type = "structure",
    members = {
        ReplayArn = {
            type = "string",
        },
        State = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
        ReplayStartTime = {
            type = "timestamp",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
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

M.TestEventPatternInput = {
    type = "structure",
    members = {
        EventPattern = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Event = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TestEventPatternOutput = {
    type = "structure",
    members = {
        Result = {
            type = "boolean",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
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

M.UpdateApiDestinationInput = {
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
        ConnectionArn = {
            type = "string",
        },
        InvocationEndpoint = {
            type = "string",
        },
        HttpMethod = {
            type = "string",
        },
        InvocationRateLimitPerSecond = {
            type = "number",
        },
    },
}

M.UpdateApiDestinationOutput = {
    type = "structure",
    members = {
        ApiDestinationArn = {
            type = "string",
        },
        ApiDestinationState = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.UpdateArchiveInput = {
    type = "structure",
    members = {
        ArchiveName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        EventPattern = {
            type = "string",
        },
        RetentionDays = {
            type = "number",
        },
    },
}

M.UpdateArchiveOutput = {
    type = "structure",
    members = {
        ArchiveArn = {
            type = "string",
        },
        State = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.UpdateConnectionApiKeyAuthRequestParameters = {
    type = "structure",
    members = {
        ApiKeyName = {
            type = "string",
        },
        ApiKeyValue = {
            type = "string",
        },
    },
}

M.UpdateConnectionBasicAuthRequestParameters = {
    type = "structure",
    members = {
        Username = {
            type = "string",
        },
        Password = {
            type = "string",
        },
    },
}

M.UpdateConnectionOAuthClientRequestParameters = {
    type = "structure",
    members = {
        ClientID = {
            type = "string",
        },
        ClientSecret = {
            type = "string",
        },
    },
}

M.UpdateConnectionOAuthRequestParameters = {
    type = "structure",
    members = {
        ClientParameters = {
            type = "structure",
        },
        AuthorizationEndpoint = {
            type = "string",
        },
        HttpMethod = {
            type = "string",
        },
        OAuthHttpParameters = {
            type = "structure",
        },
    },
}

M.UpdateConnectionAuthRequestParameters = {
    type = "structure",
    members = {
        BasicAuthParameters = {
            type = "structure",
        },
        OAuthParameters = {
            type = "structure",
        },
        ApiKeyAuthParameters = {
            type = "structure",
        },
        InvocationHttpParameters = {
            type = "structure",
        },
    },
}

M.UpdateConnectionInput = {
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
        AuthorizationType = {
            type = "string",
        },
        AuthParameters = {
            type = "structure",
        },
    },
}

M.UpdateConnectionOutput = {
    type = "structure",
    members = {
        ConnectionArn = {
            type = "string",
        },
        ConnectionState = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        LastAuthorizedTime = {
            type = "timestamp",
        },
    },
}

return M
