local M = {}

M.ClientMode = {
    SOURCE = "SOURCE",
    DESTINATION = "DESTINATION",
    ALL = "ALL",
}

M.CloseTunnelInput = {
    type = "structure",
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

M.ConnectionStatus = {
    CONNECTED = "CONNECTED",
    DISCONNECTED = "DISCONNECTED",
}

M.ConnectionState = {
    type = "structure",
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
    members = {
        maxLifetimeTimeoutMinutes = {
            type = "integer",
        },
    },
}

M.Tunnel = {
    type = "structure",
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
    members = {
        tunnel = M.Tunnel,
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
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
    members = {
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListTunnelsInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OpenTunnelInput = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

return M
