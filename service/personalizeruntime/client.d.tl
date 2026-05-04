local types = require("personalizeruntime.types")

local record Client
    getActionRecommendations: function(Client, types.GetActionRecommendationsInput): types.GetActionRecommendationsOutput, table
    getPersonalizedRanking: function(Client, types.GetPersonalizedRankingInput): types.GetPersonalizedRankingOutput, table
    getRecommendations: function(Client, types.GetRecommendationsInput): types.GetRecommendationsOutput, table
end

local record M
    new: function(table): Client
end

return M
