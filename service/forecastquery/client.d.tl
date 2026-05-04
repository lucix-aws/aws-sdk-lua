local types = require("forecastquery.types")

local record Client
    queryForecast: function(Client, types.QueryForecastInput): types.QueryForecastOutput, table
    queryWhatIfForecast: function(Client, types.QueryWhatIfForecastInput): types.QueryWhatIfForecastOutput, table
end

local record M
    new: function(table): Client
end

return M
