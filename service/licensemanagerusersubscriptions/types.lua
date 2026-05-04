local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SecretsManagerCredentialsProvider = {
    type = "structure",
    members = {
        SecretId = {
            type = "string",
        },
    },
}

M.CredentialsProvider = {
    type = "union",
    members = {
        SecretsManagerCredentialsProvider = M.SecretsManagerCredentialsProvider,
    },
}

M.DomainNetworkSettings = {
    type = "structure",
    members = {
        Subnets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ActiveDirectorySettings = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
        },
        DomainIpv4List = {
            type = "list",
            member = { type = "string" },
        },
        DomainIpv6List = {
            type = "list",
            member = { type = "string" },
        },
        DomainCredentialsProvider = M.CredentialsProvider,
        DomainNetworkSettings = M.DomainNetworkSettings,
    },
}

M.ActiveDirectoryType = {
    SELF_MANAGED = "SELF_MANAGED",
    AWS_MANAGED = "AWS_MANAGED",
}

M.ActiveDirectoryIdentityProvider = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
        },
        ActiveDirectorySettings = M.ActiveDirectorySettings,
        ActiveDirectoryType = {
            type = "string",
        },
        IsSharedActiveDirectory = {
            type = "boolean",
        },
    },
}

M.IdentityProvider = {
    type = "union",
    members = {
        ActiveDirectoryIdentityProvider = M.ActiveDirectoryIdentityProvider,
    },
}

M.AssociateUserInput = {
    type = "structure",
    members = {
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityProvider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdentityProvider }),
        Domain = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.InstanceUserSummary = {
    type = "structure",
    members = {
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityProvider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdentityProvider }),
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceUserArn = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
        AssociationDate = {
            type = "string",
        },
        DisassociationDate = {
            type = "string",
        },
    },
}

M.AssociateUserOutput = {
    type = "structure",
    members = {
        InstanceUserSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InstanceUserSummary }),
    },
}

M.ConflictException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
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

M.ServiceQuotaExceededException = {
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

M.RdsSalSettings = {
    type = "structure",
    members = {
        RdsSalCredentialsProvider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CredentialsProvider }),
    },
}

M.ServerSettings = {
    type = "union",
    members = {
        RdsSalSettings = M.RdsSalSettings,
    },
}

M.ServerType = {
    RDS_SAL = "RDS_SAL",
}

M.LicenseServerSettings = {
    type = "structure",
    members = {
        ServerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServerSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServerSettings }),
    },
}

M.CreateLicenseServerEndpointInput = {
    type = "structure",
    members = {
        IdentityProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LicenseServerSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LicenseServerSettings }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateLicenseServerEndpointOutput = {
    type = "structure",
    members = {
        IdentityProviderArn = {
            type = "string",
        },
        LicenseServerEndpointArn = {
            type = "string",
        },
    },
}

M.DeleteLicenseServerEndpointInput = {
    type = "structure",
    members = {
        LicenseServerEndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LicenseServerEndpointProvisioningStatus = {
    PROVISIONING = "PROVISIONING",
    PROVISIONING_FAILED = "PROVISIONING_FAILED",
    PROVISIONED = "PROVISIONED",
    DELETING = "DELETING",
    DELETION_FAILED = "DELETION_FAILED",
    DELETED = "DELETED",
}

M.LicenseServerHealthStatus = {
    HEALTHY = "HEALTHY",
    UNHEALTHY = "UNHEALTHY",
    NOT_APPLICABLE = "NOT_APPLICABLE",
}

M.LicenseServer = {
    type = "structure",
    members = {
        ProvisioningStatus = {
            type = "string",
        },
        HealthStatus = {
            type = "string",
        },
        Ipv4Address = {
            type = "string",
        },
        Ipv6Address = {
            type = "string",
        },
    },
}

M.ServerEndpoint = {
    type = "structure",
    members = {
        Endpoint = {
            type = "string",
        },
    },
}

M.LicenseServerEndpoint = {
    type = "structure",
    members = {
        IdentityProviderArn = {
            type = "string",
        },
        ServerType = {
            type = "string",
        },
        ServerEndpoint = M.ServerEndpoint,
        StatusMessage = {
            type = "string",
        },
        LicenseServerEndpointId = {
            type = "string",
        },
        LicenseServerEndpointArn = {
            type = "string",
        },
        LicenseServerEndpointProvisioningStatus = {
            type = "string",
        },
        LicenseServers = {
            type = "list",
            member = M.LicenseServer,
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.DeleteLicenseServerEndpointOutput = {
    type = "structure",
    members = {
        LicenseServerEndpoint = M.LicenseServerEndpoint,
    },
}

M.DeregisterIdentityProviderInput = {
    type = "structure",
    members = {
        IdentityProvider = M.IdentityProvider,
        Product = {
            type = "string",
        },
        IdentityProviderArn = {
            type = "string",
        },
    },
}

M.Settings = {
    type = "structure",
    members = {
        Subnets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        SecurityGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IdentityProviderSummary = {
    type = "structure",
    members = {
        IdentityProvider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdentityProvider }),
        Settings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Settings }),
        Product = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityProviderArn = {
            type = "string",
        },
        FailureMessage = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
    },
}

M.DeregisterIdentityProviderOutput = {
    type = "structure",
    members = {
        IdentityProviderSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdentityProviderSummary }),
    },
}

M.DisassociateUserInput = {
    type = "structure",
    members = {
        Username = {
            type = "string",
        },
        InstanceId = {
            type = "string",
        },
        IdentityProvider = M.IdentityProvider,
        InstanceUserArn = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
    },
}

M.DisassociateUserOutput = {
    type = "structure",
    members = {
        InstanceUserSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InstanceUserSummary }),
    },
}

M.Filter = {
    type = "structure",
    members = {
        Attribute = {
            type = "string",
        },
        Operation = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.InstanceSummary = {
    type = "structure",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Products = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        LastStatusCheckDate = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
        IdentityProvider = M.IdentityProvider,
    },
}

M.ListIdentityProvidersInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListIdentityProvidersOutput = {
    type = "structure",
    members = {
        IdentityProviderSummaries = {
            type = "list",
            member = M.IdentityProviderSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListInstancesInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.ListInstancesOutput = {
    type = "structure",
    members = {
        InstanceSummaries = {
            type = "list",
            member = M.InstanceSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLicenseServerEndpointsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLicenseServerEndpointsOutput = {
    type = "structure",
    members = {
        LicenseServerEndpoints = {
            type = "list",
            member = M.LicenseServerEndpoint,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListProductSubscriptionsInput = {
    type = "structure",
    members = {
        Product = {
            type = "string",
        },
        IdentityProvider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdentityProvider }),
        MaxResults = {
            type = "integer",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ProductUserSummary = {
    type = "structure",
    members = {
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Product = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityProvider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdentityProvider }),
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProductUserArn = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
        SubscriptionStartDate = {
            type = "string",
        },
        SubscriptionEndDate = {
            type = "string",
        },
    },
}

M.ListProductSubscriptionsOutput = {
    type = "structure",
    members = {
        ProductUserSummaries = {
            type = "list",
            member = M.ProductUserSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
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

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListUserAssociationsInput = {
    type = "structure",
    members = {
        InstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityProvider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdentityProvider }),
        MaxResults = {
            type = "integer",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListUserAssociationsOutput = {
    type = "structure",
    members = {
        InstanceUserSummaries = {
            type = "list",
            member = M.InstanceUserSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RegisterIdentityProviderInput = {
    type = "structure",
    members = {
        IdentityProvider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdentityProvider }),
        Product = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Settings = M.Settings,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.RegisterIdentityProviderOutput = {
    type = "structure",
    members = {
        IdentityProviderSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdentityProviderSummary }),
    },
}

M.StartProductSubscriptionInput = {
    type = "structure",
    members = {
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityProvider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdentityProvider }),
        Product = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Domain = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartProductSubscriptionOutput = {
    type = "structure",
    members = {
        ProductUserSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProductUserSummary }),
    },
}

M.StopProductSubscriptionInput = {
    type = "structure",
    members = {
        Username = {
            type = "string",
        },
        IdentityProvider = M.IdentityProvider,
        Product = {
            type = "string",
        },
        ProductUserArn = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
    },
}

M.StopProductSubscriptionOutput = {
    type = "structure",
    members = {
        ProductUserSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProductUserSummary }),
    },
}

M.TagResourceInput = {
    type = "structure",
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
}

M.UpdateSettings = {
    type = "structure",
    members = {
        AddSubnets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        RemoveSubnets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        SecurityGroupId = {
            type = "string",
        },
    },
}

M.UpdateIdentityProviderSettingsInput = {
    type = "structure",
    members = {
        IdentityProvider = M.IdentityProvider,
        Product = {
            type = "string",
        },
        IdentityProviderArn = {
            type = "string",
        },
        UpdateSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UpdateSettings }),
    },
}

M.UpdateIdentityProviderSettingsOutput = {
    type = "structure",
    members = {
        IdentityProviderSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdentityProviderSummary }),
    },
}

return M
