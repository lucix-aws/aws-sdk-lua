local types = require("proton.types")

local record Client
    acceptEnvironmentAccountConnection: function(Client, types.AcceptEnvironmentAccountConnectionInput): types.AcceptEnvironmentAccountConnectionOutput, table
    cancelComponentDeployment: function(Client, types.CancelComponentDeploymentInput): types.CancelComponentDeploymentOutput, table
    cancelEnvironmentDeployment: function(Client, types.CancelEnvironmentDeploymentInput): types.CancelEnvironmentDeploymentOutput, table
    cancelServiceInstanceDeployment: function(Client, types.CancelServiceInstanceDeploymentInput): types.CancelServiceInstanceDeploymentOutput, table
    cancelServicePipelineDeployment: function(Client, types.CancelServicePipelineDeploymentInput): types.CancelServicePipelineDeploymentOutput, table
    createComponent: function(Client, types.CreateComponentInput): types.CreateComponentOutput, table
    createEnvironment: function(Client, types.CreateEnvironmentInput): types.CreateEnvironmentOutput, table
    createEnvironmentAccountConnection: function(Client, types.CreateEnvironmentAccountConnectionInput): types.CreateEnvironmentAccountConnectionOutput, table
    createEnvironmentTemplate: function(Client, types.CreateEnvironmentTemplateInput): types.CreateEnvironmentTemplateOutput, table
    createEnvironmentTemplateVersion: function(Client, types.CreateEnvironmentTemplateVersionInput): types.CreateEnvironmentTemplateVersionOutput, table
    createRepository: function(Client, types.CreateRepositoryInput): types.CreateRepositoryOutput, table
    createService: function(Client, types.CreateServiceInput): types.CreateServiceOutput, table
    createServiceInstance: function(Client, types.CreateServiceInstanceInput): types.CreateServiceInstanceOutput, table
    createServiceSyncConfig: function(Client, types.CreateServiceSyncConfigInput): types.CreateServiceSyncConfigOutput, table
    createServiceTemplate: function(Client, types.CreateServiceTemplateInput): types.CreateServiceTemplateOutput, table
    createServiceTemplateVersion: function(Client, types.CreateServiceTemplateVersionInput): types.CreateServiceTemplateVersionOutput, table
    createTemplateSyncConfig: function(Client, types.CreateTemplateSyncConfigInput): types.CreateTemplateSyncConfigOutput, table
    deleteComponent: function(Client, types.DeleteComponentInput): types.DeleteComponentOutput, table
    deleteDeployment: function(Client, types.DeleteDeploymentInput): types.DeleteDeploymentOutput, table
    deleteEnvironment: function(Client, types.DeleteEnvironmentInput): types.DeleteEnvironmentOutput, table
    deleteEnvironmentAccountConnection: function(Client, types.DeleteEnvironmentAccountConnectionInput): types.DeleteEnvironmentAccountConnectionOutput, table
    deleteEnvironmentTemplate: function(Client, types.DeleteEnvironmentTemplateInput): types.DeleteEnvironmentTemplateOutput, table
    deleteEnvironmentTemplateVersion: function(Client, types.DeleteEnvironmentTemplateVersionInput): types.DeleteEnvironmentTemplateVersionOutput, table
    deleteRepository: function(Client, types.DeleteRepositoryInput): types.DeleteRepositoryOutput, table
    deleteService: function(Client, types.DeleteServiceInput): types.DeleteServiceOutput, table
    deleteServiceSyncConfig: function(Client, types.DeleteServiceSyncConfigInput): types.DeleteServiceSyncConfigOutput, table
    deleteServiceTemplate: function(Client, types.DeleteServiceTemplateInput): types.DeleteServiceTemplateOutput, table
    deleteServiceTemplateVersion: function(Client, types.DeleteServiceTemplateVersionInput): types.DeleteServiceTemplateVersionOutput, table
    deleteTemplateSyncConfig: function(Client, types.DeleteTemplateSyncConfigInput): types.DeleteTemplateSyncConfigOutput, table
    getAccountSettings: function(Client, types.GetAccountSettingsInput): types.GetAccountSettingsOutput, table
    getComponent: function(Client, types.GetComponentInput): types.GetComponentOutput, table
    getDeployment: function(Client, types.GetDeploymentInput): types.GetDeploymentOutput, table
    getEnvironment: function(Client, types.GetEnvironmentInput): types.GetEnvironmentOutput, table
    getEnvironmentAccountConnection: function(Client, types.GetEnvironmentAccountConnectionInput): types.GetEnvironmentAccountConnectionOutput, table
    getEnvironmentTemplate: function(Client, types.GetEnvironmentTemplateInput): types.GetEnvironmentTemplateOutput, table
    getEnvironmentTemplateVersion: function(Client, types.GetEnvironmentTemplateVersionInput): types.GetEnvironmentTemplateVersionOutput, table
    getRepository: function(Client, types.GetRepositoryInput): types.GetRepositoryOutput, table
    getRepositorySyncStatus: function(Client, types.GetRepositorySyncStatusInput): types.GetRepositorySyncStatusOutput, table
    getResourcesSummary: function(Client, types.GetResourcesSummaryInput): types.GetResourcesSummaryOutput, table
    getService: function(Client, types.GetServiceInput): types.GetServiceOutput, table
    getServiceInstance: function(Client, types.GetServiceInstanceInput): types.GetServiceInstanceOutput, table
    getServiceInstanceSyncStatus: function(Client, types.GetServiceInstanceSyncStatusInput): types.GetServiceInstanceSyncStatusOutput, table
    getServiceSyncBlockerSummary: function(Client, types.GetServiceSyncBlockerSummaryInput): types.GetServiceSyncBlockerSummaryOutput, table
    getServiceSyncConfig: function(Client, types.GetServiceSyncConfigInput): types.GetServiceSyncConfigOutput, table
    getServiceTemplate: function(Client, types.GetServiceTemplateInput): types.GetServiceTemplateOutput, table
    getServiceTemplateVersion: function(Client, types.GetServiceTemplateVersionInput): types.GetServiceTemplateVersionOutput, table
    getTemplateSyncConfig: function(Client, types.GetTemplateSyncConfigInput): types.GetTemplateSyncConfigOutput, table
    getTemplateSyncStatus: function(Client, types.GetTemplateSyncStatusInput): types.GetTemplateSyncStatusOutput, table
    listComponentOutputs: function(Client, types.ListComponentOutputsInput): types.ListComponentOutputsOutput, table
    listComponentProvisionedResources: function(Client, types.ListComponentProvisionedResourcesInput): types.ListComponentProvisionedResourcesOutput, table
    listComponents: function(Client, types.ListComponentsInput): types.ListComponentsOutput, table
    listDeployments: function(Client, types.ListDeploymentsInput): types.ListDeploymentsOutput, table
    listEnvironmentAccountConnections: function(Client, types.ListEnvironmentAccountConnectionsInput): types.ListEnvironmentAccountConnectionsOutput, table
    listEnvironmentOutputs: function(Client, types.ListEnvironmentOutputsInput): types.ListEnvironmentOutputsOutput, table
    listEnvironmentProvisionedResources: function(Client, types.ListEnvironmentProvisionedResourcesInput): types.ListEnvironmentProvisionedResourcesOutput, table
    listEnvironments: function(Client, types.ListEnvironmentsInput): types.ListEnvironmentsOutput, table
    listEnvironmentTemplates: function(Client, types.ListEnvironmentTemplatesInput): types.ListEnvironmentTemplatesOutput, table
    listEnvironmentTemplateVersions: function(Client, types.ListEnvironmentTemplateVersionsInput): types.ListEnvironmentTemplateVersionsOutput, table
    listRepositories: function(Client, types.ListRepositoriesInput): types.ListRepositoriesOutput, table
    listRepositorySyncDefinitions: function(Client, types.ListRepositorySyncDefinitionsInput): types.ListRepositorySyncDefinitionsOutput, table
    listServiceInstanceOutputs: function(Client, types.ListServiceInstanceOutputsInput): types.ListServiceInstanceOutputsOutput, table
    listServiceInstanceProvisionedResources: function(Client, types.ListServiceInstanceProvisionedResourcesInput): types.ListServiceInstanceProvisionedResourcesOutput, table
    listServiceInstances: function(Client, types.ListServiceInstancesInput): types.ListServiceInstancesOutput, table
    listServicePipelineOutputs: function(Client, types.ListServicePipelineOutputsInput): types.ListServicePipelineOutputsOutput, table
    listServicePipelineProvisionedResources: function(Client, types.ListServicePipelineProvisionedResourcesInput): types.ListServicePipelineProvisionedResourcesOutput, table
    listServices: function(Client, types.ListServicesInput): types.ListServicesOutput, table
    listServiceTemplates: function(Client, types.ListServiceTemplatesInput): types.ListServiceTemplatesOutput, table
    listServiceTemplateVersions: function(Client, types.ListServiceTemplateVersionsInput): types.ListServiceTemplateVersionsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    notifyResourceDeploymentStatusChange: function(Client, types.NotifyResourceDeploymentStatusChangeInput): types.NotifyResourceDeploymentStatusChangeOutput, table
    rejectEnvironmentAccountConnection: function(Client, types.RejectEnvironmentAccountConnectionInput): types.RejectEnvironmentAccountConnectionOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateAccountSettings: function(Client, types.UpdateAccountSettingsInput): types.UpdateAccountSettingsOutput, table
    updateComponent: function(Client, types.UpdateComponentInput): types.UpdateComponentOutput, table
    updateEnvironment: function(Client, types.UpdateEnvironmentInput): types.UpdateEnvironmentOutput, table
    updateEnvironmentAccountConnection: function(Client, types.UpdateEnvironmentAccountConnectionInput): types.UpdateEnvironmentAccountConnectionOutput, table
    updateEnvironmentTemplate: function(Client, types.UpdateEnvironmentTemplateInput): types.UpdateEnvironmentTemplateOutput, table
    updateEnvironmentTemplateVersion: function(Client, types.UpdateEnvironmentTemplateVersionInput): types.UpdateEnvironmentTemplateVersionOutput, table
    updateService: function(Client, types.UpdateServiceInput): types.UpdateServiceOutput, table
    updateServiceInstance: function(Client, types.UpdateServiceInstanceInput): types.UpdateServiceInstanceOutput, table
    updateServicePipeline: function(Client, types.UpdateServicePipelineInput): types.UpdateServicePipelineOutput, table
    updateServiceSyncBlocker: function(Client, types.UpdateServiceSyncBlockerInput): types.UpdateServiceSyncBlockerOutput, table
    updateServiceSyncConfig: function(Client, types.UpdateServiceSyncConfigInput): types.UpdateServiceSyncConfigOutput, table
    updateServiceTemplate: function(Client, types.UpdateServiceTemplateInput): types.UpdateServiceTemplateOutput, table
    updateServiceTemplateVersion: function(Client, types.UpdateServiceTemplateVersionInput): types.UpdateServiceTemplateVersionOutput, table
    updateTemplateSyncConfig: function(Client, types.UpdateTemplateSyncConfigInput): types.UpdateTemplateSyncConfigOutput, table
end

local record M
    new: function(table): Client
end

return M
