local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.iotsecuretunneling"

local M = {}

M.CloseTunnelInput = schema.new({
    id = id.from(_N, "CloseTunnelInput"),
    type = "structure",
    members = {
        tunnelId = schema.new({
            id = id.from(_N, "CloseTunnelInput", "tunnelId"),
            type = "string",
            name = "tunnelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        delete = schema.new({
            id = id.from(_N, "CloseTunnelInput", "delete"),
            type = "boolean",
            name = "delete",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
                [traits.HTTP_QUERY] = { name = "delete" },
            },
        }),
    },
})

M.CloseTunnelOutput = schema.new({
    id = id.from(_N, "CloseTunnelOutput"),
    type = "structure",
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ConnectionState = schema.new({
    id = id.from(_N, "ConnectionState"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "ConnectionState", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "ConnectionState", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeTunnelInput = schema.new({
    id = id.from(_N, "DescribeTunnelInput"),
    type = "structure",
    members = {
        tunnelId = schema.new({
            id = id.from(_N, "DescribeTunnelInput", "tunnelId"),
            type = "string",
            name = "tunnelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DestinationConfig = schema.new({
    id = id.from(_N, "DestinationConfig"),
    type = "structure",
    members = {
        thingName = schema.new({
            id = id.from(_N, "DestinationConfig", "thingName"),
            type = "string",
            name = "thingName",
            target_id = prelude.String.id,
        }),
        services = schema.new({
            id = id.from(_N, "DestinationConfig", "services"),
            type = "list",
            name = "services",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "Tag", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "Tag", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TimeoutConfig = schema.new({
    id = id.from(_N, "TimeoutConfig"),
    type = "structure",
    members = {
        maxLifetimeTimeoutMinutes = schema.new({
            id = id.from(_N, "TimeoutConfig", "maxLifetimeTimeoutMinutes"),
            type = "integer",
            name = "maxLifetimeTimeoutMinutes",
            target_id = prelude.Integer.id,
        }),
    },
})

M.Tunnel = schema.new({
    id = id.from(_N, "Tunnel"),
    type = "structure",
    members = {
        tunnelId = schema.new({
            id = id.from(_N, "Tunnel", "tunnelId"),
            type = "string",
            name = "tunnelId",
            target_id = prelude.String.id,
        }),
        tunnelArn = schema.new({
            id = id.from(_N, "Tunnel", "tunnelArn"),
            type = "string",
            name = "tunnelArn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "Tunnel", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        sourceConnectionState = schema.new({
            id = id.from(_N, "Tunnel", "sourceConnectionState"),
            type = "structure",
            name = "sourceConnectionState",
            target_id = id.from(_N, "ConnectionState"),
            target = M.ConnectionState,
        }),
        destinationConnectionState = schema.new({
            id = id.from(_N, "Tunnel", "destinationConnectionState"),
            type = "structure",
            name = "destinationConnectionState",
            target_id = id.from(_N, "ConnectionState"),
            target = M.ConnectionState,
        }),
        description = schema.new({
            id = id.from(_N, "Tunnel", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        destinationConfig = schema.new({
            id = id.from(_N, "Tunnel", "destinationConfig"),
            type = "structure",
            name = "destinationConfig",
            target_id = id.from(_N, "DestinationConfig"),
            target = M.DestinationConfig,
        }),
        timeoutConfig = schema.new({
            id = id.from(_N, "Tunnel", "timeoutConfig"),
            type = "structure",
            name = "timeoutConfig",
            target_id = id.from(_N, "TimeoutConfig"),
            target = M.TimeoutConfig,
        }),
        tags = schema.new({
            id = id.from(_N, "Tunnel", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Tunnel", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "Tunnel", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeTunnelOutput = schema.new({
    id = id.from(_N, "DescribeTunnelOutput"),
    type = "structure",
    members = {
        tunnel = schema.new({
            id = id.from(_N, "DescribeTunnelOutput", "tunnel"),
            type = "structure",
            name = "tunnel",
            target_id = id.from(_N, "Tunnel"),
            target = M.Tunnel,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "resourceArn" },
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceOutput"),
    type = "structure",
    members = {
        tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.ListTunnelsInput = schema.new({
    id = id.from(_N, "ListTunnelsInput"),
    type = "structure",
    members = {
        thingName = schema.new({
            id = id.from(_N, "ListTunnelsInput", "thingName"),
            type = "string",
            name = "thingName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "thingName" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListTunnelsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTunnelsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.TunnelSummary = schema.new({
    id = id.from(_N, "TunnelSummary"),
    type = "structure",
    members = {
        tunnelId = schema.new({
            id = id.from(_N, "TunnelSummary", "tunnelId"),
            type = "string",
            name = "tunnelId",
            target_id = prelude.String.id,
        }),
        tunnelArn = schema.new({
            id = id.from(_N, "TunnelSummary", "tunnelArn"),
            type = "string",
            name = "tunnelArn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "TunnelSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "TunnelSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "TunnelSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "TunnelSummary", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListTunnelsOutput = schema.new({
    id = id.from(_N, "ListTunnelsOutput"),
    type = "structure",
    members = {
        tunnelSummaries = schema.new({
            id = id.from(_N, "ListTunnelsOutput", "tunnelSummaries"),
            type = "list",
            name = "tunnelSummaries",
            target_id = prelude.Document.id,
            list_member = M.TunnelSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTunnelsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.LimitExceededException = schema.new({
    id = id.from(_N, "LimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "LimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.OpenTunnelInput = schema.new({
    id = id.from(_N, "OpenTunnelInput"),
    type = "structure",
    members = {
        description = schema.new({
            id = id.from(_N, "OpenTunnelInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "OpenTunnelInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        destinationConfig = schema.new({
            id = id.from(_N, "OpenTunnelInput", "destinationConfig"),
            type = "structure",
            name = "destinationConfig",
            target_id = id.from(_N, "DestinationConfig"),
            target = M.DestinationConfig,
        }),
        timeoutConfig = schema.new({
            id = id.from(_N, "OpenTunnelInput", "timeoutConfig"),
            type = "structure",
            name = "timeoutConfig",
            target_id = id.from(_N, "TimeoutConfig"),
            target = M.TimeoutConfig,
        }),
    },
})

M.OpenTunnelOutput = schema.new({
    id = id.from(_N, "OpenTunnelOutput"),
    type = "structure",
    members = {
        tunnelId = schema.new({
            id = id.from(_N, "OpenTunnelOutput", "tunnelId"),
            type = "string",
            name = "tunnelId",
            target_id = prelude.String.id,
        }),
        tunnelArn = schema.new({
            id = id.from(_N, "OpenTunnelOutput", "tunnelArn"),
            type = "string",
            name = "tunnelArn",
            target_id = prelude.String.id,
        }),
        sourceAccessToken = schema.new({
            id = id.from(_N, "OpenTunnelOutput", "sourceAccessToken"),
            type = "string",
            name = "sourceAccessToken",
            target_id = prelude.String.id,
        }),
        destinationAccessToken = schema.new({
            id = id.from(_N, "OpenTunnelOutput", "destinationAccessToken"),
            type = "string",
            name = "destinationAccessToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RotateTunnelAccessTokenInput = schema.new({
    id = id.from(_N, "RotateTunnelAccessTokenInput"),
    type = "structure",
    members = {
        tunnelId = schema.new({
            id = id.from(_N, "RotateTunnelAccessTokenInput", "tunnelId"),
            type = "string",
            name = "tunnelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientMode = schema.new({
            id = id.from(_N, "RotateTunnelAccessTokenInput", "clientMode"),
            type = "string",
            name = "clientMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destinationConfig = schema.new({
            id = id.from(_N, "RotateTunnelAccessTokenInput", "destinationConfig"),
            type = "structure",
            name = "destinationConfig",
            target_id = id.from(_N, "DestinationConfig"),
            target = M.DestinationConfig,
        }),
    },
})

M.RotateTunnelAccessTokenOutput = schema.new({
    id = id.from(_N, "RotateTunnelAccessTokenOutput"),
    type = "structure",
    members = {
        tunnelArn = schema.new({
            id = id.from(_N, "RotateTunnelAccessTokenOutput", "tunnelArn"),
            type = "string",
            name = "tunnelArn",
            target_id = prelude.String.id,
        }),
        sourceAccessToken = schema.new({
            id = id.from(_N, "RotateTunnelAccessTokenOutput", "sourceAccessToken"),
            type = "string",
            name = "sourceAccessToken",
            target_id = prelude.String.id,
        }),
        destinationAccessToken = schema.new({
            id = id.from(_N, "RotateTunnelAccessTokenOutput", "destinationAccessToken"),
            type = "string",
            name = "destinationAccessToken",
            target_id = prelude.String.id,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "TagResourceInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceOutput"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "tagKeys"),
            type = "list",
            name = "tagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

return M
