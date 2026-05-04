local M = {}

M.Action = {
    type = "structure",
    members = {
        actionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        properties = {
            type = "string",
        },
    },
}

M.ActionInteraction = {
    type = "structure",
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
        },
    },
}

M.InvalidInputException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutActionInteractionsInput = {
    type = "structure",
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
}

M.ResourceInUseException = {
    type = "structure",
    error = "client",
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

M.PutActionsInput = {
    type = "structure",
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
}

M.MetricAttribution = {
    type = "structure",
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
}

M.Item = {
    type = "structure",
    members = {
        itemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        properties = {
            type = "string",
        },
    },
}

M.PutItemsInput = {
    type = "structure",
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
}

M.User = {
    type = "structure",
    members = {
        userId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        properties = {
            type = "string",
        },
    },
}

M.PutUsersInput = {
    type = "structure",
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
}

return M
