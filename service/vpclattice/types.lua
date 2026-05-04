local M = {}

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
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceNetworkLogType = {
    SERVICE = "SERVICE",
    RESOURCE = "RESOURCE",
}

M.CreateAccessLogSubscriptionInput = {
    type = "structure",
    id = "CreateAccessLogSubscriptionInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        resourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceNetworkLogType = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateAccessLogSubscriptionOutput = {
    type = "structure",
    id = "CreateAccessLogSubscriptionOutput",
    members = {
        id = {
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
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceNetworkLogType = {
            type = "string",
        },
        destinationArn = {
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
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
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
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
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
        serviceCode = {
            type = "string",
        },
        quotaCode = {
            type = "string",
        },
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
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
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.DeleteAccessLogSubscriptionInput = {
    type = "structure",
    id = "DeleteAccessLogSubscriptionInput",
    members = {
        accessLogSubscriptionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAccessLogSubscriptionOutput = {
    type = "structure",
    id = "DeleteAccessLogSubscriptionOutput",
}

M.GetAccessLogSubscriptionInput = {
    type = "structure",
    id = "GetAccessLogSubscriptionInput",
    members = {
        accessLogSubscriptionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAccessLogSubscriptionOutput = {
    type = "structure",
    id = "GetAccessLogSubscriptionOutput",
    members = {
        id = {
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
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceNetworkLogType = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListAccessLogSubscriptionsInput = {
    type = "structure",
    id = "ListAccessLogSubscriptionsInput",
    members = {
        resourceIdentifier = {
            type = "string",
            traits = {
                http_query = "resourceIdentifier",
                required = true,
            },
        },
        maxResults = {
            type = "integer",
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

M.AccessLogSubscriptionSummary = {
    type = "structure",
    id = "AccessLogSubscriptionSummary",
    members = {
        id = {
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
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceNetworkLogType = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListAccessLogSubscriptionsOutput = {
    type = "structure",
    id = "ListAccessLogSubscriptionsOutput",
    members = {
        items = {
            type = "list",
            member = M.AccessLogSubscriptionSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateAccessLogSubscriptionInput = {
    type = "structure",
    id = "UpdateAccessLogSubscriptionInput",
    members = {
        accessLogSubscriptionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        destinationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAccessLogSubscriptionOutput = {
    type = "structure",
    id = "UpdateAccessLogSubscriptionOutput",
    members = {
        id = {
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
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ArnResource = {
    type = "structure",
    id = "ArnResource",
    members = {
        arn = {
            type = "string",
        },
    },
}

M.AuthPolicyState = {
    Active = "Active",
    Inactive = "Inactive",
}

M.AuthType = {
    NONE = "NONE",
    AWS_IAM = "AWS_IAM",
}

M.FixedResponseAction = {
    type = "structure",
    id = "FixedResponseAction",
    members = {
        statusCode = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.WeightedTargetGroup = {
    type = "structure",
    id = "WeightedTargetGroup",
    members = {
        targetGroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        weight = {
            type = "integer",
        },
    },
}

M.ForwardAction = {
    type = "structure",
    id = "ForwardAction",
    members = {
        targetGroups = {
            type = "list",
            member = M.WeightedTargetGroup,
            traits = {
                required = true,
            },
        },
    },
}

M.RuleAction = {
    type = "union",
    id = "RuleAction",
    members = {
        forward = M.ForwardAction,
        fixedResponse = M.FixedResponseAction,
    },
}

M.HeaderMatchType = {
    type = "union",
    id = "HeaderMatchType",
    members = {
        exact = {
            type = "string",
        },
        prefix = {
            type = "string",
        },
        contains = {
            type = "string",
        },
    },
}

M.HeaderMatch = {
    type = "structure",
    id = "HeaderMatch",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        match = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HeaderMatchType }),
        caseSensitive = {
            type = "boolean",
        },
    },
}

M.PathMatchType = {
    type = "union",
    id = "PathMatchType",
    members = {
        exact = {
            type = "string",
        },
        prefix = {
            type = "string",
        },
    },
}

M.PathMatch = {
    type = "structure",
    id = "PathMatch",
    members = {
        match = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PathMatchType }),
        caseSensitive = {
            type = "boolean",
        },
    },
}

M.HttpMatch = {
    type = "structure",
    id = "HttpMatch",
    members = {
        method = {
            type = "string",
        },
        pathMatch = M.PathMatch,
        headerMatches = {
            type = "list",
            member = M.HeaderMatch,
        },
    },
}

M.RuleMatch = {
    type = "union",
    id = "RuleMatch",
    members = {
        httpMatch = M.HttpMatch,
    },
}

M.RuleUpdate = {
    type = "structure",
    id = "RuleUpdate",
    members = {
        ruleIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        match = M.RuleMatch,
        priority = {
            type = "integer",
        },
        action = M.RuleAction,
    },
}

M.BatchUpdateRuleInput = {
    type = "structure",
    id = "BatchUpdateRuleInput",
    members = {
        serviceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        listenerIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        rules = {
            type = "list",
            member = M.RuleUpdate,
            traits = {
                required = true,
            },
        },
    },
}

M.RuleUpdateSuccess = {
    type = "structure",
    id = "RuleUpdateSuccess",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        isDefault = {
            type = "boolean",
        },
        match = M.RuleMatch,
        priority = {
            type = "integer",
        },
        action = M.RuleAction,
    },
}

M.RuleUpdateFailure = {
    type = "structure",
    id = "RuleUpdateFailure",
    members = {
        ruleIdentifier = {
            type = "string",
        },
        failureCode = {
            type = "string",
        },
        failureMessage = {
            type = "string",
        },
    },
}

M.BatchUpdateRuleOutput = {
    type = "structure",
    id = "BatchUpdateRuleOutput",
    members = {
        successful = {
            type = "list",
            member = M.RuleUpdateSuccess,
        },
        unsuccessful = {
            type = "list",
            member = M.RuleUpdateFailure,
        },
    },
}

M.ListenerProtocol = {
    HTTP = "HTTP",
    HTTPS = "HTTPS",
    TLS_PASSTHROUGH = "TLS_PASSTHROUGH",
}

M.CreateListenerInput = {
    type = "structure",
    id = "CreateListenerInput",
    members = {
        serviceIdentifier = {
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
        protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        port = {
            type = "integer",
        },
        defaultAction = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleAction }),
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateListenerOutput = {
    type = "structure",
    id = "CreateListenerOutput",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        protocol = {
            type = "string",
        },
        port = {
            type = "integer",
        },
        serviceArn = {
            type = "string",
        },
        serviceId = {
            type = "string",
        },
        defaultAction = M.RuleAction,
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
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProtocolType = {
    TCP = "TCP",
}

M.ResourceConfigurationIpAddressType = {
    IPV4 = "IPV4",
    IPV6 = "IPV6",
    DUALSTACK = "DUALSTACK",
}

M.DnsResource = {
    type = "structure",
    id = "DnsResource",
    members = {
        domainName = {
            type = "string",
        },
        ipAddressType = {
            type = "string",
        },
    },
}

M.IpResource = {
    type = "structure",
    id = "IpResource",
    members = {
        ipAddress = {
            type = "string",
        },
    },
}

M.ResourceConfigurationDefinition = {
    type = "union",
    id = "ResourceConfigurationDefinition",
    members = {
        dnsResource = M.DnsResource,
        ipResource = M.IpResource,
        arnResource = M.ArnResource,
    },
}

M.ResourceConfigurationType = {
    GROUP = "GROUP",
    CHILD = "CHILD",
    SINGLE = "SINGLE",
    ARN = "ARN",
}

M.CreateResourceConfigurationInput = {
    type = "structure",
    id = "CreateResourceConfigurationInput",
    members = {
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
        portRanges = {
            type = "list",
            member = { type = "string" },
        },
        protocol = {
            type = "string",
        },
        resourceGatewayIdentifier = {
            type = "string",
        },
        resourceConfigurationGroupIdentifier = {
            type = "string",
        },
        resourceConfigurationDefinition = M.ResourceConfigurationDefinition,
        allowAssociationToShareableServiceNetwork = {
            type = "boolean",
        },
        customDomainName = {
            type = "string",
        },
        groupDomain = {
            type = "string",
        },
        domainVerificationIdentifier = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ResourceConfigurationStatus = {
    ACTIVE = "ACTIVE",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETE_FAILED = "DELETE_FAILED",
}

M.CreateResourceConfigurationOutput = {
    type = "structure",
    id = "CreateResourceConfigurationOutput",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        resourceGatewayId = {
            type = "string",
        },
        resourceConfigurationGroupId = {
            type = "string",
        },
        type = {
            type = "string",
        },
        portRanges = {
            type = "list",
            member = { type = "string" },
        },
        protocol = {
            type = "string",
        },
        status = {
            type = "string",
        },
        resourceConfigurationDefinition = M.ResourceConfigurationDefinition,
        allowAssociationToShareableServiceNetwork = {
            type = "boolean",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        failureReason = {
            type = "string",
        },
        customDomainName = {
            type = "string",
        },
        domainVerificationId = {
            type = "string",
        },
        groupDomain = {
            type = "string",
        },
        domainVerificationArn = {
            type = "string",
        },
    },
}

M.ResourceGatewayIpAddressType = {
    IPV4 = "IPV4",
    IPV6 = "IPV6",
    DUALSTACK = "DUALSTACK",
}

M.CreateResourceGatewayInput = {
    type = "structure",
    id = "CreateResourceGatewayInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vpcIdentifier = {
            type = "string",
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        ipAddressType = {
            type = "string",
        },
        ipv4AddressesPerEni = {
            type = "integer",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ResourceGatewayStatus = {
    ACTIVE = "ACTIVE",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETE_FAILED = "DELETE_FAILED",
}

M.CreateResourceGatewayOutput = {
    type = "structure",
    id = "CreateResourceGatewayOutput",
    members = {
        name = {
            type = "string",
        },
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        vpcIdentifier = {
            type = "string",
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        ipAddressType = {
            type = "string",
        },
        ipv4AddressesPerEni = {
            type = "integer",
        },
    },
}

M.CreateRuleInput = {
    type = "structure",
    id = "CreateRuleInput",
    members = {
        serviceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        listenerIdentifier = {
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
        match = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleMatch }),
        priority = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        action = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleAction }),
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateRuleOutput = {
    type = "structure",
    id = "CreateRuleOutput",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        match = M.RuleMatch,
        priority = {
            type = "integer",
        },
        action = M.RuleAction,
    },
}

M.CreateServiceInput = {
    type = "structure",
    id = "CreateServiceInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        name = {
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
        customDomainName = {
            type = "string",
        },
        certificateArn = {
            type = "string",
        },
        authType = {
            type = "string",
        },
    },
}

M.DnsEntry = {
    type = "structure",
    id = "DnsEntry",
    members = {
        domainName = {
            type = "string",
        },
        hostedZoneId = {
            type = "string",
        },
    },
}

M.ServiceStatus = {
    ACTIVE = "ACTIVE",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    DELETE_FAILED = "DELETE_FAILED",
}

M.CreateServiceOutput = {
    type = "structure",
    id = "CreateServiceOutput",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        customDomainName = {
            type = "string",
        },
        certificateArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        authType = {
            type = "string",
        },
        dnsEntry = M.DnsEntry,
    },
}

M.SharingConfig = {
    type = "structure",
    id = "SharingConfig",
    members = {
        enabled = {
            type = "boolean",
        },
    },
}

M.CreateServiceNetworkInput = {
    type = "structure",
    id = "CreateServiceNetworkInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authType = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        sharingConfig = M.SharingConfig,
    },
}

M.CreateServiceNetworkOutput = {
    type = "structure",
    id = "CreateServiceNetworkOutput",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        sharingConfig = M.SharingConfig,
        authType = {
            type = "string",
        },
    },
}

M.CreateServiceNetworkResourceAssociationInput = {
    type = "structure",
    id = "CreateServiceNetworkResourceAssociationInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        resourceConfigurationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceNetworkIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        privateDnsEnabled = {
            type = "boolean",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ServiceNetworkResourceAssociationStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    ACTIVE = "ACTIVE",
    PARTIAL = "PARTIAL",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    DELETE_FAILED = "DELETE_FAILED",
}

M.CreateServiceNetworkResourceAssociationOutput = {
    type = "structure",
    id = "CreateServiceNetworkResourceAssociationOutput",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createdBy = {
            type = "string",
        },
        privateDnsEnabled = {
            type = "boolean",
        },
    },
}

M.CreateServiceNetworkServiceAssociationInput = {
    type = "structure",
    id = "CreateServiceNetworkServiceAssociationInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        serviceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceNetworkIdentifier = {
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

M.ServiceNetworkServiceAssociationStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    ACTIVE = "ACTIVE",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    DELETE_FAILED = "DELETE_FAILED",
}

M.CreateServiceNetworkServiceAssociationOutput = {
    type = "structure",
    id = "CreateServiceNetworkServiceAssociationOutput",
    members = {
        id = {
            type = "string",
        },
        status = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        createdBy = {
            type = "string",
        },
        customDomainName = {
            type = "string",
        },
        dnsEntry = M.DnsEntry,
    },
}

M.PrivateDnsPreference = {
    VERIFIED_DOMAINS_ONLY = "VERIFIED_DOMAINS_ONLY",
    ALL_DOMAINS = "ALL_DOMAINS",
    VERIFIED_DOMAINS_AND_SPECIFIED_DOMAINS = "VERIFIED_DOMAINS_AND_SPECIFIED_DOMAINS",
    SPECIFIED_DOMAINS_ONLY = "SPECIFIED_DOMAINS_ONLY",
}

M.DnsOptions = {
    type = "structure",
    id = "DnsOptions",
    members = {
        privateDnsPreference = {
            type = "string",
        },
        privateDnsSpecifiedDomains = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateServiceNetworkVpcAssociationInput = {
    type = "structure",
    id = "CreateServiceNetworkVpcAssociationInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        serviceNetworkIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vpcIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        privateDnsEnabled = {
            type = "boolean",
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        dnsOptions = M.DnsOptions,
    },
}

M.ServiceNetworkVpcAssociationStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    ACTIVE = "ACTIVE",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    DELETE_FAILED = "DELETE_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.CreateServiceNetworkVpcAssociationOutput = {
    type = "structure",
    id = "CreateServiceNetworkVpcAssociationOutput",
    members = {
        id = {
            type = "string",
        },
        status = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        createdBy = {
            type = "string",
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        privateDnsEnabled = {
            type = "boolean",
        },
        dnsOptions = M.DnsOptions,
    },
}

M.Matcher = {
    type = "union",
    id = "Matcher",
    members = {
        httpCode = {
            type = "string",
        },
    },
}

M.TargetGroupProtocol = {
    HTTP = "HTTP",
    HTTPS = "HTTPS",
    TCP = "TCP",
}

M.HealthCheckProtocolVersion = {
    HTTP1 = "HTTP1",
    HTTP2 = "HTTP2",
}

M.HealthCheckConfig = {
    type = "structure",
    id = "HealthCheckConfig",
    members = {
        enabled = {
            type = "boolean",
        },
        protocol = {
            type = "string",
        },
        protocolVersion = {
            type = "string",
        },
        port = {
            type = "integer",
        },
        path = {
            type = "string",
        },
        healthCheckIntervalSeconds = {
            type = "integer",
        },
        healthCheckTimeoutSeconds = {
            type = "integer",
        },
        healthyThresholdCount = {
            type = "integer",
        },
        unhealthyThresholdCount = {
            type = "integer",
        },
        matcher = M.Matcher,
    },
}

M.IpAddressType = {
    IPV4 = "IPV4",
    IPV6 = "IPV6",
}

M.LambdaEventStructureVersion = {
    V1 = "V1",
    V2 = "V2",
}

M.TargetGroupProtocolVersion = {
    HTTP1 = "HTTP1",
    HTTP2 = "HTTP2",
    GRPC = "GRPC",
}

M.TargetGroupConfig = {
    type = "structure",
    id = "TargetGroupConfig",
    members = {
        port = {
            type = "integer",
        },
        protocol = {
            type = "string",
        },
        protocolVersion = {
            type = "string",
        },
        ipAddressType = {
            type = "string",
        },
        vpcIdentifier = {
            type = "string",
        },
        healthCheck = M.HealthCheckConfig,
        lambdaEventStructureVersion = {
            type = "string",
        },
    },
}

M.TargetGroupType = {
    IP = "IP",
    LAMBDA = "LAMBDA",
    INSTANCE = "INSTANCE",
    ALB = "ALB",
}

M.CreateTargetGroupInput = {
    type = "structure",
    id = "CreateTargetGroupInput",
    members = {
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
        config = M.TargetGroupConfig,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.TargetGroupStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    ACTIVE = "ACTIVE",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    DELETE_FAILED = "DELETE_FAILED",
}

M.CreateTargetGroupOutput = {
    type = "structure",
    id = "CreateTargetGroupOutput",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        config = M.TargetGroupConfig,
        status = {
            type = "string",
        },
    },
}

M.DeleteAuthPolicyInput = {
    type = "structure",
    id = "DeleteAuthPolicyInput",
    members = {
        resourceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAuthPolicyOutput = {
    type = "structure",
    id = "DeleteAuthPolicyOutput",
}

M.DeleteDomainVerificationInput = {
    type = "structure",
    id = "DeleteDomainVerificationInput",
    members = {
        domainVerificationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDomainVerificationOutput = {
    type = "structure",
    id = "DeleteDomainVerificationOutput",
}

M.DeleteListenerInput = {
    type = "structure",
    id = "DeleteListenerInput",
    members = {
        serviceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        listenerIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteListenerOutput = {
    type = "structure",
    id = "DeleteListenerOutput",
}

M.DeleteResourceConfigurationInput = {
    type = "structure",
    id = "DeleteResourceConfigurationInput",
    members = {
        resourceConfigurationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteResourceConfigurationOutput = {
    type = "structure",
    id = "DeleteResourceConfigurationOutput",
}

M.DeleteResourceEndpointAssociationInput = {
    type = "structure",
    id = "DeleteResourceEndpointAssociationInput",
    members = {
        resourceEndpointAssociationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteResourceEndpointAssociationOutput = {
    type = "structure",
    id = "DeleteResourceEndpointAssociationOutput",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        resourceConfigurationId = {
            type = "string",
        },
        resourceConfigurationArn = {
            type = "string",
        },
        vpcEndpointId = {
            type = "string",
        },
    },
}

M.DeleteResourceGatewayInput = {
    type = "structure",
    id = "DeleteResourceGatewayInput",
    members = {
        resourceGatewayIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteResourceGatewayOutput = {
    type = "structure",
    id = "DeleteResourceGatewayOutput",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    id = "DeleteResourcePolicyInput",
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

M.DeleteResourcePolicyOutput = {
    type = "structure",
    id = "DeleteResourcePolicyOutput",
}

M.DeleteRuleInput = {
    type = "structure",
    id = "DeleteRuleInput",
    members = {
        serviceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        listenerIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ruleIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRuleOutput = {
    type = "structure",
    id = "DeleteRuleOutput",
}

M.DeleteServiceInput = {
    type = "structure",
    id = "DeleteServiceInput",
    members = {
        serviceIdentifier = {
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
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.DeleteServiceNetworkInput = {
    type = "structure",
    id = "DeleteServiceNetworkInput",
    members = {
        serviceNetworkIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteServiceNetworkOutput = {
    type = "structure",
    id = "DeleteServiceNetworkOutput",
}

M.DeleteServiceNetworkResourceAssociationInput = {
    type = "structure",
    id = "DeleteServiceNetworkResourceAssociationInput",
    members = {
        serviceNetworkResourceAssociationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteServiceNetworkResourceAssociationOutput = {
    type = "structure",
    id = "DeleteServiceNetworkResourceAssociationOutput",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.DeleteServiceNetworkServiceAssociationInput = {
    type = "structure",
    id = "DeleteServiceNetworkServiceAssociationInput",
    members = {
        serviceNetworkServiceAssociationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteServiceNetworkServiceAssociationOutput = {
    type = "structure",
    id = "DeleteServiceNetworkServiceAssociationOutput",
    members = {
        id = {
            type = "string",
        },
        status = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.DeleteServiceNetworkVpcAssociationInput = {
    type = "structure",
    id = "DeleteServiceNetworkVpcAssociationInput",
    members = {
        serviceNetworkVpcAssociationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteServiceNetworkVpcAssociationOutput = {
    type = "structure",
    id = "DeleteServiceNetworkVpcAssociationOutput",
    members = {
        id = {
            type = "string",
        },
        status = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.DeleteTargetGroupInput = {
    type = "structure",
    id = "DeleteTargetGroupInput",
    members = {
        targetGroupIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTargetGroupOutput = {
    type = "structure",
    id = "DeleteTargetGroupOutput",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.Target = {
    type = "structure",
    id = "Target",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        port = {
            type = "integer",
        },
    },
}

M.DeregisterTargetsInput = {
    type = "structure",
    id = "DeregisterTargetsInput",
    members = {
        targetGroupIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        targets = {
            type = "list",
            member = M.Target,
            traits = {
                required = true,
            },
        },
    },
}

M.TargetFailure = {
    type = "structure",
    id = "TargetFailure",
    members = {
        id = {
            type = "string",
        },
        port = {
            type = "integer",
        },
        failureCode = {
            type = "string",
        },
        failureMessage = {
            type = "string",
        },
    },
}

M.DeregisterTargetsOutput = {
    type = "structure",
    id = "DeregisterTargetsOutput",
    members = {
        successful = {
            type = "list",
            member = M.Target,
        },
        unsuccessful = {
            type = "list",
            member = M.TargetFailure,
        },
    },
}

M.GetDomainVerificationInput = {
    type = "structure",
    id = "GetDomainVerificationInput",
    members = {
        domainVerificationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.VerificationStatus = {
    VERIFIED = "VERIFIED",
    PENDING = "PENDING",
    VERIFICATION_TIMED_OUT = "VERIFICATION_TIMED_OUT",
}

M.TxtMethodConfig = {
    type = "structure",
    id = "TxtMethodConfig",
    members = {
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDomainVerificationOutput = {
    type = "structure",
    id = "GetDomainVerificationOutput",
    members = {
        id = {
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
        txtMethodConfig = M.TxtMethodConfig,
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastVerifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListDomainVerificationsInput = {
    type = "structure",
    id = "ListDomainVerificationsInput",
    members = {
        maxResults = {
            type = "integer",
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

M.DomainVerificationSummary = {
    type = "structure",
    id = "DomainVerificationSummary",
    members = {
        id = {
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
        txtMethodConfig = M.TxtMethodConfig,
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastVerifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListDomainVerificationsOutput = {
    type = "structure",
    id = "ListDomainVerificationsOutput",
    members = {
        items = {
            type = "list",
            member = M.DomainVerificationSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StartDomainVerificationInput = {
    type = "structure",
    id = "StartDomainVerificationInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        domainName = {
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

M.StartDomainVerificationOutput = {
    type = "structure",
    id = "StartDomainVerificationOutput",
    members = {
        id = {
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
        txtMethodConfig = M.TxtMethodConfig,
    },
}

M.GetAuthPolicyInput = {
    type = "structure",
    id = "GetAuthPolicyInput",
    members = {
        resourceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAuthPolicyOutput = {
    type = "structure",
    id = "GetAuthPolicyOutput",
    members = {
        policy = {
            type = "string",
        },
        state = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetListenerInput = {
    type = "structure",
    id = "GetListenerInput",
    members = {
        serviceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        listenerIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetListenerOutput = {
    type = "structure",
    id = "GetListenerOutput",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        protocol = {
            type = "string",
        },
        port = {
            type = "integer",
        },
        serviceArn = {
            type = "string",
        },
        serviceId = {
            type = "string",
        },
        defaultAction = M.RuleAction,
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetResourceConfigurationInput = {
    type = "structure",
    id = "GetResourceConfigurationInput",
    members = {
        resourceConfigurationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetResourceConfigurationOutput = {
    type = "structure",
    id = "GetResourceConfigurationOutput",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        resourceGatewayId = {
            type = "string",
        },
        resourceConfigurationGroupId = {
            type = "string",
        },
        type = {
            type = "string",
        },
        allowAssociationToShareableServiceNetwork = {
            type = "boolean",
        },
        portRanges = {
            type = "list",
            member = { type = "string" },
        },
        protocol = {
            type = "string",
        },
        customDomainName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        resourceConfigurationDefinition = M.ResourceConfigurationDefinition,
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        amazonManaged = {
            type = "boolean",
        },
        failureReason = {
            type = "string",
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        domainVerificationId = {
            type = "string",
        },
        domainVerificationArn = {
            type = "string",
        },
        domainVerificationStatus = {
            type = "string",
        },
        groupDomain = {
            type = "string",
        },
    },
}

M.GetResourceGatewayInput = {
    type = "structure",
    id = "GetResourceGatewayInput",
    members = {
        resourceGatewayIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetResourceGatewayOutput = {
    type = "structure",
    id = "GetResourceGatewayOutput",
    members = {
        name = {
            type = "string",
        },
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        vpcId = {
            type = "string",
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        ipAddressType = {
            type = "string",
        },
        ipv4AddressesPerEni = {
            type = "integer",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
    id = "GetResourcePolicyInput",
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

M.GetResourcePolicyOutput = {
    type = "structure",
    id = "GetResourcePolicyOutput",
    members = {
        policy = {
            type = "string",
        },
    },
}

M.GetRuleInput = {
    type = "structure",
    id = "GetRuleInput",
    members = {
        serviceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        listenerIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ruleIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetRuleOutput = {
    type = "structure",
    id = "GetRuleOutput",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        isDefault = {
            type = "boolean",
        },
        match = M.RuleMatch,
        priority = {
            type = "integer",
        },
        action = M.RuleAction,
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetServiceInput = {
    type = "structure",
    id = "GetServiceInput",
    members = {
        serviceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetServiceOutput = {
    type = "structure",
    id = "GetServiceOutput",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        dnsEntry = M.DnsEntry,
        customDomainName = {
            type = "string",
        },
        certificateArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        authType = {
            type = "string",
        },
        failureCode = {
            type = "string",
        },
        failureMessage = {
            type = "string",
        },
    },
}

M.GetServiceNetworkInput = {
    type = "structure",
    id = "GetServiceNetworkInput",
    members = {
        serviceNetworkIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetServiceNetworkOutput = {
    type = "structure",
    id = "GetServiceNetworkOutput",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        arn = {
            type = "string",
        },
        authType = {
            type = "string",
        },
        sharingConfig = M.SharingConfig,
        numberOfAssociatedVPCs = {
            type = "long",
        },
        numberOfAssociatedServices = {
            type = "long",
        },
    },
}

M.GetServiceNetworkResourceAssociationInput = {
    type = "structure",
    id = "GetServiceNetworkResourceAssociationInput",
    members = {
        serviceNetworkResourceAssociationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetServiceNetworkResourceAssociationOutput = {
    type = "structure",
    id = "GetServiceNetworkResourceAssociationOutput",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createdBy = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        resourceConfigurationId = {
            type = "string",
        },
        resourceConfigurationArn = {
            type = "string",
        },
        resourceConfigurationName = {
            type = "string",
        },
        serviceNetworkId = {
            type = "string",
        },
        serviceNetworkArn = {
            type = "string",
        },
        serviceNetworkName = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
        failureCode = {
            type = "string",
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        privateDnsEntry = M.DnsEntry,
        privateDnsEnabled = {
            type = "boolean",
        },
        dnsEntry = M.DnsEntry,
        isManagedAssociation = {
            type = "boolean",
        },
        domainVerificationStatus = {
            type = "string",
        },
    },
}

M.GetServiceNetworkServiceAssociationInput = {
    type = "structure",
    id = "GetServiceNetworkServiceAssociationInput",
    members = {
        serviceNetworkServiceAssociationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetServiceNetworkServiceAssociationOutput = {
    type = "structure",
    id = "GetServiceNetworkServiceAssociationOutput",
    members = {
        id = {
            type = "string",
        },
        status = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        createdBy = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        serviceId = {
            type = "string",
        },
        serviceName = {
            type = "string",
        },
        serviceArn = {
            type = "string",
        },
        serviceNetworkId = {
            type = "string",
        },
        serviceNetworkName = {
            type = "string",
        },
        serviceNetworkArn = {
            type = "string",
        },
        dnsEntry = M.DnsEntry,
        customDomainName = {
            type = "string",
        },
        failureMessage = {
            type = "string",
        },
        failureCode = {
            type = "string",
        },
    },
}

M.GetServiceNetworkVpcAssociationInput = {
    type = "structure",
    id = "GetServiceNetworkVpcAssociationInput",
    members = {
        serviceNetworkVpcAssociationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetServiceNetworkVpcAssociationOutput = {
    type = "structure",
    id = "GetServiceNetworkVpcAssociationOutput",
    members = {
        id = {
            type = "string",
        },
        status = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        createdBy = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        serviceNetworkId = {
            type = "string",
        },
        serviceNetworkName = {
            type = "string",
        },
        serviceNetworkArn = {
            type = "string",
        },
        vpcId = {
            type = "string",
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        privateDnsEnabled = {
            type = "boolean",
        },
        failureMessage = {
            type = "string",
        },
        failureCode = {
            type = "string",
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        dnsOptions = M.DnsOptions,
    },
}

M.GetTargetGroupInput = {
    type = "structure",
    id = "GetTargetGroupInput",
    members = {
        targetGroupIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetTargetGroupOutput = {
    type = "structure",
    id = "GetTargetGroupOutput",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        config = M.TargetGroupConfig,
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
        },
        serviceArns = {
            type = "list",
            member = { type = "string" },
        },
        failureMessage = {
            type = "string",
        },
        failureCode = {
            type = "string",
        },
    },
}

M.ListListenersInput = {
    type = "structure",
    id = "ListListenersInput",
    members = {
        serviceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
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

M.ListenerSummary = {
    type = "structure",
    id = "ListenerSummary",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        protocol = {
            type = "string",
        },
        port = {
            type = "integer",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListListenersOutput = {
    type = "structure",
    id = "ListListenersOutput",
    members = {
        items = {
            type = "list",
            member = M.ListenerSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateListenerInput = {
    type = "structure",
    id = "UpdateListenerInput",
    members = {
        serviceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        listenerIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        defaultAction = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleAction }),
    },
}

M.UpdateListenerOutput = {
    type = "structure",
    id = "UpdateListenerOutput",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        protocol = {
            type = "string",
        },
        port = {
            type = "integer",
        },
        serviceArn = {
            type = "string",
        },
        serviceId = {
            type = "string",
        },
        defaultAction = M.RuleAction,
    },
}

M.ListResourceConfigurationsInput = {
    type = "structure",
    id = "ListResourceConfigurationsInput",
    members = {
        resourceGatewayIdentifier = {
            type = "string",
            traits = {
                http_query = "resourceGatewayIdentifier",
            },
        },
        resourceConfigurationGroupIdentifier = {
            type = "string",
            traits = {
                http_query = "resourceConfigurationGroupIdentifier",
            },
        },
        domainVerificationIdentifier = {
            type = "string",
            traits = {
                http_query = "domainVerificationIdentifier",
            },
        },
        maxResults = {
            type = "integer",
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

M.ResourceConfigurationSummary = {
    type = "structure",
    id = "ResourceConfigurationSummary",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        resourceGatewayId = {
            type = "string",
        },
        resourceConfigurationGroupId = {
            type = "string",
        },
        type = {
            type = "string",
        },
        status = {
            type = "string",
        },
        amazonManaged = {
            type = "boolean",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        customDomainName = {
            type = "string",
        },
        domainVerificationId = {
            type = "string",
        },
        groupDomain = {
            type = "string",
        },
    },
}

M.ListResourceConfigurationsOutput = {
    type = "structure",
    id = "ListResourceConfigurationsOutput",
    members = {
        items = {
            type = "list",
            member = M.ResourceConfigurationSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListResourceEndpointAssociationsInput = {
    type = "structure",
    id = "ListResourceEndpointAssociationsInput",
    members = {
        resourceConfigurationIdentifier = {
            type = "string",
            traits = {
                http_query = "resourceConfigurationIdentifier",
                required = true,
            },
        },
        resourceEndpointAssociationIdentifier = {
            type = "string",
            traits = {
                http_query = "resourceEndpointAssociationIdentifier",
            },
        },
        vpcEndpointId = {
            type = "string",
            traits = {
                http_query = "vpcEndpointId",
            },
        },
        vpcEndpointOwner = {
            type = "string",
            traits = {
                http_query = "vpcEndpointOwner",
            },
        },
        maxResults = {
            type = "integer",
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

M.ResourceEndpointAssociationSummary = {
    type = "structure",
    id = "ResourceEndpointAssociationSummary",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        resourceConfigurationId = {
            type = "string",
        },
        resourceConfigurationArn = {
            type = "string",
        },
        resourceConfigurationName = {
            type = "string",
        },
        vpcEndpointId = {
            type = "string",
        },
        vpcEndpointOwner = {
            type = "string",
        },
        createdBy = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListResourceEndpointAssociationsOutput = {
    type = "structure",
    id = "ListResourceEndpointAssociationsOutput",
    members = {
        items = {
            type = "list",
            member = M.ResourceEndpointAssociationSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListResourceGatewaysInput = {
    type = "structure",
    id = "ListResourceGatewaysInput",
    members = {
        maxResults = {
            type = "integer",
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

M.ResourceGatewaySummary = {
    type = "structure",
    id = "ResourceGatewaySummary",
    members = {
        name = {
            type = "string",
        },
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        vpcIdentifier = {
            type = "string",
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        ipAddressType = {
            type = "string",
        },
        ipv4AddressesPerEni = {
            type = "integer",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListResourceGatewaysOutput = {
    type = "structure",
    id = "ListResourceGatewaysOutput",
    members = {
        items = {
            type = "list",
            member = M.ResourceGatewaySummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRulesInput = {
    type = "structure",
    id = "ListRulesInput",
    members = {
        serviceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        listenerIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
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

M.RuleSummary = {
    type = "structure",
    id = "RuleSummary",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        isDefault = {
            type = "boolean",
        },
        priority = {
            type = "integer",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListRulesOutput = {
    type = "structure",
    id = "ListRulesOutput",
    members = {
        items = {
            type = "list",
            member = M.RuleSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListServiceNetworkResourceAssociationsInput = {
    type = "structure",
    id = "ListServiceNetworkResourceAssociationsInput",
    members = {
        serviceNetworkIdentifier = {
            type = "string",
            traits = {
                http_query = "serviceNetworkIdentifier",
            },
        },
        resourceConfigurationIdentifier = {
            type = "string",
            traits = {
                http_query = "resourceConfigurationIdentifier",
            },
        },
        maxResults = {
            type = "integer",
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
        includeChildren = {
            type = "boolean",
            traits = {
                http_query = "includeChildren",
            },
        },
    },
}

M.ServiceNetworkResourceAssociationSummary = {
    type = "structure",
    id = "ServiceNetworkResourceAssociationSummary",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createdBy = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        resourceConfigurationId = {
            type = "string",
        },
        resourceConfigurationArn = {
            type = "string",
        },
        resourceConfigurationName = {
            type = "string",
        },
        serviceNetworkId = {
            type = "string",
        },
        serviceNetworkArn = {
            type = "string",
        },
        serviceNetworkName = {
            type = "string",
        },
        dnsEntry = M.DnsEntry,
        privateDnsEntry = M.DnsEntry,
        isManagedAssociation = {
            type = "boolean",
        },
        failureCode = {
            type = "string",
        },
        privateDnsEnabled = {
            type = "boolean",
        },
    },
}

M.ListServiceNetworkResourceAssociationsOutput = {
    type = "structure",
    id = "ListServiceNetworkResourceAssociationsOutput",
    members = {
        items = {
            type = "list",
            member = M.ServiceNetworkResourceAssociationSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListServiceNetworksInput = {
    type = "structure",
    id = "ListServiceNetworksInput",
    members = {
        maxResults = {
            type = "integer",
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

M.ServiceNetworkSummary = {
    type = "structure",
    id = "ServiceNetworkSummary",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        numberOfAssociatedVPCs = {
            type = "long",
        },
        numberOfAssociatedServices = {
            type = "long",
        },
        numberOfAssociatedResourceConfigurations = {
            type = "long",
        },
    },
}

M.ListServiceNetworksOutput = {
    type = "structure",
    id = "ListServiceNetworksOutput",
    members = {
        items = {
            type = "list",
            member = M.ServiceNetworkSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListServiceNetworkServiceAssociationsInput = {
    type = "structure",
    id = "ListServiceNetworkServiceAssociationsInput",
    members = {
        serviceNetworkIdentifier = {
            type = "string",
            traits = {
                http_query = "serviceNetworkIdentifier",
            },
        },
        serviceIdentifier = {
            type = "string",
            traits = {
                http_query = "serviceIdentifier",
            },
        },
        maxResults = {
            type = "integer",
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

M.ServiceNetworkServiceAssociationSummary = {
    type = "structure",
    id = "ServiceNetworkServiceAssociationSummary",
    members = {
        id = {
            type = "string",
        },
        status = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        createdBy = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        serviceId = {
            type = "string",
        },
        serviceName = {
            type = "string",
        },
        serviceArn = {
            type = "string",
        },
        serviceNetworkId = {
            type = "string",
        },
        serviceNetworkName = {
            type = "string",
        },
        serviceNetworkArn = {
            type = "string",
        },
        dnsEntry = M.DnsEntry,
        customDomainName = {
            type = "string",
        },
    },
}

M.ListServiceNetworkServiceAssociationsOutput = {
    type = "structure",
    id = "ListServiceNetworkServiceAssociationsOutput",
    members = {
        items = {
            type = "list",
            member = M.ServiceNetworkServiceAssociationSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListServiceNetworkVpcAssociationsInput = {
    type = "structure",
    id = "ListServiceNetworkVpcAssociationsInput",
    members = {
        serviceNetworkIdentifier = {
            type = "string",
            traits = {
                http_query = "serviceNetworkIdentifier",
            },
        },
        vpcIdentifier = {
            type = "string",
            traits = {
                http_query = "vpcIdentifier",
            },
        },
        maxResults = {
            type = "integer",
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

M.ServiceNetworkVpcAssociationSummary = {
    type = "structure",
    id = "ServiceNetworkVpcAssociationSummary",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createdBy = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        serviceNetworkId = {
            type = "string",
        },
        serviceNetworkName = {
            type = "string",
        },
        serviceNetworkArn = {
            type = "string",
        },
        privateDnsEnabled = {
            type = "boolean",
        },
        dnsOptions = M.DnsOptions,
        vpcId = {
            type = "string",
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListServiceNetworkVpcAssociationsOutput = {
    type = "structure",
    id = "ListServiceNetworkVpcAssociationsOutput",
    members = {
        items = {
            type = "list",
            member = M.ServiceNetworkVpcAssociationSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListServiceNetworkVpcEndpointAssociationsInput = {
    type = "structure",
    id = "ListServiceNetworkVpcEndpointAssociationsInput",
    members = {
        serviceNetworkIdentifier = {
            type = "string",
            traits = {
                http_query = "serviceNetworkIdentifier",
                required = true,
            },
        },
        maxResults = {
            type = "integer",
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

M.ServiceNetworkEndpointAssociation = {
    type = "structure",
    id = "ServiceNetworkEndpointAssociation",
    members = {
        vpcEndpointId = {
            type = "string",
        },
        vpcId = {
            type = "string",
        },
        vpcEndpointOwnerId = {
            type = "string",
        },
        id = {
            type = "string",
        },
        state = {
            type = "string",
        },
        serviceNetworkArn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListServiceNetworkVpcEndpointAssociationsOutput = {
    type = "structure",
    id = "ListServiceNetworkVpcEndpointAssociationsOutput",
    members = {
        items = {
            type = "list",
            member = M.ServiceNetworkEndpointAssociation,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListServicesInput = {
    type = "structure",
    id = "ListServicesInput",
    members = {
        maxResults = {
            type = "integer",
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

M.ServiceSummary = {
    type = "structure",
    id = "ServiceSummary",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        dnsEntry = M.DnsEntry,
        customDomainName = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.ListServicesOutput = {
    type = "structure",
    id = "ListServicesOutput",
    members = {
        items = {
            type = "list",
            member = M.ServiceSummary,
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

M.ListTargetGroupsInput = {
    type = "structure",
    id = "ListTargetGroupsInput",
    members = {
        maxResults = {
            type = "integer",
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
        vpcIdentifier = {
            type = "string",
            traits = {
                http_query = "vpcIdentifier",
            },
        },
        targetGroupType = {
            type = "string",
            traits = {
                http_query = "targetGroupType",
            },
        },
    },
}

M.TargetGroupSummary = {
    type = "structure",
    id = "TargetGroupSummary",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        port = {
            type = "integer",
        },
        protocol = {
            type = "string",
        },
        ipAddressType = {
            type = "string",
        },
        vpcIdentifier = {
            type = "string",
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
        },
        serviceArns = {
            type = "list",
            member = { type = "string" },
        },
        lambdaEventStructureVersion = {
            type = "string",
        },
    },
}

M.ListTargetGroupsOutput = {
    type = "structure",
    id = "ListTargetGroupsOutput",
    members = {
        items = {
            type = "list",
            member = M.TargetGroupSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTargetsInput = {
    type = "structure",
    id = "ListTargetsInput",
    members = {
        targetGroupIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
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
        targets = {
            type = "list",
            member = M.Target,
        },
    },
}

M.TargetStatus = {
    DRAINING = "DRAINING",
    UNAVAILABLE = "UNAVAILABLE",
    HEALTHY = "HEALTHY",
    UNHEALTHY = "UNHEALTHY",
    INITIAL = "INITIAL",
    UNUSED = "UNUSED",
}

M.TargetSummary = {
    type = "structure",
    id = "TargetSummary",
    members = {
        id = {
            type = "string",
        },
        port = {
            type = "integer",
        },
        status = {
            type = "string",
        },
        reasonCode = {
            type = "string",
        },
    },
}

M.ListTargetsOutput = {
    type = "structure",
    id = "ListTargetsOutput",
    members = {
        items = {
            type = "list",
            member = M.TargetSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PutAuthPolicyInput = {
    type = "structure",
    id = "PutAuthPolicyInput",
    members = {
        resourceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutAuthPolicyOutput = {
    type = "structure",
    id = "PutAuthPolicyOutput",
    members = {
        policy = {
            type = "string",
        },
        state = {
            type = "string",
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    id = "PutResourcePolicyInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        policy = {
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

M.UpdateResourceConfigurationInput = {
    type = "structure",
    id = "UpdateResourceConfigurationInput",
    members = {
        resourceConfigurationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceConfigurationDefinition = M.ResourceConfigurationDefinition,
        allowAssociationToShareableServiceNetwork = {
            type = "boolean",
        },
        portRanges = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateResourceConfigurationOutput = {
    type = "structure",
    id = "UpdateResourceConfigurationOutput",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        resourceGatewayId = {
            type = "string",
        },
        resourceConfigurationGroupId = {
            type = "string",
        },
        type = {
            type = "string",
        },
        portRanges = {
            type = "list",
            member = { type = "string" },
        },
        allowAssociationToShareableServiceNetwork = {
            type = "boolean",
        },
        protocol = {
            type = "string",
        },
        status = {
            type = "string",
        },
        resourceConfigurationDefinition = M.ResourceConfigurationDefinition,
    },
}

M.UpdateResourceGatewayInput = {
    type = "structure",
    id = "UpdateResourceGatewayInput",
    members = {
        resourceGatewayIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateResourceGatewayOutput = {
    type = "structure",
    id = "UpdateResourceGatewayOutput",
    members = {
        name = {
            type = "string",
        },
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        vpcId = {
            type = "string",
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        ipAddressType = {
            type = "string",
        },
    },
}

M.UpdateRuleInput = {
    type = "structure",
    id = "UpdateRuleInput",
    members = {
        serviceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        listenerIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ruleIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        match = M.RuleMatch,
        priority = {
            type = "integer",
        },
        action = M.RuleAction,
    },
}

M.UpdateRuleOutput = {
    type = "structure",
    id = "UpdateRuleOutput",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        isDefault = {
            type = "boolean",
        },
        match = M.RuleMatch,
        priority = {
            type = "integer",
        },
        action = M.RuleAction,
    },
}

M.UpdateServiceInput = {
    type = "structure",
    id = "UpdateServiceInput",
    members = {
        serviceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        certificateArn = {
            type = "string",
        },
        authType = {
            type = "string",
        },
    },
}

M.UpdateServiceOutput = {
    type = "structure",
    id = "UpdateServiceOutput",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        customDomainName = {
            type = "string",
        },
        certificateArn = {
            type = "string",
        },
        authType = {
            type = "string",
        },
    },
}

M.UpdateServiceNetworkInput = {
    type = "structure",
    id = "UpdateServiceNetworkInput",
    members = {
        serviceNetworkIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        authType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateServiceNetworkOutput = {
    type = "structure",
    id = "UpdateServiceNetworkOutput",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        authType = {
            type = "string",
        },
    },
}

M.UpdateServiceNetworkVpcAssociationInput = {
    type = "structure",
    id = "UpdateServiceNetworkVpcAssociationInput",
    members = {
        serviceNetworkVpcAssociationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
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
    },
}

M.UpdateServiceNetworkVpcAssociationOutput = {
    type = "structure",
    id = "UpdateServiceNetworkVpcAssociationOutput",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createdBy = {
            type = "string",
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
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

M.RegisterTargetsInput = {
    type = "structure",
    id = "RegisterTargetsInput",
    members = {
        targetGroupIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        targets = {
            type = "list",
            member = M.Target,
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterTargetsOutput = {
    type = "structure",
    id = "RegisterTargetsOutput",
    members = {
        successful = {
            type = "list",
            member = M.Target,
        },
        unsuccessful = {
            type = "list",
            member = M.TargetFailure,
        },
    },
}

M.UpdateTargetGroupInput = {
    type = "structure",
    id = "UpdateTargetGroupInput",
    members = {
        targetGroupIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        healthCheck = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HealthCheckConfig }),
    },
}

M.UpdateTargetGroupOutput = {
    type = "structure",
    id = "UpdateTargetGroupOutput",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        config = M.TargetGroupConfig,
        status = {
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
