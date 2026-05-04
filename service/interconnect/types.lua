local M = {}

M.AttachPoint = {
    type = "union",
    id = "AttachPoint",
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
    id = "AcceptConnectionProposalInput",
    members = {
        attachPoint = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AttachPoint }),
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
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.Provider = {
    type = "union",
    id = "Provider",
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
    id = "Connection",
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
        attachPoint = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AttachPoint }),
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Provider }),
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
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AcceptConnectionProposalOutput = {
    type = "structure",
    id = "AcceptConnectionProposalOutput",
    members = {
        connection = M.Connection,
    },
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InterconnectClientException = {
    type = "structure",
    id = "InterconnectClientException",
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
    id = "InterconnectServerException",
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
    id = "InterconnectValidationException",
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
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
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

M.AttachPointType = {
    DirectConnectGateway = "DirectConnectGateway",
}

M.AttachPointDescriptor = {
    type = "structure",
    id = "AttachPointDescriptor",
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
    id = "Bandwidths",
    members = {
        available = {
            type = "list",
            member = { type = "string" },
        },
        supported = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RemoteAccountIdentifier = {
    type = "union",
    id = "RemoteAccountIdentifier",
    members = {
        identifier = {
            type = "string",
        },
    },
}

M.CreateConnectionInput = {
    type = "structure",
    id = "CreateConnectionInput",
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
        attachPoint = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AttachPoint }),
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        remoteAccount = M.RemoteAccountIdentifier,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateConnectionOutput = {
    type = "structure",
    id = "CreateConnectionOutput",
    members = {
        connection = M.Connection,
    },
}

M.DeleteConnectionInput = {
    type = "structure",
    id = "DeleteConnectionInput",
    members = {
        identifier = {
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
    },
}

M.DeleteConnectionOutput = {
    type = "structure",
    id = "DeleteConnectionOutput",
    members = {
        connection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Connection }),
    },
}

M.GetConnectionInput = {
    type = "structure",
    id = "GetConnectionInput",
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
    id = "GetConnectionOutput",
    members = {
        connection = M.Connection,
    },
}

M.ListConnectionsInput = {
    type = "structure",
    id = "ListConnectionsInput",
    members = {
        maxResults = {
            type = "integer",
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
        provider = M.Provider,
        attachPoint = M.AttachPoint,
    },
}

M.ConnectionSummary = {
    type = "structure",
    id = "ConnectionSummary",
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
        attachPoint = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AttachPoint }),
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Provider }),
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
            type = "integer",
        },
    },
}

M.ListConnectionsOutput = {
    type = "structure",
    id = "ListConnectionsOutput",
    members = {
        connections = {
            type = "list",
            member = M.ConnectionSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateConnectionInput = {
    type = "structure",
    id = "UpdateConnectionInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateConnectionOutput = {
    type = "structure",
    id = "UpdateConnectionOutput",
    members = {
        connection = M.Connection,
    },
}

M.DescribeConnectionProposalInput = {
    type = "structure",
    id = "DescribeConnectionProposalInput",
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
    id = "DescribeConnectionProposalOutput",
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
        provider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Provider }),
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
    id = "Environment",
    members = {
        provider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Provider }),
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
        bandwidths = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Bandwidths }),
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
    id = "GetEnvironmentInput",
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
    id = "GetEnvironmentOutput",
    members = {
        environment = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Environment }),
    },
}

M.ListEnvironmentsInput = {
    type = "structure",
    id = "ListEnvironmentsInput",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        provider = M.Provider,
        location = {
            type = "string",
        },
    },
}

M.ListEnvironmentsOutput = {
    type = "structure",
    id = "ListEnvironmentsOutput",
    members = {
        environments = {
            type = "list",
            member = M.Environment,
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
    id = "ListAttachPointsInput",
    members = {
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAttachPointsOutput = {
    type = "structure",
    id = "ListAttachPointsOutput",
    members = {
        attachPoints = {
            type = "list",
            member = M.AttachPointDescriptor,
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        arn = {
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
        arn = {
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
