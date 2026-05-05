local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.personalizeevents"

local M = {}

M.Action = schema.new({
    id = id.from(_N, "Action"),
    type = "structure",
    members = {
        actionId = schema.new({
            id = id.from(_N, "Action", "actionId"),
            type = "string",
            name = "actionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        properties = schema.new({
            id = id.from(_N, "Action", "properties"),
            type = "string",
            name = "properties",
            target_id = prelude.String.id,
            traits = {
                [traits.MEDIA_TYPE] = { value = "application/json" },
            },
        }),
    },
})

M.ActionInteraction = schema.new({
    id = id.from(_N, "ActionInteraction"),
    type = "structure",
    members = {
        actionId = schema.new({
            id = id.from(_N, "ActionInteraction", "actionId"),
            type = "string",
            name = "actionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        userId = schema.new({
            id = id.from(_N, "ActionInteraction", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
        }),
        sessionId = schema.new({
            id = id.from(_N, "ActionInteraction", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        timestamp = schema.new({
            id = id.from(_N, "ActionInteraction", "timestamp"),
            type = "timestamp",
            name = "timestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        eventType = schema.new({
            id = id.from(_N, "ActionInteraction", "eventType"),
            type = "string",
            name = "eventType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        eventId = schema.new({
            id = id.from(_N, "ActionInteraction", "eventId"),
            type = "string",
            name = "eventId",
            target_id = prelude.String.id,
        }),
        recommendationId = schema.new({
            id = id.from(_N, "ActionInteraction", "recommendationId"),
            type = "string",
            name = "recommendationId",
            target_id = prelude.String.id,
        }),
        impression = schema.new({
            id = id.from(_N, "ActionInteraction", "impression"),
            type = "list",
            name = "impression",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        properties = schema.new({
            id = id.from(_N, "ActionInteraction", "properties"),
            type = "string",
            name = "properties",
            target_id = prelude.String.id,
            traits = {
                [traits.MEDIA_TYPE] = { value = "application/json" },
            },
        }),
    },
})

M.InvalidInputException = schema.new({
    id = id.from(_N, "InvalidInputException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidInputException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.PutActionInteractionsInput = schema.new({
    id = id.from(_N, "PutActionInteractionsInput"),
    type = "structure",
    members = {
        trackingId = schema.new({
            id = id.from(_N, "PutActionInteractionsInput", "trackingId"),
            type = "string",
            name = "trackingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actionInteractions = schema.new({
            id = id.from(_N, "PutActionInteractionsInput", "actionInteractions"),
            type = "list",
            name = "actionInteractions",
            target_id = prelude.Document.id,
            list_member = M.ActionInteraction,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutActionInteractionsOutput = schema.new({
    id = id.from(_N, "PutActionInteractionsOutput"),
    type = "structure",
})

M.ResourceInUseException = schema.new({
    id = id.from(_N, "ResourceInUseException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceInUseException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
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

M.PutActionsInput = schema.new({
    id = id.from(_N, "PutActionsInput"),
    type = "structure",
    members = {
        datasetArn = schema.new({
            id = id.from(_N, "PutActionsInput", "datasetArn"),
            type = "string",
            name = "datasetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actions = schema.new({
            id = id.from(_N, "PutActionsInput", "actions"),
            type = "list",
            name = "actions",
            target_id = prelude.Document.id,
            list_member = M.Action,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutActionsOutput = schema.new({
    id = id.from(_N, "PutActionsOutput"),
    type = "structure",
})

M.MetricAttribution = schema.new({
    id = id.from(_N, "MetricAttribution"),
    type = "structure",
    members = {
        eventAttributionSource = schema.new({
            id = id.from(_N, "MetricAttribution", "eventAttributionSource"),
            type = "string",
            name = "eventAttributionSource",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Event = schema.new({
    id = id.from(_N, "Event"),
    type = "structure",
    members = {
        eventId = schema.new({
            id = id.from(_N, "Event", "eventId"),
            type = "string",
            name = "eventId",
            target_id = prelude.String.id,
        }),
        eventType = schema.new({
            id = id.from(_N, "Event", "eventType"),
            type = "string",
            name = "eventType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        eventValue = schema.new({
            id = id.from(_N, "Event", "eventValue"),
            type = "float",
            name = "eventValue",
            target_id = prelude.Float.id,
        }),
        itemId = schema.new({
            id = id.from(_N, "Event", "itemId"),
            type = "string",
            name = "itemId",
            target_id = prelude.String.id,
        }),
        properties = schema.new({
            id = id.from(_N, "Event", "properties"),
            type = "string",
            name = "properties",
            target_id = prelude.String.id,
            traits = {
                [traits.MEDIA_TYPE] = { value = "application/json" },
            },
        }),
        sentAt = schema.new({
            id = id.from(_N, "Event", "sentAt"),
            type = "timestamp",
            name = "sentAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recommendationId = schema.new({
            id = id.from(_N, "Event", "recommendationId"),
            type = "string",
            name = "recommendationId",
            target_id = prelude.String.id,
        }),
        impression = schema.new({
            id = id.from(_N, "Event", "impression"),
            type = "list",
            name = "impression",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        metricAttribution = schema.new({
            id = id.from(_N, "Event", "metricAttribution"),
            type = "structure",
            name = "metricAttribution",
            target_id = id.from(_N, "MetricAttribution"),
            target = M.MetricAttribution,
        }),
    },
})

M.PutEventsInput = schema.new({
    id = id.from(_N, "PutEventsInput"),
    type = "structure",
    members = {
        trackingId = schema.new({
            id = id.from(_N, "PutEventsInput", "trackingId"),
            type = "string",
            name = "trackingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        userId = schema.new({
            id = id.from(_N, "PutEventsInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
        }),
        sessionId = schema.new({
            id = id.from(_N, "PutEventsInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        eventList = schema.new({
            id = id.from(_N, "PutEventsInput", "eventList"),
            type = "list",
            name = "eventList",
            target_id = prelude.Document.id,
            list_member = M.Event,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutEventsOutput = schema.new({
    id = id.from(_N, "PutEventsOutput"),
    type = "structure",
})

M.Item = schema.new({
    id = id.from(_N, "Item"),
    type = "structure",
    members = {
        itemId = schema.new({
            id = id.from(_N, "Item", "itemId"),
            type = "string",
            name = "itemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        properties = schema.new({
            id = id.from(_N, "Item", "properties"),
            type = "string",
            name = "properties",
            target_id = prelude.String.id,
            traits = {
                [traits.MEDIA_TYPE] = { value = "application/json" },
            },
        }),
    },
})

M.PutItemsInput = schema.new({
    id = id.from(_N, "PutItemsInput"),
    type = "structure",
    members = {
        datasetArn = schema.new({
            id = id.from(_N, "PutItemsInput", "datasetArn"),
            type = "string",
            name = "datasetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        items = schema.new({
            id = id.from(_N, "PutItemsInput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.Item,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutItemsOutput = schema.new({
    id = id.from(_N, "PutItemsOutput"),
    type = "structure",
})

M.User = schema.new({
    id = id.from(_N, "User"),
    type = "structure",
    members = {
        userId = schema.new({
            id = id.from(_N, "User", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        properties = schema.new({
            id = id.from(_N, "User", "properties"),
            type = "string",
            name = "properties",
            target_id = prelude.String.id,
            traits = {
                [traits.MEDIA_TYPE] = { value = "application/json" },
            },
        }),
    },
})

M.PutUsersInput = schema.new({
    id = id.from(_N, "PutUsersInput"),
    type = "structure",
    members = {
        datasetArn = schema.new({
            id = id.from(_N, "PutUsersInput", "datasetArn"),
            type = "string",
            name = "datasetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        users = schema.new({
            id = id.from(_N, "PutUsersInput", "users"),
            type = "list",
            name = "users",
            target_id = prelude.Document.id,
            list_member = M.User,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutUsersOutput = schema.new({
    id = id.from(_N, "PutUsersOutput"),
    type = "structure",
})

return M
