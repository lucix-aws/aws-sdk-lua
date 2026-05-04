local M = {}

M.JsonFormatRef = {
    type = "structure",
    id = "JsonFormatRef",
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
    id = "LoggingFormat",
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
    id = "FileAccessLog",
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
    id = "AccessLog",
    members = {
        file = M.FileAccessLog,
    },
}

M.BadRequestException = {
    type = "structure",
    id = "BadRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ForbiddenException = {
    type = "structure",
    id = "ForbiddenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalServerErrorException = {
    type = "structure",
    id = "InternalServerErrorException",
    error = "server",
    members = {
        message = {
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
    id = "TagRef",
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
    id = "ListTagsForResourceOutput",
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
    id = "NotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    id = "ServiceUnavailableException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
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
    id = "EgressFilter",
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
    id = "MeshServiceDiscovery",
    members = {
        ipPreference = {
            type = "string",
        },
    },
}

M.MeshSpec = {
    type = "structure",
    id = "MeshSpec",
    members = {
        egressFilter = M.EgressFilter,
        serviceDiscovery = M.MeshServiceDiscovery,
    },
}

M.CreateMeshInput = {
    type = "structure",
    id = "CreateMeshInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.ResourceMetadata = {
    type = "structure",
    id = "ResourceMetadata",
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
    id = "MeshStatus",
    members = {
        status = {
            type = "string",
        },
    },
}

M.MeshData = {
    type = "structure",
    id = "MeshData",
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
    id = "CreateMeshOutput",
    members = {
        mesh = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.MeshData }),
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

M.DeleteMeshInput = {
    type = "structure",
    id = "DeleteMeshInput",
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
    id = "DeleteMeshOutput",
    members = {
        mesh = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.MeshData }),
    },
}

M.ResourceInUseException = {
    type = "structure",
    id = "ResourceInUseException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeMeshInput = {
    type = "structure",
    id = "DescribeMeshInput",
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
    id = "DescribeMeshOutput",
    members = {
        mesh = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.MeshData }),
    },
}

M.ListMeshesInput = {
    type = "structure",
    id = "ListMeshesInput",
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
    id = "MeshRef",
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
    id = "ListMeshesOutput",
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
    id = "UpdateMeshInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateMeshOutput = {
    type = "structure",
    id = "UpdateMeshOutput",
    members = {
        mesh = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.MeshData }),
    },
}

M.VirtualGatewayListenerTlsFileCertificate = {
    type = "structure",
    id = "VirtualGatewayListenerTlsFileCertificate",
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
    id = "VirtualGatewayListenerTlsSdsCertificate",
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
    id = "VirtualGatewayClientTlsCertificate",
    members = {
        file = M.VirtualGatewayListenerTlsFileCertificate,
        sds = M.VirtualGatewayListenerTlsSdsCertificate,
    },
}

M.SubjectAlternativeNameMatchers = {
    type = "structure",
    id = "SubjectAlternativeNameMatchers",
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
    id = "SubjectAlternativeNames",
    members = {
        match = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SubjectAlternativeNameMatchers }),
    },
}

M.VirtualGatewayTlsValidationContextAcmTrust = {
    type = "structure",
    id = "VirtualGatewayTlsValidationContextAcmTrust",
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
    id = "VirtualGatewayTlsValidationContextFileTrust",
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
    id = "VirtualGatewayTlsValidationContextSdsTrust",
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
    id = "VirtualGatewayTlsValidationContextTrust",
    members = {
        acm = M.VirtualGatewayTlsValidationContextAcmTrust,
        file = M.VirtualGatewayTlsValidationContextFileTrust,
        sds = M.VirtualGatewayTlsValidationContextSdsTrust,
    },
}

M.VirtualGatewayTlsValidationContext = {
    type = "structure",
    id = "VirtualGatewayTlsValidationContext",
    members = {
        trust = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VirtualGatewayTlsValidationContextTrust }),
        subjectAlternativeNames = M.SubjectAlternativeNames,
    },
}

M.VirtualGatewayClientPolicyTls = {
    type = "structure",
    id = "VirtualGatewayClientPolicyTls",
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
    id = "VirtualGatewayClientPolicy",
    members = {
        tls = M.VirtualGatewayClientPolicyTls,
    },
}

M.VirtualGatewayBackendDefaults = {
    type = "structure",
    id = "VirtualGatewayBackendDefaults",
    members = {
        clientPolicy = M.VirtualGatewayClientPolicy,
    },
}

M.VirtualGatewayGrpcConnectionPool = {
    type = "structure",
    id = "VirtualGatewayGrpcConnectionPool",
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
    id = "VirtualGatewayHttpConnectionPool",
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
    id = "VirtualGatewayHttp2ConnectionPool",
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
    id = "VirtualGatewayConnectionPool",
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
    id = "VirtualGatewayHealthCheckPolicy",
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
    id = "VirtualGatewayPortMapping",
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
    id = "VirtualGatewayListenerTlsAcmCertificate",
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
    id = "VirtualGatewayListenerTlsCertificate",
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
    id = "VirtualGatewayListenerTlsValidationContextTrust",
    members = {
        file = M.VirtualGatewayTlsValidationContextFileTrust,
        sds = M.VirtualGatewayTlsValidationContextSdsTrust,
    },
}

M.VirtualGatewayListenerTlsValidationContext = {
    type = "structure",
    id = "VirtualGatewayListenerTlsValidationContext",
    members = {
        trust = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VirtualGatewayListenerTlsValidationContextTrust }),
        subjectAlternativeNames = M.SubjectAlternativeNames,
    },
}

M.VirtualGatewayListenerTls = {
    type = "structure",
    id = "VirtualGatewayListenerTls",
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
    id = "VirtualGatewayListener",
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
    id = "VirtualGatewayFileAccessLog",
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
    id = "VirtualGatewayAccessLog",
    members = {
        file = M.VirtualGatewayFileAccessLog,
    },
}

M.VirtualGatewayLogging = {
    type = "structure",
    id = "VirtualGatewayLogging",
    members = {
        accessLog = M.VirtualGatewayAccessLog,
    },
}

M.VirtualGatewaySpec = {
    type = "structure",
    id = "VirtualGatewaySpec",
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
    id = "CreateVirtualGatewayInput",
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
            traits = {
                idempotency_token = true,
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

M.VirtualGatewayStatusCode = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DELETED = "DELETED",
}

M.VirtualGatewayStatus = {
    type = "structure",
    id = "VirtualGatewayStatus",
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
    id = "VirtualGatewayData",
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
    id = "CreateVirtualGatewayOutput",
    members = {
        virtualGateway = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualGatewayData }),
    },
}

M.DeleteVirtualGatewayInput = {
    type = "structure",
    id = "DeleteVirtualGatewayInput",
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
    id = "DeleteVirtualGatewayOutput",
    members = {
        virtualGateway = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualGatewayData }),
    },
}

M.DescribeVirtualGatewayInput = {
    type = "structure",
    id = "DescribeVirtualGatewayInput",
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
    id = "DescribeVirtualGatewayOutput",
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
    id = "GatewayRouteHostnameRewrite",
    members = {
        defaultTargetHostname = {
            type = "string",
        },
    },
}

M.GrpcGatewayRouteRewrite = {
    type = "structure",
    id = "GrpcGatewayRouteRewrite",
    members = {
        hostname = M.GatewayRouteHostnameRewrite,
    },
}

M.GatewayRouteVirtualService = {
    type = "structure",
    id = "GatewayRouteVirtualService",
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
    id = "GatewayRouteTarget",
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
    id = "GrpcGatewayRouteAction",
    members = {
        target = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GatewayRouteTarget }),
        rewrite = M.GrpcGatewayRouteRewrite,
    },
}

M.GatewayRouteHostnameMatch = {
    type = "structure",
    id = "GatewayRouteHostnameMatch",
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
    id = "MatchRange",
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
    id = "GrpcMetadataMatchMethod",
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
    id = "GrpcGatewayRouteMetadata",
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
    id = "GrpcGatewayRouteMatch",
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
    id = "GrpcGatewayRoute",
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
    id = "HttpGatewayRoutePathRewrite",
    members = {
        exact = {
            type = "string",
        },
    },
}

M.HttpGatewayRoutePrefixRewrite = {
    type = "structure",
    id = "HttpGatewayRoutePrefixRewrite",
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
    id = "HttpGatewayRouteRewrite",
    members = {
        prefix = M.HttpGatewayRoutePrefixRewrite,
        path = M.HttpGatewayRoutePathRewrite,
        hostname = M.GatewayRouteHostnameRewrite,
    },
}

M.HttpGatewayRouteAction = {
    type = "structure",
    id = "HttpGatewayRouteAction",
    members = {
        target = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GatewayRouteTarget }),
        rewrite = M.HttpGatewayRouteRewrite,
    },
}

M.HeaderMatchMethod = {
    type = "union",
    id = "HeaderMatchMethod",
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
    id = "HttpGatewayRouteHeader",
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
    id = "HttpPathMatch",
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
    id = "QueryParameterMatch",
    members = {
        exact = {
            type = "string",
        },
    },
}

M.HttpQueryParameter = {
    type = "structure",
    id = "HttpQueryParameter",
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
    id = "HttpGatewayRouteMatch",
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
    id = "HttpGatewayRoute",
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
    id = "GatewayRouteSpec",
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
    id = "CreateGatewayRouteInput",
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
            traits = {
                idempotency_token = true,
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

M.GatewayRouteStatusCode = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DELETED = "DELETED",
}

M.GatewayRouteStatus = {
    type = "structure",
    id = "GatewayRouteStatus",
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
    id = "GatewayRouteData",
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
    id = "CreateGatewayRouteOutput",
    members = {
        gatewayRoute = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.GatewayRouteData }),
    },
}

M.DeleteGatewayRouteInput = {
    type = "structure",
    id = "DeleteGatewayRouteInput",
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
    id = "DeleteGatewayRouteOutput",
    members = {
        gatewayRoute = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.GatewayRouteData }),
    },
}

M.DescribeGatewayRouteInput = {
    type = "structure",
    id = "DescribeGatewayRouteInput",
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
    id = "DescribeGatewayRouteOutput",
    members = {
        gatewayRoute = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.GatewayRouteData }),
    },
}

M.ListGatewayRoutesInput = {
    type = "structure",
    id = "ListGatewayRoutesInput",
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
    id = "GatewayRouteRef",
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
    id = "ListGatewayRoutesOutput",
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
    id = "UpdateGatewayRouteInput",
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
            traits = {
                idempotency_token = true,
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

M.UpdateGatewayRouteOutput = {
    type = "structure",
    id = "UpdateGatewayRouteOutput",
    members = {
        gatewayRoute = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.GatewayRouteData }),
    },
}

M.ListVirtualGatewaysInput = {
    type = "structure",
    id = "ListVirtualGatewaysInput",
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
    id = "VirtualGatewayRef",
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
    id = "ListVirtualGatewaysOutput",
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
    id = "UpdateVirtualGatewayInput",
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
            traits = {
                idempotency_token = true,
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

M.UpdateVirtualGatewayOutput = {
    type = "structure",
    id = "UpdateVirtualGatewayOutput",
    members = {
        virtualGateway = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualGatewayData }),
    },
}

M.ListenerTlsFileCertificate = {
    type = "structure",
    id = "ListenerTlsFileCertificate",
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
    id = "ListenerTlsSdsCertificate",
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
    id = "ClientTlsCertificate",
    members = {
        file = M.ListenerTlsFileCertificate,
        sds = M.ListenerTlsSdsCertificate,
    },
}

M.TlsValidationContextAcmTrust = {
    type = "structure",
    id = "TlsValidationContextAcmTrust",
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
    id = "TlsValidationContextFileTrust",
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
    id = "TlsValidationContextSdsTrust",
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
    id = "TlsValidationContextTrust",
    members = {
        acm = M.TlsValidationContextAcmTrust,
        file = M.TlsValidationContextFileTrust,
        sds = M.TlsValidationContextSdsTrust,
    },
}

M.TlsValidationContext = {
    type = "structure",
    id = "TlsValidationContext",
    members = {
        trust = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TlsValidationContextTrust }),
        subjectAlternativeNames = M.SubjectAlternativeNames,
    },
}

M.ClientPolicyTls = {
    type = "structure",
    id = "ClientPolicyTls",
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
    id = "ClientPolicy",
    members = {
        tls = M.ClientPolicyTls,
    },
}

M.BackendDefaults = {
    type = "structure",
    id = "BackendDefaults",
    members = {
        clientPolicy = M.ClientPolicy,
    },
}

M.VirtualServiceBackend = {
    type = "structure",
    id = "VirtualServiceBackend",
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
    id = "Backend",
    members = {
        virtualService = M.VirtualServiceBackend,
    },
}

M.VirtualNodeGrpcConnectionPool = {
    type = "structure",
    id = "VirtualNodeGrpcConnectionPool",
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
    id = "VirtualNodeHttpConnectionPool",
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
    id = "VirtualNodeHttp2ConnectionPool",
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
    id = "VirtualNodeTcpConnectionPool",
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
    id = "VirtualNodeConnectionPool",
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
    id = "HealthCheckPolicy",
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
    id = "Duration",
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
    id = "OutlierDetection",
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
    id = "PortMapping",
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
    id = "GrpcTimeout",
    members = {
        perRequest = M.Duration,
        idle = M.Duration,
    },
}

M.HttpTimeout = {
    type = "structure",
    id = "HttpTimeout",
    members = {
        perRequest = M.Duration,
        idle = M.Duration,
    },
}

M.TcpTimeout = {
    type = "structure",
    id = "TcpTimeout",
    members = {
        idle = M.Duration,
    },
}

M.ListenerTimeout = {
    type = "union",
    id = "ListenerTimeout",
    members = {
        tcp = M.TcpTimeout,
        http = M.HttpTimeout,
        http2 = M.HttpTimeout,
        grpc = M.GrpcTimeout,
    },
}

M.ListenerTlsAcmCertificate = {
    type = "structure",
    id = "ListenerTlsAcmCertificate",
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
    id = "ListenerTlsCertificate",
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
    id = "ListenerTlsValidationContextTrust",
    members = {
        file = M.TlsValidationContextFileTrust,
        sds = M.TlsValidationContextSdsTrust,
    },
}

M.ListenerTlsValidationContext = {
    type = "structure",
    id = "ListenerTlsValidationContext",
    members = {
        trust = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ListenerTlsValidationContextTrust }),
        subjectAlternativeNames = M.SubjectAlternativeNames,
    },
}

M.ListenerTls = {
    type = "structure",
    id = "ListenerTls",
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
    id = "Listener",
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
    id = "Logging",
    members = {
        accessLog = M.AccessLog,
    },
}

M.AwsCloudMapInstanceAttribute = {
    type = "structure",
    id = "AwsCloudMapInstanceAttribute",
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
    id = "AwsCloudMapServiceDiscovery",
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
    id = "DnsServiceDiscovery",
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
    id = "ServiceDiscovery",
    members = {
        dns = M.DnsServiceDiscovery,
        awsCloudMap = M.AwsCloudMapServiceDiscovery,
    },
}

M.VirtualNodeSpec = {
    type = "structure",
    id = "VirtualNodeSpec",
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
    id = "CreateVirtualNodeInput",
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
            traits = {
                idempotency_token = true,
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

M.VirtualNodeStatusCode = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DELETED = "DELETED",
}

M.VirtualNodeStatus = {
    type = "structure",
    id = "VirtualNodeStatus",
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
    id = "VirtualNodeData",
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
    id = "CreateVirtualNodeOutput",
    members = {
        virtualNode = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualNodeData }),
    },
}

M.DeleteVirtualNodeInput = {
    type = "structure",
    id = "DeleteVirtualNodeInput",
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
    id = "DeleteVirtualNodeOutput",
    members = {
        virtualNode = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualNodeData }),
    },
}

M.DescribeVirtualNodeInput = {
    type = "structure",
    id = "DescribeVirtualNodeInput",
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
    id = "DescribeVirtualNodeOutput",
    members = {
        virtualNode = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualNodeData }),
    },
}

M.ListVirtualNodesInput = {
    type = "structure",
    id = "ListVirtualNodesInput",
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
    id = "VirtualNodeRef",
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
    id = "ListVirtualNodesOutput",
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
    id = "UpdateVirtualNodeInput",
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
            traits = {
                idempotency_token = true,
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

M.UpdateVirtualNodeOutput = {
    type = "structure",
    id = "UpdateVirtualNodeOutput",
    members = {
        virtualNode = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualNodeData }),
    },
}

M.VirtualRouterListener = {
    type = "structure",
    id = "VirtualRouterListener",
    members = {
        portMapping = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PortMapping }),
    },
}

M.VirtualRouterSpec = {
    type = "structure",
    id = "VirtualRouterSpec",
    members = {
        listeners = {
            type = "list",
            member = M.VirtualRouterListener,
        },
    },
}

M.CreateVirtualRouterInput = {
    type = "structure",
    id = "CreateVirtualRouterInput",
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
            traits = {
                idempotency_token = true,
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

M.VirtualRouterStatusCode = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DELETED = "DELETED",
}

M.VirtualRouterStatus = {
    type = "structure",
    id = "VirtualRouterStatus",
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
    id = "VirtualRouterData",
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
    id = "CreateVirtualRouterOutput",
    members = {
        virtualRouter = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualRouterData }),
    },
}

M.DeleteVirtualRouterInput = {
    type = "structure",
    id = "DeleteVirtualRouterInput",
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
    id = "DeleteVirtualRouterOutput",
    members = {
        virtualRouter = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualRouterData }),
    },
}

M.DescribeVirtualRouterInput = {
    type = "structure",
    id = "DescribeVirtualRouterInput",
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
    id = "DescribeVirtualRouterOutput",
    members = {
        virtualRouter = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualRouterData }),
    },
}

M.ListVirtualRoutersInput = {
    type = "structure",
    id = "ListVirtualRoutersInput",
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
    id = "VirtualRouterRef",
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
    id = "ListVirtualRoutersOutput",
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
    id = "WeightedTarget",
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
    id = "GrpcRouteAction",
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
    id = "GrpcRouteMetadataMatchMethod",
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
    id = "GrpcRouteMetadata",
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
    id = "GrpcRouteMatch",
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
    id = "GrpcRetryPolicy",
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
    id = "GrpcRoute",
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
    id = "HttpRouteAction",
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
    id = "HttpRouteHeader",
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
    id = "HttpRouteMatch",
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
    id = "HttpRetryPolicy",
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
    id = "HttpRoute",
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
    id = "TcpRouteAction",
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
    id = "TcpRouteMatch",
    members = {
        port = {
            type = "integer",
        },
    },
}

M.TcpRoute = {
    type = "structure",
    id = "TcpRoute",
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
    id = "RouteSpec",
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
    id = "CreateRouteInput",
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
            traits = {
                idempotency_token = true,
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

M.RouteStatusCode = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DELETED = "DELETED",
}

M.RouteStatus = {
    type = "structure",
    id = "RouteStatus",
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
    id = "RouteData",
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
    id = "CreateRouteOutput",
    members = {
        route = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.RouteData }),
    },
}

M.DeleteRouteInput = {
    type = "structure",
    id = "DeleteRouteInput",
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
    id = "DeleteRouteOutput",
    members = {
        route = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.RouteData }),
    },
}

M.DescribeRouteInput = {
    type = "structure",
    id = "DescribeRouteInput",
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
    id = "DescribeRouteOutput",
    members = {
        route = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.RouteData }),
    },
}

M.ListRoutesInput = {
    type = "structure",
    id = "ListRoutesInput",
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
    id = "RouteRef",
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
    id = "ListRoutesOutput",
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
    id = "UpdateRouteInput",
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
            traits = {
                idempotency_token = true,
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

M.UpdateRouteOutput = {
    type = "structure",
    id = "UpdateRouteOutput",
    members = {
        route = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.RouteData }),
    },
}

M.UpdateVirtualRouterInput = {
    type = "structure",
    id = "UpdateVirtualRouterInput",
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
            traits = {
                idempotency_token = true,
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

M.UpdateVirtualRouterOutput = {
    type = "structure",
    id = "UpdateVirtualRouterOutput",
    members = {
        virtualRouter = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualRouterData }),
    },
}

M.VirtualNodeServiceProvider = {
    type = "structure",
    id = "VirtualNodeServiceProvider",
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
    id = "VirtualRouterServiceProvider",
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
    id = "VirtualServiceProvider",
    members = {
        virtualNode = M.VirtualNodeServiceProvider,
        virtualRouter = M.VirtualRouterServiceProvider,
    },
}

M.VirtualServiceSpec = {
    type = "structure",
    id = "VirtualServiceSpec",
    members = {
        provider = M.VirtualServiceProvider,
    },
}

M.CreateVirtualServiceInput = {
    type = "structure",
    id = "CreateVirtualServiceInput",
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
            traits = {
                idempotency_token = true,
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

M.VirtualServiceStatusCode = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DELETED = "DELETED",
}

M.VirtualServiceStatus = {
    type = "structure",
    id = "VirtualServiceStatus",
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
    id = "VirtualServiceData",
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
    id = "CreateVirtualServiceOutput",
    members = {
        virtualService = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualServiceData }),
    },
}

M.DeleteVirtualServiceInput = {
    type = "structure",
    id = "DeleteVirtualServiceInput",
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
    id = "DeleteVirtualServiceOutput",
    members = {
        virtualService = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualServiceData }),
    },
}

M.DescribeVirtualServiceInput = {
    type = "structure",
    id = "DescribeVirtualServiceInput",
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
    id = "DescribeVirtualServiceOutput",
    members = {
        virtualService = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualServiceData }),
    },
}

M.ListVirtualServicesInput = {
    type = "structure",
    id = "ListVirtualServicesInput",
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
    id = "VirtualServiceRef",
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
    id = "ListVirtualServicesOutput",
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
    id = "UpdateVirtualServiceInput",
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
            traits = {
                idempotency_token = true,
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

M.UpdateVirtualServiceOutput = {
    type = "structure",
    id = "UpdateVirtualServiceOutput",
    members = {
        virtualService = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VirtualServiceData }),
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.TooManyTagsException = {
    type = "structure",
    id = "TooManyTagsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

return M
