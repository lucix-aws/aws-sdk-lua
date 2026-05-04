local record GetActionRecommendationsInput
    campaignArn: string
    userId: string
    numResults: number
    filterArn: string
    filterValues: {string : string}
end

local record GetActionRecommendationsOutput
    actionList: {PredictedAction}
    recommendationId: string
end

local record GetPersonalizedRankingInput
    campaignArn: string
    inputList: {string}
    userId: string
    context: {string : string}
    filterArn: string
    filterValues: {string : string}
    metadataColumns: {string : {string}}
end

local record GetPersonalizedRankingOutput
    personalizedRanking: {PredictedItem}
    recommendationId: string
end

local record GetRecommendationsInput
    campaignArn: string
    itemId: string
    userId: string
    numResults: number
    context: {string : string}
    filterArn: string
    filterValues: {string : string}
    recommenderArn: string
    promotions: {Promotion}
    metadataColumns: {string : {string}}
end

local record GetRecommendationsOutput
    itemList: {PredictedItem}
    recommendationId: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record M
    GetActionRecommendationsInput: GetActionRecommendationsInput
    GetActionRecommendationsOutput: GetActionRecommendationsOutput
    GetPersonalizedRankingInput: GetPersonalizedRankingInput
    GetPersonalizedRankingOutput: GetPersonalizedRankingOutput
    GetRecommendationsInput: GetRecommendationsInput
    GetRecommendationsOutput: GetRecommendationsOutput
end

return M
