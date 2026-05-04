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
        SecretsManagerCredentialsProvider = {
            type = "structure",
        },
    },
}

M.DomainNetworkSettings = {
    type = "structure",
    members = {
        Subnets = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
        DomainIpv6List = {
            type = "list",
            member_type = "string",
        },
        DomainCredentialsProvider = {
            type = "union",
        },
        DomainNetworkSettings = {
            type = "structure",
        },
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
        ActiveDirectorySettings = {
            type = "structure",
        },
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
        ActiveDirectoryIdentityProvider = {
            type = "structure",
        },
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
        IdentityProvider = {
            type = "union",
            traits = {
                required = true,
            },
        },
        Domain = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        IdentityProvider = {
            type = "union",
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
        InstanceUserSummary = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        RdsSalCredentialsProvider = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.ServerSettings = {
    type = "union",
    members = {
        RdsSalSettings = {
            type = "structure",
        },
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
        ServerSettings = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
        LicenseServerSettings = {
            type = "structure",
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
        ServerEndpoint = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.DeleteLicenseServerEndpointOutput = {
    type = "structure",
    members = {
        LicenseServerEndpoint = {
            type = "structure",
        },
    },
}

M.DeregisterIdentityProviderInput = {
    type = "structure",
    members = {
        IdentityProvider = {
            type = "union",
        },
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
            member_type = "string",
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
        IdentityProvider = {
            type = "union",
            traits = {
                required = true,
            },
        },
        Settings = {
            type = "structure",
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
        IdentityProviderSummary = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        IdentityProvider = {
            type = "union",
        },
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
        InstanceUserSummary = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "string",
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
        IdentityProvider = {
            type = "union",
        },
    },
}

M.ListIdentityProvidersInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        Filters = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListInstancesOutput = {
    type = "structure",
    members = {
        InstanceSummaries = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        Filters = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        IdentityProvider = {
            type = "union",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        Filters = {
            type = "list",
            member_type = "structure",
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
        IdentityProvider = {
            type = "union",
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
            key_type = "string",
            value_type = "string",
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
        IdentityProvider = {
            type = "union",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        Filters = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RegisterIdentityProviderInput = {
    type = "structure",
    members = {
        IdentityProvider = {
            type = "union",
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
        Settings = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.RegisterIdentityProviderOutput = {
    type = "structure",
    members = {
        IdentityProviderSummary = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        IdentityProvider = {
            type = "union",
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
        Domain = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.StartProductSubscriptionOutput = {
    type = "structure",
    members = {
        ProductUserSummary = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StopProductSubscriptionInput = {
    type = "structure",
    members = {
        Username = {
            type = "string",
        },
        IdentityProvider = {
            type = "union",
        },
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
        ProductUserSummary = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
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

M.UpdateSettings = {
    type = "structure",
    members = {
        AddSubnets = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        RemoveSubnets = {
            type = "list",
            member_type = "string",
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
        IdentityProvider = {
            type = "union",
        },
        Product = {
            type = "string",
        },
        IdentityProviderArn = {
            type = "string",
        },
        UpdateSettings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateIdentityProviderSettingsOutput = {
    type = "structure",
    members = {
        IdentityProviderSummary = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

return M
