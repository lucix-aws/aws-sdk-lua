local types = require("sustainability.types")

local record Client
    getEstimatedCarbonEmissions: function(Client, types.GetEstimatedCarbonEmissionsInput): types.GetEstimatedCarbonEmissionsOutput, table
    getEstimatedCarbonEmissionsDimensionValues: function(Client, types.GetEstimatedCarbonEmissionsDimensionValuesInput): types.GetEstimatedCarbonEmissionsDimensionValuesOutput, table
end

local record M
    new: function(table): Client
end

return M
