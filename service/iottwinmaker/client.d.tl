local types = require("iottwinmaker.types")

local record Client
    batchPutPropertyValues: function(Client, types.BatchPutPropertyValuesInput): types.BatchPutPropertyValuesOutput, table
    cancelMetadataTransferJob: function(Client, types.CancelMetadataTransferJobInput): types.CancelMetadataTransferJobOutput, table
    createComponentType: function(Client, types.CreateComponentTypeInput): types.CreateComponentTypeOutput, table
    createEntity: function(Client, types.CreateEntityInput): types.CreateEntityOutput, table
    createMetadataTransferJob: function(Client, types.CreateMetadataTransferJobInput): types.CreateMetadataTransferJobOutput, table
    createScene: function(Client, types.CreateSceneInput): types.CreateSceneOutput, table
    createSyncJob: function(Client, types.CreateSyncJobInput): types.CreateSyncJobOutput, table
    createWorkspace: function(Client, types.CreateWorkspaceInput): types.CreateWorkspaceOutput, table
    deleteComponentType: function(Client, types.DeleteComponentTypeInput): types.DeleteComponentTypeOutput, table
    deleteEntity: function(Client, types.DeleteEntityInput): types.DeleteEntityOutput, table
    deleteScene: function(Client, types.DeleteSceneInput): types.DeleteSceneOutput, table
    deleteSyncJob: function(Client, types.DeleteSyncJobInput): types.DeleteSyncJobOutput, table
    deleteWorkspace: function(Client, types.DeleteWorkspaceInput): types.DeleteWorkspaceOutput, table
    executeQuery: function(Client, types.ExecuteQueryInput): types.ExecuteQueryOutput, table
    getComponentType: function(Client, types.GetComponentTypeInput): types.GetComponentTypeOutput, table
    getEntity: function(Client, types.GetEntityInput): types.GetEntityOutput, table
    getMetadataTransferJob: function(Client, types.GetMetadataTransferJobInput): types.GetMetadataTransferJobOutput, table
    getPricingPlan: function(Client, types.GetPricingPlanInput): types.GetPricingPlanOutput, table
    getPropertyValue: function(Client, types.GetPropertyValueInput): types.GetPropertyValueOutput, table
    getPropertyValueHistory: function(Client, types.GetPropertyValueHistoryInput): types.GetPropertyValueHistoryOutput, table
    getScene: function(Client, types.GetSceneInput): types.GetSceneOutput, table
    getSyncJob: function(Client, types.GetSyncJobInput): types.GetSyncJobOutput, table
    getWorkspace: function(Client, types.GetWorkspaceInput): types.GetWorkspaceOutput, table
    listComponents: function(Client, types.ListComponentsInput): types.ListComponentsOutput, table
    listComponentTypes: function(Client, types.ListComponentTypesInput): types.ListComponentTypesOutput, table
    listEntities: function(Client, types.ListEntitiesInput): types.ListEntitiesOutput, table
    listMetadataTransferJobs: function(Client, types.ListMetadataTransferJobsInput): types.ListMetadataTransferJobsOutput, table
    listProperties: function(Client, types.ListPropertiesInput): types.ListPropertiesOutput, table
    listScenes: function(Client, types.ListScenesInput): types.ListScenesOutput, table
    listSyncJobs: function(Client, types.ListSyncJobsInput): types.ListSyncJobsOutput, table
    listSyncResources: function(Client, types.ListSyncResourcesInput): types.ListSyncResourcesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listWorkspaces: function(Client, types.ListWorkspacesInput): types.ListWorkspacesOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateComponentType: function(Client, types.UpdateComponentTypeInput): types.UpdateComponentTypeOutput, table
    updateEntity: function(Client, types.UpdateEntityInput): types.UpdateEntityOutput, table
    updatePricingPlan: function(Client, types.UpdatePricingPlanInput): types.UpdatePricingPlanOutput, table
    updateScene: function(Client, types.UpdateSceneInput): types.UpdateSceneOutput, table
    updateWorkspace: function(Client, types.UpdateWorkspaceInput): types.UpdateWorkspaceOutput, table
end

local record M
    new: function(table): Client
end

return M
