local M = {}

M.JsonFormatRef = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LoggingFormat = {
    type = "union",
    members = {
        text = {
            type = "string",
        },
        json = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.FileAccessLog = {
    type = "structure",
    members = {
        path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        format = {
            type = "union",
        },
    },
}

M.AccessLog = {
    type = "union",
    members = {
        file = {
            type = "structure",
        },
    },
}

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ForbiddenException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalServerErrorException = {
    type = "structure",
    error = "server",
    members = {
        message = {
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
                http_query = "resourceArn",
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        limit = {
            type = "number",
            traits = {
                http_query = "limit",
            },
        },
    },
}

M.TagRef = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
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
        tags = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.NotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EgressFilterType = {
    ALLOW_ALL = "ALLOW_ALL",
    DROP_ALL = "DROP_ALL",
}

M.EgressFilter = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IpPreference = {
    IPv6_PREFERRED = "IPv6_PREFERRED",
    IPv4_PREFERRED = "IPv4_PREFERRED",
    IPv4_ONLY = "IPv4_ONLY",
    IPv6_ONLY = "IPv6_ONLY",
}

M.MeshServiceDiscovery = {
    type = "structure",
    members = {
        ipPreference = {
            type = "string",
        },
    },
}

M.MeshSpec = {
    type = "structure",
    members = {
        egressFilter = {
            type = "structure",
        },
        serviceDiscovery = {
            type = "structure",
        },
    },
}

M.CreateMeshInput = {
    type = "structure",
    members = {
        meshName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        spec = {
            type = "structure",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.ResourceMetadata = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "number",
            traits = {
                required = true,
            },
        },
        uid = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        meshOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MeshStatusCode = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DELETED = "DELETED",
}

M.MeshStatus = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
    },
}

M.MeshData = {
    type = "structure",
    members = {
        meshName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        spec = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        metadata = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateMeshOutput = {
    type = "structure",
    members = {
        mesh = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
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

M.DeleteMeshInput = {
    type = "structure",
    members = {
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMeshOutput = {
    type = "structure",
    members = {
        mesh = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeMeshInput = {
    type = "structure",
    members = {
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.DescribeMeshOutput = {
    type = "structure",
    members = {
        mesh = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.ListMeshesInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        limit = {
            type = "number",
            traits = {
                http_query = "limit",
            },
        },
    },
}

M.MeshRef = {
    type = "structure",
    members = {
        meshName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        meshOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "number",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListMeshesOutput = {
    type = "structure",
    members = {
        meshes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateMeshInput = {
    type = "structure",
    members = {
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        spec = {
            type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateMeshOutput = {
    type = "structure",
    members = {
        mesh = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.VirtualGatewayListenerTlsFileCertificate = {
    type = "structure",
    members = {
        certificateChain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        privateKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VirtualGatewayListenerTlsSdsCertificate = {
    type = "structure",
    members = {
        secretName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VirtualGatewayClientTlsCertificate = {
    type = "union",
    members = {
        file = {
            type = "structure",
        },
        sds = {
            type = "structure",
        },
    },
}

M.SubjectAlternativeNameMatchers = {
    type = "structure",
    members = {
        exact = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SubjectAlternativeNames = {
    type = "structure",
    members = {
        match = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.VirtualGatewayTlsValidationContextAcmTrust = {
    type = "structure",
    members = {
        certificateAuthorityArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VirtualGatewayTlsValidationContextFileTrust = {
    type = "structure",
    members = {
        certificateChain = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VirtualGatewayTlsValidationContextSdsTrust = {
    type = "structure",
    members = {
        secretName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VirtualGatewayTlsValidationContextTrust = {
    type = "union",
    members = {
        acm = {
            type = "structure",
        },
        file = {
            type = "structure",
        },
        sds = {
            type = "structure",
        },
    },
}

M.VirtualGatewayTlsValidationContext = {
    type = "structure",
    members = {
        trust = {
            type = "union",
            traits = {
                required = true,
            },
        },
        subjectAlternativeNames = {
            type = "structure",
        },
    },
}

M.VirtualGatewayClientPolicyTls = {
    type = "structure",
    members = {
        enforce = {
            type = "boolean",
        },
        ports = {
            type = "list",
            member_type = "number",
        },
        certificate = {
            type = "union",
        },
        validation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.VirtualGatewayClientPolicy = {
    type = "structure",
    members = {
        tls = {
            type = "structure",
        },
    },
}

M.VirtualGatewayBackendDefaults = {
    type = "structure",
    members = {
        clientPolicy = {
            type = "structure",
        },
    },
}

M.VirtualGatewayGrpcConnectionPool = {
    type = "structure",
    members = {
        maxRequests = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.VirtualGatewayHttpConnectionPool = {
    type = "structure",
    members = {
        maxConnections = {
            type = "number",
            traits = {
                required = true,
            },
        },
        maxPendingRequests = {
            type = "number",
        },
    },
}

M.VirtualGatewayHttp2ConnectionPool = {
    type = "structure",
    members = {
        maxRequests = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.VirtualGatewayConnectionPool = {
    type = "union",
    members = {
        http = {
            type = "structure",
        },
        http2 = {
            type = "structure",
        },
        grpc = {
            type = "structure",
        },
    },
}

M.VirtualGatewayPortProtocol = {
    HTTP = "http",
    HTTP2 = "http2",
    GRPC = "grpc",
}

M.VirtualGatewayHealthCheckPolicy = {
    type = "structure",
    members = {
        timeoutMillis = {
            type = "number",
            traits = {
                required = true,
            },
        },
        intervalMillis = {
            type = "number",
            traits = {
                required = true,
            },
        },
        protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        port = {
            type = "number",
        },
        path = {
            type = "string",
        },
        healthyThreshold = {
            type = "number",
            traits = {
                required = true,
            },
        },
        unhealthyThreshold = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.VirtualGatewayPortMapping = {
    type = "structure",
    members = {
        port = {
            type = "number",
            traits = {
                required = true,
            },
        },
        protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VirtualGatewayListenerTlsAcmCertificate = {
    type = "structure",
    members = {
        certificateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VirtualGatewayListenerTlsCertificate = {
    type = "union",
    members = {
        acm = {
            type = "structure",
        },
        file = {
            type = "structure",
        },
        sds = {
            type = "structure",
        },
    },
}

M.VirtualGatewayListenerTlsMode = {
    STRICT = "STRICT",
    PERMISSIVE = "PERMISSIVE",
    DISABLED = "DISABLED",
}

M.VirtualGatewayListenerTlsValidationContextTrust = {
    type = "union",
    members = {
        file = {
            type = "structure",
        },
        sds = {
            type = "structure",
        },
    },
}

M.VirtualGatewayListenerTlsValidationContext = {
    type = "structure",
    members = {
        trust = {
            type = "union",
            traits = {
                required = true,
            },
        },
        subjectAlternativeNames = {
            type = "structure",
        },
    },
}

M.VirtualGatewayListenerTls = {
    type = "structure",
    members = {
        mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        validation = {
            type = "structure",
        },
        certificate = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.VirtualGatewayListener = {
    type = "structure",
    members = {
        healthCheck = {
            type = "structure",
        },
        portMapping = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tls = {
            type = "structure",
        },
        connectionPool = {
            type = "union",
        },
    },
}

M.VirtualGatewayFileAccessLog = {
    type = "structure",
    members = {
        path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        format = {
            type = "union",
        },
    },
}

M.VirtualGatewayAccessLog = {
    type = "union",
    members = {
        file = {
            type = "structure",
        },
    },
}

M.VirtualGatewayLogging = {
    type = "structure",
    members = {
        accessLog = {
            type = "union",
        },
    },
}

M.VirtualGatewaySpec = {
    type = "structure",
    members = {
        backendDefaults = {
            type = "structure",
        },
        listeners = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        logging = {
            type = "structure",
        },
    },
}

M.CreateVirtualGatewayInput = {
    type = "structure",
    members = {
        virtualGatewayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        spec = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        clientToken = {
            type = "string",
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.VirtualGatewayStatusCode = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DELETED = "DELETED",
}

M.VirtualGatewayStatus = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VirtualGatewayData = {
    type = "structure",
    members = {
        meshName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        virtualGatewayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        spec = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        metadata = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateVirtualGatewayOutput = {
    type = "structure",
    members = {
        virtualGateway = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteVirtualGatewayInput = {
    type = "structure",
    members = {
        virtualGatewayName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.DeleteVirtualGatewayOutput = {
    type = "structure",
    members = {
        virtualGateway = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DescribeVirtualGatewayInput = {
    type = "structure",
    members = {
        virtualGatewayName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.DescribeVirtualGatewayOutput = {
    type = "structure",
    members = {
        virtualGateway = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DefaultGatewayRouteRewrite = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.GatewayRouteHostnameRewrite = {
    type = "structure",
    members = {
        defaultTargetHostname = {
            type = "string",
        },
    },
}

M.GrpcGatewayRouteRewrite = {
    type = "structure",
    members = {
        hostname = {
            type = "structure",
        },
    },
}

M.GatewayRouteVirtualService = {
    type = "structure",
    members = {
        virtualServiceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GatewayRouteTarget = {
    type = "structure",
    members = {
        virtualService = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        port = {
            type = "number",
        },
    },
}

M.GrpcGatewayRouteAction = {
    type = "structure",
    members = {
        target = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        rewrite = {
            type = "structure",
        },
    },
}

M.GatewayRouteHostnameMatch = {
    type = "structure",
    members = {
        exact = {
            type = "string",
        },
        suffix = {
            type = "string",
        },
    },
}

M.MatchRange = {
    type = "structure",
    members = {
        start = {
            type = "number",
            traits = {
                required = true,
            },
        },
        end = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.GrpcMetadataMatchMethod = {
    type = "union",
    members = {
        exact = {
            type = "string",
        },
        regex = {
            type = "string",
        },
        range = {
            type = "structure",
        },
        prefix = {
            type = "string",
        },
        suffix = {
            type = "string",
        },
    },
}

M.GrpcGatewayRouteMetadata = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        invert = {
            type = "boolean",
        },
        match = {
            type = "union",
        },
    },
}

M.GrpcGatewayRouteMatch = {
    type = "structure",
    members = {
        serviceName = {
            type = "string",
        },
        hostname = {
            type = "structure",
        },
        metadata = {
            type = "list",
            member_type = "structure",
        },
        port = {
            type = "number",
        },
    },
}

M.GrpcGatewayRoute = {
    type = "structure",
    members = {
        match = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        action = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.HttpGatewayRoutePathRewrite = {
    type = "structure",
    members = {
        exact = {
            type = "string",
        },
    },
}

M.HttpGatewayRoutePrefixRewrite = {
    type = "structure",
    members = {
        defaultPrefix = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.HttpGatewayRouteRewrite = {
    type = "structure",
    members = {
        prefix = {
            type = "structure",
        },
        path = {
            type = "structure",
        },
        hostname = {
            type = "structure",
        },
    },
}

M.HttpGatewayRouteAction = {
    type = "structure",
    members = {
        target = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        rewrite = {
            type = "structure",
        },
    },
}

M.HeaderMatchMethod = {
    type = "union",
    members = {
        exact = {
            type = "string",
        },
        regex = {
            type = "string",
        },
        range = {
            type = "structure",
        },
        prefix = {
            type = "string",
        },
        suffix = {
            type = "string",
        },
    },
}

M.HttpGatewayRouteHeader = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        invert = {
            type = "boolean",
        },
        match = {
            type = "union",
        },
    },
}

M.HttpMethod = {
    GET = "GET",
    HEAD = "HEAD",
    POST = "POST",
    PUT = "PUT",
    DELETE = "DELETE",
    CONNECT = "CONNECT",
    OPTIONS = "OPTIONS",
    TRACE = "TRACE",
    PATCH = "PATCH",
}

M.HttpPathMatch = {
    type = "structure",
    members = {
        exact = {
            type = "string",
        },
        regex = {
            type = "string",
        },
    },
}

M.QueryParameterMatch = {
    type = "structure",
    members = {
        exact = {
            type = "string",
        },
    },
}

M.HttpQueryParameter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        match = {
            type = "structure",
        },
    },
}

M.HttpGatewayRouteMatch = {
    type = "structure",
    members = {
        prefix = {
            type = "string",
        },
        path = {
            type = "structure",
        },
        queryParameters = {
            type = "list",
            member_type = "structure",
        },
        method = {
            type = "string",
        },
        hostname = {
            type = "structure",
        },
        headers = {
            type = "list",
            member_type = "structure",
        },
        port = {
            type = "number",
        },
    },
}

M.HttpGatewayRoute = {
    type = "structure",
    members = {
        match = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        action = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GatewayRouteSpec = {
    type = "structure",
    members = {
        priority = {
            type = "number",
        },
        httpRoute = {
            type = "structure",
        },
        http2Route = {
            type = "structure",
        },
        grpcRoute = {
            type = "structure",
        },
    },
}

M.CreateGatewayRouteInput = {
    type = "structure",
    members = {
        gatewayRouteName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        virtualGatewayName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        spec = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        clientToken = {
            type = "string",
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.GatewayRouteStatusCode = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DELETED = "DELETED",
}

M.GatewayRouteStatus = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GatewayRouteData = {
    type = "structure",
    members = {
        meshName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        gatewayRouteName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        virtualGatewayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        spec = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        metadata = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateGatewayRouteOutput = {
    type = "structure",
    members = {
        gatewayRoute = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteGatewayRouteInput = {
    type = "structure",
    members = {
        gatewayRouteName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        virtualGatewayName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.DeleteGatewayRouteOutput = {
    type = "structure",
    members = {
        gatewayRoute = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DescribeGatewayRouteInput = {
    type = "structure",
    members = {
        gatewayRouteName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        virtualGatewayName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.DescribeGatewayRouteOutput = {
    type = "structure",
    members = {
        gatewayRoute = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.ListGatewayRoutesInput = {
    type = "structure",
    members = {
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        virtualGatewayName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        limit = {
            type = "number",
            traits = {
                http_query = "limit",
            },
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.GatewayRouteRef = {
    type = "structure",
    members = {
        meshName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        gatewayRouteName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        virtualGatewayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        meshOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "number",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListGatewayRoutesOutput = {
    type = "structure",
    members = {
        gatewayRoutes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateGatewayRouteInput = {
    type = "structure",
    members = {
        gatewayRouteName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        virtualGatewayName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        spec = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.UpdateGatewayRouteOutput = {
    type = "structure",
    members = {
        gatewayRoute = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.ListVirtualGatewaysInput = {
    type = "structure",
    members = {
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        limit = {
            type = "number",
            traits = {
                http_query = "limit",
            },
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.VirtualGatewayRef = {
    type = "structure",
    members = {
        meshName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        virtualGatewayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        meshOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "number",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListVirtualGatewaysOutput = {
    type = "structure",
    members = {
        virtualGateways = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateVirtualGatewayInput = {
    type = "structure",
    members = {
        virtualGatewayName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        spec = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.UpdateVirtualGatewayOutput = {
    type = "structure",
    members = {
        virtualGateway = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.ListenerTlsFileCertificate = {
    type = "structure",
    members = {
        certificateChain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        privateKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListenerTlsSdsCertificate = {
    type = "structure",
    members = {
        secretName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ClientTlsCertificate = {
    type = "union",
    members = {
        file = {
            type = "structure",
        },
        sds = {
            type = "structure",
        },
    },
}

M.TlsValidationContextAcmTrust = {
    type = "structure",
    members = {
        certificateAuthorityArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TlsValidationContextFileTrust = {
    type = "structure",
    members = {
        certificateChain = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TlsValidationContextSdsTrust = {
    type = "structure",
    members = {
        secretName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TlsValidationContextTrust = {
    type = "union",
    members = {
        acm = {
            type = "structure",
        },
        file = {
            type = "structure",
        },
        sds = {
            type = "structure",
        },
    },
}

M.TlsValidationContext = {
    type = "structure",
    members = {
        trust = {
            type = "union",
            traits = {
                required = true,
            },
        },
        subjectAlternativeNames = {
            type = "structure",
        },
    },
}

M.ClientPolicyTls = {
    type = "structure",
    members = {
        enforce = {
            type = "boolean",
        },
        ports = {
            type = "list",
            member_type = "number",
        },
        certificate = {
            type = "union",
        },
        validation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ClientPolicy = {
    type = "structure",
    members = {
        tls = {
            type = "structure",
        },
    },
}

M.BackendDefaults = {
    type = "structure",
    members = {
        clientPolicy = {
            type = "structure",
        },
    },
}

M.VirtualServiceBackend = {
    type = "structure",
    members = {
        virtualServiceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientPolicy = {
            type = "structure",
        },
    },
}

M.Backend = {
    type = "union",
    members = {
        virtualService = {
            type = "structure",
        },
    },
}

M.VirtualNodeGrpcConnectionPool = {
    type = "structure",
    members = {
        maxRequests = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.VirtualNodeHttpConnectionPool = {
    type = "structure",
    members = {
        maxConnections = {
            type = "number",
            traits = {
                required = true,
            },
        },
        maxPendingRequests = {
            type = "number",
        },
    },
}

M.VirtualNodeHttp2ConnectionPool = {
    type = "structure",
    members = {
        maxRequests = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.VirtualNodeTcpConnectionPool = {
    type = "structure",
    members = {
        maxConnections = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.VirtualNodeConnectionPool = {
    type = "union",
    members = {
        tcp = {
            type = "structure",
        },
        http = {
            type = "structure",
        },
        http2 = {
            type = "structure",
        },
        grpc = {
            type = "structure",
        },
    },
}

M.PortProtocol = {
    HTTP = "http",
    TCP = "tcp",
    HTTP2 = "http2",
    GRPC = "grpc",
}

M.HealthCheckPolicy = {
    type = "structure",
    members = {
        timeoutMillis = {
            type = "number",
            traits = {
                required = true,
            },
        },
        intervalMillis = {
            type = "number",
            traits = {
                required = true,
            },
        },
        protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        port = {
            type = "number",
        },
        path = {
            type = "string",
        },
        healthyThreshold = {
            type = "number",
            traits = {
                required = true,
            },
        },
        unhealthyThreshold = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.DurationUnit = {
    S = "s",
    MS = "ms",
}

M.Duration = {
    type = "structure",
    members = {
        value = {
            type = "number",
        },
        unit = {
            type = "string",
        },
    },
}

M.OutlierDetection = {
    type = "structure",
    members = {
        maxServerErrors = {
            type = "number",
            traits = {
                required = true,
            },
        },
        interval = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        baseEjectionDuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        maxEjectionPercent = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.PortMapping = {
    type = "structure",
    members = {
        port = {
            type = "number",
            traits = {
                required = true,
            },
        },
        protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GrpcTimeout = {
    type = "structure",
    members = {
        perRequest = {
            type = "structure",
        },
        idle = {
            type = "structure",
        },
    },
}

M.HttpTimeout = {
    type = "structure",
    members = {
        perRequest = {
            type = "structure",
        },
        idle = {
            type = "structure",
        },
    },
}

M.TcpTimeout = {
    type = "structure",
    members = {
        idle = {
            type = "structure",
        },
    },
}

M.ListenerTimeout = {
    type = "union",
    members = {
        tcp = {
            type = "structure",
        },
        http = {
            type = "structure",
        },
        http2 = {
            type = "structure",
        },
        grpc = {
            type = "structure",
        },
    },
}

M.ListenerTlsAcmCertificate = {
    type = "structure",
    members = {
        certificateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListenerTlsCertificate = {
    type = "union",
    members = {
        acm = {
            type = "structure",
        },
        file = {
            type = "structure",
        },
        sds = {
            type = "structure",
        },
    },
}

M.ListenerTlsMode = {
    STRICT = "STRICT",
    PERMISSIVE = "PERMISSIVE",
    DISABLED = "DISABLED",
}

M.ListenerTlsValidationContextTrust = {
    type = "union",
    members = {
        file = {
            type = "structure",
        },
        sds = {
            type = "structure",
        },
    },
}

M.ListenerTlsValidationContext = {
    type = "structure",
    members = {
        trust = {
            type = "union",
            traits = {
                required = true,
            },
        },
        subjectAlternativeNames = {
            type = "structure",
        },
    },
}

M.ListenerTls = {
    type = "structure",
    members = {
        mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        certificate = {
            type = "union",
            traits = {
                required = true,
            },
        },
        validation = {
            type = "structure",
        },
    },
}

M.Listener = {
    type = "structure",
    members = {
        portMapping = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tls = {
            type = "structure",
        },
        healthCheck = {
            type = "structure",
        },
        timeout = {
            type = "union",
        },
        outlierDetection = {
            type = "structure",
        },
        connectionPool = {
            type = "union",
        },
    },
}

M.Logging = {
    type = "structure",
    members = {
        accessLog = {
            type = "union",
        },
    },
}

M.AwsCloudMapInstanceAttribute = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AwsCloudMapServiceDiscovery = {
    type = "structure",
    members = {
        namespaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        attributes = {
            type = "list",
            member_type = "structure",
        },
        ipPreference = {
            type = "string",
        },
    },
}

M.DnsResponseType = {
    LOADBALANCER = "LOADBALANCER",
    ENDPOINTS = "ENDPOINTS",
}

M.DnsServiceDiscovery = {
    type = "structure",
    members = {
        hostname = {
            type = "string",
            traits = {
                required = true,
            },
        },
        responseType = {
            type = "string",
        },
        ipPreference = {
            type = "string",
        },
    },
}

M.ServiceDiscovery = {
    type = "union",
    members = {
        dns = {
            type = "structure",
        },
        awsCloudMap = {
            type = "structure",
        },
    },
}

M.VirtualNodeSpec = {
    type = "structure",
    members = {
        serviceDiscovery = {
            type = "union",
        },
        listeners = {
            type = "list",
            member_type = "structure",
        },
        backends = {
            type = "list",
            member_type = "union",
        },
        backendDefaults = {
            type = "structure",
        },
        logging = {
            type = "structure",
        },
    },
}

M.CreateVirtualNodeInput = {
    type = "structure",
    members = {
        virtualNodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        spec = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        clientToken = {
            type = "string",
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.VirtualNodeStatusCode = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DELETED = "DELETED",
}

M.VirtualNodeStatus = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VirtualNodeData = {
    type = "structure",
    members = {
        meshName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        virtualNodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        spec = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        metadata = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateVirtualNodeOutput = {
    type = "structure",
    members = {
        virtualNode = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteVirtualNodeInput = {
    type = "structure",
    members = {
        virtualNodeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.DeleteVirtualNodeOutput = {
    type = "structure",
    members = {
        virtualNode = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DescribeVirtualNodeInput = {
    type = "structure",
    members = {
        virtualNodeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.DescribeVirtualNodeOutput = {
    type = "structure",
    members = {
        virtualNode = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.ListVirtualNodesInput = {
    type = "structure",
    members = {
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        limit = {
            type = "number",
            traits = {
                http_query = "limit",
            },
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.VirtualNodeRef = {
    type = "structure",
    members = {
        meshName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        virtualNodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        meshOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "number",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListVirtualNodesOutput = {
    type = "structure",
    members = {
        virtualNodes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateVirtualNodeInput = {
    type = "structure",
    members = {
        virtualNodeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        spec = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.UpdateVirtualNodeOutput = {
    type = "structure",
    members = {
        virtualNode = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.VirtualRouterListener = {
    type = "structure",
    members = {
        portMapping = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.VirtualRouterSpec = {
    type = "structure",
    members = {
        listeners = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateVirtualRouterInput = {
    type = "structure",
    members = {
        virtualRouterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        spec = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        clientToken = {
            type = "string",
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.VirtualRouterStatusCode = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DELETED = "DELETED",
}

M.VirtualRouterStatus = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VirtualRouterData = {
    type = "structure",
    members = {
        meshName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        virtualRouterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        spec = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        metadata = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateVirtualRouterOutput = {
    type = "structure",
    members = {
        virtualRouter = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteVirtualRouterInput = {
    type = "structure",
    members = {
        virtualRouterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.DeleteVirtualRouterOutput = {
    type = "structure",
    members = {
        virtualRouter = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DescribeVirtualRouterInput = {
    type = "structure",
    members = {
        virtualRouterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.DescribeVirtualRouterOutput = {
    type = "structure",
    members = {
        virtualRouter = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.ListVirtualRoutersInput = {
    type = "structure",
    members = {
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        limit = {
            type = "number",
            traits = {
                http_query = "limit",
            },
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.VirtualRouterRef = {
    type = "structure",
    members = {
        meshName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        virtualRouterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        meshOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "number",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListVirtualRoutersOutput = {
    type = "structure",
    members = {
        virtualRouters = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.WeightedTarget = {
    type = "structure",
    members = {
        virtualNode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        weight = {
            type = "number",
            traits = {
                required = true,
            },
        },
        port = {
            type = "number",
        },
    },
}

M.GrpcRouteAction = {
    type = "structure",
    members = {
        weightedTargets = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GrpcRouteMetadataMatchMethod = {
    type = "union",
    members = {
        exact = {
            type = "string",
        },
        regex = {
            type = "string",
        },
        range = {
            type = "structure",
        },
        prefix = {
            type = "string",
        },
        suffix = {
            type = "string",
        },
    },
}

M.GrpcRouteMetadata = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        invert = {
            type = "boolean",
        },
        match = {
            type = "union",
        },
    },
}

M.GrpcRouteMatch = {
    type = "structure",
    members = {
        serviceName = {
            type = "string",
        },
        methodName = {
            type = "string",
        },
        metadata = {
            type = "list",
            member_type = "structure",
        },
        port = {
            type = "number",
        },
    },
}

M.GrpcRetryPolicyEvent = {
    CANCELLED = "cancelled",
    DEADLINE_EXCEEDED = "deadline-exceeded",
    INTERNAL = "internal",
    RESOURCE_EXHAUSTED = "resource-exhausted",
    UNAVAILABLE = "unavailable",
}

M.TcpRetryPolicyEvent = {
    CONNECTION_ERROR = "connection-error",
}

M.GrpcRetryPolicy = {
    type = "structure",
    members = {
        perRetryTimeout = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        maxRetries = {
            type = "number",
            traits = {
                required = true,
            },
        },
        httpRetryEvents = {
            type = "list",
            member_type = "string",
        },
        tcpRetryEvents = {
            type = "list",
            member_type = "string",
        },
        grpcRetryEvents = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GrpcRoute = {
    type = "structure",
    members = {
        action = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        match = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        retryPolicy = {
            type = "structure",
        },
        timeout = {
            type = "structure",
        },
    },
}

M.HttpRouteAction = {
    type = "structure",
    members = {
        weightedTargets = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.HttpRouteHeader = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        invert = {
            type = "boolean",
        },
        match = {
            type = "union",
        },
    },
}

M.HttpScheme = {
    HTTP = "http",
    HTTPS = "https",
}

M.HttpRouteMatch = {
    type = "structure",
    members = {
        prefix = {
            type = "string",
        },
        path = {
            type = "structure",
        },
        queryParameters = {
            type = "list",
            member_type = "structure",
        },
        method = {
            type = "string",
        },
        scheme = {
            type = "string",
        },
        headers = {
            type = "list",
            member_type = "structure",
        },
        port = {
            type = "number",
        },
    },
}

M.HttpRetryPolicy = {
    type = "structure",
    members = {
        perRetryTimeout = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        maxRetries = {
            type = "number",
            traits = {
                required = true,
            },
        },
        httpRetryEvents = {
            type = "list",
            member_type = "string",
        },
        tcpRetryEvents = {
            type = "list",
            member_type = "string",
        },
    },
}

M.HttpRoute = {
    type = "structure",
    members = {
        match = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        action = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        retryPolicy = {
            type = "structure",
        },
        timeout = {
            type = "structure",
        },
    },
}

M.TcpRouteAction = {
    type = "structure",
    members = {
        weightedTargets = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TcpRouteMatch = {
    type = "structure",
    members = {
        port = {
            type = "number",
        },
    },
}

M.TcpRoute = {
    type = "structure",
    members = {
        action = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        timeout = {
            type = "structure",
        },
        match = {
            type = "structure",
        },
    },
}

M.RouteSpec = {
    type = "structure",
    members = {
        priority = {
            type = "number",
        },
        httpRoute = {
            type = "structure",
        },
        tcpRoute = {
            type = "structure",
        },
        http2Route = {
            type = "structure",
        },
        grpcRoute = {
            type = "structure",
        },
    },
}

M.CreateRouteInput = {
    type = "structure",
    members = {
        routeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        virtualRouterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        spec = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        clientToken = {
            type = "string",
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.RouteStatusCode = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DELETED = "DELETED",
}

M.RouteStatus = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RouteData = {
    type = "structure",
    members = {
        meshName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        virtualRouterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        routeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        spec = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        metadata = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateRouteOutput = {
    type = "structure",
    members = {
        route = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteRouteInput = {
    type = "structure",
    members = {
        routeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        virtualRouterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.DeleteRouteOutput = {
    type = "structure",
    members = {
        route = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DescribeRouteInput = {
    type = "structure",
    members = {
        routeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
        virtualRouterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeRouteOutput = {
    type = "structure",
    members = {
        route = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.ListRoutesInput = {
    type = "structure",
    members = {
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        virtualRouterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        limit = {
            type = "number",
            traits = {
                http_query = "limit",
            },
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.RouteRef = {
    type = "structure",
    members = {
        meshName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        virtualRouterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        routeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        meshOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "number",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListRoutesOutput = {
    type = "structure",
    members = {
        routes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateRouteInput = {
    type = "structure",
    members = {
        routeName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        virtualRouterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        spec = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.UpdateRouteOutput = {
    type = "structure",
    members = {
        route = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateVirtualRouterInput = {
    type = "structure",
    members = {
        virtualRouterName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        spec = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.UpdateVirtualRouterOutput = {
    type = "structure",
    members = {
        virtualRouter = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.VirtualNodeServiceProvider = {
    type = "structure",
    members = {
        virtualNodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VirtualRouterServiceProvider = {
    type = "structure",
    members = {
        virtualRouterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VirtualServiceProvider = {
    type = "union",
    members = {
        virtualNode = {
            type = "structure",
        },
        virtualRouter = {
            type = "structure",
        },
    },
}

M.VirtualServiceSpec = {
    type = "structure",
    members = {
        provider = {
            type = "union",
        },
    },
}

M.CreateVirtualServiceInput = {
    type = "structure",
    members = {
        virtualServiceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        spec = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        clientToken = {
            type = "string",
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.VirtualServiceStatusCode = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DELETED = "DELETED",
}

M.VirtualServiceStatus = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VirtualServiceData = {
    type = "structure",
    members = {
        meshName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        virtualServiceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        spec = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        metadata = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        status = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateVirtualServiceOutput = {
    type = "structure",
    members = {
        virtualService = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteVirtualServiceInput = {
    type = "structure",
    members = {
        virtualServiceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.DeleteVirtualServiceOutput = {
    type = "structure",
    members = {
        virtualService = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DescribeVirtualServiceInput = {
    type = "structure",
    members = {
        virtualServiceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.DescribeVirtualServiceOutput = {
    type = "structure",
    members = {
        virtualService = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.ListVirtualServicesInput = {
    type = "structure",
    members = {
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        limit = {
            type = "number",
            traits = {
                http_query = "limit",
            },
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.VirtualServiceRef = {
    type = "structure",
    members = {
        meshName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        virtualServiceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        meshOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "number",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListVirtualServicesOutput = {
    type = "structure",
    members = {
        virtualServices = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateVirtualServiceInput = {
    type = "structure",
    members = {
        virtualServiceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        meshName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        spec = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        meshOwner = {
            type = "string",
            traits = {
                http_query = "meshOwner",
            },
        },
    },
}

M.UpdateVirtualServiceOutput = {
    type = "structure",
    members = {
        virtualService = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
                required = true,
            },
        },
        tags = {
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

M.TooManyTagsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
                required = true,
            },
        },
        tagKeys = {
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

return M
