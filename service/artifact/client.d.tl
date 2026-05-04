local types = require("artifact.types")

local record Client
    getAccountSettings: function(Client, types.GetAccountSettingsInput): types.GetAccountSettingsOutput, table
    getReport: function(Client, types.GetReportInput): types.GetReportOutput, table
    getReportMetadata: function(Client, types.GetReportMetadataInput): types.GetReportMetadataOutput, table
    getTermForReport: function(Client, types.GetTermForReportInput): types.GetTermForReportOutput, table
    listCustomerAgreements: function(Client, types.ListCustomerAgreementsInput): types.ListCustomerAgreementsOutput, table
    listReports: function(Client, types.ListReportsInput): types.ListReportsOutput, table
    listReportVersions: function(Client, types.ListReportVersionsInput): types.ListReportVersionsOutput, table
    putAccountSettings: function(Client, types.PutAccountSettingsInput): types.PutAccountSettingsOutput, table
end

local record M
    new: function(table): Client
end

return M
