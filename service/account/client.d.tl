local types = require("account.types")

local record Client
    acceptPrimaryEmailUpdate: function(Client, types.AcceptPrimaryEmailUpdateInput): types.AcceptPrimaryEmailUpdateOutput, table
    deleteAlternateContact: function(Client, types.DeleteAlternateContactInput): types.DeleteAlternateContactOutput, table
    disableRegion: function(Client, types.DisableRegionInput): types.DisableRegionOutput, table
    enableRegion: function(Client, types.EnableRegionInput): types.EnableRegionOutput, table
    getAccountInformation: function(Client, types.GetAccountInformationInput): types.GetAccountInformationOutput, table
    getAlternateContact: function(Client, types.GetAlternateContactInput): types.GetAlternateContactOutput, table
    getContactInformation: function(Client, types.GetContactInformationInput): types.GetContactInformationOutput, table
    getGovCloudAccountInformation: function(Client, types.GetGovCloudAccountInformationInput): types.GetGovCloudAccountInformationOutput, table
    getPrimaryEmail: function(Client, types.GetPrimaryEmailInput): types.GetPrimaryEmailOutput, table
    getRegionOptStatus: function(Client, types.GetRegionOptStatusInput): types.GetRegionOptStatusOutput, table
    listRegions: function(Client, types.ListRegionsInput): types.ListRegionsOutput, table
    putAccountName: function(Client, types.PutAccountNameInput): types.PutAccountNameOutput, table
    putAlternateContact: function(Client, types.PutAlternateContactInput): types.PutAlternateContactOutput, table
    putContactInformation: function(Client, types.PutContactInformationInput): types.PutContactInformationOutput, table
    startPrimaryEmailUpdate: function(Client, types.StartPrimaryEmailUpdateInput): types.StartPrimaryEmailUpdateOutput, table
end

local record M
    new: function(table): Client
end

return M
