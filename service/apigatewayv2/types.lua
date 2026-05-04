local M = {}

M.Cors = {
    type = "structure",
    id = "Cors",
    members = {
        AllowCredentials = {
            type = "boolean",
            traits = {
                json_name = "allowCredentials",
            },
        },
        AllowHeaders = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "allowHeaders",
            },
        },
        AllowMethods = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "allowMethods",
            },
        },
        AllowOrigins = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "allowOrigins",
            },
        },
        ExposeHeaders = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "exposeHeaders",
            },
        },
        MaxAge = {
            type = "integer",
            traits = {
                json_name = "maxAge",
            },
        },
    },
}

M.IpAddressType = {
    ipv4 = "ipv4",
    dualstack = "dualstack",
}

M.ProtocolType = {
    WEBSOCKET = "WEBSOCKET",
    HTTP = "HTTP",
}

M.Api = {
    type = "structure",
    id = "Api",
    members = {
        ApiEndpoint = {
            type = "string",
            traits = {
                json_name = "apiEndpoint",
            },
        },
        ApiGatewayManaged = {
            type = "boolean",
            traits = {
                json_name = "apiGatewayManaged",
            },
        },
        ApiId = {
            type = "string",
            traits = {
                json_name = "apiId",
            },
        },
        ApiKeySelectionExpression = {
            type = "string",
            traits = {
                json_name = "apiKeySelectionExpression",
            },
        },
        CorsConfiguration = setmetatable({ traits = {
            json_name = "corsConfiguration",
        } }, { __index = M.Cors }),
        CreatedDate = {
            type = "timestamp",
            traits = {
                json_name = "createdDate",
                timestamp_format = "date-time",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        DisableSchemaValidation = {
            type = "boolean",
            traits = {
                json_name = "disableSchemaValidation",
            },
        },
        DisableExecuteApiEndpoint = {
            type = "boolean",
            traits = {
                json_name = "disableExecuteApiEndpoint",
            },
        },
        ImportInfo = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "importInfo",
            },
        },
        IpAddressType = {
            type = "string",
            traits = {
                json_name = "ipAddressType",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        ProtocolType = {
            type = "string",
            traits = {
                json_name = "protocolType",
                required = true,
            },
        },
        RouteSelectionExpression = {
            type = "string",
            traits = {
                json_name = "routeSelectionExpression",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        Version = {
            type = "string",
            traits = {
                json_name = "version",
            },
        },
        Warnings = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "warnings",
            },
        },
    },
}

M.ApiMapping = {
    type = "structure",
    id = "ApiMapping",
    members = {
        ApiId = {
            type = "string",
            traits = {
                json_name = "apiId",
                required = true,
            },
        },
        ApiMappingId = {
            type = "string",
            traits = {
                json_name = "apiMappingId",
            },
        },
        ApiMappingKey = {
            type = "string",
            traits = {
                json_name = "apiMappingKey",
            },
        },
        Stage = {
            type = "string",
            traits = {
                json_name = "stage",
                required = true,
            },
        },
    },
}

M.AuthorizerType = {
    REQUEST = "REQUEST",
    JWT = "JWT",
}

M.JWTConfiguration = {
    type = "structure",
    id = "JWTConfiguration",
    members = {
        Audience = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "audience",
            },
        },
        Issuer = {
            type = "string",
            traits = {
                json_name = "issuer",
            },
        },
    },
}

M.Authorizer = {
    type = "structure",
    id = "Authorizer",
    members = {
        AuthorizerCredentialsArn = {
            type = "string",
            traits = {
                json_name = "authorizerCredentialsArn",
            },
        },
        AuthorizerId = {
            type = "string",
            traits = {
                json_name = "authorizerId",
            },
        },
        AuthorizerPayloadFormatVersion = {
            type = "string",
            traits = {
                json_name = "authorizerPayloadFormatVersion",
            },
        },
        AuthorizerResultTtlInSeconds = {
            type = "integer",
            traits = {
                json_name = "authorizerResultTtlInSeconds",
            },
        },
        AuthorizerType = {
            type = "string",
            traits = {
                json_name = "authorizerType",
            },
        },
        AuthorizerUri = {
            type = "string",
            traits = {
                json_name = "authorizerUri",
            },
        },
        EnableSimpleResponses = {
            type = "boolean",
            traits = {
                json_name = "enableSimpleResponses",
            },
        },
        IdentitySource = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "identitySource",
            },
        },
        IdentityValidationExpression = {
            type = "string",
            traits = {
                json_name = "identityValidationExpression",
            },
        },
        JwtConfiguration = setmetatable({ traits = {
            json_name = "jwtConfiguration",
        } }, { __index = M.JWTConfiguration }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
    },
}

M.DeploymentStatus = {
    PENDING = "PENDING",
    FAILED = "FAILED",
    DEPLOYED = "DEPLOYED",
}

M.Deployment = {
    type = "structure",
    id = "Deployment",
    members = {
        AutoDeployed = {
            type = "boolean",
            traits = {
                json_name = "autoDeployed",
            },
        },
        CreatedDate = {
            type = "timestamp",
            traits = {
                json_name = "createdDate",
                timestamp_format = "date-time",
            },
        },
        DeploymentId = {
            type = "string",
            traits = {
                json_name = "deploymentId",
            },
        },
        DeploymentStatus = {
            type = "string",
            traits = {
                json_name = "deploymentStatus",
            },
        },
        DeploymentStatusMessage = {
            type = "string",
            traits = {
                json_name = "deploymentStatusMessage",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
    },
}

M.DomainNameStatus = {
    AVAILABLE = "AVAILABLE",
    UPDATING = "UPDATING",
    PENDING_CERTIFICATE_REIMPORT = "PENDING_CERTIFICATE_REIMPORT",
    PENDING_OWNERSHIP_VERIFICATION = "PENDING_OWNERSHIP_VERIFICATION",
}

M.EndpointType = {
    REGIONAL = "REGIONAL",
    EDGE = "EDGE",
}

M.SecurityPolicy = {
    TLS_1_0 = "TLS_1_0",
    TLS_1_2 = "TLS_1_2",
}

M.DomainNameConfiguration = {
    type = "structure",
    id = "DomainNameConfiguration",
    members = {
        ApiGatewayDomainName = {
            type = "string",
            traits = {
                json_name = "apiGatewayDomainName",
            },
        },
        CertificateArn = {
            type = "string",
            traits = {
                json_name = "certificateArn",
            },
        },
        CertificateName = {
            type = "string",
            traits = {
                json_name = "certificateName",
            },
        },
        CertificateUploadDate = {
            type = "timestamp",
            traits = {
                json_name = "certificateUploadDate",
                timestamp_format = "date-time",
            },
        },
        DomainNameStatus = {
            type = "string",
            traits = {
                json_name = "domainNameStatus",
            },
        },
        DomainNameStatusMessage = {
            type = "string",
            traits = {
                json_name = "domainNameStatusMessage",
            },
        },
        EndpointType = {
            type = "string",
            traits = {
                json_name = "endpointType",
            },
        },
        HostedZoneId = {
            type = "string",
            traits = {
                json_name = "hostedZoneId",
            },
        },
        IpAddressType = {
            type = "string",
            traits = {
                json_name = "ipAddressType",
            },
        },
        SecurityPolicy = {
            type = "string",
            traits = {
                json_name = "securityPolicy",
            },
        },
        OwnershipVerificationCertificateArn = {
            type = "string",
            traits = {
                json_name = "ownershipVerificationCertificateArn",
            },
        },
    },
}

M.MutualTlsAuthentication = {
    type = "structure",
    id = "MutualTlsAuthentication",
    members = {
        TruststoreUri = {
            type = "string",
            traits = {
                json_name = "truststoreUri",
            },
        },
        TruststoreVersion = {
            type = "string",
            traits = {
                json_name = "truststoreVersion",
            },
        },
        TruststoreWarnings = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "truststoreWarnings",
            },
        },
    },
}

M.RoutingMode = {
    API_MAPPING_ONLY = "API_MAPPING_ONLY",
    ROUTING_RULE_ONLY = "ROUTING_RULE_ONLY",
    ROUTING_RULE_THEN_API_MAPPING = "ROUTING_RULE_THEN_API_MAPPING",
}

M.DomainName = {
    type = "structure",
    id = "DomainName",
    members = {
        ApiMappingSelectionExpression = {
            type = "string",
            traits = {
                json_name = "apiMappingSelectionExpression",
            },
        },
        DomainName = {
            type = "string",
            traits = {
                json_name = "domainName",
                required = true,
            },
        },
        DomainNameArn = {
            type = "string",
            traits = {
                json_name = "domainNameArn",
            },
        },
        DomainNameConfigurations = {
            type = "list",
            member = M.DomainNameConfiguration,
            traits = {
                json_name = "domainNameConfigurations",
            },
        },
        MutualTlsAuthentication = setmetatable({ traits = {
            json_name = "mutualTlsAuthentication",
        } }, { __index = M.MutualTlsAuthentication }),
        RoutingMode = {
            type = "string",
            traits = {
                json_name = "routingMode",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
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

M.IntegrationType = {
    AWS = "AWS",
    HTTP = "HTTP",
    MOCK = "MOCK",
    HTTP_PROXY = "HTTP_PROXY",
    AWS_PROXY = "AWS_PROXY",
}

M.PassthroughBehavior = {
    WHEN_NO_MATCH = "WHEN_NO_MATCH",
    NEVER = "NEVER",
    WHEN_NO_TEMPLATES = "WHEN_NO_TEMPLATES",
}

M.TlsConfig = {
    type = "structure",
    id = "TlsConfig",
    members = {
        ServerNameToVerify = {
            type = "string",
            traits = {
                json_name = "serverNameToVerify",
            },
        },
    },
}

M.Integration = {
    type = "structure",
    id = "Integration",
    members = {
        ApiGatewayManaged = {
            type = "boolean",
            traits = {
                json_name = "apiGatewayManaged",
            },
        },
        ConnectionId = {
            type = "string",
            traits = {
                json_name = "connectionId",
            },
        },
        ConnectionType = {
            type = "string",
            traits = {
                json_name = "connectionType",
            },
        },
        ContentHandlingStrategy = {
            type = "string",
            traits = {
                json_name = "contentHandlingStrategy",
            },
        },
        CredentialsArn = {
            type = "string",
            traits = {
                json_name = "credentialsArn",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        IntegrationId = {
            type = "string",
            traits = {
                json_name = "integrationId",
            },
        },
        IntegrationMethod = {
            type = "string",
            traits = {
                json_name = "integrationMethod",
            },
        },
        IntegrationResponseSelectionExpression = {
            type = "string",
            traits = {
                json_name = "integrationResponseSelectionExpression",
            },
        },
        IntegrationSubtype = {
            type = "string",
            traits = {
                json_name = "integrationSubtype",
            },
        },
        IntegrationType = {
            type = "string",
            traits = {
                json_name = "integrationType",
            },
        },
        IntegrationUri = {
            type = "string",
            traits = {
                json_name = "integrationUri",
            },
        },
        PassthroughBehavior = {
            type = "string",
            traits = {
                json_name = "passthroughBehavior",
            },
        },
        PayloadFormatVersion = {
            type = "string",
            traits = {
                json_name = "payloadFormatVersion",
            },
        },
        RequestParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "requestParameters",
            },
        },
        RequestTemplates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "requestTemplates",
            },
        },
        ResponseParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
            traits = {
                json_name = "responseParameters",
            },
        },
        TemplateSelectionExpression = {
            type = "string",
            traits = {
                json_name = "templateSelectionExpression",
            },
        },
        TimeoutInMillis = {
            type = "integer",
            traits = {
                json_name = "timeoutInMillis",
            },
        },
        TlsConfig = setmetatable({ traits = {
            json_name = "tlsConfig",
        } }, { __index = M.TlsConfig }),
    },
}

M.IntegrationResponse = {
    type = "structure",
    id = "IntegrationResponse",
    members = {
        ContentHandlingStrategy = {
            type = "string",
            traits = {
                json_name = "contentHandlingStrategy",
            },
        },
        IntegrationResponseId = {
            type = "string",
            traits = {
                json_name = "integrationResponseId",
            },
        },
        IntegrationResponseKey = {
            type = "string",
            traits = {
                json_name = "integrationResponseKey",
                required = true,
            },
        },
        ResponseParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "responseParameters",
            },
        },
        ResponseTemplates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "responseTemplates",
            },
        },
        TemplateSelectionExpression = {
            type = "string",
            traits = {
                json_name = "templateSelectionExpression",
            },
        },
    },
}

M.Model = {
    type = "structure",
    id = "Model",
    members = {
        ContentType = {
            type = "string",
            traits = {
                json_name = "contentType",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        ModelId = {
            type = "string",
            traits = {
                json_name = "modelId",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Schema = {
            type = "string",
            traits = {
                json_name = "schema",
            },
        },
    },
}

M.PortalProductSummary = {
    type = "structure",
    id = "PortalProductSummary",
    members = {
        Description = {
            type = "string",
            traits = {
                json_name = "description",
                required = true,
            },
        },
        DisplayName = {
            type = "string",
            traits = {
                json_name = "displayName",
                required = true,
            },
        },
        LastModified = {
            type = "timestamp",
            traits = {
                json_name = "lastModified",
                required = true,
                timestamp_format = "date-time",
            },
        },
        PortalProductArn = {
            type = "string",
            traits = {
                json_name = "portalProductArn",
                required = true,
            },
        },
        PortalProductId = {
            type = "string",
            traits = {
                json_name = "portalProductId",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CognitoConfig = {
    type = "structure",
    id = "CognitoConfig",
    members = {
        AppClientId = {
            type = "string",
            traits = {
                json_name = "appClientId",
                required = true,
            },
        },
        UserPoolArn = {
            type = "string",
            traits = {
                json_name = "userPoolArn",
                required = true,
            },
        },
        UserPoolDomain = {
            type = "string",
            traits = {
                json_name = "userPoolDomain",
                required = true,
            },
        },
    },
}

M.None = {
    type = "structure",
    id = "None",
}

M.Authorization = {
    type = "structure",
    id = "Authorization",
    members = {
        CognitoConfig = setmetatable({ traits = {
            json_name = "cognitoConfig",
        } }, { __index = M.CognitoConfig }),
        None = setmetatable({ traits = {
            json_name = "none",
        } }, { __index = M.None }),
    },
}

M.EndpointConfigurationResponse = {
    type = "structure",
    id = "EndpointConfigurationResponse",
    members = {
        CertificateArn = {
            type = "string",
            traits = {
                json_name = "certificateArn",
            },
        },
        DomainName = {
            type = "string",
            traits = {
                json_name = "domainName",
            },
        },
        PortalDefaultDomainName = {
            type = "string",
            traits = {
                json_name = "portalDefaultDomainName",
                required = true,
            },
        },
        PortalDomainHostedZoneId = {
            type = "string",
            traits = {
                json_name = "portalDomainHostedZoneId",
                required = true,
            },
        },
    },
}

M.CustomColors = {
    type = "structure",
    id = "CustomColors",
    members = {
        AccentColor = {
            type = "string",
            traits = {
                json_name = "accentColor",
                required = true,
            },
        },
        BackgroundColor = {
            type = "string",
            traits = {
                json_name = "backgroundColor",
                required = true,
            },
        },
        ErrorValidationColor = {
            type = "string",
            traits = {
                json_name = "errorValidationColor",
                required = true,
            },
        },
        HeaderColor = {
            type = "string",
            traits = {
                json_name = "headerColor",
                required = true,
            },
        },
        NavigationColor = {
            type = "string",
            traits = {
                json_name = "navigationColor",
                required = true,
            },
        },
        TextColor = {
            type = "string",
            traits = {
                json_name = "textColor",
                required = true,
            },
        },
    },
}

M.PortalTheme = {
    type = "structure",
    id = "PortalTheme",
    members = {
        CustomColors = setmetatable({ traits = {
            json_name = "customColors",
            required = true,
        } }, { __index = M.CustomColors }),
        LogoLastUploaded = {
            type = "timestamp",
            traits = {
                json_name = "logoLastUploaded",
                timestamp_format = "date-time",
            },
        },
    },
}

M.PortalContent = {
    type = "structure",
    id = "PortalContent",
    members = {
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        DisplayName = {
            type = "string",
            traits = {
                json_name = "displayName",
                required = true,
            },
        },
        Theme = setmetatable({ traits = {
            json_name = "theme",
            required = true,
        } }, { __index = M.PortalTheme }),
    },
}

M.PreviewStatus = {
    PREVIEW_IN_PROGRESS = "PREVIEW_IN_PROGRESS",
    PREVIEW_FAILED = "PREVIEW_FAILED",
    PREVIEW_READY = "PREVIEW_READY",
}

M.StatusException = {
    type = "structure",
    id = "StatusException",
    members = {
        Exception = {
            type = "string",
            traits = {
                json_name = "exception",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.Preview = {
    type = "structure",
    id = "Preview",
    members = {
        PreviewStatus = {
            type = "string",
            traits = {
                json_name = "previewStatus",
                required = true,
            },
        },
        PreviewUrl = {
            type = "string",
            traits = {
                json_name = "previewUrl",
            },
        },
        StatusException = setmetatable({ traits = {
            json_name = "statusException",
        } }, { __index = M.StatusException }),
    },
}

M.PublishStatus = {
    PUBLISHED = "PUBLISHED",
    PUBLISH_IN_PROGRESS = "PUBLISH_IN_PROGRESS",
    PUBLISH_FAILED = "PUBLISH_FAILED",
    DISABLE_IN_PROGRESS = "DISABLE_IN_PROGRESS",
    DISABLE_FAILED = "DISABLE_FAILED",
    DISABLED = "DISABLED",
}

M.PortalSummary = {
    type = "structure",
    id = "PortalSummary",
    members = {
        Authorization = setmetatable({ traits = {
            json_name = "authorization",
            required = true,
        } }, { __index = M.Authorization }),
        EndpointConfiguration = setmetatable({ traits = {
            json_name = "endpointConfiguration",
            required = true,
        } }, { __index = M.EndpointConfigurationResponse }),
        IncludedPortalProductArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "includedPortalProductArns",
                required = true,
            },
        },
        LastModified = {
            type = "timestamp",
            traits = {
                json_name = "lastModified",
                required = true,
                timestamp_format = "date-time",
            },
        },
        LastPublished = {
            type = "timestamp",
            traits = {
                json_name = "lastPublished",
                timestamp_format = "date-time",
            },
        },
        LastPublishedDescription = {
            type = "string",
            traits = {
                json_name = "lastPublishedDescription",
            },
        },
        PortalArn = {
            type = "string",
            traits = {
                json_name = "portalArn",
                required = true,
            },
        },
        PortalContent = setmetatable({ traits = {
            json_name = "portalContent",
            required = true,
        } }, { __index = M.PortalContent }),
        PortalId = {
            type = "string",
            traits = {
                json_name = "portalId",
                required = true,
            },
        },
        Preview = setmetatable({ traits = {
            json_name = "preview",
        } }, { __index = M.Preview }),
        PublishStatus = {
            type = "string",
            traits = {
                json_name = "publishStatus",
            },
        },
        RumAppMonitorName = {
            type = "string",
            traits = {
                json_name = "rumAppMonitorName",
            },
        },
        StatusException = setmetatable({ traits = {
            json_name = "statusException",
        } }, { __index = M.StatusException }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.ProductPageSummaryNoBody = {
    type = "structure",
    id = "ProductPageSummaryNoBody",
    members = {
        LastModified = {
            type = "timestamp",
            traits = {
                json_name = "lastModified",
                required = true,
                timestamp_format = "date-time",
            },
        },
        PageTitle = {
            type = "string",
            traits = {
                json_name = "pageTitle",
                required = true,
            },
        },
        ProductPageArn = {
            type = "string",
            traits = {
                json_name = "productPageArn",
                required = true,
            },
        },
        ProductPageId = {
            type = "string",
            traits = {
                json_name = "productPageId",
                required = true,
            },
        },
    },
}

M.IdentifierParts = {
    type = "structure",
    id = "IdentifierParts",
    members = {
        Method = {
            type = "string",
            traits = {
                json_name = "method",
                required = true,
            },
        },
        Path = {
            type = "string",
            traits = {
                json_name = "path",
                required = true,
            },
        },
        RestApiId = {
            type = "string",
            traits = {
                json_name = "restApiId",
                required = true,
            },
        },
        Stage = {
            type = "string",
            traits = {
                json_name = "stage",
                required = true,
            },
        },
    },
}

M.RestEndpointIdentifier = {
    type = "structure",
    id = "RestEndpointIdentifier",
    members = {
        IdentifierParts = setmetatable({ traits = {
            json_name = "identifierParts",
        } }, { __index = M.IdentifierParts }),
    },
}

M.Status = {
    AVAILABLE = "AVAILABLE",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
}

M.TryItState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ProductRestEndpointPageSummaryNoBody = {
    type = "structure",
    id = "ProductRestEndpointPageSummaryNoBody",
    members = {
        Endpoint = {
            type = "string",
            traits = {
                json_name = "endpoint",
                required = true,
            },
        },
        LastModified = {
            type = "timestamp",
            traits = {
                json_name = "lastModified",
                required = true,
                timestamp_format = "date-time",
            },
        },
        OperationName = {
            type = "string",
            traits = {
                json_name = "operationName",
            },
        },
        ProductRestEndpointPageArn = {
            type = "string",
            traits = {
                json_name = "productRestEndpointPageArn",
                required = true,
            },
        },
        ProductRestEndpointPageId = {
            type = "string",
            traits = {
                json_name = "productRestEndpointPageId",
                required = true,
            },
        },
        RestEndpointIdentifier = setmetatable({ traits = {
            json_name = "restEndpointIdentifier",
            required = true,
        } }, { __index = M.RestEndpointIdentifier }),
        Status = {
            type = "string",
            traits = {
                json_name = "status",
                required = true,
            },
        },
        StatusException = setmetatable({ traits = {
            json_name = "statusException",
        } }, { __index = M.StatusException }),
        TryItState = {
            type = "string",
            traits = {
                json_name = "tryItState",
                required = true,
            },
        },
    },
}

M.AuthorizationType = {
    NONE = "NONE",
    AWS_IAM = "AWS_IAM",
    CUSTOM = "CUSTOM",
    JWT = "JWT",
}

M.ParameterConstraints = {
    type = "structure",
    id = "ParameterConstraints",
    members = {
        Required = {
            type = "boolean",
            traits = {
                json_name = "required",
            },
        },
    },
}

M.Route = {
    type = "structure",
    id = "Route",
    members = {
        ApiGatewayManaged = {
            type = "boolean",
            traits = {
                json_name = "apiGatewayManaged",
            },
        },
        ApiKeyRequired = {
            type = "boolean",
            traits = {
                json_name = "apiKeyRequired",
            },
        },
        AuthorizationScopes = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "authorizationScopes",
            },
        },
        AuthorizationType = {
            type = "string",
            traits = {
                json_name = "authorizationType",
            },
        },
        AuthorizerId = {
            type = "string",
            traits = {
                json_name = "authorizerId",
            },
        },
        ModelSelectionExpression = {
            type = "string",
            traits = {
                json_name = "modelSelectionExpression",
            },
        },
        OperationName = {
            type = "string",
            traits = {
                json_name = "operationName",
            },
        },
        RequestModels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "requestModels",
            },
        },
        RequestParameters = {
            type = "map",
            key = { type = "string" },
            value = M.ParameterConstraints,
            traits = {
                json_name = "requestParameters",
            },
        },
        RouteId = {
            type = "string",
            traits = {
                json_name = "routeId",
            },
        },
        RouteKey = {
            type = "string",
            traits = {
                json_name = "routeKey",
                required = true,
            },
        },
        RouteResponseSelectionExpression = {
            type = "string",
            traits = {
                json_name = "routeResponseSelectionExpression",
            },
        },
        Target = {
            type = "string",
            traits = {
                json_name = "target",
            },
        },
    },
}

M.RouteResponse = {
    type = "structure",
    id = "RouteResponse",
    members = {
        ModelSelectionExpression = {
            type = "string",
            traits = {
                json_name = "modelSelectionExpression",
            },
        },
        ResponseModels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "responseModels",
            },
        },
        ResponseParameters = {
            type = "map",
            key = { type = "string" },
            value = M.ParameterConstraints,
            traits = {
                json_name = "responseParameters",
            },
        },
        RouteResponseId = {
            type = "string",
            traits = {
                json_name = "routeResponseId",
            },
        },
        RouteResponseKey = {
            type = "string",
            traits = {
                json_name = "routeResponseKey",
                required = true,
            },
        },
    },
}

M.RoutingRuleActionInvokeApi = {
    type = "structure",
    id = "RoutingRuleActionInvokeApi",
    members = {
        ApiId = {
            type = "string",
            traits = {
                json_name = "apiId",
                required = true,
            },
        },
        Stage = {
            type = "string",
            traits = {
                json_name = "stage",
                required = true,
            },
        },
        StripBasePath = {
            type = "boolean",
            traits = {
                json_name = "stripBasePath",
            },
        },
    },
}

M.RoutingRuleAction = {
    type = "structure",
    id = "RoutingRuleAction",
    members = {
        InvokeApi = setmetatable({ traits = {
            json_name = "invokeApi",
            required = true,
        } }, { __index = M.RoutingRuleActionInvokeApi }),
    },
}

M.RoutingRuleMatchBasePaths = {
    type = "structure",
    id = "RoutingRuleMatchBasePaths",
    members = {
        AnyOf = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "anyOf",
                required = true,
            },
        },
    },
}

M.RoutingRuleMatchHeaderValue = {
    type = "structure",
    id = "RoutingRuleMatchHeaderValue",
    members = {
        Header = {
            type = "string",
            traits = {
                json_name = "header",
                required = true,
            },
        },
        ValueGlob = {
            type = "string",
            traits = {
                json_name = "valueGlob",
                required = true,
            },
        },
    },
}

M.RoutingRuleMatchHeaders = {
    type = "structure",
    id = "RoutingRuleMatchHeaders",
    members = {
        AnyOf = {
            type = "list",
            member = M.RoutingRuleMatchHeaderValue,
            traits = {
                json_name = "anyOf",
                required = true,
            },
        },
    },
}

M.RoutingRuleCondition = {
    type = "structure",
    id = "RoutingRuleCondition",
    members = {
        MatchBasePaths = setmetatable({ traits = {
            json_name = "matchBasePaths",
        } }, { __index = M.RoutingRuleMatchBasePaths }),
        MatchHeaders = setmetatable({ traits = {
            json_name = "matchHeaders",
        } }, { __index = M.RoutingRuleMatchHeaders }),
    },
}

M.RoutingRule = {
    type = "structure",
    id = "RoutingRule",
    members = {
        Actions = {
            type = "list",
            member = M.RoutingRuleAction,
            traits = {
                json_name = "actions",
            },
        },
        Conditions = {
            type = "list",
            member = M.RoutingRuleCondition,
            traits = {
                json_name = "conditions",
            },
        },
        Priority = {
            type = "integer",
            traits = {
                json_name = "priority",
            },
        },
        RoutingRuleArn = {
            type = "string",
            traits = {
                json_name = "routingRuleArn",
            },
        },
        RoutingRuleId = {
            type = "string",
            traits = {
                json_name = "routingRuleId",
            },
        },
    },
}

M.Section = {
    type = "structure",
    id = "Section",
    members = {
        ProductRestEndpointPageArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "productRestEndpointPageArns",
                required = true,
            },
        },
        SectionName = {
            type = "string",
            traits = {
                json_name = "sectionName",
                required = true,
            },
        },
    },
}

M.AccessLogSettings = {
    type = "structure",
    id = "AccessLogSettings",
    members = {
        DestinationArn = {
            type = "string",
            traits = {
                json_name = "destinationArn",
            },
        },
        Format = {
            type = "string",
            traits = {
                json_name = "format",
            },
        },
    },
}

M.LoggingLevel = {
    ERROR = "ERROR",
    INFO = "INFO",
    OFF = "OFF",
}

M.RouteSettings = {
    type = "structure",
    id = "RouteSettings",
    members = {
        DataTraceEnabled = {
            type = "boolean",
            traits = {
                json_name = "dataTraceEnabled",
            },
        },
        DetailedMetricsEnabled = {
            type = "boolean",
            traits = {
                json_name = "detailedMetricsEnabled",
            },
        },
        LoggingLevel = {
            type = "string",
            traits = {
                json_name = "loggingLevel",
            },
        },
        ThrottlingBurstLimit = {
            type = "integer",
            traits = {
                json_name = "throttlingBurstLimit",
            },
        },
        ThrottlingRateLimit = {
            type = "double",
            traits = {
                json_name = "throttlingRateLimit",
            },
        },
    },
}

M.Stage = {
    type = "structure",
    id = "Stage",
    members = {
        AccessLogSettings = setmetatable({ traits = {
            json_name = "accessLogSettings",
        } }, { __index = M.AccessLogSettings }),
        ApiGatewayManaged = {
            type = "boolean",
            traits = {
                json_name = "apiGatewayManaged",
            },
        },
        AutoDeploy = {
            type = "boolean",
            traits = {
                json_name = "autoDeploy",
            },
        },
        ClientCertificateId = {
            type = "string",
            traits = {
                json_name = "clientCertificateId",
            },
        },
        CreatedDate = {
            type = "timestamp",
            traits = {
                json_name = "createdDate",
                timestamp_format = "date-time",
            },
        },
        DefaultRouteSettings = setmetatable({ traits = {
            json_name = "defaultRouteSettings",
        } }, { __index = M.RouteSettings }),
        DeploymentId = {
            type = "string",
            traits = {
                json_name = "deploymentId",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        LastDeploymentStatusMessage = {
            type = "string",
            traits = {
                json_name = "lastDeploymentStatusMessage",
            },
        },
        LastUpdatedDate = {
            type = "timestamp",
            traits = {
                json_name = "lastUpdatedDate",
                timestamp_format = "date-time",
            },
        },
        RouteSettings = {
            type = "map",
            key = { type = "string" },
            value = M.RouteSettings,
            traits = {
                json_name = "routeSettings",
            },
        },
        StageName = {
            type = "string",
            traits = {
                json_name = "stageName",
                required = true,
            },
        },
        StageVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "stageVariables",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.VpcLinkStatus = {
    PENDING = "PENDING",
    AVAILABLE = "AVAILABLE",
    DELETING = "DELETING",
    FAILED = "FAILED",
    INACTIVE = "INACTIVE",
}

M.VpcLinkVersion = {
    V2 = "V2",
}

M.VpcLink = {
    type = "structure",
    id = "VpcLink",
    members = {
        CreatedDate = {
            type = "timestamp",
            traits = {
                json_name = "createdDate",
                timestamp_format = "date-time",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "securityGroupIds",
                required = true,
            },
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "subnetIds",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        VpcLinkId = {
            type = "string",
            traits = {
                json_name = "vpcLinkId",
                required = true,
            },
        },
        VpcLinkStatus = {
            type = "string",
            traits = {
                json_name = "vpcLinkStatus",
            },
        },
        VpcLinkStatusMessage = {
            type = "string",
            traits = {
                json_name = "vpcLinkStatusMessage",
            },
        },
        VpcLinkVersion = {
            type = "string",
            traits = {
                json_name = "vpcLinkVersion",
            },
        },
    },
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.ACMManaged = {
    type = "structure",
    id = "ACMManaged",
    members = {
        CertificateArn = {
            type = "string",
            traits = {
                json_name = "certificateArn",
                required = true,
            },
        },
        DomainName = {
            type = "string",
            traits = {
                json_name = "domainName",
                required = true,
            },
        },
    },
}

M.BadRequestException = {
    type = "structure",
    id = "BadRequestException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
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
                json_name = "message",
            },
        },
    },
}

M.CreateApiInput = {
    type = "structure",
    id = "CreateApiInput",
    members = {
        ApiKeySelectionExpression = {
            type = "string",
            traits = {
                json_name = "apiKeySelectionExpression",
            },
        },
        CorsConfiguration = setmetatable({ traits = {
            json_name = "corsConfiguration",
        } }, { __index = M.Cors }),
        CredentialsArn = {
            type = "string",
            traits = {
                json_name = "credentialsArn",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        DisableSchemaValidation = {
            type = "boolean",
            traits = {
                json_name = "disableSchemaValidation",
            },
        },
        DisableExecuteApiEndpoint = {
            type = "boolean",
            traits = {
                json_name = "disableExecuteApiEndpoint",
            },
        },
        IpAddressType = {
            type = "string",
            traits = {
                json_name = "ipAddressType",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        ProtocolType = {
            type = "string",
            traits = {
                json_name = "protocolType",
                required = true,
            },
        },
        RouteKey = {
            type = "string",
            traits = {
                json_name = "routeKey",
            },
        },
        RouteSelectionExpression = {
            type = "string",
            traits = {
                json_name = "routeSelectionExpression",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        Target = {
            type = "string",
            traits = {
                json_name = "target",
            },
        },
        Version = {
            type = "string",
            traits = {
                json_name = "version",
            },
        },
    },
}

M.CreateApiOutput = {
    type = "structure",
    id = "CreateApiOutput",
    members = {
        ApiEndpoint = {
            type = "string",
            traits = {
                json_name = "apiEndpoint",
            },
        },
        ApiGatewayManaged = {
            type = "boolean",
            traits = {
                json_name = "apiGatewayManaged",
            },
        },
        ApiId = {
            type = "string",
            traits = {
                json_name = "apiId",
            },
        },
        ApiKeySelectionExpression = {
            type = "string",
            traits = {
                json_name = "apiKeySelectionExpression",
            },
        },
        CorsConfiguration = setmetatable({ traits = {
            json_name = "corsConfiguration",
        } }, { __index = M.Cors }),
        CreatedDate = {
            type = "timestamp",
            traits = {
                json_name = "createdDate",
                timestamp_format = "date-time",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        DisableSchemaValidation = {
            type = "boolean",
            traits = {
                json_name = "disableSchemaValidation",
            },
        },
        DisableExecuteApiEndpoint = {
            type = "boolean",
            traits = {
                json_name = "disableExecuteApiEndpoint",
            },
        },
        ImportInfo = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "importInfo",
            },
        },
        IpAddressType = {
            type = "string",
            traits = {
                json_name = "ipAddressType",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        ProtocolType = {
            type = "string",
            traits = {
                json_name = "protocolType",
            },
        },
        RouteSelectionExpression = {
            type = "string",
            traits = {
                json_name = "routeSelectionExpression",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        Version = {
            type = "string",
            traits = {
                json_name = "version",
            },
        },
        Warnings = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "warnings",
            },
        },
    },
}

M.NotFoundException = {
    type = "structure",
    id = "NotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                json_name = "resourceType",
            },
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
    error = "client",
    members = {
        LimitType = {
            type = "string",
            traits = {
                json_name = "limitType",
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.CreateApiMappingInput = {
    type = "structure",
    id = "CreateApiMappingInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                json_name = "apiId",
                required = true,
            },
        },
        ApiMappingKey = {
            type = "string",
            traits = {
                json_name = "apiMappingKey",
            },
        },
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Stage = {
            type = "string",
            traits = {
                json_name = "stage",
                required = true,
            },
        },
    },
}

M.CreateApiMappingOutput = {
    type = "structure",
    id = "CreateApiMappingOutput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                json_name = "apiId",
            },
        },
        ApiMappingId = {
            type = "string",
            traits = {
                json_name = "apiMappingId",
            },
        },
        ApiMappingKey = {
            type = "string",
            traits = {
                json_name = "apiMappingKey",
            },
        },
        Stage = {
            type = "string",
            traits = {
                json_name = "stage",
            },
        },
    },
}

M.CreateAuthorizerInput = {
    type = "structure",
    id = "CreateAuthorizerInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AuthorizerCredentialsArn = {
            type = "string",
            traits = {
                json_name = "authorizerCredentialsArn",
            },
        },
        AuthorizerPayloadFormatVersion = {
            type = "string",
            traits = {
                json_name = "authorizerPayloadFormatVersion",
            },
        },
        AuthorizerResultTtlInSeconds = {
            type = "integer",
            traits = {
                json_name = "authorizerResultTtlInSeconds",
            },
        },
        AuthorizerType = {
            type = "string",
            traits = {
                json_name = "authorizerType",
                required = true,
            },
        },
        AuthorizerUri = {
            type = "string",
            traits = {
                json_name = "authorizerUri",
            },
        },
        EnableSimpleResponses = {
            type = "boolean",
            traits = {
                json_name = "enableSimpleResponses",
            },
        },
        IdentitySource = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "identitySource",
                required = true,
            },
        },
        IdentityValidationExpression = {
            type = "string",
            traits = {
                json_name = "identityValidationExpression",
            },
        },
        JwtConfiguration = setmetatable({ traits = {
            json_name = "jwtConfiguration",
        } }, { __index = M.JWTConfiguration }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
    },
}

M.CreateAuthorizerOutput = {
    type = "structure",
    id = "CreateAuthorizerOutput",
    members = {
        AuthorizerCredentialsArn = {
            type = "string",
            traits = {
                json_name = "authorizerCredentialsArn",
            },
        },
        AuthorizerId = {
            type = "string",
            traits = {
                json_name = "authorizerId",
            },
        },
        AuthorizerPayloadFormatVersion = {
            type = "string",
            traits = {
                json_name = "authorizerPayloadFormatVersion",
            },
        },
        AuthorizerResultTtlInSeconds = {
            type = "integer",
            traits = {
                json_name = "authorizerResultTtlInSeconds",
            },
        },
        AuthorizerType = {
            type = "string",
            traits = {
                json_name = "authorizerType",
            },
        },
        AuthorizerUri = {
            type = "string",
            traits = {
                json_name = "authorizerUri",
            },
        },
        EnableSimpleResponses = {
            type = "boolean",
            traits = {
                json_name = "enableSimpleResponses",
            },
        },
        IdentitySource = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "identitySource",
            },
        },
        IdentityValidationExpression = {
            type = "string",
            traits = {
                json_name = "identityValidationExpression",
            },
        },
        JwtConfiguration = setmetatable({ traits = {
            json_name = "jwtConfiguration",
        } }, { __index = M.JWTConfiguration }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
    },
}

M.CreateDeploymentInput = {
    type = "structure",
    id = "CreateDeploymentInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        StageName = {
            type = "string",
            traits = {
                json_name = "stageName",
            },
        },
    },
}

M.CreateDeploymentOutput = {
    type = "structure",
    id = "CreateDeploymentOutput",
    members = {
        AutoDeployed = {
            type = "boolean",
            traits = {
                json_name = "autoDeployed",
            },
        },
        CreatedDate = {
            type = "timestamp",
            traits = {
                json_name = "createdDate",
                timestamp_format = "date-time",
            },
        },
        DeploymentId = {
            type = "string",
            traits = {
                json_name = "deploymentId",
            },
        },
        DeploymentStatus = {
            type = "string",
            traits = {
                json_name = "deploymentStatus",
            },
        },
        DeploymentStatusMessage = {
            type = "string",
            traits = {
                json_name = "deploymentStatusMessage",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
    },
}

M.MutualTlsAuthenticationInput = {
    type = "structure",
    id = "MutualTlsAuthenticationInput",
    members = {
        TruststoreUri = {
            type = "string",
            traits = {
                json_name = "truststoreUri",
            },
        },
        TruststoreVersion = {
            type = "string",
            traits = {
                json_name = "truststoreVersion",
            },
        },
    },
}

M.CreateDomainNameInput = {
    type = "structure",
    id = "CreateDomainNameInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                json_name = "domainName",
                required = true,
            },
        },
        DomainNameConfigurations = {
            type = "list",
            member = M.DomainNameConfiguration,
            traits = {
                json_name = "domainNameConfigurations",
            },
        },
        MutualTlsAuthentication = setmetatable({ traits = {
            json_name = "mutualTlsAuthentication",
        } }, { __index = M.MutualTlsAuthenticationInput }),
        RoutingMode = {
            type = "string",
            traits = {
                json_name = "routingMode",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateDomainNameOutput = {
    type = "structure",
    id = "CreateDomainNameOutput",
    members = {
        ApiMappingSelectionExpression = {
            type = "string",
            traits = {
                json_name = "apiMappingSelectionExpression",
            },
        },
        DomainName = {
            type = "string",
            traits = {
                json_name = "domainName",
            },
        },
        DomainNameArn = {
            type = "string",
            traits = {
                json_name = "domainNameArn",
            },
        },
        DomainNameConfigurations = {
            type = "list",
            member = M.DomainNameConfiguration,
            traits = {
                json_name = "domainNameConfigurations",
            },
        },
        MutualTlsAuthentication = setmetatable({ traits = {
            json_name = "mutualTlsAuthentication",
        } }, { __index = M.MutualTlsAuthentication }),
        RoutingMode = {
            type = "string",
            traits = {
                json_name = "routingMode",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.TlsConfigInput = {
    type = "structure",
    id = "TlsConfigInput",
    members = {
        ServerNameToVerify = {
            type = "string",
            traits = {
                json_name = "serverNameToVerify",
            },
        },
    },
}

M.CreateIntegrationInput = {
    type = "structure",
    id = "CreateIntegrationInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConnectionId = {
            type = "string",
            traits = {
                json_name = "connectionId",
            },
        },
        ConnectionType = {
            type = "string",
            traits = {
                json_name = "connectionType",
            },
        },
        ContentHandlingStrategy = {
            type = "string",
            traits = {
                json_name = "contentHandlingStrategy",
            },
        },
        CredentialsArn = {
            type = "string",
            traits = {
                json_name = "credentialsArn",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        IntegrationMethod = {
            type = "string",
            traits = {
                json_name = "integrationMethod",
            },
        },
        IntegrationSubtype = {
            type = "string",
            traits = {
                json_name = "integrationSubtype",
            },
        },
        IntegrationType = {
            type = "string",
            traits = {
                json_name = "integrationType",
                required = true,
            },
        },
        IntegrationUri = {
            type = "string",
            traits = {
                json_name = "integrationUri",
            },
        },
        PassthroughBehavior = {
            type = "string",
            traits = {
                json_name = "passthroughBehavior",
            },
        },
        PayloadFormatVersion = {
            type = "string",
            traits = {
                json_name = "payloadFormatVersion",
            },
        },
        RequestParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "requestParameters",
            },
        },
        RequestTemplates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "requestTemplates",
            },
        },
        ResponseParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
            traits = {
                json_name = "responseParameters",
            },
        },
        TemplateSelectionExpression = {
            type = "string",
            traits = {
                json_name = "templateSelectionExpression",
            },
        },
        TimeoutInMillis = {
            type = "integer",
            traits = {
                json_name = "timeoutInMillis",
            },
        },
        TlsConfig = setmetatable({ traits = {
            json_name = "tlsConfig",
        } }, { __index = M.TlsConfigInput }),
    },
}

M.CreateIntegrationOutput = {
    type = "structure",
    id = "CreateIntegrationOutput",
    members = {
        ApiGatewayManaged = {
            type = "boolean",
            traits = {
                json_name = "apiGatewayManaged",
            },
        },
        ConnectionId = {
            type = "string",
            traits = {
                json_name = "connectionId",
            },
        },
        ConnectionType = {
            type = "string",
            traits = {
                json_name = "connectionType",
            },
        },
        ContentHandlingStrategy = {
            type = "string",
            traits = {
                json_name = "contentHandlingStrategy",
            },
        },
        CredentialsArn = {
            type = "string",
            traits = {
                json_name = "credentialsArn",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        IntegrationId = {
            type = "string",
            traits = {
                json_name = "integrationId",
            },
        },
        IntegrationMethod = {
            type = "string",
            traits = {
                json_name = "integrationMethod",
            },
        },
        IntegrationResponseSelectionExpression = {
            type = "string",
            traits = {
                json_name = "integrationResponseSelectionExpression",
            },
        },
        IntegrationSubtype = {
            type = "string",
            traits = {
                json_name = "integrationSubtype",
            },
        },
        IntegrationType = {
            type = "string",
            traits = {
                json_name = "integrationType",
            },
        },
        IntegrationUri = {
            type = "string",
            traits = {
                json_name = "integrationUri",
            },
        },
        PassthroughBehavior = {
            type = "string",
            traits = {
                json_name = "passthroughBehavior",
            },
        },
        PayloadFormatVersion = {
            type = "string",
            traits = {
                json_name = "payloadFormatVersion",
            },
        },
        RequestParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "requestParameters",
            },
        },
        RequestTemplates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "requestTemplates",
            },
        },
        ResponseParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
            traits = {
                json_name = "responseParameters",
            },
        },
        TemplateSelectionExpression = {
            type = "string",
            traits = {
                json_name = "templateSelectionExpression",
            },
        },
        TimeoutInMillis = {
            type = "integer",
            traits = {
                json_name = "timeoutInMillis",
            },
        },
        TlsConfig = setmetatable({ traits = {
            json_name = "tlsConfig",
        } }, { __index = M.TlsConfig }),
    },
}

M.CreateIntegrationResponseInput = {
    type = "structure",
    id = "CreateIntegrationResponseInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContentHandlingStrategy = {
            type = "string",
            traits = {
                json_name = "contentHandlingStrategy",
            },
        },
        IntegrationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IntegrationResponseKey = {
            type = "string",
            traits = {
                json_name = "integrationResponseKey",
                required = true,
            },
        },
        ResponseParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "responseParameters",
            },
        },
        ResponseTemplates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "responseTemplates",
            },
        },
        TemplateSelectionExpression = {
            type = "string",
            traits = {
                json_name = "templateSelectionExpression",
            },
        },
    },
}

M.CreateIntegrationResponseOutput = {
    type = "structure",
    id = "CreateIntegrationResponseOutput",
    members = {
        ContentHandlingStrategy = {
            type = "string",
            traits = {
                json_name = "contentHandlingStrategy",
            },
        },
        IntegrationResponseId = {
            type = "string",
            traits = {
                json_name = "integrationResponseId",
            },
        },
        IntegrationResponseKey = {
            type = "string",
            traits = {
                json_name = "integrationResponseKey",
            },
        },
        ResponseParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "responseParameters",
            },
        },
        ResponseTemplates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "responseTemplates",
            },
        },
        TemplateSelectionExpression = {
            type = "string",
            traits = {
                json_name = "templateSelectionExpression",
            },
        },
    },
}

M.CreateModelInput = {
    type = "structure",
    id = "CreateModelInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContentType = {
            type = "string",
            traits = {
                json_name = "contentType",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Schema = {
            type = "string",
            traits = {
                json_name = "schema",
                required = true,
            },
        },
    },
}

M.CreateModelOutput = {
    type = "structure",
    id = "CreateModelOutput",
    members = {
        ContentType = {
            type = "string",
            traits = {
                json_name = "contentType",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        ModelId = {
            type = "string",
            traits = {
                json_name = "modelId",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Schema = {
            type = "string",
            traits = {
                json_name = "schema",
            },
        },
    },
}

M.EndpointConfigurationRequest = {
    type = "structure",
    id = "EndpointConfigurationRequest",
    members = {
        AcmManaged = setmetatable({ traits = {
            json_name = "acmManaged",
        } }, { __index = M.ACMManaged }),
        None = setmetatable({ traits = {
            json_name = "none",
        } }, { __index = M.None }),
    },
}

M.CreatePortalInput = {
    type = "structure",
    id = "CreatePortalInput",
    members = {
        Authorization = setmetatable({ traits = {
            json_name = "authorization",
            required = true,
        } }, { __index = M.Authorization }),
        EndpointConfiguration = setmetatable({ traits = {
            json_name = "endpointConfiguration",
            required = true,
        } }, { __index = M.EndpointConfigurationRequest }),
        IncludedPortalProductArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "includedPortalProductArns",
            },
        },
        LogoUri = {
            type = "string",
            traits = {
                json_name = "logoUri",
            },
        },
        PortalContent = setmetatable({ traits = {
            json_name = "portalContent",
            required = true,
        } }, { __index = M.PortalContent }),
        RumAppMonitorName = {
            type = "string",
            traits = {
                json_name = "rumAppMonitorName",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreatePortalOutput = {
    type = "structure",
    id = "CreatePortalOutput",
    members = {
        Authorization = setmetatable({ traits = {
            json_name = "authorization",
        } }, { __index = M.Authorization }),
        EndpointConfiguration = setmetatable({ traits = {
            json_name = "endpointConfiguration",
        } }, { __index = M.EndpointConfigurationResponse }),
        IncludedPortalProductArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "includedPortalProductArns",
            },
        },
        LastModified = {
            type = "timestamp",
            traits = {
                json_name = "lastModified",
                timestamp_format = "date-time",
            },
        },
        LastPublished = {
            type = "timestamp",
            traits = {
                json_name = "lastPublished",
                timestamp_format = "date-time",
            },
        },
        LastPublishedDescription = {
            type = "string",
            traits = {
                json_name = "lastPublishedDescription",
            },
        },
        PortalArn = {
            type = "string",
            traits = {
                json_name = "portalArn",
            },
        },
        PortalContent = setmetatable({ traits = {
            json_name = "portalContent",
        } }, { __index = M.PortalContent }),
        PortalId = {
            type = "string",
            traits = {
                json_name = "portalId",
            },
        },
        PublishStatus = {
            type = "string",
            traits = {
                json_name = "publishStatus",
            },
        },
        RumAppMonitorName = {
            type = "string",
            traits = {
                json_name = "rumAppMonitorName",
            },
        },
        StatusException = setmetatable({ traits = {
            json_name = "statusException",
        } }, { __index = M.StatusException }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreatePortalProductInput = {
    type = "structure",
    id = "CreatePortalProductInput",
    members = {
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        DisplayName = {
            type = "string",
            traits = {
                json_name = "displayName",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.DisplayOrder = {
    type = "structure",
    id = "DisplayOrder",
    members = {
        Contents = {
            type = "list",
            member = M.Section,
            traits = {
                json_name = "contents",
            },
        },
        OverviewPageArn = {
            type = "string",
            traits = {
                json_name = "overviewPageArn",
            },
        },
        ProductPageArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "productPageArns",
            },
        },
    },
}

M.CreatePortalProductOutput = {
    type = "structure",
    id = "CreatePortalProductOutput",
    members = {
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        DisplayName = {
            type = "string",
            traits = {
                json_name = "displayName",
            },
        },
        DisplayOrder = setmetatable({ traits = {
            json_name = "displayOrder",
        } }, { __index = M.DisplayOrder }),
        LastModified = {
            type = "timestamp",
            traits = {
                json_name = "lastModified",
                timestamp_format = "date-time",
            },
        },
        PortalProductArn = {
            type = "string",
            traits = {
                json_name = "portalProductArn",
            },
        },
        PortalProductId = {
            type = "string",
            traits = {
                json_name = "portalProductId",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.DisplayContent = {
    type = "structure",
    id = "DisplayContent",
    members = {
        Body = {
            type = "string",
            traits = {
                json_name = "body",
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                json_name = "title",
                required = true,
            },
        },
    },
}

M.CreateProductPageInput = {
    type = "structure",
    id = "CreateProductPageInput",
    members = {
        DisplayContent = setmetatable({ traits = {
            json_name = "displayContent",
            required = true,
        } }, { __index = M.DisplayContent }),
        PortalProductId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CreateProductPageOutput = {
    type = "structure",
    id = "CreateProductPageOutput",
    members = {
        DisplayContent = setmetatable({ traits = {
            json_name = "displayContent",
        } }, { __index = M.DisplayContent }),
        LastModified = {
            type = "timestamp",
            traits = {
                json_name = "lastModified",
                timestamp_format = "date-time",
            },
        },
        ProductPageArn = {
            type = "string",
            traits = {
                json_name = "productPageArn",
            },
        },
        ProductPageId = {
            type = "string",
            traits = {
                json_name = "productPageId",
            },
        },
    },
}

M.DisplayContentOverrides = {
    type = "structure",
    id = "DisplayContentOverrides",
    members = {
        Body = {
            type = "string",
            traits = {
                json_name = "body",
            },
        },
        Endpoint = {
            type = "string",
            traits = {
                json_name = "endpoint",
            },
        },
        OperationName = {
            type = "string",
            traits = {
                json_name = "operationName",
            },
        },
    },
}

M.EndpointDisplayContent = {
    type = "structure",
    id = "EndpointDisplayContent",
    members = {
        None = setmetatable({ traits = {
            json_name = "none",
        } }, { __index = M.None }),
        Overrides = setmetatable({ traits = {
            json_name = "overrides",
        } }, { __index = M.DisplayContentOverrides }),
    },
}

M.CreateProductRestEndpointPageInput = {
    type = "structure",
    id = "CreateProductRestEndpointPageInput",
    members = {
        DisplayContent = setmetatable({ traits = {
            json_name = "displayContent",
        } }, { __index = M.EndpointDisplayContent }),
        PortalProductId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RestEndpointIdentifier = setmetatable({ traits = {
            json_name = "restEndpointIdentifier",
            required = true,
        } }, { __index = M.RestEndpointIdentifier }),
        TryItState = {
            type = "string",
            traits = {
                json_name = "tryItState",
            },
        },
    },
}

M.EndpointDisplayContentResponse = {
    type = "structure",
    id = "EndpointDisplayContentResponse",
    members = {
        Body = {
            type = "string",
            traits = {
                json_name = "body",
            },
        },
        Endpoint = {
            type = "string",
            traits = {
                json_name = "endpoint",
                required = true,
            },
        },
        OperationName = {
            type = "string",
            traits = {
                json_name = "operationName",
            },
        },
    },
}

M.CreateProductRestEndpointPageOutput = {
    type = "structure",
    id = "CreateProductRestEndpointPageOutput",
    members = {
        DisplayContent = setmetatable({ traits = {
            json_name = "displayContent",
        } }, { __index = M.EndpointDisplayContentResponse }),
        LastModified = {
            type = "timestamp",
            traits = {
                json_name = "lastModified",
                timestamp_format = "date-time",
            },
        },
        ProductRestEndpointPageArn = {
            type = "string",
            traits = {
                json_name = "productRestEndpointPageArn",
            },
        },
        ProductRestEndpointPageId = {
            type = "string",
            traits = {
                json_name = "productRestEndpointPageId",
            },
        },
        RestEndpointIdentifier = setmetatable({ traits = {
            json_name = "restEndpointIdentifier",
        } }, { __index = M.RestEndpointIdentifier }),
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
        StatusException = setmetatable({ traits = {
            json_name = "statusException",
        } }, { __index = M.StatusException }),
        TryItState = {
            type = "string",
            traits = {
                json_name = "tryItState",
            },
        },
    },
}

M.CreateRouteInput = {
    type = "structure",
    id = "CreateRouteInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ApiKeyRequired = {
            type = "boolean",
            traits = {
                json_name = "apiKeyRequired",
            },
        },
        AuthorizationScopes = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "authorizationScopes",
            },
        },
        AuthorizationType = {
            type = "string",
            traits = {
                json_name = "authorizationType",
            },
        },
        AuthorizerId = {
            type = "string",
            traits = {
                json_name = "authorizerId",
            },
        },
        ModelSelectionExpression = {
            type = "string",
            traits = {
                json_name = "modelSelectionExpression",
            },
        },
        OperationName = {
            type = "string",
            traits = {
                json_name = "operationName",
            },
        },
        RequestModels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "requestModels",
            },
        },
        RequestParameters = {
            type = "map",
            key = { type = "string" },
            value = M.ParameterConstraints,
            traits = {
                json_name = "requestParameters",
            },
        },
        RouteKey = {
            type = "string",
            traits = {
                json_name = "routeKey",
                required = true,
            },
        },
        RouteResponseSelectionExpression = {
            type = "string",
            traits = {
                json_name = "routeResponseSelectionExpression",
            },
        },
        Target = {
            type = "string",
            traits = {
                json_name = "target",
            },
        },
    },
}

M.CreateRouteOutput = {
    type = "structure",
    id = "CreateRouteOutput",
    members = {
        ApiGatewayManaged = {
            type = "boolean",
            traits = {
                json_name = "apiGatewayManaged",
            },
        },
        ApiKeyRequired = {
            type = "boolean",
            traits = {
                json_name = "apiKeyRequired",
            },
        },
        AuthorizationScopes = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "authorizationScopes",
            },
        },
        AuthorizationType = {
            type = "string",
            traits = {
                json_name = "authorizationType",
            },
        },
        AuthorizerId = {
            type = "string",
            traits = {
                json_name = "authorizerId",
            },
        },
        ModelSelectionExpression = {
            type = "string",
            traits = {
                json_name = "modelSelectionExpression",
            },
        },
        OperationName = {
            type = "string",
            traits = {
                json_name = "operationName",
            },
        },
        RequestModels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "requestModels",
            },
        },
        RequestParameters = {
            type = "map",
            key = { type = "string" },
            value = M.ParameterConstraints,
            traits = {
                json_name = "requestParameters",
            },
        },
        RouteId = {
            type = "string",
            traits = {
                json_name = "routeId",
            },
        },
        RouteKey = {
            type = "string",
            traits = {
                json_name = "routeKey",
            },
        },
        RouteResponseSelectionExpression = {
            type = "string",
            traits = {
                json_name = "routeResponseSelectionExpression",
            },
        },
        Target = {
            type = "string",
            traits = {
                json_name = "target",
            },
        },
    },
}

M.CreateRouteResponseInput = {
    type = "structure",
    id = "CreateRouteResponseInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ModelSelectionExpression = {
            type = "string",
            traits = {
                json_name = "modelSelectionExpression",
            },
        },
        ResponseModels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "responseModels",
            },
        },
        ResponseParameters = {
            type = "map",
            key = { type = "string" },
            value = M.ParameterConstraints,
            traits = {
                json_name = "responseParameters",
            },
        },
        RouteId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RouteResponseKey = {
            type = "string",
            traits = {
                json_name = "routeResponseKey",
                required = true,
            },
        },
    },
}

M.CreateRouteResponseOutput = {
    type = "structure",
    id = "CreateRouteResponseOutput",
    members = {
        ModelSelectionExpression = {
            type = "string",
            traits = {
                json_name = "modelSelectionExpression",
            },
        },
        ResponseModels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "responseModels",
            },
        },
        ResponseParameters = {
            type = "map",
            key = { type = "string" },
            value = M.ParameterConstraints,
            traits = {
                json_name = "responseParameters",
            },
        },
        RouteResponseId = {
            type = "string",
            traits = {
                json_name = "routeResponseId",
            },
        },
        RouteResponseKey = {
            type = "string",
            traits = {
                json_name = "routeResponseKey",
            },
        },
    },
}

M.CreateRoutingRuleInput = {
    type = "structure",
    id = "CreateRoutingRuleInput",
    members = {
        Actions = {
            type = "list",
            member = M.RoutingRuleAction,
            traits = {
                json_name = "actions",
                required = true,
            },
        },
        Conditions = {
            type = "list",
            member = M.RoutingRuleCondition,
            traits = {
                json_name = "conditions",
                required = true,
            },
        },
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DomainNameId = {
            type = "string",
            traits = {
                http_query = "domainNameId",
            },
        },
        Priority = {
            type = "integer",
            traits = {
                json_name = "priority",
                required = true,
            },
        },
    },
}

M.CreateRoutingRuleOutput = {
    type = "structure",
    id = "CreateRoutingRuleOutput",
    members = {
        Actions = {
            type = "list",
            member = M.RoutingRuleAction,
            traits = {
                json_name = "actions",
            },
        },
        Conditions = {
            type = "list",
            member = M.RoutingRuleCondition,
            traits = {
                json_name = "conditions",
            },
        },
        Priority = {
            type = "integer",
            traits = {
                json_name = "priority",
            },
        },
        RoutingRuleArn = {
            type = "string",
            traits = {
                json_name = "routingRuleArn",
            },
        },
        RoutingRuleId = {
            type = "string",
            traits = {
                json_name = "routingRuleId",
            },
        },
    },
}

M.CreateStageInput = {
    type = "structure",
    id = "CreateStageInput",
    members = {
        AccessLogSettings = setmetatable({ traits = {
            json_name = "accessLogSettings",
        } }, { __index = M.AccessLogSettings }),
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AutoDeploy = {
            type = "boolean",
            traits = {
                json_name = "autoDeploy",
            },
        },
        ClientCertificateId = {
            type = "string",
            traits = {
                json_name = "clientCertificateId",
            },
        },
        DefaultRouteSettings = setmetatable({ traits = {
            json_name = "defaultRouteSettings",
        } }, { __index = M.RouteSettings }),
        DeploymentId = {
            type = "string",
            traits = {
                json_name = "deploymentId",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        RouteSettings = {
            type = "map",
            key = { type = "string" },
            value = M.RouteSettings,
            traits = {
                json_name = "routeSettings",
            },
        },
        StageName = {
            type = "string",
            traits = {
                json_name = "stageName",
                required = true,
            },
        },
        StageVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "stageVariables",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateStageOutput = {
    type = "structure",
    id = "CreateStageOutput",
    members = {
        AccessLogSettings = setmetatable({ traits = {
            json_name = "accessLogSettings",
        } }, { __index = M.AccessLogSettings }),
        ApiGatewayManaged = {
            type = "boolean",
            traits = {
                json_name = "apiGatewayManaged",
            },
        },
        AutoDeploy = {
            type = "boolean",
            traits = {
                json_name = "autoDeploy",
            },
        },
        ClientCertificateId = {
            type = "string",
            traits = {
                json_name = "clientCertificateId",
            },
        },
        CreatedDate = {
            type = "timestamp",
            traits = {
                json_name = "createdDate",
                timestamp_format = "date-time",
            },
        },
        DefaultRouteSettings = setmetatable({ traits = {
            json_name = "defaultRouteSettings",
        } }, { __index = M.RouteSettings }),
        DeploymentId = {
            type = "string",
            traits = {
                json_name = "deploymentId",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        LastDeploymentStatusMessage = {
            type = "string",
            traits = {
                json_name = "lastDeploymentStatusMessage",
            },
        },
        LastUpdatedDate = {
            type = "timestamp",
            traits = {
                json_name = "lastUpdatedDate",
                timestamp_format = "date-time",
            },
        },
        RouteSettings = {
            type = "map",
            key = { type = "string" },
            value = M.RouteSettings,
            traits = {
                json_name = "routeSettings",
            },
        },
        StageName = {
            type = "string",
            traits = {
                json_name = "stageName",
            },
        },
        StageVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "stageVariables",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateVpcLinkInput = {
    type = "structure",
    id = "CreateVpcLinkInput",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "securityGroupIds",
            },
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "subnetIds",
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateVpcLinkOutput = {
    type = "structure",
    id = "CreateVpcLinkOutput",
    members = {
        CreatedDate = {
            type = "timestamp",
            traits = {
                json_name = "createdDate",
                timestamp_format = "date-time",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "securityGroupIds",
            },
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "subnetIds",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        VpcLinkId = {
            type = "string",
            traits = {
                json_name = "vpcLinkId",
            },
        },
        VpcLinkStatus = {
            type = "string",
            traits = {
                json_name = "vpcLinkStatus",
            },
        },
        VpcLinkStatusMessage = {
            type = "string",
            traits = {
                json_name = "vpcLinkStatusMessage",
            },
        },
        VpcLinkVersion = {
            type = "string",
            traits = {
                json_name = "vpcLinkVersion",
            },
        },
    },
}

M.DeleteAccessLogSettingsInput = {
    type = "structure",
    id = "DeleteAccessLogSettingsInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        StageName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAccessLogSettingsOutput = {
    type = "structure",
    id = "DeleteAccessLogSettingsOutput",
}

M.DeleteApiInput = {
    type = "structure",
    id = "DeleteApiInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteApiOutput = {
    type = "structure",
    id = "DeleteApiOutput",
}

M.DeleteApiMappingInput = {
    type = "structure",
    id = "DeleteApiMappingInput",
    members = {
        ApiMappingId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteApiMappingOutput = {
    type = "structure",
    id = "DeleteApiMappingOutput",
}

M.DeleteAuthorizerInput = {
    type = "structure",
    id = "DeleteAuthorizerInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AuthorizerId = {
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
    id = "DeleteAuthorizerOutput",
}

M.DeleteCorsConfigurationInput = {
    type = "structure",
    id = "DeleteCorsConfigurationInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCorsConfigurationOutput = {
    type = "structure",
    id = "DeleteCorsConfigurationOutput",
}

M.DeleteDeploymentInput = {
    type = "structure",
    id = "DeleteDeploymentInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeploymentId = {
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
    id = "DeleteDeploymentOutput",
}

M.DeleteDomainNameInput = {
    type = "structure",
    id = "DeleteDomainNameInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDomainNameOutput = {
    type = "structure",
    id = "DeleteDomainNameOutput",
}

M.DeleteIntegrationInput = {
    type = "structure",
    id = "DeleteIntegrationInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IntegrationId = {
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
    id = "DeleteIntegrationOutput",
}

M.DeleteIntegrationResponseInput = {
    type = "structure",
    id = "DeleteIntegrationResponseInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IntegrationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IntegrationResponseId = {
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
    id = "DeleteIntegrationResponseOutput",
}

M.DeleteModelInput = {
    type = "structure",
    id = "DeleteModelInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ModelId = {
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
    id = "DeleteModelOutput",
}

M.DeletePortalInput = {
    type = "structure",
    id = "DeletePortalInput",
    members = {
        PortalId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePortalOutput = {
    type = "structure",
    id = "DeletePortalOutput",
}

M.DeletePortalProductInput = {
    type = "structure",
    id = "DeletePortalProductInput",
    members = {
        PortalProductId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePortalProductOutput = {
    type = "structure",
    id = "DeletePortalProductOutput",
}

M.DeletePortalProductSharingPolicyInput = {
    type = "structure",
    id = "DeletePortalProductSharingPolicyInput",
    members = {
        PortalProductId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePortalProductSharingPolicyOutput = {
    type = "structure",
    id = "DeletePortalProductSharingPolicyOutput",
}

M.DeleteProductPageInput = {
    type = "structure",
    id = "DeleteProductPageInput",
    members = {
        PortalProductId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProductPageId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteProductPageOutput = {
    type = "structure",
    id = "DeleteProductPageOutput",
}

M.DeleteProductRestEndpointPageInput = {
    type = "structure",
    id = "DeleteProductRestEndpointPageInput",
    members = {
        PortalProductId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProductRestEndpointPageId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteProductRestEndpointPageOutput = {
    type = "structure",
    id = "DeleteProductRestEndpointPageOutput",
}

M.DeleteRouteInput = {
    type = "structure",
    id = "DeleteRouteInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RouteId = {
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
}

M.DeleteRouteRequestParameterInput = {
    type = "structure",
    id = "DeleteRouteRequestParameterInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RequestParameterKey = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RouteId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRouteRequestParameterOutput = {
    type = "structure",
    id = "DeleteRouteRequestParameterOutput",
}

M.DeleteRouteResponseInput = {
    type = "structure",
    id = "DeleteRouteResponseInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RouteId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RouteResponseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRouteResponseOutput = {
    type = "structure",
    id = "DeleteRouteResponseOutput",
}

M.DeleteRouteSettingsInput = {
    type = "structure",
    id = "DeleteRouteSettingsInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RouteKey = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        StageName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRouteSettingsOutput = {
    type = "structure",
    id = "DeleteRouteSettingsOutput",
}

M.DeleteRoutingRuleInput = {
    type = "structure",
    id = "DeleteRoutingRuleInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DomainNameId = {
            type = "string",
            traits = {
                http_query = "domainNameId",
            },
        },
        RoutingRuleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRoutingRuleOutput = {
    type = "structure",
    id = "DeleteRoutingRuleOutput",
}

M.DeleteStageInput = {
    type = "structure",
    id = "DeleteStageInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        StageName = {
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
    id = "DeleteStageOutput",
}

M.DeleteVpcLinkInput = {
    type = "structure",
    id = "DeleteVpcLinkInput",
    members = {
        VpcLinkId = {
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
    id = "DeleteVpcLinkOutput",
}

M.DisablePortalInput = {
    type = "structure",
    id = "DisablePortalInput",
    members = {
        PortalId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisablePortalOutput = {
    type = "structure",
    id = "DisablePortalOutput",
}

M.ExportApiInput = {
    type = "structure",
    id = "ExportApiInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExportVersion = {
            type = "string",
            traits = {
                http_query = "exportVersion",
            },
        },
        IncludeExtensions = {
            type = "boolean",
            traits = {
                http_query = "includeExtensions",
            },
        },
        OutputType = {
            type = "string",
            traits = {
                http_query = "outputType",
                required = true,
            },
        },
        Specification = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        StageName = {
            type = "string",
            traits = {
                http_query = "stageName",
            },
        },
    },
}

M.ExportApiOutput = {
    type = "structure",
    id = "ExportApiOutput",
    members = {
        body = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.GetApiInput = {
    type = "structure",
    id = "GetApiInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetApiOutput = {
    type = "structure",
    id = "GetApiOutput",
    members = {
        ApiEndpoint = {
            type = "string",
            traits = {
                json_name = "apiEndpoint",
            },
        },
        ApiGatewayManaged = {
            type = "boolean",
            traits = {
                json_name = "apiGatewayManaged",
            },
        },
        ApiId = {
            type = "string",
            traits = {
                json_name = "apiId",
            },
        },
        ApiKeySelectionExpression = {
            type = "string",
            traits = {
                json_name = "apiKeySelectionExpression",
            },
        },
        CorsConfiguration = setmetatable({ traits = {
            json_name = "corsConfiguration",
        } }, { __index = M.Cors }),
        CreatedDate = {
            type = "timestamp",
            traits = {
                json_name = "createdDate",
                timestamp_format = "date-time",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        DisableSchemaValidation = {
            type = "boolean",
            traits = {
                json_name = "disableSchemaValidation",
            },
        },
        DisableExecuteApiEndpoint = {
            type = "boolean",
            traits = {
                json_name = "disableExecuteApiEndpoint",
            },
        },
        ImportInfo = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "importInfo",
            },
        },
        IpAddressType = {
            type = "string",
            traits = {
                json_name = "ipAddressType",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        ProtocolType = {
            type = "string",
            traits = {
                json_name = "protocolType",
            },
        },
        RouteSelectionExpression = {
            type = "string",
            traits = {
                json_name = "routeSelectionExpression",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        Version = {
            type = "string",
            traits = {
                json_name = "version",
            },
        },
        Warnings = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "warnings",
            },
        },
    },
}

M.GetApiMappingInput = {
    type = "structure",
    id = "GetApiMappingInput",
    members = {
        ApiMappingId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetApiMappingOutput = {
    type = "structure",
    id = "GetApiMappingOutput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                json_name = "apiId",
            },
        },
        ApiMappingId = {
            type = "string",
            traits = {
                json_name = "apiMappingId",
            },
        },
        ApiMappingKey = {
            type = "string",
            traits = {
                json_name = "apiMappingKey",
            },
        },
        Stage = {
            type = "string",
            traits = {
                json_name = "stage",
            },
        },
    },
}

M.GetApiMappingsInput = {
    type = "structure",
    id = "GetApiMappingsInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "string",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.GetApiMappingsOutput = {
    type = "structure",
    id = "GetApiMappingsOutput",
    members = {
        Items = {
            type = "list",
            member = M.ApiMapping,
            traits = {
                json_name = "items",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.GetApisInput = {
    type = "structure",
    id = "GetApisInput",
    members = {
        MaxResults = {
            type = "string",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.GetApisOutput = {
    type = "structure",
    id = "GetApisOutput",
    members = {
        Items = {
            type = "list",
            member = M.Api,
            traits = {
                json_name = "items",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.GetAuthorizerInput = {
    type = "structure",
    id = "GetAuthorizerInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AuthorizerId = {
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
    id = "GetAuthorizerOutput",
    members = {
        AuthorizerCredentialsArn = {
            type = "string",
            traits = {
                json_name = "authorizerCredentialsArn",
            },
        },
        AuthorizerId = {
            type = "string",
            traits = {
                json_name = "authorizerId",
            },
        },
        AuthorizerPayloadFormatVersion = {
            type = "string",
            traits = {
                json_name = "authorizerPayloadFormatVersion",
            },
        },
        AuthorizerResultTtlInSeconds = {
            type = "integer",
            traits = {
                json_name = "authorizerResultTtlInSeconds",
            },
        },
        AuthorizerType = {
            type = "string",
            traits = {
                json_name = "authorizerType",
            },
        },
        AuthorizerUri = {
            type = "string",
            traits = {
                json_name = "authorizerUri",
            },
        },
        EnableSimpleResponses = {
            type = "boolean",
            traits = {
                json_name = "enableSimpleResponses",
            },
        },
        IdentitySource = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "identitySource",
            },
        },
        IdentityValidationExpression = {
            type = "string",
            traits = {
                json_name = "identityValidationExpression",
            },
        },
        JwtConfiguration = setmetatable({ traits = {
            json_name = "jwtConfiguration",
        } }, { __index = M.JWTConfiguration }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
    },
}

M.GetAuthorizersInput = {
    type = "structure",
    id = "GetAuthorizersInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "string",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.GetAuthorizersOutput = {
    type = "structure",
    id = "GetAuthorizersOutput",
    members = {
        Items = {
            type = "list",
            member = M.Authorizer,
            traits = {
                json_name = "items",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.GetDeploymentInput = {
    type = "structure",
    id = "GetDeploymentInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeploymentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDeploymentOutput = {
    type = "structure",
    id = "GetDeploymentOutput",
    members = {
        AutoDeployed = {
            type = "boolean",
            traits = {
                json_name = "autoDeployed",
            },
        },
        CreatedDate = {
            type = "timestamp",
            traits = {
                json_name = "createdDate",
                timestamp_format = "date-time",
            },
        },
        DeploymentId = {
            type = "string",
            traits = {
                json_name = "deploymentId",
            },
        },
        DeploymentStatus = {
            type = "string",
            traits = {
                json_name = "deploymentStatus",
            },
        },
        DeploymentStatusMessage = {
            type = "string",
            traits = {
                json_name = "deploymentStatusMessage",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
    },
}

M.GetDeploymentsInput = {
    type = "structure",
    id = "GetDeploymentsInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "string",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.GetDeploymentsOutput = {
    type = "structure",
    id = "GetDeploymentsOutput",
    members = {
        Items = {
            type = "list",
            member = M.Deployment,
            traits = {
                json_name = "items",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.GetDomainNameInput = {
    type = "structure",
    id = "GetDomainNameInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDomainNameOutput = {
    type = "structure",
    id = "GetDomainNameOutput",
    members = {
        ApiMappingSelectionExpression = {
            type = "string",
            traits = {
                json_name = "apiMappingSelectionExpression",
            },
        },
        DomainName = {
            type = "string",
            traits = {
                json_name = "domainName",
            },
        },
        DomainNameArn = {
            type = "string",
            traits = {
                json_name = "domainNameArn",
            },
        },
        DomainNameConfigurations = {
            type = "list",
            member = M.DomainNameConfiguration,
            traits = {
                json_name = "domainNameConfigurations",
            },
        },
        MutualTlsAuthentication = setmetatable({ traits = {
            json_name = "mutualTlsAuthentication",
        } }, { __index = M.MutualTlsAuthentication }),
        RoutingMode = {
            type = "string",
            traits = {
                json_name = "routingMode",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.GetDomainNamesInput = {
    type = "structure",
    id = "GetDomainNamesInput",
    members = {
        MaxResults = {
            type = "string",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.GetDomainNamesOutput = {
    type = "structure",
    id = "GetDomainNamesOutput",
    members = {
        Items = {
            type = "list",
            member = M.DomainName,
            traits = {
                json_name = "items",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.GetIntegrationInput = {
    type = "structure",
    id = "GetIntegrationInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IntegrationId = {
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
    id = "GetIntegrationOutput",
    members = {
        ApiGatewayManaged = {
            type = "boolean",
            traits = {
                json_name = "apiGatewayManaged",
            },
        },
        ConnectionId = {
            type = "string",
            traits = {
                json_name = "connectionId",
            },
        },
        ConnectionType = {
            type = "string",
            traits = {
                json_name = "connectionType",
            },
        },
        ContentHandlingStrategy = {
            type = "string",
            traits = {
                json_name = "contentHandlingStrategy",
            },
        },
        CredentialsArn = {
            type = "string",
            traits = {
                json_name = "credentialsArn",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        IntegrationId = {
            type = "string",
            traits = {
                json_name = "integrationId",
            },
        },
        IntegrationMethod = {
            type = "string",
            traits = {
                json_name = "integrationMethod",
            },
        },
        IntegrationResponseSelectionExpression = {
            type = "string",
            traits = {
                json_name = "integrationResponseSelectionExpression",
            },
        },
        IntegrationSubtype = {
            type = "string",
            traits = {
                json_name = "integrationSubtype",
            },
        },
        IntegrationType = {
            type = "string",
            traits = {
                json_name = "integrationType",
            },
        },
        IntegrationUri = {
            type = "string",
            traits = {
                json_name = "integrationUri",
            },
        },
        PassthroughBehavior = {
            type = "string",
            traits = {
                json_name = "passthroughBehavior",
            },
        },
        PayloadFormatVersion = {
            type = "string",
            traits = {
                json_name = "payloadFormatVersion",
            },
        },
        RequestParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "requestParameters",
            },
        },
        RequestTemplates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "requestTemplates",
            },
        },
        ResponseParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
            traits = {
                json_name = "responseParameters",
            },
        },
        TemplateSelectionExpression = {
            type = "string",
            traits = {
                json_name = "templateSelectionExpression",
            },
        },
        TimeoutInMillis = {
            type = "integer",
            traits = {
                json_name = "timeoutInMillis",
            },
        },
        TlsConfig = setmetatable({ traits = {
            json_name = "tlsConfig",
        } }, { __index = M.TlsConfig }),
    },
}

M.GetIntegrationResponseInput = {
    type = "structure",
    id = "GetIntegrationResponseInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IntegrationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IntegrationResponseId = {
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
    id = "GetIntegrationResponseOutput",
    members = {
        ContentHandlingStrategy = {
            type = "string",
            traits = {
                json_name = "contentHandlingStrategy",
            },
        },
        IntegrationResponseId = {
            type = "string",
            traits = {
                json_name = "integrationResponseId",
            },
        },
        IntegrationResponseKey = {
            type = "string",
            traits = {
                json_name = "integrationResponseKey",
            },
        },
        ResponseParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "responseParameters",
            },
        },
        ResponseTemplates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "responseTemplates",
            },
        },
        TemplateSelectionExpression = {
            type = "string",
            traits = {
                json_name = "templateSelectionExpression",
            },
        },
    },
}

M.GetIntegrationResponsesInput = {
    type = "structure",
    id = "GetIntegrationResponsesInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IntegrationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "string",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.GetIntegrationResponsesOutput = {
    type = "structure",
    id = "GetIntegrationResponsesOutput",
    members = {
        Items = {
            type = "list",
            member = M.IntegrationResponse,
            traits = {
                json_name = "items",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.GetIntegrationsInput = {
    type = "structure",
    id = "GetIntegrationsInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "string",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.GetIntegrationsOutput = {
    type = "structure",
    id = "GetIntegrationsOutput",
    members = {
        Items = {
            type = "list",
            member = M.Integration,
            traits = {
                json_name = "items",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.GetModelInput = {
    type = "structure",
    id = "GetModelInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetModelOutput = {
    type = "structure",
    id = "GetModelOutput",
    members = {
        ContentType = {
            type = "string",
            traits = {
                json_name = "contentType",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        ModelId = {
            type = "string",
            traits = {
                json_name = "modelId",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Schema = {
            type = "string",
            traits = {
                json_name = "schema",
            },
        },
    },
}

M.GetModelsInput = {
    type = "structure",
    id = "GetModelsInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "string",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.GetModelsOutput = {
    type = "structure",
    id = "GetModelsOutput",
    members = {
        Items = {
            type = "list",
            member = M.Model,
            traits = {
                json_name = "items",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.GetModelTemplateInput = {
    type = "structure",
    id = "GetModelTemplateInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ModelId = {
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
    id = "GetModelTemplateOutput",
    members = {
        Value = {
            type = "string",
            traits = {
                json_name = "value",
            },
        },
    },
}

M.GetPortalInput = {
    type = "structure",
    id = "GetPortalInput",
    members = {
        PortalId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetPortalOutput = {
    type = "structure",
    id = "GetPortalOutput",
    members = {
        Authorization = setmetatable({ traits = {
            json_name = "authorization",
        } }, { __index = M.Authorization }),
        EndpointConfiguration = setmetatable({ traits = {
            json_name = "endpointConfiguration",
        } }, { __index = M.EndpointConfigurationResponse }),
        IncludedPortalProductArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "includedPortalProductArns",
            },
        },
        LastModified = {
            type = "timestamp",
            traits = {
                json_name = "lastModified",
                timestamp_format = "date-time",
            },
        },
        LastPublished = {
            type = "timestamp",
            traits = {
                json_name = "lastPublished",
                timestamp_format = "date-time",
            },
        },
        LastPublishedDescription = {
            type = "string",
            traits = {
                json_name = "lastPublishedDescription",
            },
        },
        PortalArn = {
            type = "string",
            traits = {
                json_name = "portalArn",
            },
        },
        PortalContent = setmetatable({ traits = {
            json_name = "portalContent",
        } }, { __index = M.PortalContent }),
        PortalId = {
            type = "string",
            traits = {
                json_name = "portalId",
            },
        },
        Preview = setmetatable({ traits = {
            json_name = "preview",
        } }, { __index = M.Preview }),
        PublishStatus = {
            type = "string",
            traits = {
                json_name = "publishStatus",
            },
        },
        RumAppMonitorName = {
            type = "string",
            traits = {
                json_name = "rumAppMonitorName",
            },
        },
        StatusException = setmetatable({ traits = {
            json_name = "statusException",
        } }, { __index = M.StatusException }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.GetPortalProductInput = {
    type = "structure",
    id = "GetPortalProductInput",
    members = {
        PortalProductId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceOwnerAccountId = {
            type = "string",
            traits = {
                http_query = "resourceOwnerAccountId",
            },
        },
    },
}

M.GetPortalProductOutput = {
    type = "structure",
    id = "GetPortalProductOutput",
    members = {
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        DisplayName = {
            type = "string",
            traits = {
                json_name = "displayName",
            },
        },
        DisplayOrder = setmetatable({ traits = {
            json_name = "displayOrder",
        } }, { __index = M.DisplayOrder }),
        LastModified = {
            type = "timestamp",
            traits = {
                json_name = "lastModified",
                timestamp_format = "date-time",
            },
        },
        PortalProductArn = {
            type = "string",
            traits = {
                json_name = "portalProductArn",
            },
        },
        PortalProductId = {
            type = "string",
            traits = {
                json_name = "portalProductId",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.GetPortalProductSharingPolicyInput = {
    type = "structure",
    id = "GetPortalProductSharingPolicyInput",
    members = {
        PortalProductId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetPortalProductSharingPolicyOutput = {
    type = "structure",
    id = "GetPortalProductSharingPolicyOutput",
    members = {
        PolicyDocument = {
            type = "string",
            traits = {
                json_name = "policyDocument",
            },
        },
        PortalProductId = {
            type = "string",
            traits = {
                json_name = "portalProductId",
            },
        },
    },
}

M.GetProductPageInput = {
    type = "structure",
    id = "GetProductPageInput",
    members = {
        PortalProductId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProductPageId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceOwnerAccountId = {
            type = "string",
            traits = {
                http_query = "resourceOwnerAccountId",
            },
        },
    },
}

M.GetProductPageOutput = {
    type = "structure",
    id = "GetProductPageOutput",
    members = {
        DisplayContent = setmetatable({ traits = {
            json_name = "displayContent",
        } }, { __index = M.DisplayContent }),
        LastModified = {
            type = "timestamp",
            traits = {
                json_name = "lastModified",
                timestamp_format = "date-time",
            },
        },
        ProductPageArn = {
            type = "string",
            traits = {
                json_name = "productPageArn",
            },
        },
        ProductPageId = {
            type = "string",
            traits = {
                json_name = "productPageId",
            },
        },
    },
}

M.GetProductRestEndpointPageInput = {
    type = "structure",
    id = "GetProductRestEndpointPageInput",
    members = {
        IncludeRawDisplayContent = {
            type = "string",
            traits = {
                http_query = "includeRawDisplayContent",
            },
        },
        PortalProductId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProductRestEndpointPageId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceOwnerAccountId = {
            type = "string",
            traits = {
                http_query = "resourceOwnerAccountId",
            },
        },
    },
}

M.GetProductRestEndpointPageOutput = {
    type = "structure",
    id = "GetProductRestEndpointPageOutput",
    members = {
        DisplayContent = setmetatable({ traits = {
            json_name = "displayContent",
        } }, { __index = M.EndpointDisplayContentResponse }),
        LastModified = {
            type = "timestamp",
            traits = {
                json_name = "lastModified",
                timestamp_format = "date-time",
            },
        },
        ProductRestEndpointPageArn = {
            type = "string",
            traits = {
                json_name = "productRestEndpointPageArn",
            },
        },
        ProductRestEndpointPageId = {
            type = "string",
            traits = {
                json_name = "productRestEndpointPageId",
            },
        },
        RawDisplayContent = {
            type = "string",
            traits = {
                json_name = "rawDisplayContent",
            },
        },
        RestEndpointIdentifier = setmetatable({ traits = {
            json_name = "restEndpointIdentifier",
        } }, { __index = M.RestEndpointIdentifier }),
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
        StatusException = setmetatable({ traits = {
            json_name = "statusException",
        } }, { __index = M.StatusException }),
        TryItState = {
            type = "string",
            traits = {
                json_name = "tryItState",
            },
        },
    },
}

M.GetRouteInput = {
    type = "structure",
    id = "GetRouteInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RouteId = {
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
        ApiGatewayManaged = {
            type = "boolean",
            traits = {
                json_name = "apiGatewayManaged",
            },
        },
        ApiKeyRequired = {
            type = "boolean",
            traits = {
                json_name = "apiKeyRequired",
            },
        },
        AuthorizationScopes = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "authorizationScopes",
            },
        },
        AuthorizationType = {
            type = "string",
            traits = {
                json_name = "authorizationType",
            },
        },
        AuthorizerId = {
            type = "string",
            traits = {
                json_name = "authorizerId",
            },
        },
        ModelSelectionExpression = {
            type = "string",
            traits = {
                json_name = "modelSelectionExpression",
            },
        },
        OperationName = {
            type = "string",
            traits = {
                json_name = "operationName",
            },
        },
        RequestModels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "requestModels",
            },
        },
        RequestParameters = {
            type = "map",
            key = { type = "string" },
            value = M.ParameterConstraints,
            traits = {
                json_name = "requestParameters",
            },
        },
        RouteId = {
            type = "string",
            traits = {
                json_name = "routeId",
            },
        },
        RouteKey = {
            type = "string",
            traits = {
                json_name = "routeKey",
            },
        },
        RouteResponseSelectionExpression = {
            type = "string",
            traits = {
                json_name = "routeResponseSelectionExpression",
            },
        },
        Target = {
            type = "string",
            traits = {
                json_name = "target",
            },
        },
    },
}

M.GetRouteResponseInput = {
    type = "structure",
    id = "GetRouteResponseInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RouteId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RouteResponseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetRouteResponseOutput = {
    type = "structure",
    id = "GetRouteResponseOutput",
    members = {
        ModelSelectionExpression = {
            type = "string",
            traits = {
                json_name = "modelSelectionExpression",
            },
        },
        ResponseModels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "responseModels",
            },
        },
        ResponseParameters = {
            type = "map",
            key = { type = "string" },
            value = M.ParameterConstraints,
            traits = {
                json_name = "responseParameters",
            },
        },
        RouteResponseId = {
            type = "string",
            traits = {
                json_name = "routeResponseId",
            },
        },
        RouteResponseKey = {
            type = "string",
            traits = {
                json_name = "routeResponseKey",
            },
        },
    },
}

M.GetRouteResponsesInput = {
    type = "structure",
    id = "GetRouteResponsesInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "string",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        RouteId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetRouteResponsesOutput = {
    type = "structure",
    id = "GetRouteResponsesOutput",
    members = {
        Items = {
            type = "list",
            member = M.RouteResponse,
            traits = {
                json_name = "items",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.GetRoutesInput = {
    type = "structure",
    id = "GetRoutesInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "string",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.GetRoutesOutput = {
    type = "structure",
    id = "GetRoutesOutput",
    members = {
        Items = {
            type = "list",
            member = M.Route,
            traits = {
                json_name = "items",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.GetRoutingRuleInput = {
    type = "structure",
    id = "GetRoutingRuleInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DomainNameId = {
            type = "string",
            traits = {
                http_query = "domainNameId",
            },
        },
        RoutingRuleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetRoutingRuleOutput = {
    type = "structure",
    id = "GetRoutingRuleOutput",
    members = {
        Actions = {
            type = "list",
            member = M.RoutingRuleAction,
            traits = {
                json_name = "actions",
            },
        },
        Conditions = {
            type = "list",
            member = M.RoutingRuleCondition,
            traits = {
                json_name = "conditions",
            },
        },
        Priority = {
            type = "integer",
            traits = {
                json_name = "priority",
            },
        },
        RoutingRuleArn = {
            type = "string",
            traits = {
                json_name = "routingRuleArn",
            },
        },
        RoutingRuleId = {
            type = "string",
            traits = {
                json_name = "routingRuleId",
            },
        },
    },
}

M.GetStageInput = {
    type = "structure",
    id = "GetStageInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        StageName = {
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
    id = "GetStageOutput",
    members = {
        AccessLogSettings = setmetatable({ traits = {
            json_name = "accessLogSettings",
        } }, { __index = M.AccessLogSettings }),
        ApiGatewayManaged = {
            type = "boolean",
            traits = {
                json_name = "apiGatewayManaged",
            },
        },
        AutoDeploy = {
            type = "boolean",
            traits = {
                json_name = "autoDeploy",
            },
        },
        ClientCertificateId = {
            type = "string",
            traits = {
                json_name = "clientCertificateId",
            },
        },
        CreatedDate = {
            type = "timestamp",
            traits = {
                json_name = "createdDate",
                timestamp_format = "date-time",
            },
        },
        DefaultRouteSettings = setmetatable({ traits = {
            json_name = "defaultRouteSettings",
        } }, { __index = M.RouteSettings }),
        DeploymentId = {
            type = "string",
            traits = {
                json_name = "deploymentId",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        LastDeploymentStatusMessage = {
            type = "string",
            traits = {
                json_name = "lastDeploymentStatusMessage",
            },
        },
        LastUpdatedDate = {
            type = "timestamp",
            traits = {
                json_name = "lastUpdatedDate",
                timestamp_format = "date-time",
            },
        },
        RouteSettings = {
            type = "map",
            key = { type = "string" },
            value = M.RouteSettings,
            traits = {
                json_name = "routeSettings",
            },
        },
        StageName = {
            type = "string",
            traits = {
                json_name = "stageName",
            },
        },
        StageVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "stageVariables",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.GetStagesInput = {
    type = "structure",
    id = "GetStagesInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "string",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.GetStagesOutput = {
    type = "structure",
    id = "GetStagesOutput",
    members = {
        Items = {
            type = "list",
            member = M.Stage,
            traits = {
                json_name = "items",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.GetTagsInput = {
    type = "structure",
    id = "GetTagsInput",
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

M.GetTagsOutput = {
    type = "structure",
    id = "GetTagsOutput",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.GetVpcLinkInput = {
    type = "structure",
    id = "GetVpcLinkInput",
    members = {
        VpcLinkId = {
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
    id = "GetVpcLinkOutput",
    members = {
        CreatedDate = {
            type = "timestamp",
            traits = {
                json_name = "createdDate",
                timestamp_format = "date-time",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "securityGroupIds",
            },
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "subnetIds",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        VpcLinkId = {
            type = "string",
            traits = {
                json_name = "vpcLinkId",
            },
        },
        VpcLinkStatus = {
            type = "string",
            traits = {
                json_name = "vpcLinkStatus",
            },
        },
        VpcLinkStatusMessage = {
            type = "string",
            traits = {
                json_name = "vpcLinkStatusMessage",
            },
        },
        VpcLinkVersion = {
            type = "string",
            traits = {
                json_name = "vpcLinkVersion",
            },
        },
    },
}

M.GetVpcLinksInput = {
    type = "structure",
    id = "GetVpcLinksInput",
    members = {
        MaxResults = {
            type = "string",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.GetVpcLinksOutput = {
    type = "structure",
    id = "GetVpcLinksOutput",
    members = {
        Items = {
            type = "list",
            member = M.VpcLink,
            traits = {
                json_name = "items",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ImportApiInput = {
    type = "structure",
    id = "ImportApiInput",
    members = {
        Basepath = {
            type = "string",
            traits = {
                http_query = "basepath",
            },
        },
        Body = {
            type = "string",
            traits = {
                json_name = "body",
                required = true,
            },
        },
        FailOnWarnings = {
            type = "boolean",
            traits = {
                http_query = "failOnWarnings",
            },
        },
    },
}

M.ImportApiOutput = {
    type = "structure",
    id = "ImportApiOutput",
    members = {
        ApiEndpoint = {
            type = "string",
            traits = {
                json_name = "apiEndpoint",
            },
        },
        ApiGatewayManaged = {
            type = "boolean",
            traits = {
                json_name = "apiGatewayManaged",
            },
        },
        ApiId = {
            type = "string",
            traits = {
                json_name = "apiId",
            },
        },
        ApiKeySelectionExpression = {
            type = "string",
            traits = {
                json_name = "apiKeySelectionExpression",
            },
        },
        CorsConfiguration = setmetatable({ traits = {
            json_name = "corsConfiguration",
        } }, { __index = M.Cors }),
        CreatedDate = {
            type = "timestamp",
            traits = {
                json_name = "createdDate",
                timestamp_format = "date-time",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        DisableSchemaValidation = {
            type = "boolean",
            traits = {
                json_name = "disableSchemaValidation",
            },
        },
        DisableExecuteApiEndpoint = {
            type = "boolean",
            traits = {
                json_name = "disableExecuteApiEndpoint",
            },
        },
        ImportInfo = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "importInfo",
            },
        },
        IpAddressType = {
            type = "string",
            traits = {
                json_name = "ipAddressType",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        ProtocolType = {
            type = "string",
            traits = {
                json_name = "protocolType",
            },
        },
        RouteSelectionExpression = {
            type = "string",
            traits = {
                json_name = "routeSelectionExpression",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        Version = {
            type = "string",
            traits = {
                json_name = "version",
            },
        },
        Warnings = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "warnings",
            },
        },
    },
}

M.ListPortalProductsInput = {
    type = "structure",
    id = "ListPortalProductsInput",
    members = {
        MaxResults = {
            type = "string",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        ResourceOwner = {
            type = "string",
            traits = {
                http_query = "resourceOwner",
            },
        },
    },
}

M.ListPortalProductsOutput = {
    type = "structure",
    id = "ListPortalProductsOutput",
    members = {
        Items = {
            type = "list",
            member = M.PortalProductSummary,
            traits = {
                json_name = "items",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListPortalsInput = {
    type = "structure",
    id = "ListPortalsInput",
    members = {
        MaxResults = {
            type = "string",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListPortalsOutput = {
    type = "structure",
    id = "ListPortalsOutput",
    members = {
        Items = {
            type = "list",
            member = M.PortalSummary,
            traits = {
                json_name = "items",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListProductPagesInput = {
    type = "structure",
    id = "ListProductPagesInput",
    members = {
        MaxResults = {
            type = "string",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        PortalProductId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceOwnerAccountId = {
            type = "string",
            traits = {
                http_query = "resourceOwnerAccountId",
            },
        },
    },
}

M.ListProductPagesOutput = {
    type = "structure",
    id = "ListProductPagesOutput",
    members = {
        Items = {
            type = "list",
            member = M.ProductPageSummaryNoBody,
            traits = {
                json_name = "items",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListProductRestEndpointPagesInput = {
    type = "structure",
    id = "ListProductRestEndpointPagesInput",
    members = {
        MaxResults = {
            type = "string",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        PortalProductId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceOwnerAccountId = {
            type = "string",
            traits = {
                http_query = "resourceOwnerAccountId",
            },
        },
    },
}

M.ListProductRestEndpointPagesOutput = {
    type = "structure",
    id = "ListProductRestEndpointPagesOutput",
    members = {
        Items = {
            type = "list",
            member = M.ProductRestEndpointPageSummaryNoBody,
            traits = {
                json_name = "items",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListRoutingRulesInput = {
    type = "structure",
    id = "ListRoutingRulesInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DomainNameId = {
            type = "string",
            traits = {
                http_query = "domainNameId",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListRoutingRulesOutput = {
    type = "structure",
    id = "ListRoutingRulesOutput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        RoutingRules = {
            type = "list",
            member = M.RoutingRule,
            traits = {
                json_name = "routingRules",
            },
        },
    },
}

M.PreviewPortalInput = {
    type = "structure",
    id = "PreviewPortalInput",
    members = {
        PortalId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PreviewPortalOutput = {
    type = "structure",
    id = "PreviewPortalOutput",
}

M.PublishPortalInput = {
    type = "structure",
    id = "PublishPortalInput",
    members = {
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        PortalId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PublishPortalOutput = {
    type = "structure",
    id = "PublishPortalOutput",
}

M.PutPortalProductSharingPolicyInput = {
    type = "structure",
    id = "PutPortalProductSharingPolicyInput",
    members = {
        PolicyDocument = {
            type = "string",
            traits = {
                json_name = "policyDocument",
                required = true,
            },
        },
        PortalProductId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PutPortalProductSharingPolicyOutput = {
    type = "structure",
    id = "PutPortalProductSharingPolicyOutput",
}

M.PutRoutingRuleInput = {
    type = "structure",
    id = "PutRoutingRuleInput",
    members = {
        Actions = {
            type = "list",
            member = M.RoutingRuleAction,
            traits = {
                json_name = "actions",
                required = true,
            },
        },
        Conditions = {
            type = "list",
            member = M.RoutingRuleCondition,
            traits = {
                json_name = "conditions",
                required = true,
            },
        },
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DomainNameId = {
            type = "string",
            traits = {
                http_query = "domainNameId",
            },
        },
        Priority = {
            type = "integer",
            traits = {
                json_name = "priority",
                required = true,
            },
        },
        RoutingRuleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PutRoutingRuleOutput = {
    type = "structure",
    id = "PutRoutingRuleOutput",
    members = {
        Actions = {
            type = "list",
            member = M.RoutingRuleAction,
            traits = {
                json_name = "actions",
            },
        },
        Conditions = {
            type = "list",
            member = M.RoutingRuleCondition,
            traits = {
                json_name = "conditions",
            },
        },
        Priority = {
            type = "integer",
            traits = {
                json_name = "priority",
            },
        },
        RoutingRuleArn = {
            type = "string",
            traits = {
                json_name = "routingRuleArn",
            },
        },
        RoutingRuleId = {
            type = "string",
            traits = {
                json_name = "routingRuleId",
            },
        },
    },
}

M.ReimportApiInput = {
    type = "structure",
    id = "ReimportApiInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Basepath = {
            type = "string",
            traits = {
                http_query = "basepath",
            },
        },
        Body = {
            type = "string",
            traits = {
                json_name = "body",
                required = true,
            },
        },
        FailOnWarnings = {
            type = "boolean",
            traits = {
                http_query = "failOnWarnings",
            },
        },
    },
}

M.ReimportApiOutput = {
    type = "structure",
    id = "ReimportApiOutput",
    members = {
        ApiEndpoint = {
            type = "string",
            traits = {
                json_name = "apiEndpoint",
            },
        },
        ApiGatewayManaged = {
            type = "boolean",
            traits = {
                json_name = "apiGatewayManaged",
            },
        },
        ApiId = {
            type = "string",
            traits = {
                json_name = "apiId",
            },
        },
        ApiKeySelectionExpression = {
            type = "string",
            traits = {
                json_name = "apiKeySelectionExpression",
            },
        },
        CorsConfiguration = setmetatable({ traits = {
            json_name = "corsConfiguration",
        } }, { __index = M.Cors }),
        CreatedDate = {
            type = "timestamp",
            traits = {
                json_name = "createdDate",
                timestamp_format = "date-time",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        DisableSchemaValidation = {
            type = "boolean",
            traits = {
                json_name = "disableSchemaValidation",
            },
        },
        DisableExecuteApiEndpoint = {
            type = "boolean",
            traits = {
                json_name = "disableExecuteApiEndpoint",
            },
        },
        ImportInfo = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "importInfo",
            },
        },
        IpAddressType = {
            type = "string",
            traits = {
                json_name = "ipAddressType",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        ProtocolType = {
            type = "string",
            traits = {
                json_name = "protocolType",
            },
        },
        RouteSelectionExpression = {
            type = "string",
            traits = {
                json_name = "routeSelectionExpression",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        Version = {
            type = "string",
            traits = {
                json_name = "version",
            },
        },
        Warnings = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "warnings",
            },
        },
    },
}

M.ResetAuthorizersCacheInput = {
    type = "structure",
    id = "ResetAuthorizersCacheInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        StageName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ResetAuthorizersCacheOutput = {
    type = "structure",
    id = "ResetAuthorizersCacheOutput",
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
                json_name = "tags",
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

M.UpdateApiInput = {
    type = "structure",
    id = "UpdateApiInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ApiKeySelectionExpression = {
            type = "string",
            traits = {
                json_name = "apiKeySelectionExpression",
            },
        },
        CorsConfiguration = setmetatable({ traits = {
            json_name = "corsConfiguration",
        } }, { __index = M.Cors }),
        CredentialsArn = {
            type = "string",
            traits = {
                json_name = "credentialsArn",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        DisableSchemaValidation = {
            type = "boolean",
            traits = {
                json_name = "disableSchemaValidation",
            },
        },
        DisableExecuteApiEndpoint = {
            type = "boolean",
            traits = {
                json_name = "disableExecuteApiEndpoint",
            },
        },
        IpAddressType = {
            type = "string",
            traits = {
                json_name = "ipAddressType",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        RouteKey = {
            type = "string",
            traits = {
                json_name = "routeKey",
            },
        },
        RouteSelectionExpression = {
            type = "string",
            traits = {
                json_name = "routeSelectionExpression",
            },
        },
        Target = {
            type = "string",
            traits = {
                json_name = "target",
            },
        },
        Version = {
            type = "string",
            traits = {
                json_name = "version",
            },
        },
    },
}

M.UpdateApiOutput = {
    type = "structure",
    id = "UpdateApiOutput",
    members = {
        ApiEndpoint = {
            type = "string",
            traits = {
                json_name = "apiEndpoint",
            },
        },
        ApiGatewayManaged = {
            type = "boolean",
            traits = {
                json_name = "apiGatewayManaged",
            },
        },
        ApiId = {
            type = "string",
            traits = {
                json_name = "apiId",
            },
        },
        ApiKeySelectionExpression = {
            type = "string",
            traits = {
                json_name = "apiKeySelectionExpression",
            },
        },
        CorsConfiguration = setmetatable({ traits = {
            json_name = "corsConfiguration",
        } }, { __index = M.Cors }),
        CreatedDate = {
            type = "timestamp",
            traits = {
                json_name = "createdDate",
                timestamp_format = "date-time",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        DisableSchemaValidation = {
            type = "boolean",
            traits = {
                json_name = "disableSchemaValidation",
            },
        },
        DisableExecuteApiEndpoint = {
            type = "boolean",
            traits = {
                json_name = "disableExecuteApiEndpoint",
            },
        },
        ImportInfo = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "importInfo",
            },
        },
        IpAddressType = {
            type = "string",
            traits = {
                json_name = "ipAddressType",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        ProtocolType = {
            type = "string",
            traits = {
                json_name = "protocolType",
            },
        },
        RouteSelectionExpression = {
            type = "string",
            traits = {
                json_name = "routeSelectionExpression",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        Version = {
            type = "string",
            traits = {
                json_name = "version",
            },
        },
        Warnings = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "warnings",
            },
        },
    },
}

M.UpdateApiMappingInput = {
    type = "structure",
    id = "UpdateApiMappingInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                json_name = "apiId",
                required = true,
            },
        },
        ApiMappingId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ApiMappingKey = {
            type = "string",
            traits = {
                json_name = "apiMappingKey",
            },
        },
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Stage = {
            type = "string",
            traits = {
                json_name = "stage",
            },
        },
    },
}

M.UpdateApiMappingOutput = {
    type = "structure",
    id = "UpdateApiMappingOutput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                json_name = "apiId",
            },
        },
        ApiMappingId = {
            type = "string",
            traits = {
                json_name = "apiMappingId",
            },
        },
        ApiMappingKey = {
            type = "string",
            traits = {
                json_name = "apiMappingKey",
            },
        },
        Stage = {
            type = "string",
            traits = {
                json_name = "stage",
            },
        },
    },
}

M.UpdateAuthorizerInput = {
    type = "structure",
    id = "UpdateAuthorizerInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AuthorizerCredentialsArn = {
            type = "string",
            traits = {
                json_name = "authorizerCredentialsArn",
            },
        },
        AuthorizerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AuthorizerPayloadFormatVersion = {
            type = "string",
            traits = {
                json_name = "authorizerPayloadFormatVersion",
            },
        },
        AuthorizerResultTtlInSeconds = {
            type = "integer",
            traits = {
                json_name = "authorizerResultTtlInSeconds",
            },
        },
        AuthorizerType = {
            type = "string",
            traits = {
                json_name = "authorizerType",
            },
        },
        AuthorizerUri = {
            type = "string",
            traits = {
                json_name = "authorizerUri",
            },
        },
        EnableSimpleResponses = {
            type = "boolean",
            traits = {
                json_name = "enableSimpleResponses",
            },
        },
        IdentitySource = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "identitySource",
            },
        },
        IdentityValidationExpression = {
            type = "string",
            traits = {
                json_name = "identityValidationExpression",
            },
        },
        JwtConfiguration = setmetatable({ traits = {
            json_name = "jwtConfiguration",
        } }, { __index = M.JWTConfiguration }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
    },
}

M.UpdateAuthorizerOutput = {
    type = "structure",
    id = "UpdateAuthorizerOutput",
    members = {
        AuthorizerCredentialsArn = {
            type = "string",
            traits = {
                json_name = "authorizerCredentialsArn",
            },
        },
        AuthorizerId = {
            type = "string",
            traits = {
                json_name = "authorizerId",
            },
        },
        AuthorizerPayloadFormatVersion = {
            type = "string",
            traits = {
                json_name = "authorizerPayloadFormatVersion",
            },
        },
        AuthorizerResultTtlInSeconds = {
            type = "integer",
            traits = {
                json_name = "authorizerResultTtlInSeconds",
            },
        },
        AuthorizerType = {
            type = "string",
            traits = {
                json_name = "authorizerType",
            },
        },
        AuthorizerUri = {
            type = "string",
            traits = {
                json_name = "authorizerUri",
            },
        },
        EnableSimpleResponses = {
            type = "boolean",
            traits = {
                json_name = "enableSimpleResponses",
            },
        },
        IdentitySource = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "identitySource",
            },
        },
        IdentityValidationExpression = {
            type = "string",
            traits = {
                json_name = "identityValidationExpression",
            },
        },
        JwtConfiguration = setmetatable({ traits = {
            json_name = "jwtConfiguration",
        } }, { __index = M.JWTConfiguration }),
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
    },
}

M.UpdateDeploymentInput = {
    type = "structure",
    id = "UpdateDeploymentInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeploymentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
    },
}

M.UpdateDeploymentOutput = {
    type = "structure",
    id = "UpdateDeploymentOutput",
    members = {
        AutoDeployed = {
            type = "boolean",
            traits = {
                json_name = "autoDeployed",
            },
        },
        CreatedDate = {
            type = "timestamp",
            traits = {
                json_name = "createdDate",
                timestamp_format = "date-time",
            },
        },
        DeploymentId = {
            type = "string",
            traits = {
                json_name = "deploymentId",
            },
        },
        DeploymentStatus = {
            type = "string",
            traits = {
                json_name = "deploymentStatus",
            },
        },
        DeploymentStatusMessage = {
            type = "string",
            traits = {
                json_name = "deploymentStatusMessage",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
    },
}

M.UpdateDomainNameInput = {
    type = "structure",
    id = "UpdateDomainNameInput",
    members = {
        DomainName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DomainNameConfigurations = {
            type = "list",
            member = M.DomainNameConfiguration,
            traits = {
                json_name = "domainNameConfigurations",
            },
        },
        MutualTlsAuthentication = setmetatable({ traits = {
            json_name = "mutualTlsAuthentication",
        } }, { __index = M.MutualTlsAuthenticationInput }),
        RoutingMode = {
            type = "string",
            traits = {
                json_name = "routingMode",
            },
        },
    },
}

M.UpdateDomainNameOutput = {
    type = "structure",
    id = "UpdateDomainNameOutput",
    members = {
        ApiMappingSelectionExpression = {
            type = "string",
            traits = {
                json_name = "apiMappingSelectionExpression",
            },
        },
        DomainName = {
            type = "string",
            traits = {
                json_name = "domainName",
            },
        },
        DomainNameArn = {
            type = "string",
            traits = {
                json_name = "domainNameArn",
            },
        },
        DomainNameConfigurations = {
            type = "list",
            member = M.DomainNameConfiguration,
            traits = {
                json_name = "domainNameConfigurations",
            },
        },
        MutualTlsAuthentication = setmetatable({ traits = {
            json_name = "mutualTlsAuthentication",
        } }, { __index = M.MutualTlsAuthentication }),
        RoutingMode = {
            type = "string",
            traits = {
                json_name = "routingMode",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.UpdateIntegrationInput = {
    type = "structure",
    id = "UpdateIntegrationInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConnectionId = {
            type = "string",
            traits = {
                json_name = "connectionId",
            },
        },
        ConnectionType = {
            type = "string",
            traits = {
                json_name = "connectionType",
            },
        },
        ContentHandlingStrategy = {
            type = "string",
            traits = {
                json_name = "contentHandlingStrategy",
            },
        },
        CredentialsArn = {
            type = "string",
            traits = {
                json_name = "credentialsArn",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        IntegrationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IntegrationMethod = {
            type = "string",
            traits = {
                json_name = "integrationMethod",
            },
        },
        IntegrationSubtype = {
            type = "string",
            traits = {
                json_name = "integrationSubtype",
            },
        },
        IntegrationType = {
            type = "string",
            traits = {
                json_name = "integrationType",
            },
        },
        IntegrationUri = {
            type = "string",
            traits = {
                json_name = "integrationUri",
            },
        },
        PassthroughBehavior = {
            type = "string",
            traits = {
                json_name = "passthroughBehavior",
            },
        },
        PayloadFormatVersion = {
            type = "string",
            traits = {
                json_name = "payloadFormatVersion",
            },
        },
        RequestParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "requestParameters",
            },
        },
        RequestTemplates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "requestTemplates",
            },
        },
        ResponseParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
            traits = {
                json_name = "responseParameters",
            },
        },
        TemplateSelectionExpression = {
            type = "string",
            traits = {
                json_name = "templateSelectionExpression",
            },
        },
        TimeoutInMillis = {
            type = "integer",
            traits = {
                json_name = "timeoutInMillis",
            },
        },
        TlsConfig = setmetatable({ traits = {
            json_name = "tlsConfig",
        } }, { __index = M.TlsConfigInput }),
    },
}

M.UpdateIntegrationOutput = {
    type = "structure",
    id = "UpdateIntegrationOutput",
    members = {
        ApiGatewayManaged = {
            type = "boolean",
            traits = {
                json_name = "apiGatewayManaged",
            },
        },
        ConnectionId = {
            type = "string",
            traits = {
                json_name = "connectionId",
            },
        },
        ConnectionType = {
            type = "string",
            traits = {
                json_name = "connectionType",
            },
        },
        ContentHandlingStrategy = {
            type = "string",
            traits = {
                json_name = "contentHandlingStrategy",
            },
        },
        CredentialsArn = {
            type = "string",
            traits = {
                json_name = "credentialsArn",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        IntegrationId = {
            type = "string",
            traits = {
                json_name = "integrationId",
            },
        },
        IntegrationMethod = {
            type = "string",
            traits = {
                json_name = "integrationMethod",
            },
        },
        IntegrationResponseSelectionExpression = {
            type = "string",
            traits = {
                json_name = "integrationResponseSelectionExpression",
            },
        },
        IntegrationSubtype = {
            type = "string",
            traits = {
                json_name = "integrationSubtype",
            },
        },
        IntegrationType = {
            type = "string",
            traits = {
                json_name = "integrationType",
            },
        },
        IntegrationUri = {
            type = "string",
            traits = {
                json_name = "integrationUri",
            },
        },
        PassthroughBehavior = {
            type = "string",
            traits = {
                json_name = "passthroughBehavior",
            },
        },
        PayloadFormatVersion = {
            type = "string",
            traits = {
                json_name = "payloadFormatVersion",
            },
        },
        RequestParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "requestParameters",
            },
        },
        RequestTemplates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "requestTemplates",
            },
        },
        ResponseParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
            traits = {
                json_name = "responseParameters",
            },
        },
        TemplateSelectionExpression = {
            type = "string",
            traits = {
                json_name = "templateSelectionExpression",
            },
        },
        TimeoutInMillis = {
            type = "integer",
            traits = {
                json_name = "timeoutInMillis",
            },
        },
        TlsConfig = setmetatable({ traits = {
            json_name = "tlsConfig",
        } }, { __index = M.TlsConfig }),
    },
}

M.UpdateIntegrationResponseInput = {
    type = "structure",
    id = "UpdateIntegrationResponseInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContentHandlingStrategy = {
            type = "string",
            traits = {
                json_name = "contentHandlingStrategy",
            },
        },
        IntegrationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IntegrationResponseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IntegrationResponseKey = {
            type = "string",
            traits = {
                json_name = "integrationResponseKey",
            },
        },
        ResponseParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "responseParameters",
            },
        },
        ResponseTemplates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "responseTemplates",
            },
        },
        TemplateSelectionExpression = {
            type = "string",
            traits = {
                json_name = "templateSelectionExpression",
            },
        },
    },
}

M.UpdateIntegrationResponseOutput = {
    type = "structure",
    id = "UpdateIntegrationResponseOutput",
    members = {
        ContentHandlingStrategy = {
            type = "string",
            traits = {
                json_name = "contentHandlingStrategy",
            },
        },
        IntegrationResponseId = {
            type = "string",
            traits = {
                json_name = "integrationResponseId",
            },
        },
        IntegrationResponseKey = {
            type = "string",
            traits = {
                json_name = "integrationResponseKey",
            },
        },
        ResponseParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "responseParameters",
            },
        },
        ResponseTemplates = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "responseTemplates",
            },
        },
        TemplateSelectionExpression = {
            type = "string",
            traits = {
                json_name = "templateSelectionExpression",
            },
        },
    },
}

M.UpdateModelInput = {
    type = "structure",
    id = "UpdateModelInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContentType = {
            type = "string",
            traits = {
                json_name = "contentType",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        ModelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Schema = {
            type = "string",
            traits = {
                json_name = "schema",
            },
        },
    },
}

M.UpdateModelOutput = {
    type = "structure",
    id = "UpdateModelOutput",
    members = {
        ContentType = {
            type = "string",
            traits = {
                json_name = "contentType",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        ModelId = {
            type = "string",
            traits = {
                json_name = "modelId",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        Schema = {
            type = "string",
            traits = {
                json_name = "schema",
            },
        },
    },
}

M.UpdatePortalInput = {
    type = "structure",
    id = "UpdatePortalInput",
    members = {
        Authorization = setmetatable({ traits = {
            json_name = "authorization",
        } }, { __index = M.Authorization }),
        EndpointConfiguration = setmetatable({ traits = {
            json_name = "endpointConfiguration",
        } }, { __index = M.EndpointConfigurationRequest }),
        IncludedPortalProductArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "includedPortalProductArns",
            },
        },
        LogoUri = {
            type = "string",
            traits = {
                json_name = "logoUri",
            },
        },
        PortalContent = setmetatable({ traits = {
            json_name = "portalContent",
        } }, { __index = M.PortalContent }),
        PortalId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RumAppMonitorName = {
            type = "string",
            traits = {
                json_name = "rumAppMonitorName",
            },
        },
    },
}

M.UpdatePortalOutput = {
    type = "structure",
    id = "UpdatePortalOutput",
    members = {
        Authorization = setmetatable({ traits = {
            json_name = "authorization",
        } }, { __index = M.Authorization }),
        EndpointConfiguration = setmetatable({ traits = {
            json_name = "endpointConfiguration",
        } }, { __index = M.EndpointConfigurationResponse }),
        IncludedPortalProductArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "includedPortalProductArns",
            },
        },
        LastModified = {
            type = "timestamp",
            traits = {
                json_name = "lastModified",
                timestamp_format = "date-time",
            },
        },
        LastPublished = {
            type = "timestamp",
            traits = {
                json_name = "lastPublished",
                timestamp_format = "date-time",
            },
        },
        LastPublishedDescription = {
            type = "string",
            traits = {
                json_name = "lastPublishedDescription",
            },
        },
        PortalArn = {
            type = "string",
            traits = {
                json_name = "portalArn",
            },
        },
        PortalContent = setmetatable({ traits = {
            json_name = "portalContent",
        } }, { __index = M.PortalContent }),
        PortalId = {
            type = "string",
            traits = {
                json_name = "portalId",
            },
        },
        Preview = setmetatable({ traits = {
            json_name = "preview",
        } }, { __index = M.Preview }),
        PublishStatus = {
            type = "string",
            traits = {
                json_name = "publishStatus",
            },
        },
        RumAppMonitorName = {
            type = "string",
            traits = {
                json_name = "rumAppMonitorName",
            },
        },
        StatusException = setmetatable({ traits = {
            json_name = "statusException",
        } }, { __index = M.StatusException }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.UpdatePortalProductInput = {
    type = "structure",
    id = "UpdatePortalProductInput",
    members = {
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        DisplayName = {
            type = "string",
            traits = {
                json_name = "displayName",
            },
        },
        DisplayOrder = setmetatable({ traits = {
            json_name = "displayOrder",
        } }, { __index = M.DisplayOrder }),
        PortalProductId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdatePortalProductOutput = {
    type = "structure",
    id = "UpdatePortalProductOutput",
    members = {
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        DisplayName = {
            type = "string",
            traits = {
                json_name = "displayName",
            },
        },
        DisplayOrder = setmetatable({ traits = {
            json_name = "displayOrder",
        } }, { __index = M.DisplayOrder }),
        LastModified = {
            type = "timestamp",
            traits = {
                json_name = "lastModified",
                timestamp_format = "date-time",
            },
        },
        PortalProductArn = {
            type = "string",
            traits = {
                json_name = "portalProductArn",
            },
        },
        PortalProductId = {
            type = "string",
            traits = {
                json_name = "portalProductId",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.UpdateProductPageInput = {
    type = "structure",
    id = "UpdateProductPageInput",
    members = {
        DisplayContent = setmetatable({ traits = {
            json_name = "displayContent",
        } }, { __index = M.DisplayContent }),
        PortalProductId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProductPageId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateProductPageOutput = {
    type = "structure",
    id = "UpdateProductPageOutput",
    members = {
        DisplayContent = setmetatable({ traits = {
            json_name = "displayContent",
        } }, { __index = M.DisplayContent }),
        LastModified = {
            type = "timestamp",
            traits = {
                json_name = "lastModified",
                timestamp_format = "date-time",
            },
        },
        ProductPageArn = {
            type = "string",
            traits = {
                json_name = "productPageArn",
            },
        },
        ProductPageId = {
            type = "string",
            traits = {
                json_name = "productPageId",
            },
        },
    },
}

M.UpdateProductRestEndpointPageInput = {
    type = "structure",
    id = "UpdateProductRestEndpointPageInput",
    members = {
        DisplayContent = setmetatable({ traits = {
            json_name = "displayContent",
        } }, { __index = M.EndpointDisplayContent }),
        PortalProductId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProductRestEndpointPageId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TryItState = {
            type = "string",
            traits = {
                json_name = "tryItState",
            },
        },
    },
}

M.UpdateProductRestEndpointPageOutput = {
    type = "structure",
    id = "UpdateProductRestEndpointPageOutput",
    members = {
        DisplayContent = setmetatable({ traits = {
            json_name = "displayContent",
        } }, { __index = M.EndpointDisplayContentResponse }),
        LastModified = {
            type = "timestamp",
            traits = {
                json_name = "lastModified",
                timestamp_format = "date-time",
            },
        },
        ProductRestEndpointPageArn = {
            type = "string",
            traits = {
                json_name = "productRestEndpointPageArn",
            },
        },
        ProductRestEndpointPageId = {
            type = "string",
            traits = {
                json_name = "productRestEndpointPageId",
            },
        },
        RestEndpointIdentifier = setmetatable({ traits = {
            json_name = "restEndpointIdentifier",
        } }, { __index = M.RestEndpointIdentifier }),
        Status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
        StatusException = setmetatable({ traits = {
            json_name = "statusException",
        } }, { __index = M.StatusException }),
        TryItState = {
            type = "string",
            traits = {
                json_name = "tryItState",
            },
        },
    },
}

M.UpdateRouteInput = {
    type = "structure",
    id = "UpdateRouteInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ApiKeyRequired = {
            type = "boolean",
            traits = {
                json_name = "apiKeyRequired",
            },
        },
        AuthorizationScopes = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "authorizationScopes",
            },
        },
        AuthorizationType = {
            type = "string",
            traits = {
                json_name = "authorizationType",
            },
        },
        AuthorizerId = {
            type = "string",
            traits = {
                json_name = "authorizerId",
            },
        },
        ModelSelectionExpression = {
            type = "string",
            traits = {
                json_name = "modelSelectionExpression",
            },
        },
        OperationName = {
            type = "string",
            traits = {
                json_name = "operationName",
            },
        },
        RequestModels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "requestModels",
            },
        },
        RequestParameters = {
            type = "map",
            key = { type = "string" },
            value = M.ParameterConstraints,
            traits = {
                json_name = "requestParameters",
            },
        },
        RouteId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RouteKey = {
            type = "string",
            traits = {
                json_name = "routeKey",
            },
        },
        RouteResponseSelectionExpression = {
            type = "string",
            traits = {
                json_name = "routeResponseSelectionExpression",
            },
        },
        Target = {
            type = "string",
            traits = {
                json_name = "target",
            },
        },
    },
}

M.UpdateRouteOutput = {
    type = "structure",
    id = "UpdateRouteOutput",
    members = {
        ApiGatewayManaged = {
            type = "boolean",
            traits = {
                json_name = "apiGatewayManaged",
            },
        },
        ApiKeyRequired = {
            type = "boolean",
            traits = {
                json_name = "apiKeyRequired",
            },
        },
        AuthorizationScopes = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "authorizationScopes",
            },
        },
        AuthorizationType = {
            type = "string",
            traits = {
                json_name = "authorizationType",
            },
        },
        AuthorizerId = {
            type = "string",
            traits = {
                json_name = "authorizerId",
            },
        },
        ModelSelectionExpression = {
            type = "string",
            traits = {
                json_name = "modelSelectionExpression",
            },
        },
        OperationName = {
            type = "string",
            traits = {
                json_name = "operationName",
            },
        },
        RequestModels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "requestModels",
            },
        },
        RequestParameters = {
            type = "map",
            key = { type = "string" },
            value = M.ParameterConstraints,
            traits = {
                json_name = "requestParameters",
            },
        },
        RouteId = {
            type = "string",
            traits = {
                json_name = "routeId",
            },
        },
        RouteKey = {
            type = "string",
            traits = {
                json_name = "routeKey",
            },
        },
        RouteResponseSelectionExpression = {
            type = "string",
            traits = {
                json_name = "routeResponseSelectionExpression",
            },
        },
        Target = {
            type = "string",
            traits = {
                json_name = "target",
            },
        },
    },
}

M.UpdateRouteResponseInput = {
    type = "structure",
    id = "UpdateRouteResponseInput",
    members = {
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ModelSelectionExpression = {
            type = "string",
            traits = {
                json_name = "modelSelectionExpression",
            },
        },
        ResponseModels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "responseModels",
            },
        },
        ResponseParameters = {
            type = "map",
            key = { type = "string" },
            value = M.ParameterConstraints,
            traits = {
                json_name = "responseParameters",
            },
        },
        RouteId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RouteResponseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RouteResponseKey = {
            type = "string",
            traits = {
                json_name = "routeResponseKey",
            },
        },
    },
}

M.UpdateRouteResponseOutput = {
    type = "structure",
    id = "UpdateRouteResponseOutput",
    members = {
        ModelSelectionExpression = {
            type = "string",
            traits = {
                json_name = "modelSelectionExpression",
            },
        },
        ResponseModels = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "responseModels",
            },
        },
        ResponseParameters = {
            type = "map",
            key = { type = "string" },
            value = M.ParameterConstraints,
            traits = {
                json_name = "responseParameters",
            },
        },
        RouteResponseId = {
            type = "string",
            traits = {
                json_name = "routeResponseId",
            },
        },
        RouteResponseKey = {
            type = "string",
            traits = {
                json_name = "routeResponseKey",
            },
        },
    },
}

M.UpdateStageInput = {
    type = "structure",
    id = "UpdateStageInput",
    members = {
        AccessLogSettings = setmetatable({ traits = {
            json_name = "accessLogSettings",
        } }, { __index = M.AccessLogSettings }),
        ApiId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AutoDeploy = {
            type = "boolean",
            traits = {
                json_name = "autoDeploy",
            },
        },
        ClientCertificateId = {
            type = "string",
            traits = {
                json_name = "clientCertificateId",
            },
        },
        DefaultRouteSettings = setmetatable({ traits = {
            json_name = "defaultRouteSettings",
        } }, { __index = M.RouteSettings }),
        DeploymentId = {
            type = "string",
            traits = {
                json_name = "deploymentId",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        RouteSettings = {
            type = "map",
            key = { type = "string" },
            value = M.RouteSettings,
            traits = {
                json_name = "routeSettings",
            },
        },
        StageName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        StageVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "stageVariables",
            },
        },
    },
}

M.UpdateStageOutput = {
    type = "structure",
    id = "UpdateStageOutput",
    members = {
        AccessLogSettings = setmetatable({ traits = {
            json_name = "accessLogSettings",
        } }, { __index = M.AccessLogSettings }),
        ApiGatewayManaged = {
            type = "boolean",
            traits = {
                json_name = "apiGatewayManaged",
            },
        },
        AutoDeploy = {
            type = "boolean",
            traits = {
                json_name = "autoDeploy",
            },
        },
        ClientCertificateId = {
            type = "string",
            traits = {
                json_name = "clientCertificateId",
            },
        },
        CreatedDate = {
            type = "timestamp",
            traits = {
                json_name = "createdDate",
                timestamp_format = "date-time",
            },
        },
        DefaultRouteSettings = setmetatable({ traits = {
            json_name = "defaultRouteSettings",
        } }, { __index = M.RouteSettings }),
        DeploymentId = {
            type = "string",
            traits = {
                json_name = "deploymentId",
            },
        },
        Description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        LastDeploymentStatusMessage = {
            type = "string",
            traits = {
                json_name = "lastDeploymentStatusMessage",
            },
        },
        LastUpdatedDate = {
            type = "timestamp",
            traits = {
                json_name = "lastUpdatedDate",
                timestamp_format = "date-time",
            },
        },
        RouteSettings = {
            type = "map",
            key = { type = "string" },
            value = M.RouteSettings,
            traits = {
                json_name = "routeSettings",
            },
        },
        StageName = {
            type = "string",
            traits = {
                json_name = "stageName",
            },
        },
        StageVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "stageVariables",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.UpdateVpcLinkInput = {
    type = "structure",
    id = "UpdateVpcLinkInput",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        VpcLinkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateVpcLinkOutput = {
    type = "structure",
    id = "UpdateVpcLinkOutput",
    members = {
        CreatedDate = {
            type = "timestamp",
            traits = {
                json_name = "createdDate",
                timestamp_format = "date-time",
            },
        },
        Name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "securityGroupIds",
            },
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "subnetIds",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        VpcLinkId = {
            type = "string",
            traits = {
                json_name = "vpcLinkId",
            },
        },
        VpcLinkStatus = {
            type = "string",
            traits = {
                json_name = "vpcLinkStatus",
            },
        },
        VpcLinkStatusMessage = {
            type = "string",
            traits = {
                json_name = "vpcLinkStatusMessage",
            },
        },
        VpcLinkVersion = {
            type = "string",
            traits = {
                json_name = "vpcLinkVersion",
            },
        },
    },
}

return M
