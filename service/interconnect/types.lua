local M = {}

M.AttachPoint = {
    type = "union",
    members = {
        directConnectGateway = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.AcceptConnectionProposalInput = {
    type = "structure",
    members = {
        attachPoint = {
            type = "union",
            traits = {
                required = true,
            },
        },
        activationKey = {
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
        clientToken = {
            type = "string",
        },
    },
}

M.Provider = {
    type = "union",
    members = {
        cloudServiceProvider = {
            type = "string",
        },
        lastMileProvider = {
            type = "string",
        },
    },
}

M.ConnectionState = {
    AVAILABLE = "available",
    REQUESTED = "requested",
    PENDING = "pending",
    DOWN = "down",
    DELETING = "deleting",
    DELETED = "deleted",
    FAILED = "failed",
    UPDATING = "updating",
}

M.Connection = {
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
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bandwidth = {
            type = "string",
            traits = {
                required = true,
            },
        },
        attachPoint = {
            type = "union",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provider = {
            type = "union",
            traits = {
                required = true,
            },
        },
        location = {
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
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sharedId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        billingTier = {
            type = "number",
        },
        ownerAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        activationKey = {
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

M.AcceptConnectionProposalOutput = {
    type = "structure",
    members = {
        connection = {
            type = "structure",
        },
    },
}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InterconnectClientException = {
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

M.InterconnectServerException = {
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

M.InterconnectValidationException = {
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

M.AttachPointType = {
    DirectConnectGateway = "DirectConnectGateway",
}

M.AttachPointDescriptor = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identifier = {
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

M.Bandwidths = {
    type = "structure",
    members = {
        available = {
            type = "list",
            member_type = "string",
        },
        supported = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RemoteAccountIdentifier = {
    type = "union",
    members = {
        identifier = {
            type = "string",
        },
    },
}

M.CreateConnectionInput = {
    type = "structure",
    members = {
        description = {
            type = "string",
        },
        bandwidth = {
            type = "string",
            traits = {
                required = true,
            },
        },
        attachPoint = {
            type = "union",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        remoteAccount = {
            type = "union",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.CreateConnectionOutput = {
    type = "structure",
    members = {
        connection = {
            type = "structure",
        },
    },
}

M.DeleteConnectionInput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.DeleteConnectionOutput = {
    type = "structure",
    members = {
        connection = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetConnectionInput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetConnectionOutput = {
    type = "structure",
    members = {
        connection = {
            type = "structure",
        },
    },
}

M.ListConnectionsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        state = {
            type = "string",
        },
        environmentId = {
            type = "string",
        },
        provider = {
            type = "union",
        },
        attachPoint = {
            type = "union",
        },
    },
}

M.ConnectionSummary = {
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
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bandwidth = {
            type = "string",
            traits = {
                required = true,
            },
        },
        attachPoint = {
            type = "union",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provider = {
            type = "union",
            traits = {
                required = true,
            },
        },
        location = {
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
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sharedId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        billingTier = {
            type = "number",
        },
    },
}

M.ListConnectionsOutput = {
    type = "structure",
    members = {
        connections = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateConnectionInput = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        bandwidth = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateConnectionOutput = {
    type = "structure",
    members = {
        connection = {
            type = "structure",
        },
    },
}

M.DescribeConnectionProposalInput = {
    type = "structure",
    members = {
        activationKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeConnectionProposalOutput = {
    type = "structure",
    members = {
        bandwidth = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provider = {
            type = "union",
            traits = {
                required = true,
            },
        },
        location = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RemoteAccountIdentifierType = {
    ACCOUNT = "account",
    EMAIL = "email",
}

M.EnvironmentState = {
    AVAILABLE = "available",
    LIMITED = "limited",
    UNAVAILABLE = "unavailable",
}

M.Environment = {
    type = "structure",
    members = {
        provider = {
            type = "union",
            traits = {
                required = true,
            },
        },
        location = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bandwidths = {
            type = "structure",
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
        activationPageUrl = {
            type = "string",
        },
        remoteIdentifierType = {
            type = "string",
        },
    },
}

M.GetEnvironmentInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetEnvironmentOutput = {
    type = "structure",
    members = {
        environment = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListEnvironmentsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        provider = {
            type = "union",
        },
        location = {
            type = "string",
        },
    },
}

M.ListEnvironmentsOutput = {
    type = "structure",
    members = {
        environments = {
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

M.ListAttachPointsInput = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAttachPointsOutput = {
    type = "structure",
    members = {
        attachPoints = {
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

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        arn = {
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
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
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member_type = "string",
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
