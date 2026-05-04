local types = require("connectcontactlens.types")

local record Client
    listRealtimeContactAnalysisSegments: function(Client, types.ListRealtimeContactAnalysisSegmentsInput): types.ListRealtimeContactAnalysisSegmentsOutput, table
end

local record M
    new: function(table): Client
end

return M
