local M = {}

M.DeregisterSubscriptionProviderInput = {
    type = "structure",
    id = "DeregisterSubscriptionProviderInput",
    members = {
        SubscriptionProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeregisterSubscriptionProviderOutput = {
    type = "structure",
    id = "DeregisterSubscriptionProviderOutput",
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
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
        },
    },
}

M.Operator = {
    EQUAL = "Equal",
    NOT_EQUAL = "NotEqual",
    CONTAINS = "Contains",
}

M.Filter = {
    type = "structure",
    id = "Filter",
    members = {
        Name = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
        Operator = {
            type = "string",
        },
    },
}

M.GetRegisteredSubscriptionProviderInput = {
    type = "structure",
    id = "GetRegisteredSubscriptionProviderInput",
    members = {
        SubscriptionProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SubscriptionProviderSource = {
    RedHat = "RedHat",
}

M.SubscriptionProviderStatus = {
    ACTIVE = "ACTIVE",
    INVALID = "INVALID",
    PENDING = "PENDING",
}

M.GetRegisteredSubscriptionProviderOutput = {
    type = "structure",
    id = "GetRegisteredSubscriptionProviderOutput",
    members = {
        SubscriptionProviderArn = {
            type = "string",
        },
        SubscriptionProviderSource = {
            type = "string",
        },
        SecretArn = {
            type = "string",
        },
        SubscriptionProviderStatus = {
            type = "string",
        },
        SubscriptionProviderStatusMessage = {
            type = "string",
        },
        LastSuccessfulDataRetrievalTime = {
            type = "string",
        },
    },
}

M.GetServiceSettingsInput = {
    type = "structure",
    id = "GetServiceSettingsInput",
}

M.LinuxSubscriptionsDiscovery = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.OrganizationIntegration = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.LinuxSubscriptionsDiscoverySettings = {
    type = "structure",
    id = "LinuxSubscriptionsDiscoverySettings",
    members = {
        SourceRegions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        OrganizationIntegration = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Status = {
    InProgress = "InProgress",
    Completed = "Completed",
    Successful = "Successful",
    Failed = "Failed",
}

M.GetServiceSettingsOutput = {
    type = "structure",
    id = "GetServiceSettingsOutput",
    members = {
        LinuxSubscriptionsDiscovery = {
            type = "string",
        },
        LinuxSubscriptionsDiscoverySettings = M.LinuxSubscriptionsDiscoverySettings,
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        HomeRegions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Instance = {
    type = "structure",
    id = "Instance",
    members = {
        AmiId = {
            type = "string",
        },
        InstanceID = {
            type = "string",
        },
        InstanceType = {
            type = "string",
        },
        AccountID = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        UsageOperation = {
            type = "string",
        },
        ProductCode = {
            type = "list",
            member = { type = "string" },
        },
        LastUpdatedTime = {
            type = "string",
        },
        SubscriptionName = {
            type = "string",
        },
        OsVersion = {
            type = "string",
        },
        SubscriptionProviderCreateTime = {
            type = "string",
        },
        SubscriptionProviderUpdateTime = {
            type = "string",
        },
        DualSubscription = {
            type = "string",
        },
        RegisteredWithSubscriptionProvider = {
            type = "string",
        },
    },
}

M.ListLinuxSubscriptionInstancesInput = {
    type = "structure",
    id = "ListLinuxSubscriptionInstancesInput",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLinuxSubscriptionInstancesOutput = {
    type = "structure",
    id = "ListLinuxSubscriptionInstancesOutput",
    members = {
        Instances = {
            type = "list",
            member = M.Instance,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLinuxSubscriptionsInput = {
    type = "structure",
    id = "ListLinuxSubscriptionsInput",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Subscription = {
    type = "structure",
    id = "Subscription",
    members = {
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        InstanceCount = {
            type = "long",
        },
    },
}

M.ListLinuxSubscriptionsOutput = {
    type = "structure",
    id = "ListLinuxSubscriptionsOutput",
    members = {
        Subscriptions = {
            type = "list",
            member = M.Subscription,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRegisteredSubscriptionProvidersInput = {
    type = "structure",
    id = "ListRegisteredSubscriptionProvidersInput",
    members = {
        SubscriptionProviderSources = {
            type = "list",
            member = { type = "string" },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RegisteredSubscriptionProvider = {
    type = "structure",
    id = "RegisteredSubscriptionProvider",
    members = {
        SubscriptionProviderArn = {
            type = "string",
        },
        SubscriptionProviderSource = {
            type = "string",
        },
        SecretArn = {
            type = "string",
        },
        SubscriptionProviderStatus = {
            type = "string",
        },
        SubscriptionProviderStatusMessage = {
            type = "string",
        },
        LastSuccessfulDataRetrievalTime = {
            type = "string",
        },
    },
}

M.ListRegisteredSubscriptionProvidersOutput = {
    type = "structure",
    id = "ListRegisteredSubscriptionProvidersOutput",
    members = {
        RegisteredSubscriptionProviders = {
            type = "list",
            member = M.RegisteredSubscriptionProvider,
        },
        NextToken = {
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

M.RegisterSubscriptionProviderInput = {
    type = "structure",
    id = "RegisterSubscriptionProviderInput",
    members = {
        SubscriptionProviderSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.RegisterSubscriptionProviderOutput = {
    type = "structure",
    id = "RegisterSubscriptionProviderOutput",
    members = {
        SubscriptionProviderSource = {
            type = "string",
        },
        SubscriptionProviderArn = {
            type = "string",
        },
        SubscriptionProviderStatus = {
            type = "string",
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

M.UpdateServiceSettingsInput = {
    type = "structure",
    id = "UpdateServiceSettingsInput",
    members = {
        LinuxSubscriptionsDiscovery = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LinuxSubscriptionsDiscoverySettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LinuxSubscriptionsDiscoverySettings }),
        AllowUpdate = {
            type = "boolean",
        },
    },
}

M.UpdateServiceSettingsOutput = {
    type = "structure",
    id = "UpdateServiceSettingsOutput",
    members = {
        LinuxSubscriptionsDiscovery = {
            type = "string",
        },
        LinuxSubscriptionsDiscoverySettings = M.LinuxSubscriptionsDiscoverySettings,
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        HomeRegions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

return M
