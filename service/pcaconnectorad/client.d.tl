local types = require("pcaconnectorad.types")

local record Client
    createConnector: function(Client, types.CreateConnectorInput): types.CreateConnectorOutput, table
    createDirectoryRegistration: function(Client, types.CreateDirectoryRegistrationInput): types.CreateDirectoryRegistrationOutput, table
    createServicePrincipalName: function(Client, types.CreateServicePrincipalNameInput): types.CreateServicePrincipalNameOutput, table
    createTemplate: function(Client, types.CreateTemplateInput): types.CreateTemplateOutput, table
    createTemplateGroupAccessControlEntry: function(Client, types.CreateTemplateGroupAccessControlEntryInput): types.CreateTemplateGroupAccessControlEntryOutput, table
    deleteConnector: function(Client, types.DeleteConnectorInput): types.DeleteConnectorOutput, table
    deleteDirectoryRegistration: function(Client, types.DeleteDirectoryRegistrationInput): types.DeleteDirectoryRegistrationOutput, table
    deleteServicePrincipalName: function(Client, types.DeleteServicePrincipalNameInput): types.DeleteServicePrincipalNameOutput, table
    deleteTemplate: function(Client, types.DeleteTemplateInput): types.DeleteTemplateOutput, table
    deleteTemplateGroupAccessControlEntry: function(Client, types.DeleteTemplateGroupAccessControlEntryInput): types.DeleteTemplateGroupAccessControlEntryOutput, table
    getConnector: function(Client, types.GetConnectorInput): types.GetConnectorOutput, table
    getDirectoryRegistration: function(Client, types.GetDirectoryRegistrationInput): types.GetDirectoryRegistrationOutput, table
    getServicePrincipalName: function(Client, types.GetServicePrincipalNameInput): types.GetServicePrincipalNameOutput, table
    getTemplate: function(Client, types.GetTemplateInput): types.GetTemplateOutput, table
    getTemplateGroupAccessControlEntry: function(Client, types.GetTemplateGroupAccessControlEntryInput): types.GetTemplateGroupAccessControlEntryOutput, table
    listConnectors: function(Client, types.ListConnectorsInput): types.ListConnectorsOutput, table
    listDirectoryRegistrations: function(Client, types.ListDirectoryRegistrationsInput): types.ListDirectoryRegistrationsOutput, table
    listServicePrincipalNames: function(Client, types.ListServicePrincipalNamesInput): types.ListServicePrincipalNamesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listTemplateGroupAccessControlEntries: function(Client, types.ListTemplateGroupAccessControlEntriesInput): types.ListTemplateGroupAccessControlEntriesOutput, table
    listTemplates: function(Client, types.ListTemplatesInput): types.ListTemplatesOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateTemplate: function(Client, types.UpdateTemplateInput): types.UpdateTemplateOutput, table
    updateTemplateGroupAccessControlEntry: function(Client, types.UpdateTemplateGroupAccessControlEntryInput): types.UpdateTemplateGroupAccessControlEntryOutput, table
end

local record M
    new: function(table): Client
end

return M
