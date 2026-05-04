local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ApiGatewayEndpointType = {
    REGIONAL = "REGIONAL",
    PRIVATE = "PRIVATE",
}

M.ApiGatewayProxyConfig = {
    type = "structure",
    members = {
        ProxyUrl = {
            type = "string",
        },
        ApiGatewayId = {
            type = "string",
        },
        VpcLinkId = {
            type = "string",
        },
        NlbArn = {
            type = "string",
        },
        NlbName = {
            type = "string",
        },
        EndpointType = {
            type = "string",
        },
        StageName = {
            type = "string",
        },
    },
}

M.ApiGatewayProxyInput = {
    type = "structure",
    members = {
        EndpointType = {
            type = "string",
        },
        StageName = {
            type = "string",
        },
    },
}

M.ApiGatewayProxySummary = {
    type = "structure",
    members = {
        ProxyUrl = {
            type = "string",
        },
        ApiGatewayId = {
            type = "string",
        },
        VpcLinkId = {
            type = "string",
        },
        NlbArn = {
            type = "string",
        },
        NlbName = {
            type = "string",
        },
        EndpointType = {
            type = "string",
        },
        StageName = {
            type = "string",
        },
    },
}

M.ApplicationState = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    FAILED = "FAILED",
    UPDATING = "UPDATING",
}

M.ErrorCode = {
    INVALID_RESOURCE_STATE = "INVALID_RESOURCE_STATE",
    RESOURCE_LIMIT_EXCEEDED = "RESOURCE_LIMIT_EXCEEDED",
    RESOURCE_CREATION_FAILURE = "RESOURCE_CREATION_FAILURE",
    RESOURCE_UPDATE_FAILURE = "RESOURCE_UPDATE_FAILURE",
    SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE = "SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE",
    RESOURCE_DELETION_FAILURE = "RESOURCE_DELETION_FAILURE",
    RESOURCE_RETRIEVAL_FAILURE = "RESOURCE_RETRIEVAL_FAILURE",
    RESOURCE_IN_USE = "RESOURCE_IN_USE",
    RESOURCE_NOT_FOUND = "RESOURCE_NOT_FOUND",
    STATE_TRANSITION_FAILURE = "STATE_TRANSITION_FAILURE",
    REQUEST_LIMIT_EXCEEDED = "REQUEST_LIMIT_EXCEEDED",
    NOT_AUTHORIZED = "NOT_AUTHORIZED",
}

M.ErrorResourceType = {
    ENVIRONMENT = "ENVIRONMENT",
    APPLICATION = "APPLICATION",
    ROUTE = "ROUTE",
    SERVICE = "SERVICE",
    TRANSIT_GATEWAY = "TRANSIT_GATEWAY",
    TRANSIT_GATEWAY_ATTACHMENT = "TRANSIT_GATEWAY_ATTACHMENT",
    API_GATEWAY = "API_GATEWAY",
    NLB = "NLB",
    TARGET_GROUP = "TARGET_GROUP",
    LOAD_BALANCER_LISTENER = "LOAD_BALANCER_LISTENER",
    VPC_LINK = "VPC_LINK",
    LAMBDA = "LAMBDA",
    VPC = "VPC",
    SUBNET = "SUBNET",
    ROUTE_TABLE = "ROUTE_TABLE",
    SECURITY_GROUP = "SECURITY_GROUP",
    VPC_ENDPOINT_SERVICE_CONFIGURATION = "VPC_ENDPOINT_SERVICE_CONFIGURATION",
    RESOURCE_SHARE = "RESOURCE_SHARE",
    IAM_ROLE = "IAM_ROLE",
}

M.ErrorResponse = {
    type = "structure",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        ResourceIdentifier = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        AdditionalDetails = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ProxyType = {
    API_GATEWAY = "API_GATEWAY",
}

M.ApplicationSummary = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
        CreatedByAccountId = {
            type = "string",
        },
        ApplicationId = {
            type = "string",
        },
        EnvironmentId = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        ProxyType = {
            type = "string",
        },
        ApiGatewayProxy = {
            type = "structure",
        },
        State = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Error = {
            type = "structure",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        CreatedTime = {
            type = "timestamp",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
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
        EnvironmentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProxyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApiGatewayProxy = {
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
    },
}

M.CreateApplicationOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
        CreatedByAccountId = {
            type = "string",
        },
        ApplicationId = {
            type = "string",
        },
        EnvironmentId = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        ProxyType = {
            type = "string",
        },
        ApiGatewayProxy = {
            type = "structure",
        },
        State = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        CreatedTime = {
            type = "timestamp",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QuotaCode = {
            type = "string",
        },
        ServiceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QuotaCode = {
            type = "string",
        },
        ServiceCode = {
            type = "string",
        },
        RetryAfterSeconds = {
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NetworkFabricType = {
    TRANSIT_GATEWAY = "TRANSIT_GATEWAY",
    NONE = "NONE",
}

M.CreateEnvironmentInput = {
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
        NetworkFabricType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.EnvironmentState = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.CreateEnvironmentOutput = {
    type = "structure",
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
        EnvironmentId = {
            type = "string",
        },
        NetworkFabricType = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        CreatedTime = {
            type = "timestamp",
        },
    },
}

M.RouteActivationState = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.DefaultRouteInput = {
    type = "structure",
    members = {
        ActivationState = {
            type = "string",
        },
    },
}

M.RouteType = {
    DEFAULT = "DEFAULT",
    URI_PATH = "URI_PATH",
}

M.HttpMethod = {
    DELETE = "DELETE",
    GET = "GET",
    HEAD = "HEAD",
    OPTIONS = "OPTIONS",
    PATCH = "PATCH",
    POST = "POST",
    PUT = "PUT",
}

M.UriPathRouteInput = {
    type = "structure",
    members = {
        SourcePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActivationState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Methods = {
            type = "list",
            member_type = "string",
        },
        IncludeChildPaths = {
            type = "boolean",
        },
        AppendSourcePath = {
            type = "boolean",
        },
    },
}

M.CreateRouteInput = {
    type = "structure",
    members = {
        EnvironmentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ApplicationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ServiceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RouteType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultRoute = {
            type = "structure",
        },
        UriPathRoute = {
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
    },
}

M.RouteState = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    FAILED = "FAILED",
    UPDATING = "UPDATING",
    INACTIVE = "INACTIVE",
}

M.CreateRouteOutput = {
    type = "structure",
    members = {
        RouteId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
        CreatedByAccountId = {
            type = "string",
        },
        RouteType = {
            type = "string",
        },
        ServiceId = {
            type = "string",
        },
        ApplicationId = {
            type = "string",
        },
        UriPathRoute = {
            type = "structure",
        },
        State = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        CreatedTime = {
            type = "timestamp",
        },
    },
}

M.ServiceEndpointType = {
    LAMBDA = "LAMBDA",
    URL = "URL",
}

M.LambdaEndpointInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UrlEndpointInput = {
    type = "structure",
    members = {
        Url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HealthUrl = {
            type = "string",
        },
    },
}

M.CreateServiceInput = {
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
        EnvironmentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ApplicationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VpcId = {
            type = "string",
        },
        EndpointType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UrlEndpoint = {
            type = "structure",
        },
        LambdaEndpoint = {
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
    },
}

M.ServiceState = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.CreateServiceOutput = {
    type = "structure",
    members = {
        ServiceId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
        CreatedByAccountId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EnvironmentId = {
            type = "string",
        },
        ApplicationId = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        EndpointType = {
            type = "string",
        },
        UrlEndpoint = {
            type = "structure",
        },
        LambdaEndpoint = {
            type = "structure",
        },
        State = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        CreatedTime = {
            type = "timestamp",
        },
    },
}

M.DeleteApplicationInput = {
    type = "structure",
    members = {
        EnvironmentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ApplicationIdentifier = {
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
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        ApplicationId = {
            type = "string",
        },
        EnvironmentId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.DeleteEnvironmentInput = {
    type = "structure",
    members = {
        EnvironmentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEnvironmentOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        EnvironmentId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.DeleteResourcePolicyInput = {
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

M.DeleteResourcePolicyOutput = {
    type = "structure",
}

M.DeleteRouteInput = {
    type = "structure",
    members = {
        EnvironmentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ApplicationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RouteIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRouteOutput = {
    type = "structure",
    members = {
        RouteId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        ServiceId = {
            type = "string",
        },
        ApplicationId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.DeleteServiceInput = {
    type = "structure",
    members = {
        EnvironmentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ApplicationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ServiceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteServiceOutput = {
    type = "structure",
    members = {
        ServiceId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        EnvironmentId = {
            type = "string",
        },
        ApplicationId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.EnvironmentSummary = {
    type = "structure",
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
        EnvironmentId = {
            type = "string",
        },
        NetworkFabricType = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
        TransitGatewayId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Error = {
            type = "structure",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        CreatedTime = {
            type = "timestamp",
        },
    },
}

M.EnvironmentVpc = {
    type = "structure",
    members = {
        EnvironmentId = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        CidrBlocks = {
            type = "list",
            member_type = "string",
        },
        VpcName = {
            type = "string",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        CreatedTime = {
            type = "timestamp",
        },
    },
}

M.GetApplicationInput = {
    type = "structure",
    members = {
        EnvironmentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ApplicationIdentifier = {
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
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
        CreatedByAccountId = {
            type = "string",
        },
        ApplicationId = {
            type = "string",
        },
        EnvironmentId = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        ProxyType = {
            type = "string",
        },
        ApiGatewayProxy = {
            type = "structure",
        },
        State = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Error = {
            type = "structure",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        CreatedTime = {
            type = "timestamp",
        },
    },
}

M.GetEnvironmentInput = {
    type = "structure",
    members = {
        EnvironmentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetEnvironmentOutput = {
    type = "structure",
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
        EnvironmentId = {
            type = "string",
        },
        NetworkFabricType = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
        TransitGatewayId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Error = {
            type = "structure",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        CreatedTime = {
            type = "timestamp",
        },
    },
}

M.GetResourcePolicyInput = {
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

M.GetResourcePolicyOutput = {
    type = "structure",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.GetRouteInput = {
    type = "structure",
    members = {
        EnvironmentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ApplicationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RouteIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetRouteOutput = {
    type = "structure",
    members = {
        RouteId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
        CreatedByAccountId = {
            type = "string",
        },
        RouteType = {
            type = "string",
        },
        ServiceId = {
            type = "string",
        },
        ApplicationId = {
            type = "string",
        },
        EnvironmentId = {
            type = "string",
        },
        SourcePath = {
            type = "string",
        },
        Methods = {
            type = "list",
            member_type = "string",
        },
        IncludeChildPaths = {
            type = "boolean",
        },
        PathResourceToId = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        State = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Error = {
            type = "structure",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        CreatedTime = {
            type = "timestamp",
        },
        AppendSourcePath = {
            type = "boolean",
        },
    },
}

M.GetServiceInput = {
    type = "structure",
    members = {
        EnvironmentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ApplicationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ServiceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.LambdaEndpointConfig = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.UrlEndpointConfig = {
    type = "structure",
    members = {
        Url = {
            type = "string",
        },
        HealthUrl = {
            type = "string",
        },
    },
}

M.GetServiceOutput = {
    type = "structure",
    members = {
        ServiceId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
        CreatedByAccountId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EnvironmentId = {
            type = "string",
        },
        ApplicationId = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        EndpointType = {
            type = "string",
        },
        UrlEndpoint = {
            type = "structure",
        },
        LambdaEndpoint = {
            type = "structure",
        },
        State = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Error = {
            type = "structure",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        CreatedTime = {
            type = "timestamp",
        },
    },
}

M.InvalidResourcePolicyException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LambdaEndpointSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.ListApplicationsInput = {
    type = "structure",
    members = {
        EnvironmentIdentifier = {
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

M.ListApplicationsOutput = {
    type = "structure",
    members = {
        ApplicationSummaryList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEnvironmentsInput = {
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

M.ListEnvironmentsOutput = {
    type = "structure",
    members = {
        EnvironmentSummaryList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEnvironmentVpcsInput = {
    type = "structure",
    members = {
        EnvironmentIdentifier = {
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

M.ListEnvironmentVpcsOutput = {
    type = "structure",
    members = {
        EnvironmentVpcList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRoutesInput = {
    type = "structure",
    members = {
        EnvironmentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ApplicationIdentifier = {
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

M.RouteSummary = {
    type = "structure",
    members = {
        RouteId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
        CreatedByAccountId = {
            type = "string",
        },
        RouteType = {
            type = "string",
        },
        ServiceId = {
            type = "string",
        },
        ApplicationId = {
            type = "string",
        },
        EnvironmentId = {
            type = "string",
        },
        SourcePath = {
            type = "string",
        },
        Methods = {
            type = "list",
            member_type = "string",
        },
        IncludeChildPaths = {
            type = "boolean",
        },
        PathResourceToId = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        State = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Error = {
            type = "structure",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        CreatedTime = {
            type = "timestamp",
        },
        AppendSourcePath = {
            type = "boolean",
        },
    },
}

M.ListRoutesOutput = {
    type = "structure",
    members = {
        RouteSummaryList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListServicesInput = {
    type = "structure",
    members = {
        EnvironmentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ApplicationIdentifier = {
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

M.UrlEndpointSummary = {
    type = "structure",
    members = {
        Url = {
            type = "string",
        },
        HealthUrl = {
            type = "string",
        },
    },
}

M.ServiceSummary = {
    type = "structure",
    members = {
        ServiceId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
        CreatedByAccountId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        EnvironmentId = {
            type = "string",
        },
        ApplicationId = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        EndpointType = {
            type = "string",
        },
        UrlEndpoint = {
            type = "structure",
        },
        LambdaEndpoint = {
            type = "structure",
        },
        State = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Error = {
            type = "structure",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        CreatedTime = {
            type = "timestamp",
        },
    },
}

M.ListServicesOutput = {
    type = "structure",
    members = {
        ServiceSummaryList = {
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
        ResourceArn = {
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
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
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
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
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

M.UpdateRouteInput = {
    type = "structure",
    members = {
        EnvironmentIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ApplicationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RouteIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ActivationState = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRouteOutput = {
    type = "structure",
    members = {
        RouteId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        ServiceId = {
            type = "string",
        },
        ApplicationId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

return M
