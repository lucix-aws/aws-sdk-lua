local types = require("iotthingsgraph.types")

local record Client
    associateEntityToThing: function(Client, types.AssociateEntityToThingInput): types.AssociateEntityToThingOutput, table
    createFlowTemplate: function(Client, types.CreateFlowTemplateInput): types.CreateFlowTemplateOutput, table
    createSystemInstance: function(Client, types.CreateSystemInstanceInput): types.CreateSystemInstanceOutput, table
    createSystemTemplate: function(Client, types.CreateSystemTemplateInput): types.CreateSystemTemplateOutput, table
    deleteFlowTemplate: function(Client, types.DeleteFlowTemplateInput): types.DeleteFlowTemplateOutput, table
    deleteNamespace: function(Client, types.DeleteNamespaceInput): types.DeleteNamespaceOutput, table
    deleteSystemInstance: function(Client, types.DeleteSystemInstanceInput): types.DeleteSystemInstanceOutput, table
    deleteSystemTemplate: function(Client, types.DeleteSystemTemplateInput): types.DeleteSystemTemplateOutput, table
    deploySystemInstance: function(Client, types.DeploySystemInstanceInput): types.DeploySystemInstanceOutput, table
    deprecateFlowTemplate: function(Client, types.DeprecateFlowTemplateInput): types.DeprecateFlowTemplateOutput, table
    deprecateSystemTemplate: function(Client, types.DeprecateSystemTemplateInput): types.DeprecateSystemTemplateOutput, table
    describeNamespace: function(Client, types.DescribeNamespaceInput): types.DescribeNamespaceOutput, table
    dissociateEntityFromThing: function(Client, types.DissociateEntityFromThingInput): types.DissociateEntityFromThingOutput, table
    getEntities: function(Client, types.GetEntitiesInput): types.GetEntitiesOutput, table
    getFlowTemplate: function(Client, types.GetFlowTemplateInput): types.GetFlowTemplateOutput, table
    getFlowTemplateRevisions: function(Client, types.GetFlowTemplateRevisionsInput): types.GetFlowTemplateRevisionsOutput, table
    getNamespaceDeletionStatus: function(Client, types.GetNamespaceDeletionStatusInput): types.GetNamespaceDeletionStatusOutput, table
    getSystemInstance: function(Client, types.GetSystemInstanceInput): types.GetSystemInstanceOutput, table
    getSystemTemplate: function(Client, types.GetSystemTemplateInput): types.GetSystemTemplateOutput, table
    getSystemTemplateRevisions: function(Client, types.GetSystemTemplateRevisionsInput): types.GetSystemTemplateRevisionsOutput, table
    getUploadStatus: function(Client, types.GetUploadStatusInput): types.GetUploadStatusOutput, table
    listFlowExecutionMessages: function(Client, types.ListFlowExecutionMessagesInput): types.ListFlowExecutionMessagesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    searchEntities: function(Client, types.SearchEntitiesInput): types.SearchEntitiesOutput, table
    searchFlowExecutions: function(Client, types.SearchFlowExecutionsInput): types.SearchFlowExecutionsOutput, table
    searchFlowTemplates: function(Client, types.SearchFlowTemplatesInput): types.SearchFlowTemplatesOutput, table
    searchSystemInstances: function(Client, types.SearchSystemInstancesInput): types.SearchSystemInstancesOutput, table
    searchSystemTemplates: function(Client, types.SearchSystemTemplatesInput): types.SearchSystemTemplatesOutput, table
    searchThings: function(Client, types.SearchThingsInput): types.SearchThingsOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    undeploySystemInstance: function(Client, types.UndeploySystemInstanceInput): types.UndeploySystemInstanceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateFlowTemplate: function(Client, types.UpdateFlowTemplateInput): types.UpdateFlowTemplateOutput, table
    updateSystemTemplate: function(Client, types.UpdateSystemTemplateInput): types.UpdateSystemTemplateOutput, table
    uploadEntityDefinitions: function(Client, types.UploadEntityDefinitionsInput): types.UploadEntityDefinitionsOutput, table
end

local record M
    new: function(table): Client
end

return M
