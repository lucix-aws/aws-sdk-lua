local types = require("servicecatalogappregistry.types")

local record Client
    associateAttributeGroup: function(Client, types.AssociateAttributeGroupInput): types.AssociateAttributeGroupOutput, table
    associateResource: function(Client, types.AssociateResourceInput): types.AssociateResourceOutput, table
    createApplication: function(Client, types.CreateApplicationInput): types.CreateApplicationOutput, table
    createAttributeGroup: function(Client, types.CreateAttributeGroupInput): types.CreateAttributeGroupOutput, table
    deleteApplication: function(Client, types.DeleteApplicationInput): types.DeleteApplicationOutput, table
    deleteAttributeGroup: function(Client, types.DeleteAttributeGroupInput): types.DeleteAttributeGroupOutput, table
    disassociateAttributeGroup: function(Client, types.DisassociateAttributeGroupInput): types.DisassociateAttributeGroupOutput, table
    disassociateResource: function(Client, types.DisassociateResourceInput): types.DisassociateResourceOutput, table
    getApplication: function(Client, types.GetApplicationInput): types.GetApplicationOutput, table
    getAssociatedResource: function(Client, types.GetAssociatedResourceInput): types.GetAssociatedResourceOutput, table
    getAttributeGroup: function(Client, types.GetAttributeGroupInput): types.GetAttributeGroupOutput, table
    getConfiguration: function(Client, types.GetConfigurationInput): types.GetConfigurationOutput, table
    listApplications: function(Client, types.ListApplicationsInput): types.ListApplicationsOutput, table
    listAssociatedAttributeGroups: function(Client, types.ListAssociatedAttributeGroupsInput): types.ListAssociatedAttributeGroupsOutput, table
    listAssociatedResources: function(Client, types.ListAssociatedResourcesInput): types.ListAssociatedResourcesOutput, table
    listAttributeGroups: function(Client, types.ListAttributeGroupsInput): types.ListAttributeGroupsOutput, table
    listAttributeGroupsForApplication: function(Client, types.ListAttributeGroupsForApplicationInput): types.ListAttributeGroupsForApplicationOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    putConfiguration: function(Client, types.PutConfigurationInput): types.PutConfigurationOutput, table
    syncResource: function(Client, types.SyncResourceInput): types.SyncResourceOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateApplication: function(Client, types.UpdateApplicationInput): types.UpdateApplicationOutput, table
    updateAttributeGroup: function(Client, types.UpdateAttributeGroupInput): types.UpdateAttributeGroupOutput, table
end

local record M
    new: function(table): Client
end

return M
