local types = require("marketplacecommerceanalytics.types")

local record Client
    generateDataSet: function(Client, types.GenerateDataSetInput): types.GenerateDataSetOutput, table
    startSupportDataExport: function(Client, types.StartSupportDataExportInput): types.StartSupportDataExportOutput, table
end

local record M
    new: function(table): Client
end

return M
