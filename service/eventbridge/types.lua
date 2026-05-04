local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ActivateEventSourceInput = {
    type = "structure",
    id = "ActivateEventSourceInput",
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
    id = "ActivateEventSourceOutput",
}

M.ConcurrentModificationException = {
    type = "structure",
    id = "ConcurrentModificationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalException = {
    type = "structure",
    id = "InternalException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidStateException = {
    type = "structure",
    id = "InvalidStateException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OperationDisabledException = {
    type = "structure",
    id = "OperationDisabledException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
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
    id = "ApiDestination",
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
            type = "integer",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.AppSyncParameters = {
    type = "structure",
    id = "AppSyncParameters",
    members = {
        GraphQLOperation = {
            type = "string",
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
    id = "Archive",
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
            type = "integer",
        },
        SizeBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        EventCount = {
            type = "long",
            traits = {
                default = 0,
            },
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
    id = "CancelReplayInput",
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
    id = "CancelReplayOutput",
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
    id = "IllegalStatusException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateApiDestinationInput = {
    type = "structure",
    id = "CreateApiDestinationInput",
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
            type = "integer",
        },
    },
}

M.CreateApiDestinationOutput = {
    type = "structure",
    id = "CreateApiDestinationOutput",
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
    id = "LimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    id = "ResourceAlreadyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateArchiveInput = {
    type = "structure",
    id = "CreateArchiveInput",
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
            type = "integer",
        },
        KmsKeyIdentifier = {
            type = "string",
        },
    },
}

M.CreateArchiveOutput = {
    type = "structure",
    id = "CreateArchiveOutput",
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
    id = "InvalidEventPatternException",
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
    id = "CreateConnectionApiKeyAuthRequestParameters",
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
    id = "CreateConnectionBasicAuthRequestParameters",
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

M.ConnectivityResourceConfigurationArn = {
    type = "structure",
    id = "ConnectivityResourceConfigurationArn",
    members = {
        ResourceConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConnectivityResourceParameters = {
    type = "structure",
    id = "ConnectivityResourceParameters",
    members = {
        ResourceParameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConnectivityResourceConfigurationArn }),
    },
}

M.ConnectionBodyParameter = {
    type = "structure",
    id = "ConnectionBodyParameter",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        IsValueSecret = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ConnectionHeaderParameter = {
    type = "structure",
    id = "ConnectionHeaderParameter",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        IsValueSecret = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ConnectionQueryStringParameter = {
    type = "structure",
    id = "ConnectionQueryStringParameter",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        IsValueSecret = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ConnectionHttpParameters = {
    type = "structure",
    id = "ConnectionHttpParameters",
    members = {
        HeaderParameters = {
            type = "list",
            member = M.ConnectionHeaderParameter,
        },
        QueryStringParameters = {
            type = "list",
            member = M.ConnectionQueryStringParameter,
        },
        BodyParameters = {
            type = "list",
            member = M.ConnectionBodyParameter,
        },
    },
}

M.CreateConnectionOAuthClientRequestParameters = {
    type = "structure",
    id = "CreateConnectionOAuthClientRequestParameters",
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
    id = "CreateConnectionOAuthRequestParameters",
    members = {
        ClientParameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CreateConnectionOAuthClientRequestParameters }),
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
        OAuthHttpParameters = M.ConnectionHttpParameters,
    },
}

M.CreateConnectionAuthRequestParameters = {
    type = "structure",
    id = "CreateConnectionAuthRequestParameters",
    members = {
        BasicAuthParameters = M.CreateConnectionBasicAuthRequestParameters,
        OAuthParameters = M.CreateConnectionOAuthRequestParameters,
        ApiKeyAuthParameters = M.CreateConnectionApiKeyAuthRequestParameters,
        InvocationHttpParameters = M.ConnectionHttpParameters,
        ConnectivityParameters = M.ConnectivityResourceParameters,
    },
}

M.CreateConnectionInput = {
    type = "structure",
    id = "CreateConnectionInput",
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
        AuthParameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CreateConnectionAuthRequestParameters }),
        InvocationConnectivityParameters = M.ConnectivityResourceParameters,
        KmsKeyIdentifier = {
            type = "string",
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
    ACTIVE = "ACTIVE",
    FAILED_CONNECTIVITY = "FAILED_CONNECTIVITY",
}

M.CreateConnectionOutput = {
    type = "structure",
    id = "CreateConnectionOutput",
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

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EndpointEventBus = {
    type = "structure",
    id = "EndpointEventBus",
    members = {
        EventBusArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReplicationState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ReplicationConfig = {
    type = "structure",
    id = "ReplicationConfig",
    members = {
        State = {
            type = "string",
        },
    },
}

M.Primary = {
    type = "structure",
    id = "Primary",
    members = {
        HealthCheck = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Secondary = {
    type = "structure",
    id = "Secondary",
    members = {
        Route = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FailoverConfig = {
    type = "structure",
    id = "FailoverConfig",
    members = {
        Primary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Primary }),
        Secondary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Secondary }),
    },
}

M.RoutingConfig = {
    type = "structure",
    id = "RoutingConfig",
    members = {
        FailoverConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FailoverConfig }),
    },
}

M.CreateEndpointInput = {
    type = "structure",
    id = "CreateEndpointInput",
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
        RoutingConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RoutingConfig }),
        ReplicationConfig = M.ReplicationConfig,
        EventBuses = {
            type = "list",
            member = M.EndpointEventBus,
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
        },
    },
}

M.EndpointState = {
    ACTIVE = "ACTIVE",
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETE_FAILED = "DELETE_FAILED",
}

M.CreateEndpointOutput = {
    type = "structure",
    id = "CreateEndpointOutput",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        RoutingConfig = M.RoutingConfig,
        ReplicationConfig = M.ReplicationConfig,
        EventBuses = {
            type = "list",
            member = M.EndpointEventBus,
        },
        RoleArn = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.DeadLetterConfig = {
    type = "structure",
    id = "DeadLetterConfig",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.IncludeDetail = {
    NONE = "NONE",
    FULL = "FULL",
}

M.Level = {
    OFF = "OFF",
    ERROR = "ERROR",
    INFO = "INFO",
    TRACE = "TRACE",
}

M.LogConfig = {
    type = "structure",
    id = "LogConfig",
    members = {
        IncludeDetail = {
            type = "string",
        },
        Level = {
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
    id = "CreateEventBusInput",
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
        Description = {
            type = "string",
        },
        KmsKeyIdentifier = {
            type = "string",
        },
        DeadLetterConfig = M.DeadLetterConfig,
        LogConfig = M.LogConfig,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateEventBusOutput = {
    type = "structure",
    id = "CreateEventBusOutput",
    members = {
        EventBusArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        KmsKeyIdentifier = {
            type = "string",
        },
        DeadLetterConfig = M.DeadLetterConfig,
        LogConfig = M.LogConfig,
    },
}

M.CreatePartnerEventSourceInput = {
    type = "structure",
    id = "CreatePartnerEventSourceInput",
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
    id = "CreatePartnerEventSourceOutput",
    members = {
        EventSourceArn = {
            type = "string",
        },
    },
}

M.DeactivateEventSourceInput = {
    type = "structure",
    id = "DeactivateEventSourceInput",
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
    id = "DeactivateEventSourceOutput",
}

M.DeauthorizeConnectionInput = {
    type = "structure",
    id = "DeauthorizeConnectionInput",
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
    id = "DeauthorizeConnectionOutput",
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
    id = "DeleteApiDestinationInput",
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
    id = "DeleteApiDestinationOutput",
}

M.DeleteArchiveInput = {
    type = "structure",
    id = "DeleteArchiveInput",
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
    id = "DeleteArchiveOutput",
}

M.DeleteConnectionInput = {
    type = "structure",
    id = "DeleteConnectionInput",
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
    id = "DeleteConnectionOutput",
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

M.DeleteEndpointInput = {
    type = "structure",
    id = "DeleteEndpointInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEndpointOutput = {
    type = "structure",
    id = "DeleteEndpointOutput",
}

M.DeleteEventBusInput = {
    type = "structure",
    id = "DeleteEventBusInput",
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
    id = "DeleteEventBusOutput",
}

M.DeletePartnerEventSourceInput = {
    type = "structure",
    id = "DeletePartnerEventSourceInput",
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
    id = "DeletePartnerEventSourceOutput",
}

M.DeleteRuleInput = {
    type = "structure",
    id = "DeleteRuleInput",
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
            traits = {
                default = false,
            },
        },
    },
}

M.DeleteRuleOutput = {
    type = "structure",
    id = "DeleteRuleOutput",
}

M.ManagedRuleException = {
    type = "structure",
    id = "ManagedRuleException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeApiDestinationInput = {
    type = "structure",
    id = "DescribeApiDestinationInput",
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
    id = "DescribeApiDestinationOutput",
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
            type = "integer",
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
    id = "DescribeArchiveInput",
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
    id = "DescribeArchiveOutput",
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
        KmsKeyIdentifier = {
            type = "string",
        },
        RetentionDays = {
            type = "integer",
        },
        SizeBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        EventCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.DescribeConnectionInput = {
    type = "structure",
    id = "DescribeConnectionInput",
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
    id = "ConnectionApiKeyAuthResponseParameters",
    members = {
        ApiKeyName = {
            type = "string",
        },
    },
}

M.ConnectionBasicAuthResponseParameters = {
    type = "structure",
    id = "ConnectionBasicAuthResponseParameters",
    members = {
        Username = {
            type = "string",
        },
    },
}

M.DescribeConnectionResourceParameters = {
    type = "structure",
    id = "DescribeConnectionResourceParameters",
    members = {
        ResourceConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceAssociationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeConnectionConnectivityParameters = {
    type = "structure",
    id = "DescribeConnectionConnectivityParameters",
    members = {
        ResourceParameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DescribeConnectionResourceParameters }),
    },
}

M.ConnectionOAuthClientResponseParameters = {
    type = "structure",
    id = "ConnectionOAuthClientResponseParameters",
    members = {
        ClientID = {
            type = "string",
        },
    },
}

M.ConnectionOAuthResponseParameters = {
    type = "structure",
    id = "ConnectionOAuthResponseParameters",
    members = {
        ClientParameters = M.ConnectionOAuthClientResponseParameters,
        AuthorizationEndpoint = {
            type = "string",
        },
        HttpMethod = {
            type = "string",
        },
        OAuthHttpParameters = M.ConnectionHttpParameters,
    },
}

M.ConnectionAuthResponseParameters = {
    type = "structure",
    id = "ConnectionAuthResponseParameters",
    members = {
        BasicAuthParameters = M.ConnectionBasicAuthResponseParameters,
        OAuthParameters = M.ConnectionOAuthResponseParameters,
        ApiKeyAuthParameters = M.ConnectionApiKeyAuthResponseParameters,
        InvocationHttpParameters = M.ConnectionHttpParameters,
        ConnectivityParameters = M.DescribeConnectionConnectivityParameters,
    },
}

M.DescribeConnectionOutput = {
    type = "structure",
    id = "DescribeConnectionOutput",
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
        InvocationConnectivityParameters = M.DescribeConnectionConnectivityParameters,
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
        KmsKeyIdentifier = {
            type = "string",
        },
        AuthParameters = M.ConnectionAuthResponseParameters,
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

M.DescribeEndpointInput = {
    type = "structure",
    id = "DescribeEndpointInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HomeRegion = {
            type = "string",
        },
    },
}

M.DescribeEndpointOutput = {
    type = "structure",
    id = "DescribeEndpointOutput",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        RoutingConfig = M.RoutingConfig,
        ReplicationConfig = M.ReplicationConfig,
        EventBuses = {
            type = "list",
            member = M.EndpointEventBus,
        },
        RoleArn = {
            type = "string",
        },
        EndpointId = {
            type = "string",
        },
        EndpointUrl = {
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
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.DescribeEventBusInput = {
    type = "structure",
    id = "DescribeEventBusInput",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.DescribeEventBusOutput = {
    type = "structure",
    id = "DescribeEventBusOutput",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        KmsKeyIdentifier = {
            type = "string",
        },
        DeadLetterConfig = M.DeadLetterConfig,
        Policy = {
            type = "string",
        },
        LogConfig = M.LogConfig,
        CreationTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.DescribeEventSourceInput = {
    type = "structure",
    id = "DescribeEventSourceInput",
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
    id = "DescribeEventSourceOutput",
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
    id = "DescribePartnerEventSourceInput",
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
    id = "DescribePartnerEventSourceOutput",
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
    id = "DescribeReplayInput",
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
    id = "ReplayDestination",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FilterArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeReplayOutput = {
    type = "structure",
    id = "DescribeReplayOutput",
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
        Destination = M.ReplayDestination,
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
    id = "DescribeRuleInput",
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
    ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS = "ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS",
}

M.DescribeRuleOutput = {
    type = "structure",
    id = "DescribeRuleOutput",
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
    id = "DisableRuleInput",
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
    id = "DisableRuleOutput",
}

M.EnableRuleInput = {
    type = "structure",
    id = "EnableRuleInput",
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
    id = "EnableRuleOutput",
}

M.ListApiDestinationsInput = {
    type = "structure",
    id = "ListApiDestinationsInput",
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
            type = "integer",
        },
    },
}

M.ListApiDestinationsOutput = {
    type = "structure",
    id = "ListApiDestinationsOutput",
    members = {
        ApiDestinations = {
            type = "list",
            member = M.ApiDestination,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListArchivesInput = {
    type = "structure",
    id = "ListArchivesInput",
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
            type = "integer",
        },
    },
}

M.ListArchivesOutput = {
    type = "structure",
    id = "ListArchivesOutput",
    members = {
        Archives = {
            type = "list",
            member = M.Archive,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListConnectionsInput = {
    type = "structure",
    id = "ListConnectionsInput",
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
            type = "integer",
        },
    },
}

M.Connection = {
    type = "structure",
    id = "Connection",
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

M.ListEndpointsInput = {
    type = "structure",
    id = "ListEndpointsInput",
    members = {
        NamePrefix = {
            type = "string",
        },
        HomeRegion = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.Endpoint = {
    type = "structure",
    id = "Endpoint",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        RoutingConfig = M.RoutingConfig,
        ReplicationConfig = M.ReplicationConfig,
        EventBuses = {
            type = "list",
            member = M.EndpointEventBus,
        },
        RoleArn = {
            type = "string",
        },
        EndpointId = {
            type = "string",
        },
        EndpointUrl = {
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
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.ListEndpointsOutput = {
    type = "structure",
    id = "ListEndpointsOutput",
    members = {
        Endpoints = {
            type = "list",
            member = M.Endpoint,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEventBusesInput = {
    type = "structure",
    id = "ListEventBusesInput",
    members = {
        NamePrefix = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.EventBus = {
    type = "structure",
    id = "EventBus",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Policy = {
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

M.ListEventBusesOutput = {
    type = "structure",
    id = "ListEventBusesOutput",
    members = {
        EventBuses = {
            type = "list",
            member = M.EventBus,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEventSourcesInput = {
    type = "structure",
    id = "ListEventSourcesInput",
    members = {
        NamePrefix = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.EventSource = {
    type = "structure",
    id = "EventSource",
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
    id = "ListEventSourcesOutput",
    members = {
        EventSources = {
            type = "list",
            member = M.EventSource,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPartnerEventSourceAccountsInput = {
    type = "structure",
    id = "ListPartnerEventSourceAccountsInput",
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
            type = "integer",
        },
    },
}

M.PartnerEventSourceAccount = {
    type = "structure",
    id = "PartnerEventSourceAccount",
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
    id = "ListPartnerEventSourceAccountsOutput",
    members = {
        PartnerEventSourceAccounts = {
            type = "list",
            member = M.PartnerEventSourceAccount,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPartnerEventSourcesInput = {
    type = "structure",
    id = "ListPartnerEventSourcesInput",
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
            type = "integer",
        },
    },
}

M.PartnerEventSource = {
    type = "structure",
    id = "PartnerEventSource",
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
    id = "ListPartnerEventSourcesOutput",
    members = {
        PartnerEventSources = {
            type = "list",
            member = M.PartnerEventSource,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListReplaysInput = {
    type = "structure",
    id = "ListReplaysInput",
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
            type = "integer",
        },
    },
}

M.Replay = {
    type = "structure",
    id = "Replay",
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
    id = "ListReplaysOutput",
    members = {
        Replays = {
            type = "list",
            member = M.Replay,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRuleNamesByTargetInput = {
    type = "structure",
    id = "ListRuleNamesByTargetInput",
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
            type = "integer",
        },
    },
}

M.ListRuleNamesByTargetOutput = {
    type = "structure",
    id = "ListRuleNamesByTargetOutput",
    members = {
        RuleNames = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRulesInput = {
    type = "structure",
    id = "ListRulesInput",
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
            type = "integer",
        },
    },
}

M.Rule = {
    type = "structure",
    id = "Rule",
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
    id = "ListRulesOutput",
    members = {
        Rules = {
            type = "list",
            member = M.Rule,
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
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListTargetsByRuleInput = {
    type = "structure",
    id = "ListTargetsByRuleInput",
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
            type = "integer",
        },
    },
}

M.BatchArrayProperties = {
    type = "structure",
    id = "BatchArrayProperties",
    members = {
        Size = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.BatchRetryStrategy = {
    type = "structure",
    id = "BatchRetryStrategy",
    members = {
        Attempts = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.BatchParameters = {
    type = "structure",
    id = "BatchParameters",
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
        ArrayProperties = M.BatchArrayProperties,
        RetryStrategy = M.BatchRetryStrategy,
    },
}

M.CapacityProviderStrategyItem = {
    type = "structure",
    id = "CapacityProviderStrategyItem",
    members = {
        capacityProvider = {
            type = "string",
            traits = {
                required = true,
            },
        },
        weight = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        base = {
            type = "integer",
            traits = {
                default = 0,
            },
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
    id = "AwsVpcConfiguration",
    members = {
        Subnets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        AssignPublicIp = {
            type = "string",
        },
    },
}

M.NetworkConfiguration = {
    type = "structure",
    id = "NetworkConfiguration",
    members = {
        awsvpcConfiguration = M.AwsVpcConfiguration,
    },
}

M.PlacementConstraintType = {
    DISTINCT_INSTANCE = "distinctInstance",
    MEMBER_OF = "memberOf",
}

M.PlacementConstraint = {
    type = "structure",
    id = "PlacementConstraint",
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
    id = "PlacementStrategy",
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
    id = "EcsParameters",
    members = {
        TaskDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskCount = {
            type = "integer",
        },
        LaunchType = {
            type = "string",
        },
        NetworkConfiguration = M.NetworkConfiguration,
        PlatformVersion = {
            type = "string",
        },
        Group = {
            type = "string",
        },
        CapacityProviderStrategy = {
            type = "list",
            member = M.CapacityProviderStrategyItem,
        },
        EnableECSManagedTags = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        EnableExecuteCommand = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        PlacementConstraints = {
            type = "list",
            member = M.PlacementConstraint,
        },
        PlacementStrategy = {
            type = "list",
            member = M.PlacementStrategy,
        },
        PropagateTags = {
            type = "string",
        },
        ReferenceId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.HttpParameters = {
    type = "structure",
    id = "HttpParameters",
    members = {
        PathParameterValues = {
            type = "list",
            member = { type = "string" },
        },
        HeaderParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        QueryStringParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.InputTransformer = {
    type = "structure",
    id = "InputTransformer",
    members = {
        InputPathsMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "KinesisParameters",
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
    id = "RedshiftDataParameters",
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
        },
        StatementName = {
            type = "string",
        },
        WithEvent = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Sqls = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RetryPolicy = {
    type = "structure",
    id = "RetryPolicy",
    members = {
        MaximumRetryAttempts = {
            type = "integer",
        },
        MaximumEventAgeInSeconds = {
            type = "integer",
        },
    },
}

M.RunCommandTarget = {
    type = "structure",
    id = "RunCommandTarget",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RunCommandParameters = {
    type = "structure",
    id = "RunCommandParameters",
    members = {
        RunCommandTargets = {
            type = "list",
            member = M.RunCommandTarget,
            traits = {
                required = true,
            },
        },
    },
}

M.SageMakerPipelineParameter = {
    type = "structure",
    id = "SageMakerPipelineParameter",
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
    id = "SageMakerPipelineParameters",
    members = {
        PipelineParameterList = {
            type = "list",
            member = M.SageMakerPipelineParameter,
        },
    },
}

M.SqsParameters = {
    type = "structure",
    id = "SqsParameters",
    members = {
        MessageGroupId = {
            type = "string",
        },
    },
}

M.Target = {
    type = "structure",
    id = "Target",
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
        InputTransformer = M.InputTransformer,
        KinesisParameters = M.KinesisParameters,
        RunCommandParameters = M.RunCommandParameters,
        EcsParameters = M.EcsParameters,
        BatchParameters = M.BatchParameters,
        SqsParameters = M.SqsParameters,
        HttpParameters = M.HttpParameters,
        RedshiftDataParameters = M.RedshiftDataParameters,
        SageMakerPipelineParameters = M.SageMakerPipelineParameters,
        DeadLetterConfig = M.DeadLetterConfig,
        RetryPolicy = M.RetryPolicy,
        AppSyncParameters = M.AppSyncParameters,
    },
}

M.ListTargetsByRuleOutput = {
    type = "structure",
    id = "ListTargetsByRuleOutput",
    members = {
        Targets = {
            type = "list",
            member = M.Target,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PutEventsRequestEntry = {
    type = "structure",
    id = "PutEventsRequestEntry",
    members = {
        Time = {
            type = "timestamp",
        },
        Source = {
            type = "string",
        },
        Resources = {
            type = "list",
            member = { type = "string" },
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
    id = "PutEventsInput",
    members = {
        Entries = {
            type = "list",
            member = M.PutEventsRequestEntry,
            traits = {
                required = true,
            },
        },
        EndpointId = {
            type = "string",
        },
    },
}

M.PutEventsResultEntry = {
    type = "structure",
    id = "PutEventsResultEntry",
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
    id = "PutEventsOutput",
    members = {
        FailedEntryCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Entries = {
            type = "list",
            member = M.PutEventsResultEntry,
        },
    },
}

M.PutPartnerEventsRequestEntry = {
    type = "structure",
    id = "PutPartnerEventsRequestEntry",
    members = {
        Time = {
            type = "timestamp",
        },
        Source = {
            type = "string",
        },
        Resources = {
            type = "list",
            member = { type = "string" },
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
    id = "PutPartnerEventsInput",
    members = {
        Entries = {
            type = "list",
            member = M.PutPartnerEventsRequestEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.PutPartnerEventsResultEntry = {
    type = "structure",
    id = "PutPartnerEventsResultEntry",
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
    id = "PutPartnerEventsOutput",
    members = {
        FailedEntryCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Entries = {
            type = "list",
            member = M.PutPartnerEventsResultEntry,
        },
    },
}

M.PolicyLengthExceededException = {
    type = "structure",
    id = "PolicyLengthExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Condition = {
    type = "structure",
    id = "Condition",
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
    id = "PutPermissionInput",
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
        Condition = M.Condition,
        Policy = {
            type = "string",
        },
    },
}

M.PutPermissionOutput = {
    type = "structure",
    id = "PutPermissionOutput",
}

M.PutRuleInput = {
    type = "structure",
    id = "PutRuleInput",
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
            member = M.Tag,
        },
        EventBusName = {
            type = "string",
        },
    },
}

M.PutRuleOutput = {
    type = "structure",
    id = "PutRuleOutput",
    members = {
        RuleArn = {
            type = "string",
        },
    },
}

M.PutTargetsInput = {
    type = "structure",
    id = "PutTargetsInput",
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
            member = M.Target,
            traits = {
                required = true,
            },
        },
    },
}

M.PutTargetsResultEntry = {
    type = "structure",
    id = "PutTargetsResultEntry",
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
    id = "PutTargetsOutput",
    members = {
        FailedEntryCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        FailedEntries = {
            type = "list",
            member = M.PutTargetsResultEntry,
        },
    },
}

M.RemovePermissionInput = {
    type = "structure",
    id = "RemovePermissionInput",
    members = {
        StatementId = {
            type = "string",
        },
        RemoveAllPermissions = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        EventBusName = {
            type = "string",
        },
    },
}

M.RemovePermissionOutput = {
    type = "structure",
    id = "RemovePermissionOutput",
}

M.RemoveTargetsInput = {
    type = "structure",
    id = "RemoveTargetsInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Force = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.RemoveTargetsResultEntry = {
    type = "structure",
    id = "RemoveTargetsResultEntry",
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
    id = "RemoveTargetsOutput",
    members = {
        FailedEntryCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        FailedEntries = {
            type = "list",
            member = M.RemoveTargetsResultEntry,
        },
    },
}

M.StartReplayInput = {
    type = "structure",
    id = "StartReplayInput",
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
        Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReplayDestination }),
    },
}

M.StartReplayOutput = {
    type = "structure",
    id = "StartReplayOutput",
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
    id = "TagResourceInput",
    members = {
        ResourceARN = {
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

M.TestEventPatternInput = {
    type = "structure",
    id = "TestEventPatternInput",
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
    id = "TestEventPatternOutput",
    members = {
        Result = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        ResourceARN = {
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

M.UpdateApiDestinationInput = {
    type = "structure",
    id = "UpdateApiDestinationInput",
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
            type = "integer",
        },
    },
}

M.UpdateApiDestinationOutput = {
    type = "structure",
    id = "UpdateApiDestinationOutput",
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
    id = "UpdateArchiveInput",
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
            type = "integer",
        },
        KmsKeyIdentifier = {
            type = "string",
        },
    },
}

M.UpdateArchiveOutput = {
    type = "structure",
    id = "UpdateArchiveOutput",
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
    id = "UpdateConnectionApiKeyAuthRequestParameters",
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
    id = "UpdateConnectionBasicAuthRequestParameters",
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
    id = "UpdateConnectionOAuthClientRequestParameters",
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
    id = "UpdateConnectionOAuthRequestParameters",
    members = {
        ClientParameters = M.UpdateConnectionOAuthClientRequestParameters,
        AuthorizationEndpoint = {
            type = "string",
        },
        HttpMethod = {
            type = "string",
        },
        OAuthHttpParameters = M.ConnectionHttpParameters,
    },
}

M.UpdateConnectionAuthRequestParameters = {
    type = "structure",
    id = "UpdateConnectionAuthRequestParameters",
    members = {
        BasicAuthParameters = M.UpdateConnectionBasicAuthRequestParameters,
        OAuthParameters = M.UpdateConnectionOAuthRequestParameters,
        ApiKeyAuthParameters = M.UpdateConnectionApiKeyAuthRequestParameters,
        InvocationHttpParameters = M.ConnectionHttpParameters,
        ConnectivityParameters = M.ConnectivityResourceParameters,
    },
}

M.UpdateConnectionInput = {
    type = "structure",
    id = "UpdateConnectionInput",
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
        AuthParameters = M.UpdateConnectionAuthRequestParameters,
        InvocationConnectivityParameters = M.ConnectivityResourceParameters,
        KmsKeyIdentifier = {
            type = "string",
        },
    },
}

M.UpdateConnectionOutput = {
    type = "structure",
    id = "UpdateConnectionOutput",
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

M.UpdateEndpointInput = {
    type = "structure",
    id = "UpdateEndpointInput",
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
        RoutingConfig = M.RoutingConfig,
        ReplicationConfig = M.ReplicationConfig,
        EventBuses = {
            type = "list",
            member = M.EndpointEventBus,
        },
        RoleArn = {
            type = "string",
        },
    },
}

M.UpdateEndpointOutput = {
    type = "structure",
    id = "UpdateEndpointOutput",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        RoutingConfig = M.RoutingConfig,
        ReplicationConfig = M.ReplicationConfig,
        EventBuses = {
            type = "list",
            member = M.EndpointEventBus,
        },
        RoleArn = {
            type = "string",
        },
        EndpointId = {
            type = "string",
        },
        EndpointUrl = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.UpdateEventBusInput = {
    type = "structure",
    id = "UpdateEventBusInput",
    members = {
        Name = {
            type = "string",
        },
        KmsKeyIdentifier = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DeadLetterConfig = M.DeadLetterConfig,
        LogConfig = M.LogConfig,
    },
}

M.UpdateEventBusOutput = {
    type = "structure",
    id = "UpdateEventBusOutput",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        KmsKeyIdentifier = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DeadLetterConfig = M.DeadLetterConfig,
        LogConfig = M.LogConfig,
    },
}

return M
