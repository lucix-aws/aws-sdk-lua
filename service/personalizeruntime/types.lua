local M = {}

M.PredictedAction = {
    type = "structure",
    members = {
        actionId = {
            type = "string",
        },
        score = {
            type = "number",
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
            type = "number",
        },
        filterArn = {
            type = "string",
        },
        filterValues = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetActionRecommendationsOutput = {
    type = "structure",
    members = {
        actionList = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
        filterArn = {
            type = "string",
        },
        filterValues = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        metadataColumns = {
            type = "map",
            key_type = "string",
            value_type = "list",
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
            type = "number",
        },
        promotionName = {
            type = "string",
        },
        metadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        reason = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetPersonalizedRankingOutput = {
    type = "structure",
    members = {
        personalizedRanking = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        filterArn = {
            type = "string",
        },
        filterValues = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
        },
        context = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        filterArn = {
            type = "string",
        },
        filterValues = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        recommenderArn = {
            type = "string",
        },
        promotions = {
            type = "list",
            member_type = "structure",
        },
        metadataColumns = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
    },
}

M.GetRecommendationsOutput = {
    type = "structure",
    members = {
        itemList = {
            type = "list",
            member_type = "structure",
        },
        recommendationId = {
            type = "string",
        },
    },
}

return M
