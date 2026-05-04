local M = {}

M.ResponderErrorMaskingAction = {
    NO_BID = "NO_BID",
    PASSTHROUGH = "PASSTHROUGH",
}

M.ResponderErrorMaskingLoggingType = {
    NONE = "NONE",
    METRIC = "METRIC",
    RESPONSE = "RESPONSE",
}

M.ResponderErrorMaskingForHttpCode = {
    type = "structure",
    id = "ResponderErrorMaskingForHttpCode",
    members = {
        httpCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        loggingTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        responseLoggingPercentage = {
            type = "float",
        },
    },
}

M.LinkAttributes = {
    type = "structure",
    id = "LinkAttributes",
    members = {
        responderErrorMasking = {
            type = "list",
            member = M.ResponderErrorMaskingForHttpCode,
        },
        customerProvidedId = {
            type = "string",
        },
    },
}

M.LinkApplicationLogSampling = {
    type = "structure",
    id = "LinkApplicationLogSampling",
    members = {
        errorLog = {
            type = "double",
            traits = {
                required = true,
            },
        },
        filterLog = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.LinkApplicationLogConfiguration = {
    type = "structure",
    id = "LinkApplicationLogConfiguration",
    members = {
        sampling = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LinkApplicationLogSampling }),
    },
}

M.LinkLogSettings = {
    type = "structure",
    id = "LinkLogSettings",
    members = {
        applicationLogs = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LinkApplicationLogConfiguration }),
    },
}

M.AcceptLinkInput = {
    type = "structure",
    id = "AcceptLinkInput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        linkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        attributes = M.LinkAttributes,
        logSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LinkLogSettings }),
        timeoutInMillis = {
            type = "long",
        },
    },
}

M.ConnectivityType = {
    DEFAULT = "DEFAULT",
    PUBLIC_INGRESS = "PUBLIC_INGRESS",
    PUBLIC_EGRESS = "PUBLIC_EGRESS",
    EXTERNAL_INBOUND = "EXTERNAL_INBOUND",
}

M.LinkDirection = {
    RESPONSE = "RESPONSE",
    REQUEST = "REQUEST",
}

M.NoBidModuleParameters = {
    type = "structure",
    id = "NoBidModuleParameters",
    members = {
        reason = {
            type = "string",
        },
        reasonCode = {
            type = "integer",
        },
        passThroughPercentage = {
            type = "float",
        },
    },
}

M.HeaderTagAction = {
    type = "structure",
    id = "HeaderTagAction",
    members = {
        name = {
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

M.NoBidAction = {
    type = "structure",
    id = "NoBidAction",
    members = {
        noBidReasonCode = {
            type = "integer",
        },
    },
}

M.Action = {
    type = "union",
    id = "Action",
    members = {
        noBid = M.NoBidAction,
        headerTag = M.HeaderTagAction,
    },
}

M.FilterCriterion = {
    type = "structure",
    id = "FilterCriterion",
    members = {
        path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.Filter = {
    type = "structure",
    id = "Filter",
    members = {
        criteria = {
            type = "list",
            member = M.FilterCriterion,
            traits = {
                required = true,
            },
        },
    },
}

M.FilterType = {
    INCLUDE = "INCLUDE",
    EXCLUDE = "EXCLUDE",
}

M.OpenRtbAttributeModuleParameters = {
    type = "structure",
    id = "OpenRtbAttributeModuleParameters",
    members = {
        filterType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterConfiguration = {
            type = "list",
            member = M.Filter,
            traits = {
                required = true,
            },
        },
        action = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Action }),
        holdbackPercentage = {
            type = "float",
            traits = {
                required = true,
            },
        },
    },
}

M.RateLimiterModuleParameters = {
    type = "structure",
    id = "RateLimiterModuleParameters",
    members = {
        tps = {
            type = "float",
        },
    },
}

M.ModuleParameters = {
    type = "union",
    id = "ModuleParameters",
    members = {
        noBid = M.NoBidModuleParameters,
        openRtbAttribute = M.OpenRtbAttributeModuleParameters,
        rateLimiter = M.RateLimiterModuleParameters,
    },
}

M.ModuleConfiguration = {
    type = "structure",
    id = "ModuleConfiguration",
    members = {
        version = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dependsOn = {
            type = "list",
            member = { type = "string" },
        },
        moduleParameters = M.ModuleParameters,
    },
}

M.LinkStatus = {
    PENDING_CREATION = "PENDING_CREATION",
    PENDING_REQUEST = "PENDING_REQUEST",
    REQUESTED = "REQUESTED",
    ACCEPTED = "ACCEPTED",
    ACTIVE = "ACTIVE",
    REJECTED = "REJECTED",
    FAILED = "FAILED",
    PENDING_DELETION = "PENDING_DELETION",
    DELETED = "DELETED",
    PENDING_UPDATE = "PENDING_UPDATE",
    PENDING_ISOLATION = "PENDING_ISOLATION",
    ISOLATED = "ISOLATED",
    PENDING_RESTORATION = "PENDING_RESTORATION",
}

M.AcceptLinkOutput = {
    type = "structure",
    id = "AcceptLinkOutput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        peerGatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
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
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        direction = {
            type = "string",
        },
        flowModules = {
            type = "list",
            member = M.ModuleConfiguration,
        },
        pendingFlowModules = {
            type = "list",
            member = M.ModuleConfiguration,
        },
        attributes = M.LinkAttributes,
        logSettings = M.LinkLogSettings,
        connectivityType = {
            type = "string",
        },
        linkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
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
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
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
        message = {
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
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Protocol = {
    HTTP = "HTTP",
    HTTPS = "HTTPS",
}

M.HealthCheckConfig = {
    type = "structure",
    id = "HealthCheckConfig",
    members = {
        port = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        protocol = {
            type = "string",
        },
        timeoutMs = {
            type = "integer",
        },
        intervalSeconds = {
            type = "integer",
        },
        statusCodeMatcher = {
            type = "string",
        },
        healthyThresholdCount = {
            type = "integer",
        },
        unhealthyThresholdCount = {
            type = "integer",
        },
    },
}

M.AutoScalingGroupsConfiguration = {
    type = "structure",
    id = "AutoScalingGroupsConfiguration",
    members = {
        autoScalingGroupNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        healthCheckConfig = M.HealthCheckConfig,
    },
}

M.CreateInboundExternalLinkInput = {
    type = "structure",
    id = "CreateInboundExternalLinkInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        gatewayId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        attributes = M.LinkAttributes,
        logSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LinkLogSettings }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateInboundExternalLinkOutput = {
    type = "structure",
    id = "CreateInboundExternalLinkOutput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        linkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainName = {
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
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateLinkInput = {
    type = "structure",
    id = "CreateLinkInput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        peerGatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        attributes = M.LinkAttributes,
        httpResponderAllowed = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        logSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LinkLogSettings }),
        timeoutInMillis = {
            type = "long",
        },
    },
}

M.CreateLinkOutput = {
    type = "structure",
    id = "CreateLinkOutput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        peerGatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
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
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        direction = {
            type = "string",
        },
        flowModules = {
            type = "list",
            member = M.ModuleConfiguration,
        },
        pendingFlowModules = {
            type = "list",
            member = M.ModuleConfiguration,
        },
        attributes = M.LinkAttributes,
        logSettings = M.LinkLogSettings,
        connectivityType = {
            type = "string",
        },
        linkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customerProvidedId = {
            type = "string",
        },
    },
}

M.CreateOutboundExternalLinkInput = {
    type = "structure",
    id = "CreateOutboundExternalLinkInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        gatewayId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        attributes = M.LinkAttributes,
        publicEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LinkLogSettings }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateOutboundExternalLinkOutput = {
    type = "structure",
    id = "CreateOutboundExternalLinkOutput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        linkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateRequesterGatewayInput = {
    type = "structure",
    id = "CreateRequesterGatewayInput",
    members = {
        vpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
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

M.RequesterGatewayStatus = {
    PENDING_CREATION = "PENDING_CREATION",
    ACTIVE = "ACTIVE",
    PENDING_DELETION = "PENDING_DELETION",
    DELETED = "DELETED",
    ERROR = "ERROR",
    PENDING_UPDATE = "PENDING_UPDATE",
    ISOLATED = "ISOLATED",
    PENDING_ISOLATION = "PENDING_ISOLATION",
    PENDING_RESTORATION = "PENDING_RESTORATION",
}

M.CreateRequesterGatewayOutput = {
    type = "structure",
    id = "CreateRequesterGatewayOutput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GatewayType = {
    EXTERNAL = "EXTERNAL",
    INTERNAL = "INTERNAL",
}

M.ListenerConfig = {
    type = "structure",
    id = "ListenerConfig",
    members = {
        protocols = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.EksEndpointsConfiguration = {
    type = "structure",
    id = "EksEndpointsConfiguration",
    members = {
        endpointsResourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endpointsResourceNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clusterApiServerEndpointUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clusterApiServerCaCertificateChain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ManagedEndpointConfiguration = {
    type = "union",
    id = "ManagedEndpointConfiguration",
    members = {
        autoScalingGroups = M.AutoScalingGroupsConfiguration,
        eksEndpoints = M.EksEndpointsConfiguration,
    },
}

M.TrustStoreConfiguration = {
    type = "structure",
    id = "TrustStoreConfiguration",
    members = {
        certificateAuthorityCertificates = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CreateResponderGatewayInput = {
    type = "structure",
    id = "CreateResponderGatewayInput",
    members = {
        vpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        domainName = {
            type = "string",
        },
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
        listenerConfig = M.ListenerConfig,
        trustStoreConfiguration = M.TrustStoreConfiguration,
        managedEndpointConfiguration = M.ManagedEndpointConfiguration,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        gatewayType = {
            type = "string",
        },
    },
}

M.ResponderGatewayStatus = {
    PENDING_CREATION = "PENDING_CREATION",
    ACTIVE = "ACTIVE",
    PENDING_DELETION = "PENDING_DELETION",
    DELETED = "DELETED",
    ERROR = "ERROR",
    PENDING_UPDATE = "PENDING_UPDATE",
    ISOLATED = "ISOLATED",
    PENDING_ISOLATION = "PENDING_ISOLATION",
    PENDING_RESTORATION = "PENDING_RESTORATION",
}

M.CreateResponderGatewayOutput = {
    type = "structure",
    id = "CreateResponderGatewayOutput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        listenerConfig = M.ListenerConfig,
        externalInboundEndpoint = {
            type = "string",
        },
    },
}

M.DeleteInboundExternalLinkInput = {
    type = "structure",
    id = "DeleteInboundExternalLinkInput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        linkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteInboundExternalLinkOutput = {
    type = "structure",
    id = "DeleteInboundExternalLinkOutput",
    members = {
        linkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLinkInput = {
    type = "structure",
    id = "DeleteLinkInput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        linkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteLinkOutput = {
    type = "structure",
    id = "DeleteLinkOutput",
    members = {
        linkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteOutboundExternalLinkInput = {
    type = "structure",
    id = "DeleteOutboundExternalLinkInput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        linkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteOutboundExternalLinkOutput = {
    type = "structure",
    id = "DeleteOutboundExternalLinkOutput",
    members = {
        linkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRequesterGatewayInput = {
    type = "structure",
    id = "DeleteRequesterGatewayInput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRequesterGatewayOutput = {
    type = "structure",
    id = "DeleteRequesterGatewayOutput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteResponderGatewayInput = {
    type = "structure",
    id = "DeleteResponderGatewayInput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteResponderGatewayOutput = {
    type = "structure",
    id = "DeleteResponderGatewayOutput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetLinkInput = {
    type = "structure",
    id = "GetLinkInput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        linkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetLinkOutput = {
    type = "structure",
    id = "GetLinkOutput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        peerGatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
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
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        direction = {
            type = "string",
        },
        flowModules = {
            type = "list",
            member = M.ModuleConfiguration,
        },
        pendingFlowModules = {
            type = "list",
            member = M.ModuleConfiguration,
        },
        attributes = M.LinkAttributes,
        logSettings = M.LinkLogSettings,
        connectivityType = {
            type = "string",
        },
        linkId = {
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
        httpResponderAllowed = {
            type = "boolean",
        },
        timeoutInMillis = {
            type = "long",
        },
    },
}

M.ListLinksInput = {
    type = "structure",
    id = "ListLinksInput",
    members = {
        gatewayId = {
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
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListLinksResponseStructure = {
    type = "structure",
    id = "ListLinksResponseStructure",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        peerGatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
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
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        direction = {
            type = "string",
        },
        flowModules = {
            type = "list",
            member = M.ModuleConfiguration,
        },
        pendingFlowModules = {
            type = "list",
            member = M.ModuleConfiguration,
        },
        attributes = M.LinkAttributes,
        logSettings = M.LinkLogSettings,
        connectivityType = {
            type = "string",
        },
        linkId = {
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
        publicEndpoint = {
            type = "string",
        },
    },
}

M.ListLinksOutput = {
    type = "structure",
    id = "ListLinksOutput",
    members = {
        links = {
            type = "list",
            member = M.ListLinksResponseStructure,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RejectLinkInput = {
    type = "structure",
    id = "RejectLinkInput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        linkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RejectLinkOutput = {
    type = "structure",
    id = "RejectLinkOutput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        peerGatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
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
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        direction = {
            type = "string",
        },
        flowModules = {
            type = "list",
            member = M.ModuleConfiguration,
        },
        pendingFlowModules = {
            type = "list",
            member = M.ModuleConfiguration,
        },
        attributes = M.LinkAttributes,
        logSettings = M.LinkLogSettings,
        connectivityType = {
            type = "string",
        },
        linkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateLinkInput = {
    type = "structure",
    id = "UpdateLinkInput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        linkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        logSettings = M.LinkLogSettings,
        timeoutInMillis = {
            type = "long",
        },
    },
}

M.UpdateLinkOutput = {
    type = "structure",
    id = "UpdateLinkOutput",
    members = {
        linkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateLinkModuleFlowInput = {
    type = "structure",
    id = "UpdateLinkModuleFlowInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        gatewayId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        linkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        modules = {
            type = "list",
            member = M.ModuleConfiguration,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateLinkModuleFlowOutput = {
    type = "structure",
    id = "UpdateLinkModuleFlowOutput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        linkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetInboundExternalLinkInput = {
    type = "structure",
    id = "GetInboundExternalLinkInput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        linkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetInboundExternalLinkOutput = {
    type = "structure",
    id = "GetInboundExternalLinkOutput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        linkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        flowModules = {
            type = "list",
            member = M.ModuleConfiguration,
        },
        pendingFlowModules = {
            type = "list",
            member = M.ModuleConfiguration,
        },
        attributes = M.LinkAttributes,
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        logSettings = M.LinkLogSettings,
        connectivityType = {
            type = "string",
        },
    },
}

M.GetOutboundExternalLinkInput = {
    type = "structure",
    id = "GetOutboundExternalLinkInput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        linkId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetOutboundExternalLinkOutput = {
    type = "structure",
    id = "GetOutboundExternalLinkOutput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        linkId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        publicEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        flowModules = {
            type = "list",
            member = M.ModuleConfiguration,
        },
        pendingFlowModules = {
            type = "list",
            member = M.ModuleConfiguration,
        },
        attributes = M.LinkAttributes,
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        logSettings = M.LinkLogSettings,
        connectivityType = {
            type = "string",
        },
    },
}

M.GetRequesterGatewayInput = {
    type = "structure",
    id = "GetRequesterGatewayInput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetRequesterGatewayOutput = {
    type = "structure",
    id = "GetRequesterGatewayOutput",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        vpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        gatewayId = {
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
        activeLinksCount = {
            type = "integer",
        },
        totalLinksCount = {
            type = "integer",
        },
    },
}

M.GetResponderGatewayInput = {
    type = "structure",
    id = "GetResponderGatewayInput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetResponderGatewayOutput = {
    type = "structure",
    id = "GetResponderGatewayOutput",
    members = {
        vpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        domainName = {
            type = "string",
        },
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
        listenerConfig = M.ListenerConfig,
        trustStoreConfiguration = M.TrustStoreConfiguration,
        managedEndpointConfiguration = M.ManagedEndpointConfiguration,
        gatewayId = {
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
        activeLinksCount = {
            type = "integer",
        },
        totalLinksCount = {
            type = "integer",
        },
        inboundLinksCount = {
            type = "integer",
        },
        gatewayType = {
            type = "string",
        },
        externalInboundEndpoint = {
            type = "string",
        },
    },
}

M.ListRequesterGatewaysInput = {
    type = "structure",
    id = "ListRequesterGatewaysInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                default = 10,
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListRequesterGatewaysOutput = {
    type = "structure",
    id = "ListRequesterGatewaysOutput",
    members = {
        gatewayIds = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListResponderGatewaysInput = {
    type = "structure",
    id = "ListResponderGatewaysInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                default = 10,
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListResponderGatewaysOutput = {
    type = "structure",
    id = "ListResponderGatewaysOutput",
    members = {
        gatewayIds = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
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
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateRequesterGatewayInput = {
    type = "structure",
    id = "UpdateRequesterGatewayInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        gatewayId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.UpdateRequesterGatewayOutput = {
    type = "structure",
    id = "UpdateRequesterGatewayOutput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateResponderGatewayInput = {
    type = "structure",
    id = "UpdateResponderGatewayInput",
    members = {
        domainName = {
            type = "string",
        },
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
        listenerConfig = M.ListenerConfig,
        trustStoreConfiguration = M.TrustStoreConfiguration,
        managedEndpointConfiguration = M.ManagedEndpointConfiguration,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        gatewayId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.UpdateResponderGatewayOutput = {
    type = "structure",
    id = "UpdateResponderGatewayOutput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

return M
