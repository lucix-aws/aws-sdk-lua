local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.personalizeruntime"

local M = {}

M.PredictedAction = schema.new({
    id = id.from(_N, "PredictedAction"),
    type = "structure",
    members = {
        actionId = schema.new({
            id = id.from(_N, "PredictedAction", "actionId"),
            type = "string",
            name = "actionId",
            target_id = prelude.String.id,
        }),
        score = schema.new({
            id = id.from(_N, "PredictedAction", "score"),
            type = "double",
            name = "score",
            target_id = prelude.Double.id,
        }),
    },
})

M.GetActionRecommendationsInput = schema.new({
    id = id.from(_N, "GetActionRecommendationsInput"),
    type = "structure",
    members = {
        campaignArn = schema.new({
            id = id.from(_N, "GetActionRecommendationsInput", "campaignArn"),
            type = "string",
            name = "campaignArn",
            target_id = prelude.String.id,
        }),
        userId = schema.new({
            id = id.from(_N, "GetActionRecommendationsInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
        }),
        numResults = schema.new({
            id = id.from(_N, "GetActionRecommendationsInput", "numResults"),
            type = "integer",
            name = "numResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        filterArn = schema.new({
            id = id.from(_N, "GetActionRecommendationsInput", "filterArn"),
            type = "string",
            name = "filterArn",
            target_id = prelude.String.id,
        }),
        filterValues = schema.new({
            id = id.from(_N, "GetActionRecommendationsInput", "filterValues"),
            type = "map",
            name = "filterValues",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetActionRecommendationsOutput = schema.new({
    id = id.from(_N, "GetActionRecommendationsOutput"),
    type = "structure",
    members = {
        actionList = schema.new({
            id = id.from(_N, "GetActionRecommendationsOutput", "actionList"),
            type = "list",
            name = "actionList",
            target_id = prelude.Document.id,
            list_member = M.PredictedAction,
        }),
        recommendationId = schema.new({
            id = id.from(_N, "GetActionRecommendationsOutput", "recommendationId"),
            type = "string",
            name = "recommendationId",
            target_id = prelude.String.id,
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

M.GetPersonalizedRankingInput = schema.new({
    id = id.from(_N, "GetPersonalizedRankingInput"),
    type = "structure",
    members = {
        campaignArn = schema.new({
            id = id.from(_N, "GetPersonalizedRankingInput", "campaignArn"),
            type = "string",
            name = "campaignArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        inputList = schema.new({
            id = id.from(_N, "GetPersonalizedRankingInput", "inputList"),
            type = "list",
            name = "inputList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        userId = schema.new({
            id = id.from(_N, "GetPersonalizedRankingInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        context = schema.new({
            id = id.from(_N, "GetPersonalizedRankingInput", "context"),
            type = "map",
            name = "context",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        filterArn = schema.new({
            id = id.from(_N, "GetPersonalizedRankingInput", "filterArn"),
            type = "string",
            name = "filterArn",
            target_id = prelude.String.id,
        }),
        filterValues = schema.new({
            id = id.from(_N, "GetPersonalizedRankingInput", "filterValues"),
            type = "map",
            name = "filterValues",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        metadataColumns = schema.new({
            id = id.from(_N, "GetPersonalizedRankingInput", "metadataColumns"),
            type = "map",
            name = "metadataColumns",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
    },
})

M.PredictedItem = schema.new({
    id = id.from(_N, "PredictedItem"),
    type = "structure",
    members = {
        itemId = schema.new({
            id = id.from(_N, "PredictedItem", "itemId"),
            type = "string",
            name = "itemId",
            target_id = prelude.String.id,
        }),
        score = schema.new({
            id = id.from(_N, "PredictedItem", "score"),
            type = "double",
            name = "score",
            target_id = prelude.Double.id,
        }),
        promotionName = schema.new({
            id = id.from(_N, "PredictedItem", "promotionName"),
            type = "string",
            name = "promotionName",
            target_id = prelude.String.id,
        }),
        metadata = schema.new({
            id = id.from(_N, "PredictedItem", "metadata"),
            type = "map",
            name = "metadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        reason = schema.new({
            id = id.from(_N, "PredictedItem", "reason"),
            type = "list",
            name = "reason",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GetPersonalizedRankingOutput = schema.new({
    id = id.from(_N, "GetPersonalizedRankingOutput"),
    type = "structure",
    members = {
        personalizedRanking = schema.new({
            id = id.from(_N, "GetPersonalizedRankingOutput", "personalizedRanking"),
            type = "list",
            name = "personalizedRanking",
            target_id = prelude.Document.id,
            list_member = M.PredictedItem,
        }),
        recommendationId = schema.new({
            id = id.from(_N, "GetPersonalizedRankingOutput", "recommendationId"),
            type = "string",
            name = "recommendationId",
            target_id = prelude.String.id,
        }),
    },
})

M.Promotion = schema.new({
    id = id.from(_N, "Promotion"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "Promotion", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        percentPromotedItems = schema.new({
            id = id.from(_N, "Promotion", "percentPromotedItems"),
            type = "integer",
            name = "percentPromotedItems",
            target_id = prelude.Integer.id,
        }),
        filterArn = schema.new({
            id = id.from(_N, "Promotion", "filterArn"),
            type = "string",
            name = "filterArn",
            target_id = prelude.String.id,
        }),
        filterValues = schema.new({
            id = id.from(_N, "Promotion", "filterValues"),
            type = "map",
            name = "filterValues",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetRecommendationsInput = schema.new({
    id = id.from(_N, "GetRecommendationsInput"),
    type = "structure",
    members = {
        campaignArn = schema.new({
            id = id.from(_N, "GetRecommendationsInput", "campaignArn"),
            type = "string",
            name = "campaignArn",
            target_id = prelude.String.id,
        }),
        itemId = schema.new({
            id = id.from(_N, "GetRecommendationsInput", "itemId"),
            type = "string",
            name = "itemId",
            target_id = prelude.String.id,
        }),
        userId = schema.new({
            id = id.from(_N, "GetRecommendationsInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
        }),
        numResults = schema.new({
            id = id.from(_N, "GetRecommendationsInput", "numResults"),
            type = "integer",
            name = "numResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        context = schema.new({
            id = id.from(_N, "GetRecommendationsInput", "context"),
            type = "map",
            name = "context",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        filterArn = schema.new({
            id = id.from(_N, "GetRecommendationsInput", "filterArn"),
            type = "string",
            name = "filterArn",
            target_id = prelude.String.id,
        }),
        filterValues = schema.new({
            id = id.from(_N, "GetRecommendationsInput", "filterValues"),
            type = "map",
            name = "filterValues",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        recommenderArn = schema.new({
            id = id.from(_N, "GetRecommendationsInput", "recommenderArn"),
            type = "string",
            name = "recommenderArn",
            target_id = prelude.String.id,
        }),
        promotions = schema.new({
            id = id.from(_N, "GetRecommendationsInput", "promotions"),
            type = "list",
            name = "promotions",
            target_id = prelude.Document.id,
            list_member = M.Promotion,
        }),
        metadataColumns = schema.new({
            id = id.from(_N, "GetRecommendationsInput", "metadataColumns"),
            type = "map",
            name = "metadataColumns",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
    },
})

M.GetRecommendationsOutput = schema.new({
    id = id.from(_N, "GetRecommendationsOutput"),
    type = "structure",
    members = {
        itemList = schema.new({
            id = id.from(_N, "GetRecommendationsOutput", "itemList"),
            type = "list",
            name = "itemList",
            target_id = prelude.Document.id,
            list_member = M.PredictedItem,
        }),
        recommendationId = schema.new({
            id = id.from(_N, "GetRecommendationsOutput", "recommendationId"),
            type = "string",
            name = "recommendationId",
            target_id = prelude.String.id,
        }),
    },
})

return M
