local types = require("appintegrations.types")

local record Client
    createApplication: function(Client, types.CreateApplicationInput): types.CreateApplicationOutput, table
    createDataIntegration: function(Client, types.CreateDataIntegrationInput): types.CreateDataIntegrationOutput, table
    createDataIntegrationAssociation: function(Client, types.CreateDataIntegrationAssociationInput): types.CreateDataIntegrationAssociationOutput, table
    createEventIntegration: function(Client, types.CreateEventIntegrationInput): types.CreateEventIntegrationOutput, table
    deleteApplication: function(Client, types.DeleteApplicationInput): types.DeleteApplicationOutput, table
    deleteDataIntegration: function(Client, types.DeleteDataIntegrationInput): types.DeleteDataIntegrationOutput, table
    deleteEventIntegration: function(Client, types.DeleteEventIntegrationInput): types.DeleteEventIntegrationOutput, table
    getApplication: function(Client, types.GetApplicationInput): types.GetApplicationOutput, table
    getDataIntegration: function(Client, types.GetDataIntegrationInput): types.GetDataIntegrationOutput, table
    getEventIntegration: function(Client, types.GetEventIntegrationInput): types.GetEventIntegrationOutput, table
    listApplicationAssociations: function(Client, types.ListApplicationAssociationsInput): types.ListApplicationAssociationsOutput, table
    listApplications: function(Client, types.ListApplicationsInput): types.ListApplicationsOutput, table
    listDataIntegrationAssociations: function(Client, types.ListDataIntegrationAssociationsInput): types.ListDataIntegrationAssociationsOutput, table
    listDataIntegrations: function(Client, types.ListDataIntegrationsInput): types.ListDataIntegrationsOutput, table
    listEventIntegrationAssociations: function(Client, types.ListEventIntegrationAssociationsInput): types.ListEventIntegrationAssociationsOutput, table
    listEventIntegrations: function(Client, types.ListEventIntegrationsInput): types.ListEventIntegrationsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateApplication: function(Client, types.UpdateApplicationInput): types.UpdateApplicationOutput, table
    updateDataIntegration: function(Client, types.UpdateDataIntegrationInput): types.UpdateDataIntegrationOutput, table
    updateDataIntegrationAssociation: function(Client, types.UpdateDataIntegrationAssociationInput): types.UpdateDataIntegrationAssociationOutput, table
    updateEventIntegration: function(Client, types.UpdateEventIntegrationInput): types.UpdateEventIntegrationOutput, table
end

local record M
    new: function(table): Client
end

return M
