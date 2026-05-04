local M = {}

M.PredictedAction = {
    type = "structure",
    members = {
        actionId = {
            type = "string",
        },
        score = {
            type = "double",
        },
    },
}

M.GetActionRecommendationsInput = {
    type = "structure",
    members = {
        campaignArn = {
            type = "string",
        },
        userId = {
            type = "string",
        },
        numResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        filterArn = {
            type = "string",
        },
        filterValues = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetActionRecommendationsOutput = {
    type = "structure",
    members = {
        actionList = {
            type = "list",
            member = M.PredictedAction,
        },
        recommendationId = {
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

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetPersonalizedRankingInput = {
    type = "structure",
    members = {
        campaignArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        context = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        filterArn = {
            type = "string",
        },
        filterValues = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        metadataColumns = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.PredictedItem = {
    type = "structure",
    members = {
        itemId = {
            type = "string",
        },
        score = {
            type = "double",
        },
        promotionName = {
            type = "string",
        },
        metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        reason = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetPersonalizedRankingOutput = {
    type = "structure",
    members = {
        personalizedRanking = {
            type = "list",
            member = M.PredictedItem,
        },
        recommendationId = {
            type = "string",
        },
    },
}

M.Promotion = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        percentPromotedItems = {
            type = "integer",
        },
        filterArn = {
            type = "string",
        },
        filterValues = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetRecommendationsInput = {
    type = "structure",
    members = {
        campaignArn = {
            type = "string",
        },
        itemId = {
            type = "string",
        },
        userId = {
            type = "string",
        },
        numResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        context = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        filterArn = {
            type = "string",
        },
        filterValues = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        recommenderArn = {
            type = "string",
        },
        promotions = {
            type = "list",
            member = M.Promotion,
        },
        metadataColumns = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.GetRecommendationsOutput = {
    type = "structure",
    members = {
        itemList = {
            type = "list",
            member = M.PredictedItem,
        },
        recommendationId = {
            type = "string",
        },
    },
}

return M
