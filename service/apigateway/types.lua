local M = {}

M.AccessAssociationSourceType = {
    VPCE = "VPCE",
}

M.AccessLogSettings = {
    type = "structure",
    members = {
        format = {
            type = "string",
        },
        destinationArn = {
            type = "string",
        },
    },
}

M.ThrottleSettings = {
    type = "structure",
    members = {
        burstLimit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        rateLimit = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.ApiKey = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        value = {
            type = "string",
        },
        name = {
            type = "string",
        },
        customerId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        createdDate = {
            type = "timestamp",
        },
        lastUpdatedDate = {
            type = "timestamp",
        },
        stageKeys = {
            type = "list",
            member = { type = "string" },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ApiKeysFormat = {
    csv = "csv",
}

M.ApiKeySourceType = {
    HEADER = "HEADER",
    AUTHORIZER = "AUTHORIZER",
}

M.ApiStage = {
    type = "structure",
    members = {
        apiId = {
            type = "string",
        },
        stage = {
            type = "string",
        },
        throttle = {
            type = "map",
            key = { type = "string" },
            value = M.ThrottleSettings,
        },
    },
}

M.ApiStatus = {
    UPDATING = "UPDATING",
    AVAILABLE = "AVAILABLE",
    PENDING = "PENDING",
    FAILED = "FAILED",
}

M.AuthorizerType = {
    TOKEN = "TOKEN",
    REQUEST = "REQUEST",
    COGNITO_USER_POOLS = "COGNITO_USER_POOLS",
}

M.Authorizer = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        providerARNs = {
            type = "list",
            member = { type = "string" },
        },
        authType = {
            type = "string",
        },
        authorizerUri = {
            type = "string",
        },
        authorizerCredentials = {
            type = "string",
        },
        identitySource = {
            type = "string",
        },
        identityValidationExpression = {
            type = "string",
        },
        authorizerResultTtlInSeconds = {
            type = "integer",
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

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StageKey = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
        },
        stageName = {
            type = "string",
        },
    },
}

M.CreateApiKeyInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        generateDistinctId = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        value = {
            type = "string",
        },
        stageKeys = {
            type = "list",
            member = M.StageKey,
        },
        customerId = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateApiKeyOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        value = {
            type = "string",
        },
        name = {
            type = "string",
        },
        customerId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        createdDate = {
            type = "timestamp",
        },
        lastUpdatedDate = {
            type = "timestamp",
        },
        stageKeys = {
            type = "list",
            member = { type = "string" },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        retryAfterSeconds = {
            type = "string",
            traits = {
                http_header = "Retry-After",
            },
        },
        message = {
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

M.TooManyRequestsException = {
    type = "structure",
    error = "client",
    members = {
        retryAfterSeconds = {
            type = "string",
            traits = {
                http_header = "Retry-After",
            },
        },
        message = {
            type = "string",
        },
    },
}

M.UnauthorizedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateAuthorizerInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        providerARNs = {
            type = "list",
            member = { type = "string" },
        },
        authType = {
            type = "string",
        },
        authorizerUri = {
            type = "string",
        },
        authorizerCredentials = {
            type = "string",
        },
        identitySource = {
            type = "string",
        },
        identityValidationExpression = {
            type = "string",
        },
        authorizerResultTtlInSeconds = {
            type = "integer",
        },
    },
}

M.CreateAuthorizerOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        providerARNs = {
            type = "list",
            member = { type = "string" },
        },
        authType = {
            type = "string",
        },
        authorizerUri = {
            type = "string",
        },
        authorizerCredentials = {
            type = "string",
        },
        identitySource = {
            type = "string",
        },
        identityValidationExpression = {
            type = "string",
        },
        authorizerResultTtlInSeconds = {
            type = "integer",
        },
    },
}

M.CreateBasePathMappingInput = {
    type = "structure",
    members = {
        domainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        domainNameId = {
            type = "string",
            traits = {
                http_query = "domainNameId",
            },
        },
        basePath = {
            type = "string",
        },
        restApiId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stage = {
            type = "string",
        },
    },
}

M.CreateBasePathMappingOutput = {
    type = "structure",
    members = {
        basePath = {
            type = "string",
        },
        restApiId = {
            type = "string",
        },
        stage = {
            type = "string",
        },
    },
}

M.CacheClusterSize = {
    SIZE_0_POINT_5_GB = "0.5",
    SIZE_1_POINT_6_GB = "1.6",
    SIZE_6_POINT_1_GB = "6.1",
    SIZE_13_POINT_5_GB = "13.5",
    SIZE_28_POINT_4_GB = "28.4",
    SIZE_58_POINT_2_GB = "58.2",
    SIZE_118_GB = "118",
    SIZE_237_GB = "237",
}

M.DeploymentCanarySettings = {
    type = "structure",
    members = {
        percentTraffic = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        stageVariableOverrides = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        useStageCache = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CreateDeploymentInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        stageName = {
            type = "string",
        },
        stageDescription = {
            type = "string",
        },
        description = {
            type = "string",
        },
        cacheClusterEnabled = {
            type = "boolean",
        },
        cacheClusterSize = {
            type = "string",
        },
        variables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        canarySettings = M.DeploymentCanarySettings,
        tracingEnabled = {
            type = "boolean",
        },
    },
}

M.MethodSnapshot = {
    type = "structure",
    members = {
        authorizationType = {
            type = "string",
        },
        apiKeyRequired = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CreateDeploymentOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdDate = {
            type = "timestamp",
        },
        apiSummary = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        retryAfterSeconds = {
            type = "string",
            traits = {
                http_header = "Retry-After",
            },
        },
        message = {
            type = "string",
        },
    },
}

M.DocumentationPartType = {
    API = "API",
    AUTHORIZER = "AUTHORIZER",
    MODEL = "MODEL",
    RESOURCE = "RESOURCE",
    METHOD = "METHOD",
    PATH_PARAMETER = "PATH_PARAMETER",
    QUERY_PARAMETER = "QUERY_PARAMETER",
    REQUEST_HEADER = "REQUEST_HEADER",
    REQUEST_BODY = "REQUEST_BODY",
    RESPONSE = "RESPONSE",
    RESPONSE_HEADER = "RESPONSE_HEADER",
    RESPONSE_BODY = "RESPONSE_BODY",
}

M.DocumentationPartLocation = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        path = {
            type = "string",
        },
        method = {
            type = "string",
        },
        statusCode = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.CreateDocumentationPartInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DocumentationPartLocation }),
        properties = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDocumentationPartOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        location = M.DocumentationPartLocation,
        properties = {
            type = "string",
        },
    },
}

M.CreateDocumentationVersionInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        documentationVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stageName = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.CreateDocumentationVersionOutput = {
    type = "structure",
    members = {
        version = {
            type = "string",
        },
        createdDate = {
            type = "timestamp",
        },
        description = {
            type = "string",
        },
    },
}

M.EndpointAccessMode = {
    BASIC = "BASIC",
    STRICT = "STRICT",
}

M.IpAddressType = {
    ipv4 = "ipv4",
    dualstack = "dualstack",
}

M.EndpointType = {
    REGIONAL = "REGIONAL",
    EDGE = "EDGE",
    PRIVATE = "PRIVATE",
}

M.EndpointConfiguration = {
    type = "structure",
    members = {
        types = {
            type = "list",
            member = { type = "string" },
        },
        ipAddressType = {
            type = "string",
        },
        vpcEndpointIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MutualTlsAuthenticationInput = {
    type = "structure",
    members = {
        truststoreUri = {
            type = "string",
        },
        truststoreVersion = {
            type = "string",
        },
    },
}

M.RoutingMode = {
    BASE_PATH_MAPPING_ONLY = "BASE_PATH_MAPPING_ONLY",
    ROUTING_RULE_ONLY = "ROUTING_RULE_ONLY",
    ROUTING_RULE_THEN_BASE_PATH_MAPPING = "ROUTING_RULE_THEN_BASE_PATH_MAPPING",
}

M.SecurityPolicy = {
    TLS_1_0 = "TLS_1_0",
    TLS_1_2 = "TLS_1_2",
    SecurityPolicy_TLS13_1_3_2025_09 = "SecurityPolicy_TLS13_1_3_2025_09",
    SecurityPolicy_TLS13_1_3_FIPS_2025_09 = "SecurityPolicy_TLS13_1_3_FIPS_2025_09",
    SecurityPolicy_TLS13_1_2_PFS_PQ_2025_09 = "SecurityPolicy_TLS13_1_2_PFS_PQ_2025_09",
    SecurityPolicy_TLS13_1_2_FIPS_PQ_2025_09 = "SecurityPolicy_TLS13_1_2_FIPS_PQ_2025_09",
    SecurityPolicy_TLS13_1_2_FIPS_PFS_PQ_2025_09 = "SecurityPolicy_TLS13_1_2_FIPS_PFS_PQ_2025_09",
    SecurityPolicy_TLS13_1_2_PQ_2025_09 = "SecurityPolicy_TLS13_1_2_PQ_2025_09",
    SecurityPolicy_TLS13_1_2_2021_06 = "SecurityPolicy_TLS13_1_2_2021_06",
    SecurityPolicy_TLS13_2025_EDGE = "SecurityPolicy_TLS13_2025_EDGE",
    SecurityPolicy_TLS12_PFS_2025_EDGE = "SecurityPolicy_TLS12_PFS_2025_EDGE",
    SecurityPolicy_TLS12_2018_EDGE = "SecurityPolicy_TLS12_2018_EDGE",
}

M.CreateDomainNameInput = {
    type = "structure",
    members = {
        domainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        certificateName = {
            type = "string",
        },
        certificateBody = {
            type = "string",
        },
        certificatePrivateKey = {
            type = "string",
        },
        certificateChain = {
            type = "string",
        },
        certificateArn = {
            type = "string",
        },
        regionalCertificateName = {
            type = "string",
        },
        regionalCertificateArn = {
            type = "string",
        },
        endpointConfiguration = M.EndpointConfiguration,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        securityPolicy = {
            type = "string",
        },
        endpointAccessMode = {
            type = "string",
        },
        mutualTlsAuthentication = M.MutualTlsAuthenticationInput,
        ownershipVerificationCertificateArn = {
            type = "string",
        },
        policy = {
            type = "string",
        },
        routingMode = {
            type = "string",
        },
    },
}

M.DomainNameStatus = {
    AVAILABLE = "AVAILABLE",
    UPDATING = "UPDATING",
    PENDING = "PENDING",
    PENDING_CERTIFICATE_REIMPORT = "PENDING_CERTIFICATE_REIMPORT",
    PENDING_OWNERSHIP_VERIFICATION = "PENDING_OWNERSHIP_VERIFICATION",
    FAILED = "FAILED",
}

M.MutualTlsAuthentication = {
    type = "structure",
    members = {
        truststoreUri = {
            type = "string",
        },
        truststoreVersion = {
            type = "string",
        },
        truststoreWarnings = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateDomainNameOutput = {
    type = "structure",
    members = {
        domainName = {
            type = "string",
        },
        domainNameId = {
            type = "string",
        },
        domainNameArn = {
            type = "string",
        },
        certificateName = {
            type = "string",
        },
        certificateArn = {
            type = "string",
        },
        certificateUploadDate = {
            type = "timestamp",
        },
        regionalDomainName = {
            type = "string",
        },
        regionalHostedZoneId = {
            type = "string",
        },
        regionalCertificateName = {
            type = "string",
        },
        regionalCertificateArn = {
            type = "string",
        },
        distributionDomainName = {
            type = "string",
        },
        distributionHostedZoneId = {
            type = "string",
        },
        endpointConfiguration = M.EndpointConfiguration,
        domainNameStatus = {
            type = "string",
        },
        domainNameStatusMessage = {
            type = "string",
        },
        securityPolicy = {
            type = "string",
        },
        endpointAccessMode = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        mutualTlsAuthentication = M.MutualTlsAuthentication,
        ownershipVerificationCertificateArn = {
            type = "string",
        },
        managementPolicy = {
            type = "string",
        },
        policy = {
            type = "string",
        },
        routingMode = {
            type = "string",
        },
    },
}

M.CreateDomainNameAccessAssociationInput = {
    type = "structure",
    members = {
        domainNameArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accessAssociationSourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accessAssociationSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateDomainNameAccessAssociationOutput = {
    type = "structure",
    members = {
        domainNameAccessAssociationArn = {
            type = "string",
        },
        domainNameArn = {
            type = "string",
        },
        accessAssociationSourceType = {
            type = "string",
        },
        accessAssociationSource = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateModelInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        schema = {
            type = "string",
        },
        contentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateModelOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        schema = {
            type = "string",
        },
        contentType = {
            type = "string",
        },
    },
}

M.CreateRequestValidatorInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        validateRequestBody = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        validateRequestParameters = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CreateRequestValidatorOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        validateRequestBody = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        validateRequestParameters = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CreateResourceInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        parentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        pathPart = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConnectionType = {
    INTERNET = "INTERNET",
    VPC_LINK = "VPC_LINK",
}

M.ContentHandlingStrategy = {
    CONVERT_TO_BINARY = "CONVERT_TO_BINARY",
    CONVERT_TO_TEXT = "CONVERT_TO_TEXT",
}

M.IntegrationResponse = {
    type = "structure",
    members = {
        statusCode = {
            type = "string",
        },
        selectionPattern = {
            type = "string",
        },
        responseParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        responseTemplates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        contentHandling = {
            type = "string",
        },
    },
}

M.ResponseTransferMode = {
    BUFFERED = "BUFFERED",
    STREAM = "STREAM",
}

M.TlsConfig = {
    type = "structure",
    members = {
        insecureSkipVerification = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.IntegrationType = {
    HTTP = "HTTP",
    AWS = "AWS",
    MOCK = "MOCK",
    HTTP_PROXY = "HTTP_PROXY",
    AWS_PROXY = "AWS_PROXY",
}

M.Integration = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        httpMethod = {
            type = "string",
        },
        uri = {
            type = "string",
        },
        connectionType = {
            type = "string",
        },
        connectionId = {
            type = "string",
        },
        credentials = {
            type = "string",
        },
        requestParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        requestTemplates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        passthroughBehavior = {
            type = "string",
        },
        contentHandling = {
            type = "string",
        },
        timeoutInMillis = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        cacheNamespace = {
            type = "string",
        },
        cacheKeyParameters = {
            type = "list",
            member = { type = "string" },
        },
        integrationResponses = {
            type = "map",
            key = { type = "string" },
            value = M.IntegrationResponse,
        },
        tlsConfig = M.TlsConfig,
        responseTransferMode = {
            type = "string",
        },
        integrationTarget = {
            type = "string",
        },
    },
}

M.MethodResponse = {
    type = "structure",
    members = {
        statusCode = {
            type = "string",
        },
        responseParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "boolean" },
        },
        responseModels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.Method = {
    type = "structure",
    members = {
        httpMethod = {
            type = "string",
        },
        authorizationType = {
            type = "string",
        },
        authorizerId = {
            type = "string",
        },
        apiKeyRequired = {
            type = "boolean",
        },
        requestValidatorId = {
            type = "string",
        },
        operationName = {
            type = "string",
        },
        requestParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "boolean" },
        },
        requestModels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        methodResponses = {
            type = "map",
            key = { type = "string" },
            value = M.MethodResponse,
        },
        methodIntegration = M.Integration,
        authorizationScopes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateResourceOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        parentId = {
            type = "string",
        },
        pathPart = {
            type = "string",
        },
        path = {
            type = "string",
        },
        resourceMethods = {
            type = "map",
            key = { type = "string" },
            value = M.Method,
        },
    },
}

M.CreateRestApiInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        version = {
            type = "string",
        },
        cloneFrom = {
            type = "string",
        },
        binaryMediaTypes = {
            type = "list",
            member = { type = "string" },
        },
        minimumCompressionSize = {
            type = "integer",
        },
        apiKeySource = {
            type = "string",
        },
        endpointConfiguration = M.EndpointConfiguration,
        policy = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        disableExecuteApiEndpoint = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        securityPolicy = {
            type = "string",
        },
        endpointAccessMode = {
            type = "string",
        },
    },
}

M.CreateRestApiOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdDate = {
            type = "timestamp",
        },
        version = {
            type = "string",
        },
        warnings = {
            type = "list",
            member = { type = "string" },
        },
        binaryMediaTypes = {
            type = "list",
            member = { type = "string" },
        },
        minimumCompressionSize = {
            type = "integer",
        },
        apiKeySource = {
            type = "string",
        },
        endpointConfiguration = M.EndpointConfiguration,
        policy = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        disableExecuteApiEndpoint = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        rootResourceId = {
            type = "string",
        },
        securityPolicy = {
            type = "string",
        },
        endpointAccessMode = {
            type = "string",
        },
        apiStatus = {
            type = "string",
        },
        apiStatusMessage = {
            type = "string",
        },
    },
}

M.CanarySettings = {
    type = "structure",
    members = {
        percentTraffic = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        deploymentId = {
            type = "string",
        },
        stageVariableOverrides = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        useStageCache = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CreateStageInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        stageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        cacheClusterEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        cacheClusterSize = {
            type = "string",
        },
        variables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        documentationVersion = {
            type = "string",
        },
        canarySettings = M.CanarySettings,
        tracingEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CacheClusterStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    AVAILABLE = "AVAILABLE",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    NOT_AVAILABLE = "NOT_AVAILABLE",
    FLUSH_IN_PROGRESS = "FLUSH_IN_PROGRESS",
}

M.UnauthorizedCacheControlHeaderStrategy = {
    FAIL_WITH_403 = "FAIL_WITH_403",
    SUCCEED_WITH_RESPONSE_HEADER = "SUCCEED_WITH_RESPONSE_HEADER",
    SUCCEED_WITHOUT_RESPONSE_HEADER = "SUCCEED_WITHOUT_RESPONSE_HEADER",
}

M.MethodSetting = {
    type = "structure",
    members = {
        metricsEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        loggingLevel = {
            type = "string",
        },
        dataTraceEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        throttlingBurstLimit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        throttlingRateLimit = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        cachingEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        cacheTtlInSeconds = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        cacheDataEncrypted = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        requireAuthorizationForCacheControl = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        unauthorizedCacheControlHeaderStrategy = {
            type = "string",
        },
    },
}

M.CreateStageOutput = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
        },
        clientCertificateId = {
            type = "string",
        },
        stageName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        cacheClusterEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        cacheClusterSize = {
            type = "string",
        },
        cacheClusterStatus = {
            type = "string",
        },
        methodSettings = {
            type = "map",
            key = { type = "string" },
            value = M.MethodSetting,
        },
        variables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        documentationVersion = {
            type = "string",
        },
        accessLogSettings = M.AccessLogSettings,
        canarySettings = M.CanarySettings,
        tracingEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        webAclArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        createdDate = {
            type = "timestamp",
        },
        lastUpdatedDate = {
            type = "timestamp",
        },
    },
}

M.QuotaPeriodType = {
    DAY = "DAY",
    WEEK = "WEEK",
    MONTH = "MONTH",
}

M.QuotaSettings = {
    type = "structure",
    members = {
        limit = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        offset = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        period = {
            type = "string",
        },
    },
}

M.CreateUsagePlanInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        apiStages = {
            type = "list",
            member = M.ApiStage,
        },
        throttle = M.ThrottleSettings,
        quota = M.QuotaSettings,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateUsagePlanOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        apiStages = {
            type = "list",
            member = M.ApiStage,
        },
        throttle = M.ThrottleSettings,
        quota = M.QuotaSettings,
        productCode = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateUsagePlanKeyInput = {
    type = "structure",
    members = {
        usagePlanId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        keyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        keyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateUsagePlanKeyOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        type = {
            type = "string",
        },
        value = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.CreateVpcLinkInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        targetArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.VpcLinkStatus = {
    AVAILABLE = "AVAILABLE",
    PENDING = "PENDING",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.CreateVpcLinkOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        targetArns = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DeleteApiKeyInput = {
    type = "structure",
    members = {
        apiKey = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteApiKeyOutput = {
    type = "structure",
}

M.DeleteAuthorizerInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        authorizerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAuthorizerOutput = {
    type = "structure",
}

M.DeleteBasePathMappingInput = {
    type = "structure",
    members = {
        domainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        domainNameId = {
            type = "string",
            traits = {
                http_query = "domainNameId",
            },
        },
        basePath = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBasePathMappingOutput = {
    type = "structure",
}

M.DeleteClientCertificateInput = {
    type = "structure",
    members = {
        clientCertificateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteClientCertificateOutput = {
    type = "structure",
}

M.DeleteDeploymentInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        deploymentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDeploymentOutput = {
    type = "structure",
}

M.DeleteDocumentationPartInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        documentationPartId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDocumentationPartOutput = {
    type = "structure",
}

M.DeleteDocumentationVersionInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        documentationVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDocumentationVersionOutput = {
    type = "structure",
}

M.DeleteDomainNameInput = {
    type = "structure",
    members = {
        domainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        domainNameId = {
            type = "string",
            traits = {
                http_query = "domainNameId",
            },
        },
    },
}

M.DeleteDomainNameOutput = {
    type = "structure",
}

M.DeleteDomainNameAccessAssociationInput = {
    type = "structure",
    members = {
        domainNameAccessAssociationArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDomainNameAccessAssociationOutput = {
    type = "structure",
}

M.GatewayResponseType = {
    DEFAULT_4XX = "DEFAULT_4XX",
    DEFAULT_5XX = "DEFAULT_5XX",
    RESOURCE_NOT_FOUND = "RESOURCE_NOT_FOUND",
    UNAUTHORIZED = "UNAUTHORIZED",
    INVALID_API_KEY = "INVALID_API_KEY",
    ACCESS_DENIED = "ACCESS_DENIED",
    AUTHORIZER_FAILURE = "AUTHORIZER_FAILURE",
    AUTHORIZER_CONFIGURATION_ERROR = "AUTHORIZER_CONFIGURATION_ERROR",
    INVALID_SIGNATURE = "INVALID_SIGNATURE",
    EXPIRED_TOKEN = "EXPIRED_TOKEN",
    MISSING_AUTHENTICATION_TOKEN = "MISSING_AUTHENTICATION_TOKEN",
    INTEGRATION_FAILURE = "INTEGRATION_FAILURE",
    INTEGRATION_TIMEOUT = "INTEGRATION_TIMEOUT",
    API_CONFIGURATION_ERROR = "API_CONFIGURATION_ERROR",
    UNSUPPORTED_MEDIA_TYPE = "UNSUPPORTED_MEDIA_TYPE",
    BAD_REQUEST_PARAMETERS = "BAD_REQUEST_PARAMETERS",
    BAD_REQUEST_BODY = "BAD_REQUEST_BODY",
    REQUEST_TOO_LARGE = "REQUEST_TOO_LARGE",
    THROTTLED = "THROTTLED",
    QUOTA_EXCEEDED = "QUOTA_EXCEEDED",
    WAF_FILTERED = "WAF_FILTERED",
}

M.DeleteGatewayResponseInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        responseType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteGatewayResponseOutput = {
    type = "structure",
}

M.DeleteIntegrationInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        httpMethod = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteIntegrationOutput = {
    type = "structure",
}

M.DeleteIntegrationResponseInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        httpMethod = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        statusCode = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteIntegrationResponseOutput = {
    type = "structure",
}

M.DeleteMethodInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        httpMethod = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMethodOutput = {
    type = "structure",
}

M.DeleteMethodResponseInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        httpMethod = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        statusCode = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMethodResponseOutput = {
    type = "structure",
}

M.DeleteModelInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        modelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteModelOutput = {
    type = "structure",
}

M.DeleteRequestValidatorInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        requestValidatorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRequestValidatorOutput = {
    type = "structure",
}

M.DeleteResourceInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteResourceOutput = {
    type = "structure",
}

M.DeleteRestApiInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRestApiOutput = {
    type = "structure",
}

M.DeleteStageInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        stageName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteStageOutput = {
    type = "structure",
}

M.DeleteUsagePlanInput = {
    type = "structure",
    members = {
        usagePlanId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteUsagePlanOutput = {
    type = "structure",
}

M.DeleteUsagePlanKeyInput = {
    type = "structure",
    members = {
        usagePlanId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        keyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteUsagePlanKeyOutput = {
    type = "structure",
}

M.DeleteVpcLinkInput = {
    type = "structure",
    members = {
        vpcLinkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteVpcLinkOutput = {
    type = "structure",
}

M.FlushStageAuthorizersCacheInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        stageName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.FlushStageAuthorizersCacheOutput = {
    type = "structure",
}

M.FlushStageCacheInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        stageName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.FlushStageCacheOutput = {
    type = "structure",
}

M.GenerateClientCertificateInput = {
    type = "structure",
    members = {
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GenerateClientCertificateOutput = {
    type = "structure",
    members = {
        clientCertificateId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        pemEncodedCertificate = {
            type = "string",
        },
        createdDate = {
            type = "timestamp",
        },
        expirationDate = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetAccountInput = {
    type = "structure",
}

M.GetAccountOutput = {
    type = "structure",
    members = {
        cloudwatchRoleArn = {
            type = "string",
        },
        throttleSettings = M.ThrottleSettings,
        features = {
            type = "list",
            member = { type = "string" },
        },
        apiKeyVersion = {
            type = "string",
        },
    },
}

M.GetApiKeyInput = {
    type = "structure",
    members = {
        apiKey = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        includeValue = {
            type = "boolean",
            traits = {
                http_query = "includeValue",
            },
        },
    },
}

M.GetApiKeyOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        value = {
            type = "string",
        },
        name = {
            type = "string",
        },
        customerId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        createdDate = {
            type = "timestamp",
        },
        lastUpdatedDate = {
            type = "timestamp",
        },
        stageKeys = {
            type = "list",
            member = { type = "string" },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetApiKeysInput = {
    type = "structure",
    members = {
        position = {
            type = "string",
            traits = {
                http_query = "position",
            },
        },
        limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
        nameQuery = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
        customerId = {
            type = "string",
            traits = {
                http_query = "customerId",
            },
        },
        includeValues = {
            type = "boolean",
            traits = {
                http_query = "includeValues",
            },
        },
    },
}

M.GetApiKeysOutput = {
    type = "structure",
    members = {
        warnings = {
            type = "list",
            member = { type = "string" },
        },
        items = {
            type = "list",
            member = M.ApiKey,
            traits = {
                json_name = "item",
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
            },
        },
    },
}

M.GetAuthorizerInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        authorizerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAuthorizerOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        providerARNs = {
            type = "list",
            member = { type = "string" },
        },
        authType = {
            type = "string",
        },
        authorizerUri = {
            type = "string",
        },
        authorizerCredentials = {
            type = "string",
        },
        identitySource = {
            type = "string",
        },
        identityValidationExpression = {
            type = "string",
        },
        authorizerResultTtlInSeconds = {
            type = "integer",
        },
    },
}

M.GetAuthorizersInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
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

M.GetAuthorizersOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.Authorizer,
            traits = {
                json_name = "item",
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
            },
        },
    },
}

M.GetBasePathMappingInput = {
    type = "structure",
    members = {
        domainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        domainNameId = {
            type = "string",
            traits = {
                http_query = "domainNameId",
            },
        },
        basePath = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetBasePathMappingOutput = {
    type = "structure",
    members = {
        basePath = {
            type = "string",
        },
        restApiId = {
            type = "string",
        },
        stage = {
            type = "string",
        },
    },
}

M.GetBasePathMappingsInput = {
    type = "structure",
    members = {
        domainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        domainNameId = {
            type = "string",
            traits = {
                http_query = "domainNameId",
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
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

M.BasePathMapping = {
    type = "structure",
    members = {
        basePath = {
            type = "string",
        },
        restApiId = {
            type = "string",
        },
        stage = {
            type = "string",
        },
    },
}

M.GetBasePathMappingsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.BasePathMapping,
            traits = {
                json_name = "item",
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
            },
        },
    },
}

M.GetClientCertificateInput = {
    type = "structure",
    members = {
        clientCertificateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetClientCertificateOutput = {
    type = "structure",
    members = {
        clientCertificateId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        pemEncodedCertificate = {
            type = "string",
        },
        createdDate = {
            type = "timestamp",
        },
        expirationDate = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetClientCertificatesInput = {
    type = "structure",
    members = {
        position = {
            type = "string",
            traits = {
                http_query = "position",
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

M.ClientCertificate = {
    type = "structure",
    members = {
        clientCertificateId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        pemEncodedCertificate = {
            type = "string",
        },
        createdDate = {
            type = "timestamp",
        },
        expirationDate = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetClientCertificatesOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.ClientCertificate,
            traits = {
                json_name = "item",
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
            },
        },
    },
}

M.GetDeploymentInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        deploymentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        embed = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "embed",
            },
        },
    },
}

M.GetDeploymentOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdDate = {
            type = "timestamp",
        },
        apiSummary = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
        },
    },
}

M.GetDeploymentsInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
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

M.Deployment = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdDate = {
            type = "timestamp",
        },
        apiSummary = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
        },
    },
}

M.GetDeploymentsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.Deployment,
            traits = {
                json_name = "item",
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
            },
        },
    },
}

M.GetDocumentationPartInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        documentationPartId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDocumentationPartOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        location = M.DocumentationPartLocation,
        properties = {
            type = "string",
        },
    },
}

M.LocationStatusType = {
    DOCUMENTED = "DOCUMENTED",
    UNDOCUMENTED = "UNDOCUMENTED",
}

M.GetDocumentationPartsInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                http_query = "type",
            },
        },
        nameQuery = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
        path = {
            type = "string",
            traits = {
                http_query = "path",
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
            },
        },
        limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
        locationStatus = {
            type = "string",
            traits = {
                http_query = "locationStatus",
            },
        },
    },
}

M.DocumentationPart = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        location = M.DocumentationPartLocation,
        properties = {
            type = "string",
        },
    },
}

M.GetDocumentationPartsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.DocumentationPart,
            traits = {
                json_name = "item",
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
            },
        },
    },
}

M.GetDocumentationVersionInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        documentationVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDocumentationVersionOutput = {
    type = "structure",
    members = {
        version = {
            type = "string",
        },
        createdDate = {
            type = "timestamp",
        },
        description = {
            type = "string",
        },
    },
}

M.GetDocumentationVersionsInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
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

M.DocumentationVersion = {
    type = "structure",
    members = {
        version = {
            type = "string",
        },
        createdDate = {
            type = "timestamp",
        },
        description = {
            type = "string",
        },
    },
}

M.GetDocumentationVersionsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.DocumentationVersion,
            traits = {
                json_name = "item",
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
            },
        },
    },
}

M.GetDomainNameInput = {
    type = "structure",
    members = {
        domainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        domainNameId = {
            type = "string",
            traits = {
                http_query = "domainNameId",
            },
        },
    },
}

M.GetDomainNameOutput = {
    type = "structure",
    members = {
        domainName = {
            type = "string",
        },
        domainNameId = {
            type = "string",
        },
        domainNameArn = {
            type = "string",
        },
        certificateName = {
            type = "string",
        },
        certificateArn = {
            type = "string",
        },
        certificateUploadDate = {
            type = "timestamp",
        },
        regionalDomainName = {
            type = "string",
        },
        regionalHostedZoneId = {
            type = "string",
        },
        regionalCertificateName = {
            type = "string",
        },
        regionalCertificateArn = {
            type = "string",
        },
        distributionDomainName = {
            type = "string",
        },
        distributionHostedZoneId = {
            type = "string",
        },
        endpointConfiguration = M.EndpointConfiguration,
        domainNameStatus = {
            type = "string",
        },
        domainNameStatusMessage = {
            type = "string",
        },
        securityPolicy = {
            type = "string",
        },
        endpointAccessMode = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        mutualTlsAuthentication = M.MutualTlsAuthentication,
        ownershipVerificationCertificateArn = {
            type = "string",
        },
        managementPolicy = {
            type = "string",
        },
        policy = {
            type = "string",
        },
        routingMode = {
            type = "string",
        },
    },
}

M.ResourceOwner = {
    SELF = "SELF",
    OTHER_ACCOUNTS = "OTHER_ACCOUNTS",
}

M.GetDomainNameAccessAssociationsInput = {
    type = "structure",
    members = {
        position = {
            type = "string",
            traits = {
                http_query = "position",
            },
        },
        limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
        resourceOwner = {
            type = "string",
            traits = {
                http_query = "resourceOwner",
            },
        },
    },
}

M.DomainNameAccessAssociation = {
    type = "structure",
    members = {
        domainNameAccessAssociationArn = {
            type = "string",
        },
        domainNameArn = {
            type = "string",
        },
        accessAssociationSourceType = {
            type = "string",
        },
        accessAssociationSource = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetDomainNameAccessAssociationsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.DomainNameAccessAssociation,
            traits = {
                json_name = "item",
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
            },
        },
    },
}

M.GetDomainNamesInput = {
    type = "structure",
    members = {
        position = {
            type = "string",
            traits = {
                http_query = "position",
            },
        },
        limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
        resourceOwner = {
            type = "string",
            traits = {
                http_query = "resourceOwner",
            },
        },
    },
}

M.DomainName = {
    type = "structure",
    members = {
        domainName = {
            type = "string",
        },
        domainNameId = {
            type = "string",
        },
        domainNameArn = {
            type = "string",
        },
        certificateName = {
            type = "string",
        },
        certificateArn = {
            type = "string",
        },
        certificateUploadDate = {
            type = "timestamp",
        },
        regionalDomainName = {
            type = "string",
        },
        regionalHostedZoneId = {
            type = "string",
        },
        regionalCertificateName = {
            type = "string",
        },
        regionalCertificateArn = {
            type = "string",
        },
        distributionDomainName = {
            type = "string",
        },
        distributionHostedZoneId = {
            type = "string",
        },
        endpointConfiguration = M.EndpointConfiguration,
        domainNameStatus = {
            type = "string",
        },
        domainNameStatusMessage = {
            type = "string",
        },
        securityPolicy = {
            type = "string",
        },
        endpointAccessMode = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        mutualTlsAuthentication = M.MutualTlsAuthentication,
        ownershipVerificationCertificateArn = {
            type = "string",
        },
        managementPolicy = {
            type = "string",
        },
        policy = {
            type = "string",
        },
        routingMode = {
            type = "string",
        },
    },
}

M.GetDomainNamesOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.DomainName,
            traits = {
                json_name = "item",
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
            },
        },
    },
}

M.GetExportInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        stageName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        exportType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                http_query_params = true,
            },
        },
        accepts = {
            type = "string",
            traits = {
                http_header = "Accept",
            },
        },
    },
}

M.GetExportOutput = {
    type = "structure",
    members = {
        contentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        contentDisposition = {
            type = "string",
            traits = {
                http_header = "Content-Disposition",
            },
        },
        body = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.GetGatewayResponseInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        responseType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetGatewayResponseOutput = {
    type = "structure",
    members = {
        responseType = {
            type = "string",
        },
        statusCode = {
            type = "string",
        },
        responseParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        responseTemplates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        defaultResponse = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.GetGatewayResponsesInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
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

M.GatewayResponse = {
    type = "structure",
    members = {
        responseType = {
            type = "string",
        },
        statusCode = {
            type = "string",
        },
        responseParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        responseTemplates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        defaultResponse = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.GetGatewayResponsesOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.GatewayResponse,
            traits = {
                json_name = "item",
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
            },
        },
    },
}

M.GetIntegrationInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        httpMethod = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetIntegrationOutput = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        httpMethod = {
            type = "string",
        },
        uri = {
            type = "string",
        },
        connectionType = {
            type = "string",
        },
        connectionId = {
            type = "string",
        },
        credentials = {
            type = "string",
        },
        requestParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        requestTemplates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        passthroughBehavior = {
            type = "string",
        },
        contentHandling = {
            type = "string",
        },
        timeoutInMillis = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        cacheNamespace = {
            type = "string",
        },
        cacheKeyParameters = {
            type = "list",
            member = { type = "string" },
        },
        integrationResponses = {
            type = "map",
            key = { type = "string" },
            value = M.IntegrationResponse,
        },
        tlsConfig = M.TlsConfig,
        responseTransferMode = {
            type = "string",
        },
        integrationTarget = {
            type = "string",
        },
    },
}

M.GetIntegrationResponseInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        httpMethod = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        statusCode = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetIntegrationResponseOutput = {
    type = "structure",
    members = {
        statusCode = {
            type = "string",
        },
        selectionPattern = {
            type = "string",
        },
        responseParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        responseTemplates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        contentHandling = {
            type = "string",
        },
    },
}

M.GetMethodInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        httpMethod = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetMethodOutput = {
    type = "structure",
    members = {
        httpMethod = {
            type = "string",
        },
        authorizationType = {
            type = "string",
        },
        authorizerId = {
            type = "string",
        },
        apiKeyRequired = {
            type = "boolean",
        },
        requestValidatorId = {
            type = "string",
        },
        operationName = {
            type = "string",
        },
        requestParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "boolean" },
        },
        requestModels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        methodResponses = {
            type = "map",
            key = { type = "string" },
            value = M.MethodResponse,
        },
        methodIntegration = M.Integration,
        authorizationScopes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetMethodResponseInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        httpMethod = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        statusCode = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetMethodResponseOutput = {
    type = "structure",
    members = {
        statusCode = {
            type = "string",
        },
        responseParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "boolean" },
        },
        responseModels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetModelInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        modelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        flatten = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "flatten",
            },
        },
    },
}

M.GetModelOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        schema = {
            type = "string",
        },
        contentType = {
            type = "string",
        },
    },
}

M.GetModelsInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
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

M.Model = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        schema = {
            type = "string",
        },
        contentType = {
            type = "string",
        },
    },
}

M.GetModelsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.Model,
            traits = {
                json_name = "item",
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
            },
        },
    },
}

M.GetModelTemplateInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        modelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetModelTemplateOutput = {
    type = "structure",
    members = {
        value = {
            type = "string",
        },
    },
}

M.GetRequestValidatorInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        requestValidatorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetRequestValidatorOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        validateRequestBody = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        validateRequestParameters = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.GetRequestValidatorsInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
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

M.RequestValidator = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        validateRequestBody = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        validateRequestParameters = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.GetRequestValidatorsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.RequestValidator,
            traits = {
                json_name = "item",
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
            },
        },
    },
}

M.GetResourceInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        embed = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "embed",
            },
        },
    },
}

M.GetResourceOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        parentId = {
            type = "string",
        },
        pathPart = {
            type = "string",
        },
        path = {
            type = "string",
        },
        resourceMethods = {
            type = "map",
            key = { type = "string" },
            value = M.Method,
        },
    },
}

M.GetResourcesInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
            },
        },
        limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
        embed = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "embed",
            },
        },
    },
}

M.Resource = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        parentId = {
            type = "string",
        },
        pathPart = {
            type = "string",
        },
        path = {
            type = "string",
        },
        resourceMethods = {
            type = "map",
            key = { type = "string" },
            value = M.Method,
        },
    },
}

M.GetResourcesOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.Resource,
            traits = {
                json_name = "item",
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
            },
        },
    },
}

M.GetRestApiInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetRestApiOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdDate = {
            type = "timestamp",
        },
        version = {
            type = "string",
        },
        warnings = {
            type = "list",
            member = { type = "string" },
        },
        binaryMediaTypes = {
            type = "list",
            member = { type = "string" },
        },
        minimumCompressionSize = {
            type = "integer",
        },
        apiKeySource = {
            type = "string",
        },
        endpointConfiguration = M.EndpointConfiguration,
        policy = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        disableExecuteApiEndpoint = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        rootResourceId = {
            type = "string",
        },
        securityPolicy = {
            type = "string",
        },
        endpointAccessMode = {
            type = "string",
        },
        apiStatus = {
            type = "string",
        },
        apiStatusMessage = {
            type = "string",
        },
    },
}

M.GetRestApisInput = {
    type = "structure",
    members = {
        position = {
            type = "string",
            traits = {
                http_query = "position",
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

M.RestApi = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdDate = {
            type = "timestamp",
        },
        version = {
            type = "string",
        },
        warnings = {
            type = "list",
            member = { type = "string" },
        },
        binaryMediaTypes = {
            type = "list",
            member = { type = "string" },
        },
        minimumCompressionSize = {
            type = "integer",
        },
        apiKeySource = {
            type = "string",
        },
        endpointConfiguration = M.EndpointConfiguration,
        policy = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        disableExecuteApiEndpoint = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        rootResourceId = {
            type = "string",
        },
        securityPolicy = {
            type = "string",
        },
        endpointAccessMode = {
            type = "string",
        },
        apiStatus = {
            type = "string",
        },
        apiStatusMessage = {
            type = "string",
        },
    },
}

M.GetRestApisOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.RestApi,
            traits = {
                json_name = "item",
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
            },
        },
    },
}

M.GetSdkInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        stageName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sdkType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                http_query_params = true,
            },
        },
    },
}

M.GetSdkOutput = {
    type = "structure",
    members = {
        contentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        contentDisposition = {
            type = "string",
            traits = {
                http_header = "Content-Disposition",
            },
        },
        body = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.GetSdkTypeInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SdkConfigurationProperty = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        friendlyName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        required = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        defaultValue = {
            type = "string",
        },
    },
}

M.GetSdkTypeOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        friendlyName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        configurationProperties = {
            type = "list",
            member = M.SdkConfigurationProperty,
        },
    },
}

M.GetSdkTypesInput = {
    type = "structure",
    members = {
        position = {
            type = "string",
            traits = {
                http_query = "position",
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

M.SdkType = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        friendlyName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        configurationProperties = {
            type = "list",
            member = M.SdkConfigurationProperty,
        },
    },
}

M.GetSdkTypesOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.SdkType,
            traits = {
                json_name = "item",
            },
        },
    },
}

M.GetStageInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        stageName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetStageOutput = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
        },
        clientCertificateId = {
            type = "string",
        },
        stageName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        cacheClusterEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        cacheClusterSize = {
            type = "string",
        },
        cacheClusterStatus = {
            type = "string",
        },
        methodSettings = {
            type = "map",
            key = { type = "string" },
            value = M.MethodSetting,
        },
        variables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        documentationVersion = {
            type = "string",
        },
        accessLogSettings = M.AccessLogSettings,
        canarySettings = M.CanarySettings,
        tracingEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        webAclArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        createdDate = {
            type = "timestamp",
        },
        lastUpdatedDate = {
            type = "timestamp",
        },
    },
}

M.GetStagesInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        deploymentId = {
            type = "string",
            traits = {
                http_query = "deploymentId",
            },
        },
    },
}

M.Stage = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
        },
        clientCertificateId = {
            type = "string",
        },
        stageName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        cacheClusterEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        cacheClusterSize = {
            type = "string",
        },
        cacheClusterStatus = {
            type = "string",
        },
        methodSettings = {
            type = "map",
            key = { type = "string" },
            value = M.MethodSetting,
        },
        variables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        documentationVersion = {
            type = "string",
        },
        accessLogSettings = M.AccessLogSettings,
        canarySettings = M.CanarySettings,
        tracingEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        webAclArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        createdDate = {
            type = "timestamp",
        },
        lastUpdatedDate = {
            type = "timestamp",
        },
    },
}

M.GetStagesOutput = {
    type = "structure",
    members = {
        item = {
            type = "list",
            member = M.Stage,
        },
    },
}

M.GetTagsInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
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

M.GetTagsOutput = {
    type = "structure",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetUsageInput = {
    type = "structure",
    members = {
        usagePlanId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        keyId = {
            type = "string",
            traits = {
                http_query = "keyId",
            },
        },
        startDate = {
            type = "string",
            traits = {
                http_query = "startDate",
                required = true,
            },
        },
        endDate = {
            type = "string",
            traits = {
                http_query = "endDate",
                required = true,
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
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

M.GetUsageOutput = {
    type = "structure",
    members = {
        usagePlanId = {
            type = "string",
        },
        startDate = {
            type = "string",
        },
        endDate = {
            type = "string",
        },
        items = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
            traits = {
                json_name = "values",
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
            },
        },
    },
}

M.GetUsagePlanInput = {
    type = "structure",
    members = {
        usagePlanId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetUsagePlanOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        apiStages = {
            type = "list",
            member = M.ApiStage,
        },
        throttle = M.ThrottleSettings,
        quota = M.QuotaSettings,
        productCode = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetUsagePlanKeyInput = {
    type = "structure",
    members = {
        usagePlanId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        keyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetUsagePlanKeyOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        type = {
            type = "string",
        },
        value = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.GetUsagePlanKeysInput = {
    type = "structure",
    members = {
        usagePlanId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
            },
        },
        limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
        nameQuery = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
    },
}

M.UsagePlanKey = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        type = {
            type = "string",
        },
        value = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.GetUsagePlanKeysOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.UsagePlanKey,
            traits = {
                json_name = "item",
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
            },
        },
    },
}

M.GetUsagePlansInput = {
    type = "structure",
    members = {
        position = {
            type = "string",
            traits = {
                http_query = "position",
            },
        },
        keyId = {
            type = "string",
            traits = {
                http_query = "keyId",
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

M.UsagePlan = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        apiStages = {
            type = "list",
            member = M.ApiStage,
        },
        throttle = M.ThrottleSettings,
        quota = M.QuotaSettings,
        productCode = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetUsagePlansOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.UsagePlan,
            traits = {
                json_name = "item",
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
            },
        },
    },
}

M.GetVpcLinkInput = {
    type = "structure",
    members = {
        vpcLinkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetVpcLinkOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        targetArns = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetVpcLinksInput = {
    type = "structure",
    members = {
        position = {
            type = "string",
            traits = {
                http_query = "position",
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

M.VpcLink = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        targetArns = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetVpcLinksOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.VpcLink,
            traits = {
                json_name = "item",
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
            },
        },
    },
}

M.ImportApiKeysInput = {
    type = "structure",
    members = {
        body = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                http_query = "format",
                required = true,
            },
        },
        failOnWarnings = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "failonwarnings",
            },
        },
    },
}

M.ImportApiKeysOutput = {
    type = "structure",
    members = {
        ids = {
            type = "list",
            member = { type = "string" },
        },
        warnings = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PutMode = {
    Merge = "merge",
    Overwrite = "overwrite",
}

M.ImportDocumentationPartsInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        mode = {
            type = "string",
            traits = {
                http_query = "mode",
            },
        },
        failOnWarnings = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "failonwarnings",
            },
        },
        body = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.ImportDocumentationPartsOutput = {
    type = "structure",
    members = {
        ids = {
            type = "list",
            member = { type = "string" },
        },
        warnings = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ImportRestApiInput = {
    type = "structure",
    members = {
        failOnWarnings = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "failonwarnings",
            },
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                http_query_params = true,
            },
        },
        body = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.ImportRestApiOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdDate = {
            type = "timestamp",
        },
        version = {
            type = "string",
        },
        warnings = {
            type = "list",
            member = { type = "string" },
        },
        binaryMediaTypes = {
            type = "list",
            member = { type = "string" },
        },
        minimumCompressionSize = {
            type = "integer",
        },
        apiKeySource = {
            type = "string",
        },
        endpointConfiguration = M.EndpointConfiguration,
        policy = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        disableExecuteApiEndpoint = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        rootResourceId = {
            type = "string",
        },
        securityPolicy = {
            type = "string",
        },
        endpointAccessMode = {
            type = "string",
        },
        apiStatus = {
            type = "string",
        },
        apiStatusMessage = {
            type = "string",
        },
    },
}

M.PutGatewayResponseInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        responseType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        statusCode = {
            type = "string",
        },
        responseParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        responseTemplates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PutGatewayResponseOutput = {
    type = "structure",
    members = {
        responseType = {
            type = "string",
        },
        statusCode = {
            type = "string",
        },
        responseParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        responseTemplates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        defaultResponse = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.PutIntegrationInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        httpMethod = {
            type = "string",
            traits = {
                http_label = true,
                json_name = "requestHttpMethod",
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        integrationHttpMethod = {
            type = "string",
            traits = {
                json_name = "httpMethod",
            },
        },
        uri = {
            type = "string",
        },
        connectionType = {
            type = "string",
        },
        connectionId = {
            type = "string",
        },
        credentials = {
            type = "string",
        },
        requestParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        requestTemplates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        passthroughBehavior = {
            type = "string",
        },
        cacheNamespace = {
            type = "string",
        },
        cacheKeyParameters = {
            type = "list",
            member = { type = "string" },
        },
        contentHandling = {
            type = "string",
        },
        timeoutInMillis = {
            type = "integer",
        },
        tlsConfig = M.TlsConfig,
        responseTransferMode = {
            type = "string",
        },
        integrationTarget = {
            type = "string",
        },
    },
}

M.PutIntegrationOutput = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        httpMethod = {
            type = "string",
        },
        uri = {
            type = "string",
        },
        connectionType = {
            type = "string",
        },
        connectionId = {
            type = "string",
        },
        credentials = {
            type = "string",
        },
        requestParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        requestTemplates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        passthroughBehavior = {
            type = "string",
        },
        contentHandling = {
            type = "string",
        },
        timeoutInMillis = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        cacheNamespace = {
            type = "string",
        },
        cacheKeyParameters = {
            type = "list",
            member = { type = "string" },
        },
        integrationResponses = {
            type = "map",
            key = { type = "string" },
            value = M.IntegrationResponse,
        },
        tlsConfig = M.TlsConfig,
        responseTransferMode = {
            type = "string",
        },
        integrationTarget = {
            type = "string",
        },
    },
}

M.PutIntegrationResponseInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        httpMethod = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        statusCode = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        selectionPattern = {
            type = "string",
        },
        responseParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        responseTemplates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        contentHandling = {
            type = "string",
        },
    },
}

M.PutIntegrationResponseOutput = {
    type = "structure",
    members = {
        statusCode = {
            type = "string",
        },
        selectionPattern = {
            type = "string",
        },
        responseParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        responseTemplates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        contentHandling = {
            type = "string",
        },
    },
}

M.PutMethodInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        httpMethod = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        authorizationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizerId = {
            type = "string",
        },
        apiKeyRequired = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        operationName = {
            type = "string",
        },
        requestParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "boolean" },
        },
        requestModels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        requestValidatorId = {
            type = "string",
        },
        authorizationScopes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PutMethodOutput = {
    type = "structure",
    members = {
        httpMethod = {
            type = "string",
        },
        authorizationType = {
            type = "string",
        },
        authorizerId = {
            type = "string",
        },
        apiKeyRequired = {
            type = "boolean",
        },
        requestValidatorId = {
            type = "string",
        },
        operationName = {
            type = "string",
        },
        requestParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "boolean" },
        },
        requestModels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        methodResponses = {
            type = "map",
            key = { type = "string" },
            value = M.MethodResponse,
        },
        methodIntegration = M.Integration,
        authorizationScopes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PutMethodResponseInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        httpMethod = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        statusCode = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        responseParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "boolean" },
        },
        responseModels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PutMethodResponseOutput = {
    type = "structure",
    members = {
        statusCode = {
            type = "string",
        },
        responseParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "boolean" },
        },
        responseModels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PutRestApiInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        mode = {
            type = "string",
            traits = {
                http_query = "mode",
            },
        },
        failOnWarnings = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "failonwarnings",
            },
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                http_query_params = true,
            },
        },
        body = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.PutRestApiOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdDate = {
            type = "timestamp",
        },
        version = {
            type = "string",
        },
        warnings = {
            type = "list",
            member = { type = "string" },
        },
        binaryMediaTypes = {
            type = "list",
            member = { type = "string" },
        },
        minimumCompressionSize = {
            type = "integer",
        },
        apiKeySource = {
            type = "string",
        },
        endpointConfiguration = M.EndpointConfiguration,
        policy = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        disableExecuteApiEndpoint = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        rootResourceId = {
            type = "string",
        },
        securityPolicy = {
            type = "string",
        },
        endpointAccessMode = {
            type = "string",
        },
        apiStatus = {
            type = "string",
        },
        apiStatusMessage = {
            type = "string",
        },
    },
}

M.RejectDomainNameAccessAssociationInput = {
    type = "structure",
    members = {
        domainNameAccessAssociationArn = {
            type = "string",
            traits = {
                http_query = "domainNameAccessAssociationArn",
                required = true,
            },
        },
        domainNameArn = {
            type = "string",
            traits = {
                http_query = "domainNameArn",
                required = true,
            },
        },
    },
}

M.RejectDomainNameAccessAssociationOutput = {
    type = "structure",
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

M.TestInvokeAuthorizerInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        authorizerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        headers = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        multiValueHeaders = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        pathWithQueryString = {
            type = "string",
        },
        body = {
            type = "string",
        },
        stageVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        additionalContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.TestInvokeAuthorizerOutput = {
    type = "structure",
    members = {
        clientStatus = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        log = {
            type = "string",
        },
        latency = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        principalId = {
            type = "string",
        },
        policy = {
            type = "string",
        },
        authorization = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        claims = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.TestInvokeMethodInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        httpMethod = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        pathWithQueryString = {
            type = "string",
        },
        body = {
            type = "string",
        },
        headers = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        multiValueHeaders = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        clientCertificateId = {
            type = "string",
        },
        stageVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.TestInvokeMethodOutput = {
    type = "structure",
    members = {
        status = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        body = {
            type = "string",
        },
        headers = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        multiValueHeaders = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        log = {
            type = "string",
        },
        latency = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
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

M.Op = {
    add = "add",
    remove = "remove",
    replace = "replace",
    move = "move",
    copy = "copy",
    test = "test",
}

M.PatchOperation = {
    type = "structure",
    members = {
        op = {
            type = "string",
        },
        path = {
            type = "string",
        },
        value = {
            type = "string",
        },
        from = {
            type = "string",
        },
    },
}

M.UpdateAccountInput = {
    type = "structure",
    members = {
        patchOperations = {
            type = "list",
            member = M.PatchOperation,
        },
    },
}

M.UpdateAccountOutput = {
    type = "structure",
    members = {
        cloudwatchRoleArn = {
            type = "string",
        },
        throttleSettings = M.ThrottleSettings,
        features = {
            type = "list",
            member = { type = "string" },
        },
        apiKeyVersion = {
            type = "string",
        },
    },
}

M.UpdateApiKeyInput = {
    type = "structure",
    members = {
        apiKey = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        patchOperations = {
            type = "list",
            member = M.PatchOperation,
        },
    },
}

M.UpdateApiKeyOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        value = {
            type = "string",
        },
        name = {
            type = "string",
        },
        customerId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        createdDate = {
            type = "timestamp",
        },
        lastUpdatedDate = {
            type = "timestamp",
        },
        stageKeys = {
            type = "list",
            member = { type = "string" },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateAuthorizerInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        authorizerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        patchOperations = {
            type = "list",
            member = M.PatchOperation,
        },
    },
}

M.UpdateAuthorizerOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        providerARNs = {
            type = "list",
            member = { type = "string" },
        },
        authType = {
            type = "string",
        },
        authorizerUri = {
            type = "string",
        },
        authorizerCredentials = {
            type = "string",
        },
        identitySource = {
            type = "string",
        },
        identityValidationExpression = {
            type = "string",
        },
        authorizerResultTtlInSeconds = {
            type = "integer",
        },
    },
}

M.UpdateBasePathMappingInput = {
    type = "structure",
    members = {
        domainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        domainNameId = {
            type = "string",
            traits = {
                http_query = "domainNameId",
            },
        },
        basePath = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        patchOperations = {
            type = "list",
            member = M.PatchOperation,
        },
    },
}

M.UpdateBasePathMappingOutput = {
    type = "structure",
    members = {
        basePath = {
            type = "string",
        },
        restApiId = {
            type = "string",
        },
        stage = {
            type = "string",
        },
    },
}

M.UpdateClientCertificateInput = {
    type = "structure",
    members = {
        clientCertificateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        patchOperations = {
            type = "list",
            member = M.PatchOperation,
        },
    },
}

M.UpdateClientCertificateOutput = {
    type = "structure",
    members = {
        clientCertificateId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        pemEncodedCertificate = {
            type = "string",
        },
        createdDate = {
            type = "timestamp",
        },
        expirationDate = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateDeploymentInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        deploymentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        patchOperations = {
            type = "list",
            member = M.PatchOperation,
        },
    },
}

M.UpdateDeploymentOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdDate = {
            type = "timestamp",
        },
        apiSummary = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
        },
    },
}

M.UpdateDocumentationPartInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        documentationPartId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        patchOperations = {
            type = "list",
            member = M.PatchOperation,
        },
    },
}

M.UpdateDocumentationPartOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        location = M.DocumentationPartLocation,
        properties = {
            type = "string",
        },
    },
}

M.UpdateDocumentationVersionInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        documentationVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        patchOperations = {
            type = "list",
            member = M.PatchOperation,
        },
    },
}

M.UpdateDocumentationVersionOutput = {
    type = "structure",
    members = {
        version = {
            type = "string",
        },
        createdDate = {
            type = "timestamp",
        },
        description = {
            type = "string",
        },
    },
}

M.UpdateDomainNameInput = {
    type = "structure",
    members = {
        domainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        domainNameId = {
            type = "string",
            traits = {
                http_query = "domainNameId",
            },
        },
        patchOperations = {
            type = "list",
            member = M.PatchOperation,
        },
    },
}

M.UpdateDomainNameOutput = {
    type = "structure",
    members = {
        domainName = {
            type = "string",
        },
        domainNameId = {
            type = "string",
        },
        domainNameArn = {
            type = "string",
        },
        certificateName = {
            type = "string",
        },
        certificateArn = {
            type = "string",
        },
        certificateUploadDate = {
            type = "timestamp",
        },
        regionalDomainName = {
            type = "string",
        },
        regionalHostedZoneId = {
            type = "string",
        },
        regionalCertificateName = {
            type = "string",
        },
        regionalCertificateArn = {
            type = "string",
        },
        distributionDomainName = {
            type = "string",
        },
        distributionHostedZoneId = {
            type = "string",
        },
        endpointConfiguration = M.EndpointConfiguration,
        domainNameStatus = {
            type = "string",
        },
        domainNameStatusMessage = {
            type = "string",
        },
        securityPolicy = {
            type = "string",
        },
        endpointAccessMode = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        mutualTlsAuthentication = M.MutualTlsAuthentication,
        ownershipVerificationCertificateArn = {
            type = "string",
        },
        managementPolicy = {
            type = "string",
        },
        policy = {
            type = "string",
        },
        routingMode = {
            type = "string",
        },
    },
}

M.UpdateGatewayResponseInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        responseType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        patchOperations = {
            type = "list",
            member = M.PatchOperation,
        },
    },
}

M.UpdateGatewayResponseOutput = {
    type = "structure",
    members = {
        responseType = {
            type = "string",
        },
        statusCode = {
            type = "string",
        },
        responseParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        responseTemplates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        defaultResponse = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.UpdateIntegrationInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        httpMethod = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        patchOperations = {
            type = "list",
            member = M.PatchOperation,
        },
    },
}

M.UpdateIntegrationOutput = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        httpMethod = {
            type = "string",
        },
        uri = {
            type = "string",
        },
        connectionType = {
            type = "string",
        },
        connectionId = {
            type = "string",
        },
        credentials = {
            type = "string",
        },
        requestParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        requestTemplates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        passthroughBehavior = {
            type = "string",
        },
        contentHandling = {
            type = "string",
        },
        timeoutInMillis = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        cacheNamespace = {
            type = "string",
        },
        cacheKeyParameters = {
            type = "list",
            member = { type = "string" },
        },
        integrationResponses = {
            type = "map",
            key = { type = "string" },
            value = M.IntegrationResponse,
        },
        tlsConfig = M.TlsConfig,
        responseTransferMode = {
            type = "string",
        },
        integrationTarget = {
            type = "string",
        },
    },
}

M.UpdateIntegrationResponseInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        httpMethod = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        statusCode = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        patchOperations = {
            type = "list",
            member = M.PatchOperation,
        },
    },
}

M.UpdateIntegrationResponseOutput = {
    type = "structure",
    members = {
        statusCode = {
            type = "string",
        },
        selectionPattern = {
            type = "string",
        },
        responseParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        responseTemplates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        contentHandling = {
            type = "string",
        },
    },
}

M.UpdateMethodInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        httpMethod = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        patchOperations = {
            type = "list",
            member = M.PatchOperation,
        },
    },
}

M.UpdateMethodOutput = {
    type = "structure",
    members = {
        httpMethod = {
            type = "string",
        },
        authorizationType = {
            type = "string",
        },
        authorizerId = {
            type = "string",
        },
        apiKeyRequired = {
            type = "boolean",
        },
        requestValidatorId = {
            type = "string",
        },
        operationName = {
            type = "string",
        },
        requestParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "boolean" },
        },
        requestModels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        methodResponses = {
            type = "map",
            key = { type = "string" },
            value = M.MethodResponse,
        },
        methodIntegration = M.Integration,
        authorizationScopes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateMethodResponseInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        httpMethod = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        statusCode = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        patchOperations = {
            type = "list",
            member = M.PatchOperation,
        },
    },
}

M.UpdateMethodResponseOutput = {
    type = "structure",
    members = {
        statusCode = {
            type = "string",
        },
        responseParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "boolean" },
        },
        responseModels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateModelInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        modelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        patchOperations = {
            type = "list",
            member = M.PatchOperation,
        },
    },
}

M.UpdateModelOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        schema = {
            type = "string",
        },
        contentType = {
            type = "string",
        },
    },
}

M.UpdateRequestValidatorInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        requestValidatorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        patchOperations = {
            type = "list",
            member = M.PatchOperation,
        },
    },
}

M.UpdateRequestValidatorOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        validateRequestBody = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        validateRequestParameters = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.UpdateResourceInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        patchOperations = {
            type = "list",
            member = M.PatchOperation,
        },
    },
}

M.UpdateResourceOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        parentId = {
            type = "string",
        },
        pathPart = {
            type = "string",
        },
        path = {
            type = "string",
        },
        resourceMethods = {
            type = "map",
            key = { type = "string" },
            value = M.Method,
        },
    },
}

M.UpdateRestApiInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        patchOperations = {
            type = "list",
            member = M.PatchOperation,
        },
    },
}

M.UpdateRestApiOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdDate = {
            type = "timestamp",
        },
        version = {
            type = "string",
        },
        warnings = {
            type = "list",
            member = { type = "string" },
        },
        binaryMediaTypes = {
            type = "list",
            member = { type = "string" },
        },
        minimumCompressionSize = {
            type = "integer",
        },
        apiKeySource = {
            type = "string",
        },
        endpointConfiguration = M.EndpointConfiguration,
        policy = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        disableExecuteApiEndpoint = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        rootResourceId = {
            type = "string",
        },
        securityPolicy = {
            type = "string",
        },
        endpointAccessMode = {
            type = "string",
        },
        apiStatus = {
            type = "string",
        },
        apiStatusMessage = {
            type = "string",
        },
    },
}

M.UpdateStageInput = {
    type = "structure",
    members = {
        restApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        stageName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        patchOperations = {
            type = "list",
            member = M.PatchOperation,
        },
    },
}

M.UpdateStageOutput = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
        },
        clientCertificateId = {
            type = "string",
        },
        stageName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        cacheClusterEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        cacheClusterSize = {
            type = "string",
        },
        cacheClusterStatus = {
            type = "string",
        },
        methodSettings = {
            type = "map",
            key = { type = "string" },
            value = M.MethodSetting,
        },
        variables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        documentationVersion = {
            type = "string",
        },
        accessLogSettings = M.AccessLogSettings,
        canarySettings = M.CanarySettings,
        tracingEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        webAclArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        createdDate = {
            type = "timestamp",
        },
        lastUpdatedDate = {
            type = "timestamp",
        },
    },
}

M.UpdateUsageInput = {
    type = "structure",
    members = {
        usagePlanId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        keyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        patchOperations = {
            type = "list",
            member = M.PatchOperation,
        },
    },
}

M.UpdateUsageOutput = {
    type = "structure",
    members = {
        usagePlanId = {
            type = "string",
        },
        startDate = {
            type = "string",
        },
        endDate = {
            type = "string",
        },
        items = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
            traits = {
                json_name = "values",
            },
        },
        position = {
            type = "string",
            traits = {
                http_query = "position",
            },
        },
    },
}

M.UpdateUsagePlanInput = {
    type = "structure",
    members = {
        usagePlanId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        patchOperations = {
            type = "list",
            member = M.PatchOperation,
        },
    },
}

M.UpdateUsagePlanOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        apiStages = {
            type = "list",
            member = M.ApiStage,
        },
        throttle = M.ThrottleSettings,
        quota = M.QuotaSettings,
        productCode = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateVpcLinkInput = {
    type = "structure",
    members = {
        vpcLinkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        patchOperations = {
            type = "list",
            member = M.PatchOperation,
        },
    },
}

M.UpdateVpcLinkOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        targetArns = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

return M
