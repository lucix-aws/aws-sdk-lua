local types = require("sagemakermetrics.types")

local record Client
    batchGetMetrics: function(Client, types.BatchGetMetricsInput): types.BatchGetMetricsOutput, table
    batchPutMetrics: function(Client, types.BatchPutMetricsInput): types.BatchPutMetricsOutput, table
end

local record M
    new: function(table): Client
end

return M
