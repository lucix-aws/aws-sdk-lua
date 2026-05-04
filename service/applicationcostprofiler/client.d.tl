local types = require("applicationcostprofiler.types")

local record Client
    deleteReportDefinition: function(Client, types.DeleteReportDefinitionInput): types.DeleteReportDefinitionOutput, table
    getReportDefinition: function(Client, types.GetReportDefinitionInput): types.GetReportDefinitionOutput, table
    importApplicationUsage: function(Client, types.ImportApplicationUsageInput): types.ImportApplicationUsageOutput, table
    listReportDefinitions: function(Client, types.ListReportDefinitionsInput): types.ListReportDefinitionsOutput, table
    putReportDefinition: function(Client, types.PutReportDefinitionInput): types.PutReportDefinitionOutput, table
    updateReportDefinition: function(Client, types.UpdateReportDefinitionInput): types.UpdateReportDefinitionOutput, table
end

local record M
    new: function(table): Client
end

return M
