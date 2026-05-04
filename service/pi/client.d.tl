local types = require("pi.types")

local record Client
    createPerformanceAnalysisReport: function(Client, types.CreatePerformanceAnalysisReportInput): types.CreatePerformanceAnalysisReportOutput, table
    deletePerformanceAnalysisReport: function(Client, types.DeletePerformanceAnalysisReportInput): types.DeletePerformanceAnalysisReportOutput, table
    describeDimensionKeys: function(Client, types.DescribeDimensionKeysInput): types.DescribeDimensionKeysOutput, table
    getDimensionKeyDetails: function(Client, types.GetDimensionKeyDetailsInput): types.GetDimensionKeyDetailsOutput, table
    getPerformanceAnalysisReport: function(Client, types.GetPerformanceAnalysisReportInput): types.GetPerformanceAnalysisReportOutput, table
    getResourceMetadata: function(Client, types.GetResourceMetadataInput): types.GetResourceMetadataOutput, table
    getResourceMetrics: function(Client, types.GetResourceMetricsInput): types.GetResourceMetricsOutput, table
    listAvailableResourceDimensions: function(Client, types.ListAvailableResourceDimensionsInput): types.ListAvailableResourceDimensionsOutput, table
    listAvailableResourceMetrics: function(Client, types.ListAvailableResourceMetricsInput): types.ListAvailableResourceMetricsOutput, table
    listPerformanceAnalysisReports: function(Client, types.ListPerformanceAnalysisReportsInput): types.ListPerformanceAnalysisReportsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
end

local record M
    new: function(table): Client
end

return M
