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
            member = M.JsonFormatRef,
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
        format = M.LoggingFormat,
    },
}

M.AccessLog = {
    type = "union",
    members = {
        file = M.FileAccessLog,
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
            type = "integer",
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
            member = M.TagRef,
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
        egressFilter = M.EgressFilter,
        serviceDiscovery = M.MeshServiceDiscovery,
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
        spec = M.MeshSpec,
        tags = {
            type = "list",
            member = M.TagRef,
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
            type = "long",
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
        spec = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MeshSpec }),
        metadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceMetadata }),
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MeshStatus }),
    },
}

M.CreateMeshOutput = {
    type = "structure",
    members = {
        mesh = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.MeshData }),
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
        mesh = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.MeshData }),
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
        mesh = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.MeshData }),
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
            type = "integer",
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
            type = "long",
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
            member = M.MeshRef,
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
        spec = M.MeshSpec,
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateMeshOutput = {
    type = "structure",
    members = {
        mesh = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.MeshData }),
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
        file = M.VirtualGatewayListenerTlsFileCertificate,
        sds = M.VirtualGatewayListenerTlsSdsCertificate,
    },
}

M.SubjectAlternativeNameMatchers = {
    type = "structure",
    members = {
        exact = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.SubjectAlternativeNames = {
    type = "structure",
    members = {
        match = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SubjectAlternativeNameMatchers }),
    },
}

M.VirtualGatewayTlsValidationContextAcmTrust = {
    type = "structure",
    members = {
        certificateAuthorityArns = {
            type = "list",
            member = { type = "string" },
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
        acm = M.VirtualGatewayTlsValidationContextAcmTrust,
        file = M.VirtualGatewayTlsValidationContextFileTrust,
        sds = M.VirtualGatewayTlsValidationContextSdsTrust,
    },
}

M.VirtualGatewayTlsValidationContext = {
    type = "structure",
    members = {
        trust = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VirtualGatewayTlsValidationContextTrust }),
        subjectAlternativeNames = M.SubjectAlternativeNames,
    },
}

M.VirtualGatewayClientPolicyTls = {
    type = "structure",
    members = {
        enforce = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        ports = {
            type = "list",
            member = { type = "integer" },
        },
        certificate = M.VirtualGatewayClientTlsCertificate,
        validation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VirtualGatewayTlsValidationContext }),
    },
}

M.VirtualGatewayClientPolicy = {
    type = "structure",
    members = {
        tls = M.VirtualGatewayClientPolicyTls,
    },
}

M.VirtualGatewayBackendDefaults = {
    type = "structure",
    members = {
        clientPolicy = M.VirtualGatewayClientPolicy,
    },
}

M.VirtualGatewayGrpcConnectionPool = {
    type = "structure",
    members = {
        maxRequests = {
            type = "integer",
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        maxPendingRequests = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
}

M.VirtualGatewayHttp2ConnectionPool = {
    type = "structure",
    members = {
        maxRequests = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.VirtualGatewayConnectionPool = {
    type = "union",
    members = {
        http = M.VirtualGatewayHttpConnectionPool,
        http2 = M.VirtualGatewayHttp2ConnectionPool,
        grpc = M.VirtualGatewayGrpcConnectionPool,
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
            type = "long",
            traits = {
                required = true,
            },
        },
        intervalMillis = {
            type = "long",
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
            type = "integer",
        },
        path = {
            type = "string",
        },
        healthyThreshold = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        unhealthyThreshold = {
            type = "integer",
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
            type = "integer",
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
        acm = M.VirtualGatewayListenerTlsAcmCertificate,
        file = M.VirtualGatewayListenerTlsFileCertificate,
        sds = M.VirtualGatewayListenerTlsSdsCertificate,
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
        file = M.VirtualGatewayTlsValidationContextFileTrust,
        sds = M.VirtualGatewayTlsValidationContextSdsTrust,
    },
}

M.VirtualGatewayListenerTlsValidationContext = {
    type = "structure",
    members = {
        trust = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VirtualGatewayListenerTlsValidationContextTrust }),
        subjectAlternativeNames = M.SubjectAlternativeNames,
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
        validation = M.VirtualGatewayListenerTlsValidationContext,
        certificate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VirtualGatewayListenerTlsCertificate }),
    },
}

M.VirtualGatewayListener = {
    type = "structure",
    members = {
        healthCheck = M.VirtualGatewayHealthCheckPolicy,
        portMapping = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VirtualGatewayPortMapping }),
        tls = M.VirtualGatewayListenerTls,
        connectionPool = M.VirtualGatewayConnectionPool,
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
        format = M.LoggingFormat,
    },
}

M.VirtualGatewayAccessLog = {
    type = "union",
    members = {
        file = M.VirtualGatewayFileAccessLog,
    },
}

M.VirtualGatewayLogging = {
    type = "structure",
    members = {
        accessLog = M.VirtualGatewayAccessLog,
    },
}

M.VirtualGatewaySpec = {
    type = "structure",
    members = {
        backendDefaults = M.VirtualGatewayBackendDefaults,
        listeners = {
            type = "list",
            member = M.VirtualGatewayListener,
            traits = {
                required = true,
            },
        },
        logging = M.VirtualGatewayLogging,
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
        spec = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VirtualGatewaySpec }),
        tags = {
            type = "list",
            member = M.TagRef,
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
        spec = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VirtualGatewaySpec }),
        metadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceMetadata }),
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VirtualGatewayStatus }),
    },
}

M.CreateVirtualGatewayOutput = {
    type = "structure",
    members = {
        virtualGateway = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualGatewayData }),
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
        virtualGateway = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualGatewayData }),
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
        virtualGateway = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualGatewayData }),
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
        hostname = M.GatewayRouteHostnameRewrite,
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
        virtualService = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GatewayRouteVirtualService }),
        port = {
            type = "integer",
        },
    },
}

M.GrpcGatewayRouteAction = {
    type = "structure",
    members = {
        target = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GatewayRouteTarget }),
        rewrite = M.GrpcGatewayRouteRewrite,
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
            type = "long",
            traits = {
                required = true,
            },
        },
        end = {
            type = "long",
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
        range = M.MatchRange,
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
        match = M.GrpcMetadataMatchMethod,
    },
}

M.GrpcGatewayRouteMatch = {
    type = "structure",
    members = {
        serviceName = {
            type = "string",
        },
        hostname = M.GatewayRouteHostnameMatch,
        metadata = {
            type = "list",
            member = M.GrpcGatewayRouteMetadata,
        },
        port = {
            type = "integer",
        },
    },
}

M.GrpcGatewayRoute = {
    type = "structure",
    members = {
        match = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GrpcGatewayRouteMatch }),
        action = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GrpcGatewayRouteAction }),
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
        prefix = M.HttpGatewayRoutePrefixRewrite,
        path = M.HttpGatewayRoutePathRewrite,
        hostname = M.GatewayRouteHostnameRewrite,
    },
}

M.HttpGatewayRouteAction = {
    type = "structure",
    members = {
        target = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GatewayRouteTarget }),
        rewrite = M.HttpGatewayRouteRewrite,
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
        range = M.MatchRange,
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
        match = M.HeaderMatchMethod,
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
        match = M.QueryParameterMatch,
    },
}

M.HttpGatewayRouteMatch = {
    type = "structure",
    members = {
        prefix = {
            type = "string",
        },
        path = M.HttpPathMatch,
        queryParameters = {
            type = "list",
            member = M.HttpQueryParameter,
        },
        method = {
            type = "string",
        },
        hostname = M.GatewayRouteHostnameMatch,
        headers = {
            type = "list",
            member = M.HttpGatewayRouteHeader,
        },
        port = {
            type = "integer",
        },
    },
}

M.HttpGatewayRoute = {
    type = "structure",
    members = {
        match = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HttpGatewayRouteMatch }),
        action = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HttpGatewayRouteAction }),
    },
}

M.GatewayRouteSpec = {
    type = "structure",
    members = {
        priority = {
            type = "integer",
        },
        httpRoute = M.HttpGatewayRoute,
        http2Route = M.HttpGatewayRoute,
        grpcRoute = M.GrpcGatewayRoute,
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
        spec = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GatewayRouteSpec }),
        tags = {
            type = "list",
            member = M.TagRef,
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
        spec = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GatewayRouteSpec }),
        metadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceMetadata }),
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GatewayRouteStatus }),
    },
}

M.CreateGatewayRouteOutput = {
    type = "structure",
    members = {
        gatewayRoute = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.GatewayRouteData }),
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
        gatewayRoute = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.GatewayRouteData }),
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
        gatewayRoute = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.GatewayRouteData }),
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
            type = "integer",
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
            type = "long",
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
            member = M.GatewayRouteRef,
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
        spec = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GatewayRouteSpec }),
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
        gatewayRoute = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.GatewayRouteData }),
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
            type = "integer",
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
            type = "long",
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
            member = M.VirtualGatewayRef,
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
        spec = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VirtualGatewaySpec }),
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
        virtualGateway = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualGatewayData }),
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
        file = M.ListenerTlsFileCertificate,
        sds = M.ListenerTlsSdsCertificate,
    },
}

M.TlsValidationContextAcmTrust = {
    type = "structure",
    members = {
        certificateAuthorityArns = {
            type = "list",
            member = { type = "string" },
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
        acm = M.TlsValidationContextAcmTrust,
        file = M.TlsValidationContextFileTrust,
        sds = M.TlsValidationContextSdsTrust,
    },
}

M.TlsValidationContext = {
    type = "structure",
    members = {
        trust = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TlsValidationContextTrust }),
        subjectAlternativeNames = M.SubjectAlternativeNames,
    },
}

M.ClientPolicyTls = {
    type = "structure",
    members = {
        enforce = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        ports = {
            type = "list",
            member = { type = "integer" },
        },
        certificate = M.ClientTlsCertificate,
        validation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TlsValidationContext }),
    },
}

M.ClientPolicy = {
    type = "structure",
    members = {
        tls = M.ClientPolicyTls,
    },
}

M.BackendDefaults = {
    type = "structure",
    members = {
        clientPolicy = M.ClientPolicy,
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
        clientPolicy = M.ClientPolicy,
    },
}

M.Backend = {
    type = "union",
    members = {
        virtualService = M.VirtualServiceBackend,
    },
}

M.VirtualNodeGrpcConnectionPool = {
    type = "structure",
    members = {
        maxRequests = {
            type = "integer",
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        maxPendingRequests = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
}

M.VirtualNodeHttp2ConnectionPool = {
    type = "structure",
    members = {
        maxRequests = {
            type = "integer",
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
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.VirtualNodeConnectionPool = {
    type = "union",
    members = {
        tcp = M.VirtualNodeTcpConnectionPool,
        http = M.VirtualNodeHttpConnectionPool,
        http2 = M.VirtualNodeHttp2ConnectionPool,
        grpc = M.VirtualNodeGrpcConnectionPool,
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
            type = "long",
            traits = {
                required = true,
            },
        },
        intervalMillis = {
            type = "long",
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
            type = "integer",
        },
        path = {
            type = "string",
        },
        healthyThreshold = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        unhealthyThreshold = {
            type = "integer",
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
            type = "long",
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
            type = "long",
            traits = {
                required = true,
            },
        },
        interval = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Duration }),
        baseEjectionDuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Duration }),
        maxEjectionPercent = {
            type = "integer",
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
            type = "integer",
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
        perRequest = M.Duration,
        idle = M.Duration,
    },
}

M.HttpTimeout = {
    type = "structure",
    members = {
        perRequest = M.Duration,
        idle = M.Duration,
    },
}

M.TcpTimeout = {
    type = "structure",
    members = {
        idle = M.Duration,
    },
}

M.ListenerTimeout = {
    type = "union",
    members = {
        tcp = M.TcpTimeout,
        http = M.HttpTimeout,
        http2 = M.HttpTimeout,
        grpc = M.GrpcTimeout,
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
        acm = M.ListenerTlsAcmCertificate,
        file = M.ListenerTlsFileCertificate,
        sds = M.ListenerTlsSdsCertificate,
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
        file = M.TlsValidationContextFileTrust,
        sds = M.TlsValidationContextSdsTrust,
    },
}

M.ListenerTlsValidationContext = {
    type = "structure",
    members = {
        trust = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ListenerTlsValidationContextTrust }),
        subjectAlternativeNames = M.SubjectAlternativeNames,
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
        certificate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ListenerTlsCertificate }),
        validation = M.ListenerTlsValidationContext,
    },
}

M.Listener = {
    type = "structure",
    members = {
        portMapping = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PortMapping }),
        tls = M.ListenerTls,
        healthCheck = M.HealthCheckPolicy,
        timeout = M.ListenerTimeout,
        outlierDetection = M.OutlierDetection,
        connectionPool = M.VirtualNodeConnectionPool,
    },
}

M.Logging = {
    type = "structure",
    members = {
        accessLog = M.AccessLog,
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
            member = M.AwsCloudMapInstanceAttribute,
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
        dns = M.DnsServiceDiscovery,
        awsCloudMap = M.AwsCloudMapServiceDiscovery,
    },
}

M.VirtualNodeSpec = {
    type = "structure",
    members = {
        serviceDiscovery = M.ServiceDiscovery,
        listeners = {
            type = "list",
            member = M.Listener,
        },
        backends = {
            type = "list",
            member = M.Backend,
        },
        backendDefaults = M.BackendDefaults,
        logging = M.Logging,
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
        spec = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VirtualNodeSpec }),
        tags = {
            type = "list",
            member = M.TagRef,
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
        spec = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VirtualNodeSpec }),
        metadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceMetadata }),
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VirtualNodeStatus }),
    },
}

M.CreateVirtualNodeOutput = {
    type = "structure",
    members = {
        virtualNode = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualNodeData }),
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
        virtualNode = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualNodeData }),
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
        virtualNode = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualNodeData }),
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
            type = "integer",
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
            type = "long",
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
            member = M.VirtualNodeRef,
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
        spec = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VirtualNodeSpec }),
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
        virtualNode = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualNodeData }),
    },
}

M.VirtualRouterListener = {
    type = "structure",
    members = {
        portMapping = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PortMapping }),
    },
}

M.VirtualRouterSpec = {
    type = "structure",
    members = {
        listeners = {
            type = "list",
            member = M.VirtualRouterListener,
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
        spec = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VirtualRouterSpec }),
        tags = {
            type = "list",
            member = M.TagRef,
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
        spec = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VirtualRouterSpec }),
        metadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceMetadata }),
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VirtualRouterStatus }),
    },
}

M.CreateVirtualRouterOutput = {
    type = "structure",
    members = {
        virtualRouter = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualRouterData }),
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
        virtualRouter = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualRouterData }),
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
        virtualRouter = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualRouterData }),
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
            type = "integer",
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
            type = "long",
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
            member = M.VirtualRouterRef,
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
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        port = {
            type = "integer",
        },
    },
}

M.GrpcRouteAction = {
    type = "structure",
    members = {
        weightedTargets = {
            type = "list",
            member = M.WeightedTarget,
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
        range = M.MatchRange,
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
        match = M.GrpcRouteMetadataMatchMethod,
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
            member = M.GrpcRouteMetadata,
        },
        port = {
            type = "integer",
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
        perRetryTimeout = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Duration }),
        maxRetries = {
            type = "long",
            traits = {
                required = true,
            },
        },
        httpRetryEvents = {
            type = "list",
            member = { type = "string" },
        },
        tcpRetryEvents = {
            type = "list",
            member = { type = "string" },
        },
        grpcRetryEvents = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GrpcRoute = {
    type = "structure",
    members = {
        action = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GrpcRouteAction }),
        match = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GrpcRouteMatch }),
        retryPolicy = M.GrpcRetryPolicy,
        timeout = M.GrpcTimeout,
    },
}

M.HttpRouteAction = {
    type = "structure",
    members = {
        weightedTargets = {
            type = "list",
            member = M.WeightedTarget,
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
        match = M.HeaderMatchMethod,
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
        path = M.HttpPathMatch,
        queryParameters = {
            type = "list",
            member = M.HttpQueryParameter,
        },
        method = {
            type = "string",
        },
        scheme = {
            type = "string",
        },
        headers = {
            type = "list",
            member = M.HttpRouteHeader,
        },
        port = {
            type = "integer",
        },
    },
}

M.HttpRetryPolicy = {
    type = "structure",
    members = {
        perRetryTimeout = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Duration }),
        maxRetries = {
            type = "long",
            traits = {
                required = true,
            },
        },
        httpRetryEvents = {
            type = "list",
            member = { type = "string" },
        },
        tcpRetryEvents = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.HttpRoute = {
    type = "structure",
    members = {
        match = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HttpRouteMatch }),
        action = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HttpRouteAction }),
        retryPolicy = M.HttpRetryPolicy,
        timeout = M.HttpTimeout,
    },
}

M.TcpRouteAction = {
    type = "structure",
    members = {
        weightedTargets = {
            type = "list",
            member = M.WeightedTarget,
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
            type = "integer",
        },
    },
}

M.TcpRoute = {
    type = "structure",
    members = {
        action = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TcpRouteAction }),
        timeout = M.TcpTimeout,
        match = M.TcpRouteMatch,
    },
}

M.RouteSpec = {
    type = "structure",
    members = {
        priority = {
            type = "integer",
        },
        httpRoute = M.HttpRoute,
        tcpRoute = M.TcpRoute,
        http2Route = M.HttpRoute,
        grpcRoute = M.GrpcRoute,
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
        spec = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RouteSpec }),
        tags = {
            type = "list",
            member = M.TagRef,
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
        spec = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RouteSpec }),
        metadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceMetadata }),
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RouteStatus }),
    },
}

M.CreateRouteOutput = {
    type = "structure",
    members = {
        route = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.RouteData }),
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
        route = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.RouteData }),
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
        route = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.RouteData }),
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
            type = "integer",
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
            type = "long",
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
            member = M.RouteRef,
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
        spec = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RouteSpec }),
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
        route = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.RouteData }),
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
        spec = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VirtualRouterSpec }),
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
        virtualRouter = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualRouterData }),
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
        virtualNode = M.VirtualNodeServiceProvider,
        virtualRouter = M.VirtualRouterServiceProvider,
    },
}

M.VirtualServiceSpec = {
    type = "structure",
    members = {
        provider = M.VirtualServiceProvider,
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
        spec = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VirtualServiceSpec }),
        tags = {
            type = "list",
            member = M.TagRef,
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
        spec = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VirtualServiceSpec }),
        metadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceMetadata }),
        status = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VirtualServiceStatus }),
    },
}

M.CreateVirtualServiceOutput = {
    type = "structure",
    members = {
        virtualService = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualServiceData }),
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
        virtualService = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualServiceData }),
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
        virtualService = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualServiceData }),
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
            type = "integer",
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
            type = "long",
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
            member = M.VirtualServiceRef,
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
        spec = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VirtualServiceSpec }),
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
        virtualService = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualServiceData }),
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
            member = M.TagRef,
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
            member = { type = "string" },
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
