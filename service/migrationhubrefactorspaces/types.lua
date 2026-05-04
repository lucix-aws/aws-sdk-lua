local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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
    id = "ApiGatewayProxyConfig",
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
    id = "ApiGatewayProxyInput",
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
    id = "ApiGatewayProxySummary",
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
    id = "ErrorResponse",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ProxyType = {
    API_GATEWAY = "API_GATEWAY",
}

M.ApplicationSummary = {
    type = "structure",
    id = "ApplicationSummary",
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
        ApiGatewayProxy = M.ApiGatewayProxySummary,
        State = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Error = M.ErrorResponse,
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
    id = "ConflictException",
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
    id = "CreateApplicationInput",
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
        ApiGatewayProxy = M.ApiGatewayProxyInput,
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
    },
}

M.CreateApplicationOutput = {
    type = "structure",
    id = "CreateApplicationOutput",
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
        ApiGatewayProxy = M.ApiGatewayProxyInput,
        State = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "InternalServerException",
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
    id = "ResourceNotFoundException",
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
    id = "ServiceQuotaExceededException",
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
    id = "ThrottlingException",
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
            type = "integer",
            traits = {
                default = 0,
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
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
    id = "CreateEnvironmentInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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
    id = "CreateEnvironmentOutput",
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
            key = { type = "string" },
            value = { type = "string" },
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
    id = "DefaultRouteInput",
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
    id = "UriPathRouteInput",
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
            member = { type = "string" },
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
    id = "CreateRouteInput",
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
        DefaultRoute = M.DefaultRouteInput,
        UriPathRoute = M.UriPathRouteInput,
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
    id = "CreateRouteOutput",
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
        UriPathRoute = M.UriPathRouteInput,
        State = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "LambdaEndpointInput",
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
    id = "UrlEndpointInput",
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
    id = "CreateServiceInput",
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
        UrlEndpoint = M.UrlEndpointInput,
        LambdaEndpoint = M.LambdaEndpointInput,
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
    id = "CreateServiceOutput",
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
        UrlEndpoint = M.UrlEndpointInput,
        LambdaEndpoint = M.LambdaEndpointInput,
        State = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "DeleteApplicationInput",
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
    id = "DeleteApplicationOutput",
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
    id = "DeleteEnvironmentInput",
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
    id = "DeleteEnvironmentOutput",
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
    id = "DeleteResourcePolicyInput",
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
    id = "DeleteResourcePolicyOutput",
}

M.DeleteRouteInput = {
    type = "structure",
    id = "DeleteRouteInput",
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
    id = "DeleteRouteOutput",
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
    id = "DeleteServiceInput",
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
    id = "DeleteServiceOutput",
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
    id = "EnvironmentSummary",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        Error = M.ErrorResponse,
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
    id = "EnvironmentVpc",
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
            member = { type = "string" },
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
    id = "GetApplicationInput",
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
    id = "GetApplicationOutput",
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
        ApiGatewayProxy = M.ApiGatewayProxyConfig,
        State = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Error = M.ErrorResponse,
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
    id = "GetEnvironmentInput",
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
    id = "GetEnvironmentOutput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        Error = M.ErrorResponse,
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
    id = "GetResourcePolicyInput",
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
    id = "GetResourcePolicyOutput",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.GetRouteInput = {
    type = "structure",
    id = "GetRouteInput",
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
    id = "GetRouteOutput",
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
            member = { type = "string" },
        },
        IncludeChildPaths = {
            type = "boolean",
        },
        PathResourceToId = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        State = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Error = M.ErrorResponse,
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
    id = "GetServiceInput",
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
    id = "LambdaEndpointConfig",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.UrlEndpointConfig = {
    type = "structure",
    id = "UrlEndpointConfig",
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
    id = "GetServiceOutput",
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
        UrlEndpoint = M.UrlEndpointConfig,
        LambdaEndpoint = M.LambdaEndpointConfig,
        State = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Error = M.ErrorResponse,
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
    id = "InvalidResourcePolicyException",
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
    id = "LambdaEndpointSummary",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.ListApplicationsInput = {
    type = "structure",
    id = "ListApplicationsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListApplicationsOutput = {
    type = "structure",
    id = "ListApplicationsOutput",
    members = {
        ApplicationSummaryList = {
            type = "list",
            member = M.ApplicationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEnvironmentsInput = {
    type = "structure",
    id = "ListEnvironmentsInput",
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

M.ListEnvironmentsOutput = {
    type = "structure",
    id = "ListEnvironmentsOutput",
    members = {
        EnvironmentSummaryList = {
            type = "list",
            member = M.EnvironmentSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEnvironmentVpcsInput = {
    type = "structure",
    id = "ListEnvironmentVpcsInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListEnvironmentVpcsOutput = {
    type = "structure",
    id = "ListEnvironmentVpcsOutput",
    members = {
        EnvironmentVpcList = {
            type = "list",
            member = M.EnvironmentVpc,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRoutesInput = {
    type = "structure",
    id = "ListRoutesInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.RouteSummary = {
    type = "structure",
    id = "RouteSummary",
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
            member = { type = "string" },
        },
        IncludeChildPaths = {
            type = "boolean",
        },
        PathResourceToId = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        State = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Error = M.ErrorResponse,
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
    id = "ListRoutesOutput",
    members = {
        RouteSummaryList = {
            type = "list",
            member = M.RouteSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListServicesInput = {
    type = "structure",
    id = "ListServicesInput",
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
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.UrlEndpointSummary = {
    type = "structure",
    id = "UrlEndpointSummary",
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
    id = "ServiceSummary",
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
        UrlEndpoint = M.UrlEndpointSummary,
        LambdaEndpoint = M.LambdaEndpointSummary,
        State = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Error = M.ErrorResponse,
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
    id = "ListServicesOutput",
    members = {
        ServiceSummaryList = {
            type = "list",
            member = M.ServiceSummary,
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
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    id = "PutResourcePolicyInput",
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
    id = "PutResourcePolicyOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
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

M.UpdateRouteInput = {
    type = "structure",
    id = "UpdateRouteInput",
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
    id = "UpdateRouteOutput",
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
