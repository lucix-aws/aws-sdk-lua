local M = {}

M.ClientMode = {
    SOURCE = "SOURCE",
    DESTINATION = "DESTINATION",
    ALL = "ALL",
}

M.CloseTunnelInput = {
    type = "structure",
    id = "CloseTunnelInput",
    members = {
        tunnelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        delete = {
            type = "boolean",
            traits = {
                default = nil,
                http_query = "delete",
            },
        },
    },
}

M.CloseTunnelOutput = {
    type = "structure",
    id = "CloseTunnelOutput",
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

M.ConnectionStatus = {
    CONNECTED = "CONNECTED",
    DISCONNECTED = "DISCONNECTED",
}

M.ConnectionState = {
    type = "structure",
    id = "ConnectionState",
    members = {
        status = {
            type = "string",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.DescribeTunnelInput = {
    type = "structure",
    id = "DescribeTunnelInput",
    members = {
        tunnelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DestinationConfig = {
    type = "structure",
    id = "DestinationConfig",
    members = {
        thingName = {
            type = "string",
        },
        services = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TunnelStatus = {
    OPEN = "OPEN",
    CLOSED = "CLOSED",
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        key = {
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

M.TimeoutConfig = {
    type = "structure",
    id = "TimeoutConfig",
    members = {
        maxLifetimeTimeoutMinutes = {
            type = "integer",
        },
    },
}

M.Tunnel = {
    type = "structure",
    id = "Tunnel",
    members = {
        tunnelId = {
            type = "string",
        },
        tunnelArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        sourceConnectionState = M.ConnectionState,
        destinationConnectionState = M.ConnectionState,
        description = {
            type = "string",
        },
        destinationConfig = M.DestinationConfig,
        timeoutConfig = M.TimeoutConfig,
        tags = {
            type = "list",
            member = M.Tag,
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.DescribeTunnelOutput = {
    type = "structure",
    id = "DescribeTunnelOutput",
    members = {
        tunnel = M.Tunnel,
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
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
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListTunnelsInput = {
    type = "structure",
    id = "ListTunnelsInput",
    members = {
        thingName = {
            type = "string",
            traits = {
                http_query = "thingName",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.TunnelSummary = {
    type = "structure",
    id = "TunnelSummary",
    members = {
        tunnelId = {
            type = "string",
        },
        tunnelArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ListTunnelsOutput = {
    type = "structure",
    id = "ListTunnelsOutput",
    members = {
        tunnelSummaries = {
            type = "list",
            member = M.TunnelSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OpenTunnelInput = {
    type = "structure",
    id = "OpenTunnelInput",
    members = {
        description = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        destinationConfig = M.DestinationConfig,
        timeoutConfig = M.TimeoutConfig,
    },
}

M.OpenTunnelOutput = {
    type = "structure",
    id = "OpenTunnelOutput",
    members = {
        tunnelId = {
            type = "string",
        },
        tunnelArn = {
            type = "string",
        },
        sourceAccessToken = {
            type = "string",
        },
        destinationAccessToken = {
            type = "string",
        },
    },
}

M.RotateTunnelAccessTokenInput = {
    type = "structure",
    id = "RotateTunnelAccessTokenInput",
    members = {
        tunnelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationConfig = M.DestinationConfig,
    },
}

M.RotateTunnelAccessTokenOutput = {
    type = "structure",
    id = "RotateTunnelAccessTokenOutput",
    members = {
        tunnelArn = {
            type = "string",
        },
        sourceAccessToken = {
            type = "string",
        },
        destinationAccessToken = {
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
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
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
