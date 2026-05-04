local M = {}

M.DeregisterSubscriptionProviderInput = {
    type = "structure",
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
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
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
        },
    },
}

M.ValidationException = {
    type = "structure",
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
    members = {
        Name = {
            type = "string",
        },
        Values = {
            type = "list",
            member_type = "string",
        },
        Operator = {
            type = "string",
        },
    },
}

M.GetRegisteredSubscriptionProviderInput = {
    type = "structure",
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
    members = {
        SourceRegions = {
            type = "list",
            member_type = "string",
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
    members = {
        LinuxSubscriptionsDiscovery = {
            type = "string",
        },
        LinuxSubscriptionsDiscoverySettings = {
            type = "structure",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        HomeRegions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.Instance = {
    type = "structure",
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
            member_type = "string",
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
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLinuxSubscriptionInstancesOutput = {
    type = "structure",
    members = {
        Instances = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLinuxSubscriptionsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Subscription = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        InstanceCount = {
            type = "number",
        },
    },
}

M.ListLinuxSubscriptionsOutput = {
    type = "structure",
    members = {
        Subscriptions = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRegisteredSubscriptionProvidersInput = {
    type = "structure",
    members = {
        SubscriptionProviderSources = {
            type = "list",
            member_type = "string",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RegisteredSubscriptionProvider = {
    type = "structure",
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
    members = {
        RegisteredSubscriptionProviders = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
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

M.RegisterSubscriptionProviderInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.RegisterSubscriptionProviderOutput = {
    type = "structure",
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

M.UpdateServiceSettingsInput = {
    type = "structure",
    members = {
        LinuxSubscriptionsDiscovery = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LinuxSubscriptionsDiscoverySettings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AllowUpdate = {
            type = "boolean",
        },
    },
}

M.UpdateServiceSettingsOutput = {
    type = "structure",
    members = {
        LinuxSubscriptionsDiscovery = {
            type = "string",
        },
        LinuxSubscriptionsDiscoverySettings = {
            type = "structure",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        HomeRegions = {
            type = "list",
            member_type = "string",
        },
    },
}

return M
