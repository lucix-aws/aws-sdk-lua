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
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IpAddressType = {
    IPV4 = "IPV4",
    IPV6 = "IPV6",
}

M.DnsProtocol = {
    DO53 = "DO53",
    DOH = "DOH",
    DOT = "DOT",
}

M.CreateAccessSourceInput = {
    type = "structure",
    members = {
        cidr = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        ipAddressType = {
            type = "string",
            traits = {
                default = "IPV4",
            },
        },
        name = {
            type = "string",
        },
        dnsViewId = {
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
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CRResourceStatus = {
    CREATING = "CREATING",
    OPERATIONAL = "OPERATIONAL",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
}

M.CreateAccessSourceOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cidr = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ipAddressType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        dnsViewId = {
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
            type = "integer",
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
        },
        resourceType = {
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
        },
        quotaCode = {
            type = "string",
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
            type = "integer",
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
    UNKNOWN_OPERATION = "UNKNOWN_OPERATION",
    CANNOT_PARSE = "CANNOT_PARSE",
    FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED",
    OTHER = "OTHER",
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
            member = M.ValidationExceptionField,
        },
    },
}

M.DeleteAccessSourceInput = {
    type = "structure",
    members = {
        accessSourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAccessSourceOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cidr = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ipAddressType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        dnsViewId = {
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetAccessSourceInput = {
    type = "structure",
    members = {
        accessSourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAccessSourceOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cidr = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ipAddressType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        dnsViewId = {
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListAccessSourcesInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "max_results",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "next_token",
            },
        },
        filters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
            traits = {
                http_query_params = true,
            },
        },
    },
}

M.AccessSourcesItem = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cidr = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ipAddressType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        dnsViewId = {
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListAccessSourcesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        accessSources = {
            type = "list",
            member = M.AccessSourcesItem,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAccessSourceInput = {
    type = "structure",
    members = {
        accessSourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        cidr = {
            type = "string",
        },
        ipAddressType = {
            type = "string",
        },
        name = {
            type = "string",
        },
        protocol = {
            type = "string",
        },
    },
}

M.UpdateAccessSourceOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cidr = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ipAddressType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        dnsViewId = {
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreateAccessTokenInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        dnsViewId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        expiresAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        name = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.TokenStatus = {
    CREATING = "CREATING",
    OPERATIONAL = "OPERATIONAL",
    DELETING = "DELETING",
}

M.CreateAccessTokenOutput = {
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
        clientToken = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        dnsViewId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expiresAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        name = {
            type = "string",
        },
        status = {
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

M.DeleteAccessTokenInput = {
    type = "structure",
    members = {
        accessTokenId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAccessTokenOutput = {
    type = "structure",
    members = {
        id = {
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
        deletedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetAccessTokenInput = {
    type = "structure",
    members = {
        accessTokenId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAccessTokenOutput = {
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
        clientToken = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        dnsViewId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expiresAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        globalResolverId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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

M.ListAccessTokensInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "max_results",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "next_token",
            },
        },
        dnsViewId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        filters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
            traits = {
                http_query_params = true,
            },
        },
    },
}

M.AccessTokenItem = {
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
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        dnsViewId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expiresAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        globalResolverId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListAccessTokensOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        accessTokens = {
            type = "list",
            member = M.AccessTokenItem,
        },
    },
}

M.UpdateAccessTokenInput = {
    type = "structure",
    members = {
        accessTokenId = {
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
    },
}

M.UpdateAccessTokenOutput = {
    type = "structure",
    members = {
        id = {
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

M.AssociateHostedZoneInput = {
    type = "structure",
    members = {
        hostedZoneId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceArn = {
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

M.HostedZoneAssociationStatus = {
    CREATING = "CREATING",
    OPERATIONAL = "OPERATIONAL",
    DELETING = "DELETING",
}

M.AssociateHostedZoneOutput = {
    type = "structure",
    members = {
        id = {
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
        hostedZoneId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        hostedZoneName = {
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
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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

M.FirewallRuleAction = {
    ALLOW = "ALLOW",
    ALERT = "ALERT",
    BLOCK = "BLOCK",
}

M.BlockOverrideDnsQueryType = {
    CNAME = "CNAME",
}

M.FirewallBlockResponse = {
    NODATA = "NODATA",
    NXDOMAIN = "NXDOMAIN",
    OVERRIDE = "OVERRIDE",
}

M.ConfidenceThreshold = {
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
}

M.DnsAdvancedProtection = {
    DGA = "DGA",
    DNS_TUNNELING = "DNS_TUNNELING",
    DICTIONARY_DGA = "DICTIONARY_DGA",
}

M.BatchCreateFirewallRuleInputItem = {
    type = "structure",
    members = {
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blockOverrideDnsType = {
            type = "string",
        },
        blockOverrideDomain = {
            type = "string",
        },
        blockOverrideTtl = {
            type = "integer",
        },
        blockResponse = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        confidenceThreshold = {
            type = "string",
        },
        description = {
            type = "string",
        },
        dnsAdvancedProtection = {
            type = "string",
        },
        firewallDomainListId = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        priority = {
            type = "long",
        },
        dnsViewId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        qType = {
            type = "string",
        },
    },
}

M.BatchCreateFirewallRuleInput = {
    type = "structure",
    members = {
        firewallRules = {
            type = "list",
            member = M.BatchCreateFirewallRuleInputItem,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchCreateFirewallRuleResult = {
    type = "structure",
    members = {
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blockOverrideDnsType = {
            type = "string",
        },
        blockOverrideDomain = {
            type = "string",
        },
        blockOverrideTtl = {
            type = "integer",
        },
        blockResponse = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        confidenceThreshold = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        description = {
            type = "string",
        },
        dnsAdvancedProtection = {
            type = "string",
        },
        firewallDomainListId = {
            type = "string",
        },
        id = {
            type = "string",
        },
        managedDomainListName = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        priority = {
            type = "long",
        },
        dnsViewId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queryType = {
            type = "string",
        },
        status = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.BatchCreateFirewallRuleOutputItem = {
    type = "structure",
    members = {
        firewallRule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BatchCreateFirewallRuleResult }),
        code = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
        },
    },
}

M.BatchCreateFirewallRuleOutput = {
    type = "structure",
    members = {
        failures = {
            type = "list",
            member = M.BatchCreateFirewallRuleOutputItem,
            traits = {
                required = true,
            },
        },
        successes = {
            type = "list",
            member = M.BatchCreateFirewallRuleOutputItem,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteFirewallRuleInputItem = {
    type = "structure",
    members = {
        firewallRuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteFirewallRuleInput = {
    type = "structure",
    members = {
        firewallRules = {
            type = "list",
            member = M.BatchDeleteFirewallRuleInputItem,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteFirewallRuleResult = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.BatchDeleteFirewallRuleOutputItem = {
    type = "structure",
    members = {
        firewallRule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BatchDeleteFirewallRuleResult }),
        code = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
        },
    },
}

M.BatchDeleteFirewallRuleOutput = {
    type = "structure",
    members = {
        failures = {
            type = "list",
            member = M.BatchDeleteFirewallRuleOutputItem,
            traits = {
                required = true,
            },
        },
        successes = {
            type = "list",
            member = M.BatchDeleteFirewallRuleOutputItem,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateFirewallRuleInputItem = {
    type = "structure",
    members = {
        action = {
            type = "string",
        },
        blockOverrideDnsType = {
            type = "string",
        },
        blockOverrideDomain = {
            type = "string",
        },
        blockOverrideTtl = {
            type = "integer",
        },
        blockResponse = {
            type = "string",
        },
        confidenceThreshold = {
            type = "string",
        },
        description = {
            type = "string",
        },
        dnsAdvancedProtection = {
            type = "string",
        },
        firewallRuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        priority = {
            type = "long",
        },
    },
}

M.BatchUpdateFirewallRuleInput = {
    type = "structure",
    members = {
        firewallRules = {
            type = "list",
            member = M.BatchUpdateFirewallRuleInputItem,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateFirewallRuleResult = {
    type = "structure",
    members = {
        action = {
            type = "string",
        },
        blockOverrideDnsType = {
            type = "string",
        },
        blockOverrideDomain = {
            type = "string",
        },
        blockOverrideTtl = {
            type = "integer",
        },
        blockResponse = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
        confidenceThreshold = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        description = {
            type = "string",
        },
        dnsAdvancedProtection = {
            type = "string",
        },
        firewallDomainListId = {
            type = "string",
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        priority = {
            type = "long",
        },
        dnsViewId = {
            type = "string",
        },
        queryType = {
            type = "string",
        },
        status = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.BatchUpdateFirewallRuleOutputItem = {
    type = "structure",
    members = {
        firewallRule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BatchUpdateFirewallRuleResult }),
        code = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
        },
    },
}

M.BatchUpdateFirewallRuleOutput = {
    type = "structure",
    members = {
        failures = {
            type = "list",
            member = M.BatchUpdateFirewallRuleOutputItem,
            traits = {
                required = true,
            },
        },
        successes = {
            type = "list",
            member = M.BatchUpdateFirewallRuleOutputItem,
            traits = {
                required = true,
            },
        },
    },
}

M.DnsSecValidationType = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.EdnsClientSubnetType = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.FirewallRulesFailOpenType = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CreateDNSViewInput = {
    type = "structure",
    members = {
        globalResolverId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
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
        dnssecValidation = {
            type = "string",
            traits = {
                default = "DISABLED",
            },
        },
        ednsClientSubnet = {
            type = "string",
            traits = {
                default = "DISABLED",
            },
        },
        firewallRulesFailOpen = {
            type = "string",
            traits = {
                default = "DISABLED",
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

M.ProfileResourceStatus = {
    CREATING = "CREATING",
    OPERATIONAL = "OPERATIONAL",
    UPDATING = "UPDATING",
    ENABLING = "ENABLING",
    DISABLING = "DISABLING",
    DISABLED = "DISABLED",
    DELETING = "DELETING",
}

M.CreateDNSViewOutput = {
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
        clientToken = {
            type = "string",
        },
        dnssecValidation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ednsClientSubnet = {
            type = "string",
            traits = {
                required = true,
            },
        },
        firewallRulesFailOpen = {
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
        description = {
            type = "string",
        },
        globalResolverId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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

M.CreateFirewallDomainListInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        globalResolverId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateFirewallDomainListOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        globalResolverId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        description = {
            type = "string",
        },
        domainCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        id = {
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreateFirewallRuleInput = {
    type = "structure",
    members = {
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blockOverrideDnsType = {
            type = "string",
        },
        blockOverrideDomain = {
            type = "string",
        },
        blockOverrideTtl = {
            type = "integer",
        },
        blockResponse = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        confidenceThreshold = {
            type = "string",
        },
        description = {
            type = "string",
        },
        dnsAdvancedProtection = {
            type = "string",
        },
        firewallDomainListId = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        priority = {
            type = "long",
        },
        dnsViewId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        qType = {
            type = "string",
        },
    },
}

M.CreateFirewallRuleOutput = {
    type = "structure",
    members = {
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blockOverrideDnsType = {
            type = "string",
        },
        blockOverrideDomain = {
            type = "string",
        },
        blockOverrideTtl = {
            type = "integer",
        },
        blockResponse = {
            type = "string",
        },
        confidenceThreshold = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        description = {
            type = "string",
        },
        dnsAdvancedProtection = {
            type = "string",
        },
        firewallDomainListId = {
            type = "string",
        },
        id = {
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
        priority = {
            type = "long",
            traits = {
                required = true,
            },
        },
        dnsViewId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queryType = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.GlobalResolverIpAddressType = {
    IPV4 = "IPV4",
    DUAL_STACK = "DUAL_STACK",
}

M.CreateGlobalResolverInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        description = {
            type = "string",
        },
        ipAddressType = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        observabilityRegion = {
            type = "string",
        },
        regions = {
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

M.CreateGlobalResolverOutput = {
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
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        description = {
            type = "string",
        },
        dnsName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ipAddressType = {
            type = "string",
        },
        ipv4Addresses = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ipv6Addresses = {
            type = "list",
            member = { type = "string" },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        observabilityRegion = {
            type = "string",
        },
        regions = {
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
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.DeleteDNSViewInput = {
    type = "structure",
    members = {
        dnsViewId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDNSViewOutput = {
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
        clientToken = {
            type = "string",
        },
        dnssecValidation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ednsClientSubnet = {
            type = "string",
            traits = {
                required = true,
            },
        },
        firewallRulesFailOpen = {
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
        description = {
            type = "string",
        },
        globalResolverId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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

M.DeleteFirewallDomainListInput = {
    type = "structure",
    members = {
        firewallDomainListId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteFirewallDomainListOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteFirewallRuleInput = {
    type = "structure",
    members = {
        firewallRuleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteFirewallRuleOutput = {
    type = "structure",
    members = {
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blockOverrideDnsType = {
            type = "string",
        },
        blockOverrideDomain = {
            type = "string",
        },
        blockOverrideTtl = {
            type = "integer",
        },
        blockResponse = {
            type = "string",
        },
        confidenceThreshold = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        description = {
            type = "string",
        },
        dnsAdvancedProtection = {
            type = "string",
        },
        firewallDomainListId = {
            type = "string",
        },
        id = {
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
        priority = {
            type = "long",
            traits = {
                required = true,
            },
        },
        dnsViewId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queryType = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.DeleteGlobalResolverInput = {
    type = "structure",
    members = {
        globalResolverId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteGlobalResolverOutput = {
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
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dnsName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        observabilityRegion = {
            type = "string",
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
        regions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ipv4Addresses = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ipv6Addresses = {
            type = "list",
            member = { type = "string" },
        },
        ipAddressType = {
            type = "string",
        },
    },
}

M.DisableDNSViewInput = {
    type = "structure",
    members = {
        dnsViewId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisableDNSViewOutput = {
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
        clientToken = {
            type = "string",
        },
        dnssecValidation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ednsClientSubnet = {
            type = "string",
            traits = {
                required = true,
            },
        },
        firewallRulesFailOpen = {
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
        description = {
            type = "string",
        },
        globalResolverId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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

M.DisassociateHostedZoneInput = {
    type = "structure",
    members = {
        hostedZoneId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateHostedZoneOutput = {
    type = "structure",
    members = {
        id = {
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
        hostedZoneId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        hostedZoneName = {
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
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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

M.EnableDNSViewInput = {
    type = "structure",
    members = {
        dnsViewId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.EnableDNSViewOutput = {
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
        clientToken = {
            type = "string",
        },
        dnssecValidation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ednsClientSubnet = {
            type = "string",
            traits = {
                required = true,
            },
        },
        firewallRulesFailOpen = {
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
        description = {
            type = "string",
        },
        globalResolverId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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

M.GetDNSViewInput = {
    type = "structure",
    members = {
        dnsViewId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDNSViewOutput = {
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
        clientToken = {
            type = "string",
        },
        dnssecValidation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ednsClientSubnet = {
            type = "string",
            traits = {
                required = true,
            },
        },
        firewallRulesFailOpen = {
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
        description = {
            type = "string",
        },
        globalResolverId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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

M.ListDNSViewsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "max_results",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "next_token",
            },
        },
        globalResolverId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DNSViewSummary = {
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
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dnssecValidation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ednsClientSubnet = {
            type = "string",
            traits = {
                required = true,
            },
        },
        firewallRulesFailOpen = {
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
        description = {
            type = "string",
        },
        globalResolverId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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

M.ListDNSViewsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        dnsViews = {
            type = "list",
            member = M.DNSViewSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateDNSViewInput = {
    type = "structure",
    members = {
        dnsViewId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        dnssecValidation = {
            type = "string",
        },
        ednsClientSubnet = {
            type = "string",
        },
        firewallRulesFailOpen = {
            type = "string",
        },
    },
}

M.UpdateDNSViewOutput = {
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
        clientToken = {
            type = "string",
        },
        dnssecValidation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ednsClientSubnet = {
            type = "string",
            traits = {
                required = true,
            },
        },
        firewallRulesFailOpen = {
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
        description = {
            type = "string",
        },
        globalResolverId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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

M.GetFirewallDomainListInput = {
    type = "structure",
    members = {
        firewallDomainListId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetFirewallDomainListOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        globalResolverId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        description = {
            type = "string",
        },
        domainCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        id = {
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusMessage = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ImportFirewallDomainsInput = {
    type = "structure",
    members = {
        domainFileUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        firewallDomainListId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        operation = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportFirewallDomainsOutput = {
    type = "structure",
    members = {
        id = {
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListFirewallDomainListsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "max_results",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "next_token",
            },
        },
        globalResolverId = {
            type = "string",
            traits = {
                http_query = "global_resolver_id",
            },
        },
    },
}

M.FirewallDomainListsItem = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        globalResolverId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        description = {
            type = "string",
        },
        id = {
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListFirewallDomainListsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        firewallDomainLists = {
            type = "list",
            member = M.FirewallDomainListsItem,
            traits = {
                required = true,
            },
        },
    },
}

M.ListFirewallDomainsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "max_results",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "next_token",
            },
        },
        firewallDomainListId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListFirewallDomainsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        domains = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateFirewallDomainsInput = {
    type = "structure",
    members = {
        domains = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        firewallDomainListId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        operation = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateFirewallDomainsOutput = {
    type = "structure",
    members = {
        id = {
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetFirewallRuleInput = {
    type = "structure",
    members = {
        firewallRuleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetFirewallRuleOutput = {
    type = "structure",
    members = {
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blockOverrideDnsType = {
            type = "string",
        },
        blockOverrideDomain = {
            type = "string",
        },
        blockOverrideTtl = {
            type = "integer",
        },
        blockResponse = {
            type = "string",
        },
        confidenceThreshold = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        description = {
            type = "string",
        },
        dnsAdvancedProtection = {
            type = "string",
        },
        firewallDomainListId = {
            type = "string",
        },
        id = {
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
        priority = {
            type = "long",
            traits = {
                required = true,
            },
        },
        dnsViewId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queryType = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListFirewallRulesInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "max_results",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "next_token",
            },
        },
        dnsViewId = {
            type = "string",
            traits = {
                http_query = "dnsview_id",
                required = true,
            },
        },
        filters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
            traits = {
                http_query_params = true,
            },
        },
    },
}

M.FirewallRulesItem = {
    type = "structure",
    members = {
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blockOverrideDnsType = {
            type = "string",
        },
        blockOverrideDomain = {
            type = "string",
        },
        blockOverrideTtl = {
            type = "integer",
        },
        blockResponse = {
            type = "string",
        },
        confidenceThreshold = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        description = {
            type = "string",
        },
        dnsAdvancedProtection = {
            type = "string",
        },
        firewallDomainListId = {
            type = "string",
        },
        id = {
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
        priority = {
            type = "long",
            traits = {
                required = true,
            },
        },
        dnsViewId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queryType = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListFirewallRulesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        firewallRules = {
            type = "list",
            member = M.FirewallRulesItem,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateFirewallRuleInput = {
    type = "structure",
    members = {
        action = {
            type = "string",
        },
        blockOverrideDnsType = {
            type = "string",
        },
        blockOverrideDomain = {
            type = "string",
        },
        blockOverrideTtl = {
            type = "integer",
        },
        blockResponse = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        confidenceThreshold = {
            type = "string",
        },
        description = {
            type = "string",
        },
        dnsAdvancedProtection = {
            type = "string",
        },
        firewallRuleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        priority = {
            type = "long",
        },
    },
}

M.UpdateFirewallRuleOutput = {
    type = "structure",
    members = {
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blockOverrideDnsType = {
            type = "string",
        },
        blockOverrideDomain = {
            type = "string",
        },
        blockOverrideTtl = {
            type = "integer",
        },
        blockResponse = {
            type = "string",
        },
        confidenceThreshold = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        description = {
            type = "string",
        },
        dnsAdvancedProtection = {
            type = "string",
        },
        firewallDomainListId = {
            type = "string",
        },
        id = {
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
        priority = {
            type = "long",
            traits = {
                required = true,
            },
        },
        dnsViewId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queryType = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetGlobalResolverInput = {
    type = "structure",
    members = {
        globalResolverId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetGlobalResolverOutput = {
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
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dnsName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        observabilityRegion = {
            type = "string",
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
        regions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ipv4Addresses = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ipv6Addresses = {
            type = "list",
            member = { type = "string" },
        },
        ipAddressType = {
            type = "string",
        },
    },
}

M.ListGlobalResolversInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "max_results",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "next_token",
            },
        },
    },
}

M.GlobalResolversItem = {
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
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dnsName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        observabilityRegion = {
            type = "string",
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
        regions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ipv4Addresses = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ipv6Addresses = {
            type = "list",
            member = { type = "string" },
        },
        ipAddressType = {
            type = "string",
        },
    },
}

M.ListGlobalResolversOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        globalResolvers = {
            type = "list",
            member = M.GlobalResolversItem,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateGlobalResolverInput = {
    type = "structure",
    members = {
        globalResolverId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        observabilityRegion = {
            type = "string",
        },
        description = {
            type = "string",
        },
        ipAddressType = {
            type = "string",
        },
        regions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateGlobalResolverOutput = {
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
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dnsName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        observabilityRegion = {
            type = "string",
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
        regions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ipv4Addresses = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ipv6Addresses = {
            type = "list",
            member = { type = "string" },
        },
        ipAddressType = {
            type = "string",
        },
    },
}

M.GetHostedZoneAssociationInput = {
    type = "structure",
    members = {
        hostedZoneAssociationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetHostedZoneAssociationOutput = {
    type = "structure",
    members = {
        id = {
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
        hostedZoneId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        hostedZoneName = {
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
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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

M.ListHostedZoneAssociationsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "max_results",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "next_token",
            },
        },
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.HostedZoneAssociationSummary = {
    type = "structure",
    members = {
        id = {
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
        hostedZoneId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        hostedZoneName = {
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
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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

M.ListHostedZoneAssociationsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        hostedZoneAssociations = {
            type = "list",
            member = M.HostedZoneAssociationSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateHostedZoneAssociationInput = {
    type = "structure",
    members = {
        hostedZoneAssociationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
    },
}

M.UpdateHostedZoneAssociationOutput = {
    type = "structure",
    members = {
        id = {
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
        hostedZoneId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        hostedZoneName = {
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
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
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
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetManagedFirewallDomainListInput = {
    type = "structure",
    members = {
        managedFirewallDomainListId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetManagedFirewallDomainListOutput = {
    type = "structure",
    members = {
        description = {
            type = "string",
        },
        id = {
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
        managedListType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListManagedFirewallDomainListsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "max_results",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "next_token",
            },
        },
        managedFirewallDomainListType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ManagedFirewallDomainListsItem = {
    type = "structure",
    members = {
        description = {
            type = "string",
        },
        id = {
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
        managedListType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListManagedFirewallDomainListsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        managedFirewallDomainLists = {
            type = "list",
            member = M.ManagedFirewallDomainListsItem,
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

M.UntagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
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
