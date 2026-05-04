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
    id = "CreateAccessSourceInput",
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
    id = "CreateAccessSourceOutput",
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
        },
        quotaCode = {
            type = "string",
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
    UNKNOWN_OPERATION = "UNKNOWN_OPERATION",
    CANNOT_PARSE = "CANNOT_PARSE",
    FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED",
    OTHER = "OTHER",
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

M.DeleteAccessSourceInput = {
    type = "structure",
    id = "DeleteAccessSourceInput",
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
    id = "DeleteAccessSourceOutput",
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
    id = "GetAccessSourceInput",
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
    id = "GetAccessSourceOutput",
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
    id = "ListAccessSourcesInput",
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
    id = "AccessSourcesItem",
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
    id = "ListAccessSourcesOutput",
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
    id = "UpdateAccessSourceInput",
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
    id = "UpdateAccessSourceOutput",
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
    id = "CreateAccessTokenInput",
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
    id = "CreateAccessTokenOutput",
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
    id = "DeleteAccessTokenInput",
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
    id = "DeleteAccessTokenOutput",
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
    id = "GetAccessTokenInput",
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
    id = "GetAccessTokenOutput",
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
    id = "ListAccessTokensInput",
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
    id = "AccessTokenItem",
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
    id = "ListAccessTokensOutput",
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
    id = "UpdateAccessTokenInput",
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
    id = "UpdateAccessTokenOutput",
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
    id = "AssociateHostedZoneInput",
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
    id = "AssociateHostedZoneOutput",
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
    id = "BatchCreateFirewallRuleInputItem",
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
    id = "BatchCreateFirewallRuleInput",
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
    id = "BatchCreateFirewallRuleResult",
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
    id = "BatchCreateFirewallRuleOutputItem",
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
    id = "BatchCreateFirewallRuleOutput",
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
    id = "BatchDeleteFirewallRuleInputItem",
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
    id = "BatchDeleteFirewallRuleInput",
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
    id = "BatchDeleteFirewallRuleResult",
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
    id = "BatchDeleteFirewallRuleOutputItem",
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
    id = "BatchDeleteFirewallRuleOutput",
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
    id = "BatchUpdateFirewallRuleInputItem",
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
    id = "BatchUpdateFirewallRuleInput",
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
    id = "BatchUpdateFirewallRuleResult",
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
    id = "BatchUpdateFirewallRuleOutputItem",
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
    id = "BatchUpdateFirewallRuleOutput",
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
    id = "CreateDNSViewInput",
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
    id = "CreateDNSViewOutput",
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
    id = "CreateFirewallDomainListInput",
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
    id = "CreateFirewallDomainListOutput",
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
    id = "CreateFirewallRuleInput",
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
    id = "CreateFirewallRuleOutput",
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
    id = "CreateGlobalResolverInput",
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
    id = "CreateGlobalResolverOutput",
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
    id = "DeleteDNSViewInput",
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
    id = "DeleteDNSViewOutput",
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
    id = "DeleteFirewallDomainListInput",
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
    id = "DeleteFirewallDomainListOutput",
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
    id = "DeleteFirewallRuleInput",
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
    id = "DeleteFirewallRuleOutput",
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
    id = "DeleteGlobalResolverInput",
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
    id = "DeleteGlobalResolverOutput",
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
    id = "DisableDNSViewInput",
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
    id = "DisableDNSViewOutput",
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
    id = "DisassociateHostedZoneInput",
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
    id = "DisassociateHostedZoneOutput",
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
    id = "EnableDNSViewInput",
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
    id = "EnableDNSViewOutput",
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
    id = "GetDNSViewInput",
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
    id = "GetDNSViewOutput",
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
    id = "ListDNSViewsInput",
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
    id = "DNSViewSummary",
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
    id = "ListDNSViewsOutput",
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
    id = "UpdateDNSViewInput",
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
    id = "UpdateDNSViewOutput",
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
    id = "GetFirewallDomainListInput",
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
    id = "GetFirewallDomainListOutput",
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
    id = "ImportFirewallDomainsInput",
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
    id = "ImportFirewallDomainsOutput",
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
    id = "ListFirewallDomainListsInput",
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
    id = "FirewallDomainListsItem",
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
    id = "ListFirewallDomainListsOutput",
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
    id = "ListFirewallDomainsInput",
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
    id = "ListFirewallDomainsOutput",
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
    id = "UpdateFirewallDomainsInput",
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
    id = "UpdateFirewallDomainsOutput",
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
    id = "GetFirewallRuleInput",
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
    id = "GetFirewallRuleOutput",
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
    id = "ListFirewallRulesInput",
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
    id = "FirewallRulesItem",
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
    id = "ListFirewallRulesOutput",
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
    id = "UpdateFirewallRuleInput",
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
    id = "UpdateFirewallRuleOutput",
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
    id = "GetGlobalResolverInput",
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
    id = "GetGlobalResolverOutput",
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
    id = "ListGlobalResolversInput",
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
    id = "GlobalResolversItem",
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
    id = "ListGlobalResolversOutput",
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
    id = "UpdateGlobalResolverInput",
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
    id = "UpdateGlobalResolverOutput",
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
    id = "GetHostedZoneAssociationInput",
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
    id = "GetHostedZoneAssociationOutput",
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
    id = "ListHostedZoneAssociationsInput",
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
    id = "HostedZoneAssociationSummary",
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
    id = "ListHostedZoneAssociationsOutput",
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
    id = "UpdateHostedZoneAssociationInput",
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
    id = "UpdateHostedZoneAssociationOutput",
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
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
    id = "GetManagedFirewallDomainListInput",
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
    id = "GetManagedFirewallDomainListOutput",
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
    id = "ListManagedFirewallDomainListsInput",
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
    id = "ManagedFirewallDomainListsItem",
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
    id = "ListManagedFirewallDomainListsOutput",
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
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

return M
