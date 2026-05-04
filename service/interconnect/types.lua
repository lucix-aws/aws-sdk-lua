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
    members = {
        connection = M.Connection,
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
        },
    },
}

M.CreateConnectionOutput = {
    type = "structure",
    members = {
        connection = M.Connection,
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
        connection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Connection }),
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
        connection = M.Connection,
    },
}

M.ListConnectionsInput = {
    type = "structure",
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
        connection = M.Connection,
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
        environment = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Environment }),
    },
}

M.ListEnvironmentsInput = {
    type = "structure",
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
            key = { type = "string" },
            value = { type = "string" },
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
}

return M
