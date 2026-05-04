local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Challenge = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        ConnectorArn = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        Password = {
            type = "string",
        },
    },
}

M.ChallengeMetadata = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        ConnectorArn = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ChallengeMetadataSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        ConnectorArn = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateChallengeInput = {
    type = "structure",
    members = {
        ConnectorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateChallengeOutput = {
    type = "structure",
    members = {
        Challenge = M.Challenge,
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
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
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
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
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QuotaCode = {
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
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    CA_CERT_VALIDITY_TOO_SHORT = "CA_CERT_VALIDITY_TOO_SHORT",
    INVALID_CA_USAGE_MODE = "INVALID_CA_USAGE_MODE",
    INVALID_CONNECTOR_TYPE = "INVALID_CONNECTOR_TYPE",
    INVALID_STATE = "INVALID_STATE",
    NO_CLIENT_TOKEN = "NO_CLIENT_TOKEN",
    UNKNOWN_OPERATION = "UNKNOWN_OPERATION",
    OTHER = "OTHER",
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Reason = {
            type = "string",
        },
    },
}

M.DeleteChallengeInput = {
    type = "structure",
    members = {
        ChallengeArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteChallengeOutput = {
    type = "structure",
}

M.GetChallengeMetadataInput = {
    type = "structure",
    members = {
        ChallengeArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetChallengeMetadataOutput = {
    type = "structure",
    members = {
        ChallengeMetadata = M.ChallengeMetadata,
    },
}

M.GetChallengePasswordInput = {
    type = "structure",
    members = {
        ChallengeArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetChallengePasswordOutput = {
    type = "structure",
    members = {
        Password = {
            type = "string",
        },
    },
}

M.ListChallengeMetadataInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        ConnectorArn = {
            type = "string",
            traits = {
                http_query = "ConnectorArn",
                required = true,
            },
        },
    },
}

M.ListChallengeMetadataOutput = {
    type = "structure",
    members = {
        Challenges = {
            type = "list",
            member = M.ChallengeMetadataSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.IntuneConfiguration = {
    type = "structure",
    members = {
        AzureApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MobileDeviceManagement = {
    type = "union",
    members = {
        Intune = M.IntuneConfiguration,
    },
}

M.OpenIdConfiguration = {
    type = "structure",
    members = {
        Issuer = {
            type = "string",
        },
        Subject = {
            type = "string",
        },
        Audience = {
            type = "string",
        },
    },
}

M.ConnectorStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.ConnectorStatusReason = {
    INTERNAL_FAILURE = "INTERNAL_FAILURE",
    PRIVATECA_ACCESS_DENIED = "PRIVATECA_ACCESS_DENIED",
    PRIVATECA_INVALID_STATE = "PRIVATECA_INVALID_STATE",
    PRIVATECA_RESOURCE_NOT_FOUND = "PRIVATECA_RESOURCE_NOT_FOUND",
    VPC_ENDPOINT_RESOURCE_NOT_FOUND = "VPC_ENDPOINT_RESOURCE_NOT_FOUND",
    VPC_ENDPOINT_DNS_ENTRIES_NOT_FOUND = "VPC_ENDPOINT_DNS_ENTRIES_NOT_FOUND",
}

M.ConnectorType = {
    GENERAL_PURPOSE = "GENERAL_PURPOSE",
    INTUNE = "INTUNE",
}

M.Connector = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CertificateAuthorityArn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        MobileDeviceManagement = M.MobileDeviceManagement,
        OpenIdConfiguration = M.OpenIdConfiguration,
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        Endpoint = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ConnectorSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CertificateAuthorityArn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        MobileDeviceManagement = M.MobileDeviceManagement,
        OpenIdConfiguration = M.OpenIdConfiguration,
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        Endpoint = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.CreateConnectorInput = {
    type = "structure",
    members = {
        CertificateAuthorityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MobileDeviceManagement = M.MobileDeviceManagement,
        VpcEndpointId = {
            type = "string",
        },
        ClientToken = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateConnectorOutput = {
    type = "structure",
    members = {
        ConnectorArn = {
            type = "string",
        },
    },
}

M.DeleteConnectorInput = {
    type = "structure",
    members = {
        ConnectorArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConnectorOutput = {
    type = "structure",
}

M.GetConnectorInput = {
    type = "structure",
    members = {
        ConnectorArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConnectorOutput = {
    type = "structure",
    members = {
        Connector = M.Connector,
    },
}

M.ListConnectorsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListConnectorsOutput = {
    type = "structure",
    members = {
        Connectors = {
            type = "list",
            member = M.ConnectorSummary,
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

return M
