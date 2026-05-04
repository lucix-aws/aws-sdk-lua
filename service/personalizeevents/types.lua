local M = {}

M.Action = {
    type = "structure",
    id = "Action",
    members = {
        actionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        properties = {
            type = "string",
            traits = {
                media_type = "application/json",
            },
        },
    },
}

M.ActionInteraction = {
    type = "structure",
    id = "ActionInteraction",
    members = {
        actionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userId = {
            type = "string",
        },
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        eventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventId = {
            type = "string",
        },
        recommendationId = {
            type = "string",
        },
        impression = {
            type = "list",
            member = { type = "string" },
        },
        properties = {
            type = "string",
            traits = {
                media_type = "application/json",
            },
        },
    },
}

M.InvalidInputException = {
    type = "structure",
    id = "InvalidInputException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutActionInteractionsInput = {
    type = "structure",
    id = "PutActionInteractionsInput",
    members = {
        trackingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionInteractions = {
            type = "list",
            member = M.ActionInteraction,
            traits = {
                required = true,
            },
        },
    },
}

M.PutActionInteractionsOutput = {
    type = "structure",
    id = "PutActionInteractionsOutput",
}

M.ResourceInUseException = {
    type = "structure",
    id = "ResourceInUseException",
    error = "client",
    members = {
        message = {
            type = "string",
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

M.PutActionsInput = {
    type = "structure",
    id = "PutActionsInput",
    members = {
        datasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actions = {
            type = "list",
            member = M.Action,
            traits = {
                required = true,
            },
        },
    },
}

M.PutActionsOutput = {
    type = "structure",
    id = "PutActionsOutput",
}

M.MetricAttribution = {
    type = "structure",
    id = "MetricAttribution",
    members = {
        eventAttributionSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Event = {
    type = "structure",
    id = "Event",
    members = {
        eventId = {
            type = "string",
        },
        eventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventValue = {
            type = "float",
        },
        itemId = {
            type = "string",
        },
        properties = {
            type = "string",
            traits = {
                media_type = "application/json",
            },
        },
        sentAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        recommendationId = {
            type = "string",
        },
        impression = {
            type = "list",
            member = { type = "string" },
        },
        metricAttribution = M.MetricAttribution,
    },
}

M.PutEventsInput = {
    type = "structure",
    id = "PutEventsInput",
    members = {
        trackingId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userId = {
            type = "string",
        },
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventList = {
            type = "list",
            member = M.Event,
            traits = {
                required = true,
            },
        },
    },
}

M.PutEventsOutput = {
    type = "structure",
    id = "PutEventsOutput",
}

M.Item = {
    type = "structure",
    id = "Item",
    members = {
        itemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        properties = {
            type = "string",
            traits = {
                media_type = "application/json",
            },
        },
    },
}

M.PutItemsInput = {
    type = "structure",
    id = "PutItemsInput",
    members = {
        datasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        items = {
            type = "list",
            member = M.Item,
            traits = {
                required = true,
            },
        },
    },
}

M.PutItemsOutput = {
    type = "structure",
    id = "PutItemsOutput",
}

M.User = {
    type = "structure",
    id = "User",
    members = {
        userId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        properties = {
            type = "string",
            traits = {
                media_type = "application/json",
            },
        },
    },
}

M.PutUsersInput = {
    type = "structure",
    id = "PutUsersInput",
    members = {
        datasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        users = {
            type = "list",
            member = M.User,
            traits = {
                required = true,
            },
        },
    },
}

M.PutUsersOutput = {
    type = "structure",
    id = "PutUsersOutput",
}

return M
