local M = {}

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
    members = {
        clientToken = {
            type = "string",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateAccessLogSubscriptionOutput = {
    type = "structure",
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
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "number",
            traits = {
                http_header = "Retry-After",
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
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.DeleteAccessLogSubscriptionInput = {
    type = "structure",
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
}

M.GetAccessLogSubscriptionInput = {
    type = "structure",
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

M.ListAccessLogSubscriptionsInput = {
    type = "structure",
    members = {
        resourceIdentifier = {
            type = "string",
            traits = {
                http_query = "resourceIdentifier",
                required = true,
            },
        },
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

M.AccessLogSubscriptionSummary = {
    type = "structure",
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

M.ListAccessLogSubscriptionsOutput = {
    type = "structure",
    members = {
        items = {
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

M.UpdateAccessLogSubscriptionInput = {
    type = "structure",
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
    members = {
        statusCode = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.WeightedTargetGroup = {
    type = "structure",
    members = {
        targetGroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        weight = {
            type = "number",
        },
    },
}

M.ForwardAction = {
    type = "structure",
    members = {
        targetGroups = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RuleAction = {
    type = "union",
    members = {
        forward = {
            type = "structure",
        },
        fixedResponse = {
            type = "structure",
        },
    },
}

M.HeaderMatchType = {
    type = "union",
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
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        match = {
            type = "union",
            traits = {
                required = true,
            },
        },
        caseSensitive = {
            type = "boolean",
        },
    },
}

M.PathMatchType = {
    type = "union",
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
    members = {
        match = {
            type = "union",
            traits = {
                required = true,
            },
        },
        caseSensitive = {
            type = "boolean",
        },
    },
}

M.HttpMatch = {
    type = "structure",
    members = {
        method = {
            type = "string",
        },
        pathMatch = {
            type = "structure",
        },
        headerMatches = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RuleMatch = {
    type = "union",
    members = {
        httpMatch = {
            type = "structure",
        },
    },
}

M.RuleUpdate = {
    type = "structure",
    members = {
        ruleIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        match = {
            type = "union",
        },
        priority = {
            type = "number",
        },
        action = {
            type = "union",
        },
    },
}

M.BatchUpdateRuleInput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RuleUpdateSuccess = {
    type = "structure",
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
        match = {
            type = "union",
        },
        priority = {
            type = "number",
        },
        action = {
            type = "union",
        },
    },
}

M.RuleUpdateFailure = {
    type = "structure",
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
    members = {
        successful = {
            type = "list",
            member_type = "structure",
        },
        unsuccessful = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        defaultAction = {
            type = "union",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateListenerOutput = {
    type = "structure",
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
            type = "number",
        },
        serviceArn = {
            type = "string",
        },
        serviceId = {
            type = "string",
        },
        defaultAction = {
            type = "union",
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
    members = {
        ipAddress = {
            type = "string",
        },
    },
}

M.ResourceConfigurationDefinition = {
    type = "union",
    members = {
        dnsResource = {
            type = "structure",
        },
        ipResource = {
            type = "structure",
        },
        arnResource = {
            type = "structure",
        },
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
            member_type = "string",
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
        resourceConfigurationDefinition = {
            type = "union",
        },
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
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
        },
        protocol = {
            type = "string",
        },
        status = {
            type = "string",
        },
        resourceConfigurationDefinition = {
            type = "union",
        },
        allowAssociationToShareableServiceNetwork = {
            type = "boolean",
        },
        createdAt = {
            type = "timestamp",
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
    members = {
        clientToken = {
            type = "string",
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
            member_type = "string",
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
        },
        ipAddressType = {
            type = "string",
        },
        ipv4AddressesPerEni = {
            type = "number",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
        },
        ipAddressType = {
            type = "string",
        },
        ipv4AddressesPerEni = {
            type = "number",
        },
    },
}

M.CreateRuleInput = {
    type = "structure",
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
        match = {
            type = "union",
            traits = {
                required = true,
            },
        },
        priority = {
            type = "number",
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
        clientToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateRuleOutput = {
    type = "structure",
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
        match = {
            type = "union",
        },
        priority = {
            type = "number",
        },
        action = {
            type = "union",
        },
    },
}

M.CreateServiceInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        name = {
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
        dnsEntry = {
            type = "structure",
        },
    },
}

M.SharingConfig = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
        },
    },
}

M.CreateServiceNetworkInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
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
            key_type = "string",
            value_type = "string",
        },
        sharingConfig = {
            type = "structure",
        },
    },
}

M.CreateServiceNetworkOutput = {
    type = "structure",
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
        sharingConfig = {
            type = "structure",
        },
        authType = {
            type = "string",
        },
    },
}

M.CreateServiceNetworkResourceAssociationInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
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
            key_type = "string",
            value_type = "string",
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
    members = {
        clientToken = {
            type = "string",
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
            key_type = "string",
            value_type = "string",
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
        dnsEntry = {
            type = "structure",
        },
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
    members = {
        privateDnsPreference = {
            type = "string",
        },
        privateDnsSpecifiedDomains = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateServiceNetworkVpcAssociationInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
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
            member_type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        dnsOptions = {
            type = "structure",
        },
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
            member_type = "string",
        },
        privateDnsEnabled = {
            type = "boolean",
        },
        dnsOptions = {
            type = "structure",
        },
    },
}

M.Matcher = {
    type = "union",
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
            type = "number",
        },
        path = {
            type = "string",
        },
        healthCheckIntervalSeconds = {
            type = "number",
        },
        healthCheckTimeoutSeconds = {
            type = "number",
        },
        healthyThresholdCount = {
            type = "number",
        },
        unhealthyThresholdCount = {
            type = "number",
        },
        matcher = {
            type = "union",
        },
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
    members = {
        port = {
            type = "number",
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
        healthCheck = {
            type = "structure",
        },
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
        config = {
            type = "structure",
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        config = {
            type = "structure",
        },
        status = {
            type = "string",
        },
    },
}

M.DeleteAuthPolicyInput = {
    type = "structure",
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
}

M.DeleteDomainVerificationInput = {
    type = "structure",
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
}

M.DeleteListenerInput = {
    type = "structure",
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
}

M.DeleteResourceConfigurationInput = {
    type = "structure",
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
}

M.DeleteResourceEndpointAssociationInput = {
    type = "structure",
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
}

M.DeleteRuleInput = {
    type = "structure",
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
}

M.DeleteServiceInput = {
    type = "structure",
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
}

M.DeleteServiceNetworkResourceAssociationInput = {
    type = "structure",
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
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        port = {
            type = "number",
        },
    },
}

M.DeregisterTargetsInput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TargetFailure = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        port = {
            type = "number",
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
    members = {
        successful = {
            type = "list",
            member_type = "structure",
        },
        unsuccessful = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetDomainVerificationInput = {
    type = "structure",
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
        txtMethodConfig = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastVerifiedTime = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListDomainVerificationsInput = {
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

M.DomainVerificationSummary = {
    type = "structure",
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
        txtMethodConfig = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastVerifiedTime = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListDomainVerificationsOutput = {
    type = "structure",
    members = {
        items = {
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

M.StartDomainVerificationInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        domainName = {
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
    },
}

M.StartDomainVerificationOutput = {
    type = "structure",
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
        txtMethodConfig = {
            type = "structure",
        },
    },
}

M.GetAuthPolicyInput = {
    type = "structure",
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
    members = {
        policy = {
            type = "string",
        },
        state = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.GetListenerInput = {
    type = "structure",
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
            type = "number",
        },
        serviceArn = {
            type = "string",
        },
        serviceId = {
            type = "string",
        },
        defaultAction = {
            type = "union",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.GetResourceConfigurationInput = {
    type = "structure",
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
            member_type = "string",
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
        resourceConfigurationDefinition = {
            type = "union",
        },
        createdAt = {
            type = "timestamp",
        },
        amazonManaged = {
            type = "boolean",
        },
        failureReason = {
            type = "string",
        },
        lastUpdatedAt = {
            type = "timestamp",
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
            member_type = "string",
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
        },
        ipAddressType = {
            type = "string",
        },
        ipv4AddressesPerEni = {
            type = "number",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.GetResourcePolicyInput = {
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

M.GetResourcePolicyOutput = {
    type = "structure",
    members = {
        policy = {
            type = "string",
        },
    },
}

M.GetRuleInput = {
    type = "structure",
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
        match = {
            type = "union",
        },
        priority = {
            type = "number",
        },
        action = {
            type = "union",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.GetServiceInput = {
    type = "structure",
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
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        dnsEntry = {
            type = "structure",
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
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        arn = {
            type = "string",
        },
        authType = {
            type = "string",
        },
        sharingConfig = {
            type = "structure",
        },
        numberOfAssociatedVPCs = {
            type = "number",
        },
        numberOfAssociatedServices = {
            type = "number",
        },
    },
}

M.GetServiceNetworkResourceAssociationInput = {
    type = "structure",
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
        },
        privateDnsEntry = {
            type = "structure",
        },
        privateDnsEnabled = {
            type = "boolean",
        },
        dnsEntry = {
            type = "structure",
        },
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
        dnsEntry = {
            type = "structure",
        },
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
            member_type = "string",
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
        },
        dnsOptions = {
            type = "structure",
        },
    },
}

M.GetTargetGroupInput = {
    type = "structure",
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
        config = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        serviceArns = {
            type = "list",
            member_type = "string",
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
    members = {
        serviceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
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

M.ListenerSummary = {
    type = "structure",
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
            type = "number",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ListListenersOutput = {
    type = "structure",
    members = {
        items = {
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

M.UpdateListenerInput = {
    type = "structure",
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
        defaultAction = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateListenerOutput = {
    type = "structure",
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
            type = "number",
        },
        serviceArn = {
            type = "string",
        },
        serviceId = {
            type = "string",
        },
        defaultAction = {
            type = "union",
        },
    },
}

M.ListResourceConfigurationsInput = {
    type = "structure",
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

M.ResourceConfigurationSummary = {
    type = "structure",
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
        },
        lastUpdatedAt = {
            type = "timestamp",
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
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListResourceEndpointAssociationsInput = {
    type = "structure",
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

M.ResourceEndpointAssociationSummary = {
    type = "structure",
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
        },
    },
}

M.ListResourceEndpointAssociationsOutput = {
    type = "structure",
    members = {
        items = {
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

M.ListResourceGatewaysInput = {
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

M.ResourceGatewaySummary = {
    type = "structure",
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
            member_type = "string",
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
        },
        ipAddressType = {
            type = "string",
        },
        ipv4AddressesPerEni = {
            type = "number",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ListResourceGatewaysOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRulesInput = {
    type = "structure",
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

M.RuleSummary = {
    type = "structure",
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
            type = "number",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ListRulesOutput = {
    type = "structure",
    members = {
        items = {
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

M.ListServiceNetworkResourceAssociationsInput = {
    type = "structure",
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
        dnsEntry = {
            type = "structure",
        },
        privateDnsEntry = {
            type = "structure",
        },
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
    members = {
        items = {
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

M.ListServiceNetworksInput = {
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

M.ServiceNetworkSummary = {
    type = "structure",
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
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        numberOfAssociatedVPCs = {
            type = "number",
        },
        numberOfAssociatedServices = {
            type = "number",
        },
        numberOfAssociatedResourceConfigurations = {
            type = "number",
        },
    },
}

M.ListServiceNetworksOutput = {
    type = "structure",
    members = {
        items = {
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

M.ListServiceNetworkServiceAssociationsInput = {
    type = "structure",
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

M.ServiceNetworkServiceAssociationSummary = {
    type = "structure",
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
        dnsEntry = {
            type = "structure",
        },
        customDomainName = {
            type = "string",
        },
    },
}

M.ListServiceNetworkServiceAssociationsOutput = {
    type = "structure",
    members = {
        items = {
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

M.ListServiceNetworkVpcAssociationsInput = {
    type = "structure",
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

M.ServiceNetworkVpcAssociationSummary = {
    type = "structure",
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
        dnsOptions = {
            type = "structure",
        },
        vpcId = {
            type = "string",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ListServiceNetworkVpcAssociationsOutput = {
    type = "structure",
    members = {
        items = {
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

M.ListServiceNetworkVpcEndpointAssociationsInput = {
    type = "structure",
    members = {
        serviceNetworkIdentifier = {
            type = "string",
            traits = {
                http_query = "serviceNetworkIdentifier",
                required = true,
            },
        },
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

M.ServiceNetworkEndpointAssociation = {
    type = "structure",
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
        },
    },
}

M.ListServiceNetworkVpcEndpointAssociationsOutput = {
    type = "structure",
    members = {
        items = {
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

M.ListServicesInput = {
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

M.ServiceSummary = {
    type = "structure",
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
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        dnsEntry = {
            type = "structure",
        },
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
    members = {
        items = {
            type = "list",
            member_type = "structure",
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

M.ListTargetGroupsInput = {
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
        },
        port = {
            type = "number",
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
        },
        status = {
            type = "string",
        },
        serviceArns = {
            type = "list",
            member_type = "string",
        },
        lambdaEventStructureVersion = {
            type = "string",
        },
    },
}

M.ListTargetGroupsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTargetsInput = {
    type = "structure",
    members = {
        targetGroupIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
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
        targets = {
            type = "list",
            member_type = "structure",
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
    members = {
        id = {
            type = "string",
        },
        port = {
            type = "number",
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
    members = {
        items = {
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

M.PutAuthPolicyInput = {
    type = "structure",
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
}

M.UpdateResourceConfigurationInput = {
    type = "structure",
    members = {
        resourceConfigurationIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceConfigurationDefinition = {
            type = "union",
        },
        allowAssociationToShareableServiceNetwork = {
            type = "boolean",
        },
        portRanges = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UpdateResourceConfigurationOutput = {
    type = "structure",
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
            member_type = "string",
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
        resourceConfigurationDefinition = {
            type = "union",
        },
    },
}

M.UpdateResourceGatewayInput = {
    type = "structure",
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
            member_type = "string",
        },
    },
}

M.UpdateResourceGatewayOutput = {
    type = "structure",
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
            member_type = "string",
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
        },
        ipAddressType = {
            type = "string",
        },
    },
}

M.UpdateRuleInput = {
    type = "structure",
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
        match = {
            type = "union",
        },
        priority = {
            type = "number",
        },
        action = {
            type = "union",
        },
    },
}

M.UpdateRuleOutput = {
    type = "structure",
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
        match = {
            type = "union",
        },
        priority = {
            type = "number",
        },
        action = {
            type = "union",
        },
    },
}

M.UpdateServiceInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateServiceNetworkVpcAssociationOutput = {
    type = "structure",
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
            member_type = "string",
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

M.RegisterTargetsInput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterTargetsOutput = {
    type = "structure",
    members = {
        successful = {
            type = "list",
            member_type = "structure",
        },
        unsuccessful = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateTargetGroupInput = {
    type = "structure",
    members = {
        targetGroupIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        healthCheck = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTargetGroupOutput = {
    type = "structure",
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
        config = {
            type = "structure",
        },
        status = {
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
