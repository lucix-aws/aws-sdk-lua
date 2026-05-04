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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        responseLoggingPercentage = {
            type = "number",
        },
    },
}

M.LinkAttributes = {
    type = "structure",
    members = {
        responderErrorMasking = {
            type = "list",
            member_type = "structure",
        },
        customerProvidedId = {
            type = "string",
        },
    },
}

M.LinkApplicationLogSampling = {
    type = "structure",
    members = {
        errorLog = {
            type = "number",
            traits = {
                required = true,
            },
        },
        filterLog = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.LinkApplicationLogConfiguration = {
    type = "structure",
    members = {
        sampling = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.LinkLogSettings = {
    type = "structure",
    members = {
        applicationLogs = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AcceptLinkInput = {
    type = "structure",
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
        attributes = {
            type = "structure",
        },
        logSettings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        timeoutInMillis = {
            type = "number",
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
    members = {
        reason = {
            type = "string",
        },
        reasonCode = {
            type = "number",
        },
        passThroughPercentage = {
            type = "number",
        },
    },
}

M.HeaderTagAction = {
    type = "structure",
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
    members = {
        noBidReasonCode = {
            type = "number",
        },
    },
}

M.Action = {
    type = "union",
    members = {
        noBid = {
            type = "structure",
        },
        headerTag = {
            type = "structure",
        },
    },
}

M.FilterCriterion = {
    type = "structure",
    members = {
        path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Filter = {
    type = "structure",
    members = {
        criteria = {
            type = "list",
            member_type = "structure",
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
    members = {
        filterType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filterConfiguration = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        action = {
            type = "union",
            traits = {
                required = true,
            },
        },
        holdbackPercentage = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.RateLimiterModuleParameters = {
    type = "structure",
    members = {
        tps = {
            type = "number",
        },
    },
}

M.ModuleParameters = {
    type = "union",
    members = {
        noBid = {
            type = "structure",
        },
        openRtbAttribute = {
            type = "structure",
        },
        rateLimiter = {
            type = "structure",
        },
    },
}

M.ModuleConfiguration = {
    type = "structure",
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
            member_type = "string",
        },
        moduleParameters = {
            type = "union",
        },
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
            member_type = "structure",
        },
        pendingFlowModules = {
            type = "list",
            member_type = "structure",
        },
        attributes = {
            type = "structure",
        },
        logSettings = {
            type = "structure",
        },
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
    members = {
        port = {
            type = "number",
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
            type = "number",
        },
        intervalSeconds = {
            type = "number",
        },
        statusCodeMatcher = {
            type = "string",
        },
        healthyThresholdCount = {
            type = "number",
        },
        unhealthyThresholdCount = {
            type = "number",
        },
    },
}

M.AutoScalingGroupsConfiguration = {
    type = "structure",
    members = {
        autoScalingGroupNames = {
            type = "list",
            member_type = "string",
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
        healthCheckConfig = {
            type = "structure",
        },
    },
}

M.CreateInboundExternalLinkInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
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
        attributes = {
            type = "structure",
        },
        logSettings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateInboundExternalLinkOutput = {
    type = "structure",
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
        attributes = {
            type = "structure",
        },
        httpResponderAllowed = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        logSettings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        timeoutInMillis = {
            type = "number",
        },
    },
}

M.CreateLinkOutput = {
    type = "structure",
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
            member_type = "structure",
        },
        pendingFlowModules = {
            type = "list",
            member_type = "structure",
        },
        attributes = {
            type = "structure",
        },
        logSettings = {
            type = "structure",
        },
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
    members = {
        clientToken = {
            type = "string",
            traits = {
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
        attributes = {
            type = "structure",
        },
        publicEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logSettings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateOutboundExternalLinkOutput = {
    type = "structure",
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
    members = {
        vpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
    members = {
        protocols = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EksEndpointsConfiguration = {
    type = "structure",
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
    members = {
        autoScalingGroups = {
            type = "structure",
        },
        eksEndpoints = {
            type = "structure",
        },
    },
}

M.TrustStoreConfiguration = {
    type = "structure",
    members = {
        certificateAuthorityCertificates = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateResponderGatewayInput = {
    type = "structure",
    members = {
        vpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        domainName = {
            type = "string",
        },
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
        listenerConfig = {
            type = "structure",
        },
        trustStoreConfiguration = {
            type = "structure",
        },
        managedEndpointConfiguration = {
            type = "union",
        },
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        listenerConfig = {
            type = "structure",
        },
        externalInboundEndpoint = {
            type = "string",
        },
    },
}

M.DeleteInboundExternalLinkInput = {
    type = "structure",
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
            member_type = "structure",
        },
        pendingFlowModules = {
            type = "list",
            member_type = "structure",
        },
        attributes = {
            type = "structure",
        },
        logSettings = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        httpResponderAllowed = {
            type = "boolean",
        },
        timeoutInMillis = {
            type = "number",
        },
    },
}

M.ListLinksInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListLinksResponseStructure = {
    type = "structure",
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
            member_type = "structure",
        },
        pendingFlowModules = {
            type = "list",
            member_type = "structure",
        },
        attributes = {
            type = "structure",
        },
        logSettings = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        publicEndpoint = {
            type = "string",
        },
    },
}

M.ListLinksOutput = {
    type = "structure",
    members = {
        links = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RejectLinkInput = {
    type = "structure",
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
            member_type = "structure",
        },
        pendingFlowModules = {
            type = "list",
            member_type = "structure",
        },
        attributes = {
            type = "structure",
        },
        logSettings = {
            type = "structure",
        },
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
        logSettings = {
            type = "structure",
        },
        timeoutInMillis = {
            type = "number",
        },
    },
}

M.UpdateLinkOutput = {
    type = "structure",
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
    members = {
        clientToken = {
            type = "string",
            traits = {
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateLinkModuleFlowOutput = {
    type = "structure",
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
            member_type = "structure",
        },
        pendingFlowModules = {
            type = "list",
            member_type = "structure",
        },
        attributes = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        logSettings = {
            type = "structure",
        },
        connectivityType = {
            type = "string",
        },
    },
}

M.GetOutboundExternalLinkInput = {
    type = "structure",
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
            member_type = "structure",
        },
        pendingFlowModules = {
            type = "list",
            member_type = "structure",
        },
        attributes = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        logSettings = {
            type = "structure",
        },
        connectivityType = {
            type = "string",
        },
    },
}

M.GetRequesterGatewayInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
        activeLinksCount = {
            type = "number",
        },
        totalLinksCount = {
            type = "number",
        },
    },
}

M.GetResponderGatewayInput = {
    type = "structure",
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
    members = {
        vpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
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
        listenerConfig = {
            type = "structure",
        },
        trustStoreConfiguration = {
            type = "structure",
        },
        managedEndpointConfiguration = {
            type = "union",
        },
        gatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        activeLinksCount = {
            type = "number",
        },
        totalLinksCount = {
            type = "number",
        },
        inboundLinksCount = {
            type = "number",
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
    members = {
        maxResults = {
            type = "number",
            traits = {
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
    members = {
        gatewayIds = {
            type = "list",
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListResponderGatewaysInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
            traits = {
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
    members = {
        gatewayIds = {
            type = "list",
            member_type = "string",
        },
        nextToken = {
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
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.UpdateRequesterGatewayInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
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
    members = {
        domainName = {
            type = "string",
        },
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
        listenerConfig = {
            type = "structure",
        },
        trustStoreConfiguration = {
            type = "structure",
        },
        managedEndpointConfiguration = {
            type = "union",
        },
        clientToken = {
            type = "string",
            traits = {
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
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
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

return M
