local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("proton.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("proton.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AwsProton20200720"
    cfg.signing_name = "proton"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:acceptEnvironmentAccountConnection(input, options)
    return self:invokeOperation(input, {
        name = "AcceptEnvironmentAccountConnection",
        input_schema = types.AcceptEnvironmentAccountConnectionInput,
        output_schema = types.AcceptEnvironmentAccountConnectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:cancelComponentDeployment(input, options)
    return self:invokeOperation(input, {
        name = "CancelComponentDeployment",
        input_schema = types.CancelComponentDeploymentInput,
        output_schema = types.CancelComponentDeploymentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:cancelEnvironmentDeployment(input, options)
    return self:invokeOperation(input, {
        name = "CancelEnvironmentDeployment",
        input_schema = types.CancelEnvironmentDeploymentInput,
        output_schema = types.CancelEnvironmentDeploymentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:cancelServiceInstanceDeployment(input, options)
    return self:invokeOperation(input, {
        name = "CancelServiceInstanceDeployment",
        input_schema = types.CancelServiceInstanceDeploymentInput,
        output_schema = types.CancelServiceInstanceDeploymentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:cancelServicePipelineDeployment(input, options)
    return self:invokeOperation(input, {
        name = "CancelServicePipelineDeployment",
        input_schema = types.CancelServicePipelineDeploymentInput,
        output_schema = types.CancelServicePipelineDeploymentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createComponent(input, options)
    return self:invokeOperation(input, {
        name = "CreateComponent",
        input_schema = types.CreateComponentInput,
        output_schema = types.CreateComponentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "CreateEnvironment",
        input_schema = types.CreateEnvironmentInput,
        output_schema = types.CreateEnvironmentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createEnvironmentAccountConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreateEnvironmentAccountConnection",
        input_schema = types.CreateEnvironmentAccountConnectionInput,
        output_schema = types.CreateEnvironmentAccountConnectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createEnvironmentTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateEnvironmentTemplate",
        input_schema = types.CreateEnvironmentTemplateInput,
        output_schema = types.CreateEnvironmentTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createEnvironmentTemplateVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateEnvironmentTemplateVersion",
        input_schema = types.CreateEnvironmentTemplateVersionInput,
        output_schema = types.CreateEnvironmentTemplateVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createRepository(input, options)
    return self:invokeOperation(input, {
        name = "CreateRepository",
        input_schema = types.CreateRepositoryInput,
        output_schema = types.CreateRepositoryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createService(input, options)
    return self:invokeOperation(input, {
        name = "CreateService",
        input_schema = types.CreateServiceInput,
        output_schema = types.CreateServiceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createServiceInstance(input, options)
    return self:invokeOperation(input, {
        name = "CreateServiceInstance",
        input_schema = types.CreateServiceInstanceInput,
        output_schema = types.CreateServiceInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createServiceSyncConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateServiceSyncConfig",
        input_schema = types.CreateServiceSyncConfigInput,
        output_schema = types.CreateServiceSyncConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createServiceTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateServiceTemplate",
        input_schema = types.CreateServiceTemplateInput,
        output_schema = types.CreateServiceTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createServiceTemplateVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateServiceTemplateVersion",
        input_schema = types.CreateServiceTemplateVersionInput,
        output_schema = types.CreateServiceTemplateVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createTemplateSyncConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateTemplateSyncConfig",
        input_schema = types.CreateTemplateSyncConfigInput,
        output_schema = types.CreateTemplateSyncConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteComponent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteComponent",
        input_schema = types.DeleteComponentInput,
        output_schema = types.DeleteComponentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDeployment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDeployment",
        input_schema = types.DeleteDeploymentInput,
        output_schema = types.DeleteDeploymentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnvironment",
        input_schema = types.DeleteEnvironmentInput,
        output_schema = types.DeleteEnvironmentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteEnvironmentAccountConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnvironmentAccountConnection",
        input_schema = types.DeleteEnvironmentAccountConnectionInput,
        output_schema = types.DeleteEnvironmentAccountConnectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteEnvironmentTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnvironmentTemplate",
        input_schema = types.DeleteEnvironmentTemplateInput,
        output_schema = types.DeleteEnvironmentTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteEnvironmentTemplateVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnvironmentTemplateVersion",
        input_schema = types.DeleteEnvironmentTemplateVersionInput,
        output_schema = types.DeleteEnvironmentTemplateVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteRepository(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRepository",
        input_schema = types.DeleteRepositoryInput,
        output_schema = types.DeleteRepositoryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteService(input, options)
    return self:invokeOperation(input, {
        name = "DeleteService",
        input_schema = types.DeleteServiceInput,
        output_schema = types.DeleteServiceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteServiceSyncConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServiceSyncConfig",
        input_schema = types.DeleteServiceSyncConfigInput,
        output_schema = types.DeleteServiceSyncConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteServiceTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServiceTemplate",
        input_schema = types.DeleteServiceTemplateInput,
        output_schema = types.DeleteServiceTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteServiceTemplateVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServiceTemplateVersion",
        input_schema = types.DeleteServiceTemplateVersionInput,
        output_schema = types.DeleteServiceTemplateVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteTemplateSyncConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTemplateSyncConfig",
        input_schema = types.DeleteTemplateSyncConfigInput,
        output_schema = types.DeleteTemplateSyncConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAccountSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountSettings",
        input_schema = types.GetAccountSettingsInput,
        output_schema = types.GetAccountSettingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getComponent(input, options)
    return self:invokeOperation(input, {
        name = "GetComponent",
        input_schema = types.GetComponentInput,
        output_schema = types.GetComponentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDeployment(input, options)
    return self:invokeOperation(input, {
        name = "GetDeployment",
        input_schema = types.GetDeploymentInput,
        output_schema = types.GetDeploymentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "GetEnvironment",
        input_schema = types.GetEnvironmentInput,
        output_schema = types.GetEnvironmentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getEnvironmentAccountConnection(input, options)
    return self:invokeOperation(input, {
        name = "GetEnvironmentAccountConnection",
        input_schema = types.GetEnvironmentAccountConnectionInput,
        output_schema = types.GetEnvironmentAccountConnectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getEnvironmentTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetEnvironmentTemplate",
        input_schema = types.GetEnvironmentTemplateInput,
        output_schema = types.GetEnvironmentTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getEnvironmentTemplateVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetEnvironmentTemplateVersion",
        input_schema = types.GetEnvironmentTemplateVersionInput,
        output_schema = types.GetEnvironmentTemplateVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getRepository(input, options)
    return self:invokeOperation(input, {
        name = "GetRepository",
        input_schema = types.GetRepositoryInput,
        output_schema = types.GetRepositoryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getRepositorySyncStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetRepositorySyncStatus",
        input_schema = types.GetRepositorySyncStatusInput,
        output_schema = types.GetRepositorySyncStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getResourcesSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcesSummary",
        input_schema = types.GetResourcesSummaryInput,
        output_schema = types.GetResourcesSummaryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getService(input, options)
    return self:invokeOperation(input, {
        name = "GetService",
        input_schema = types.GetServiceInput,
        output_schema = types.GetServiceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getServiceInstance(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceInstance",
        input_schema = types.GetServiceInstanceInput,
        output_schema = types.GetServiceInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getServiceInstanceSyncStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceInstanceSyncStatus",
        input_schema = types.GetServiceInstanceSyncStatusInput,
        output_schema = types.GetServiceInstanceSyncStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getServiceSyncBlockerSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceSyncBlockerSummary",
        input_schema = types.GetServiceSyncBlockerSummaryInput,
        output_schema = types.GetServiceSyncBlockerSummaryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getServiceSyncConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceSyncConfig",
        input_schema = types.GetServiceSyncConfigInput,
        output_schema = types.GetServiceSyncConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getServiceTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceTemplate",
        input_schema = types.GetServiceTemplateInput,
        output_schema = types.GetServiceTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getServiceTemplateVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceTemplateVersion",
        input_schema = types.GetServiceTemplateVersionInput,
        output_schema = types.GetServiceTemplateVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getTemplateSyncConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetTemplateSyncConfig",
        input_schema = types.GetTemplateSyncConfigInput,
        output_schema = types.GetTemplateSyncConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getTemplateSyncStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetTemplateSyncStatus",
        input_schema = types.GetTemplateSyncStatusInput,
        output_schema = types.GetTemplateSyncStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listComponentOutputs(input, options)
    return self:invokeOperation(input, {
        name = "ListComponentOutputs",
        input_schema = types.ListComponentOutputsInput,
        output_schema = types.ListComponentOutputsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listComponentProvisionedResources(input, options)
    return self:invokeOperation(input, {
        name = "ListComponentProvisionedResources",
        input_schema = types.ListComponentProvisionedResourcesInput,
        output_schema = types.ListComponentProvisionedResourcesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listComponents(input, options)
    return self:invokeOperation(input, {
        name = "ListComponents",
        input_schema = types.ListComponentsInput,
        output_schema = types.ListComponentsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDeployments(input, options)
    return self:invokeOperation(input, {
        name = "ListDeployments",
        input_schema = types.ListDeploymentsInput,
        output_schema = types.ListDeploymentsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listEnvironmentAccountConnections(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironmentAccountConnections",
        input_schema = types.ListEnvironmentAccountConnectionsInput,
        output_schema = types.ListEnvironmentAccountConnectionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listEnvironmentOutputs(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironmentOutputs",
        input_schema = types.ListEnvironmentOutputsInput,
        output_schema = types.ListEnvironmentOutputsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listEnvironmentProvisionedResources(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironmentProvisionedResources",
        input_schema = types.ListEnvironmentProvisionedResourcesInput,
        output_schema = types.ListEnvironmentProvisionedResourcesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listEnvironments(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironments",
        input_schema = types.ListEnvironmentsInput,
        output_schema = types.ListEnvironmentsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listEnvironmentTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironmentTemplates",
        input_schema = types.ListEnvironmentTemplatesInput,
        output_schema = types.ListEnvironmentTemplatesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listEnvironmentTemplateVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironmentTemplateVersions",
        input_schema = types.ListEnvironmentTemplateVersionsInput,
        output_schema = types.ListEnvironmentTemplateVersionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listRepositories(input, options)
    return self:invokeOperation(input, {
        name = "ListRepositories",
        input_schema = types.ListRepositoriesInput,
        output_schema = types.ListRepositoriesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listRepositorySyncDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListRepositorySyncDefinitions",
        input_schema = types.ListRepositorySyncDefinitionsInput,
        output_schema = types.ListRepositorySyncDefinitionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listServiceInstanceOutputs(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceInstanceOutputs",
        input_schema = types.ListServiceInstanceOutputsInput,
        output_schema = types.ListServiceInstanceOutputsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listServiceInstanceProvisionedResources(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceInstanceProvisionedResources",
        input_schema = types.ListServiceInstanceProvisionedResourcesInput,
        output_schema = types.ListServiceInstanceProvisionedResourcesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listServiceInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceInstances",
        input_schema = types.ListServiceInstancesInput,
        output_schema = types.ListServiceInstancesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listServicePipelineOutputs(input, options)
    return self:invokeOperation(input, {
        name = "ListServicePipelineOutputs",
        input_schema = types.ListServicePipelineOutputsInput,
        output_schema = types.ListServicePipelineOutputsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listServicePipelineProvisionedResources(input, options)
    return self:invokeOperation(input, {
        name = "ListServicePipelineProvisionedResources",
        input_schema = types.ListServicePipelineProvisionedResourcesInput,
        output_schema = types.ListServicePipelineProvisionedResourcesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listServices(input, options)
    return self:invokeOperation(input, {
        name = "ListServices",
        input_schema = types.ListServicesInput,
        output_schema = types.ListServicesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listServiceTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceTemplates",
        input_schema = types.ListServiceTemplatesInput,
        output_schema = types.ListServiceTemplatesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listServiceTemplateVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceTemplateVersions",
        input_schema = types.ListServiceTemplateVersionsInput,
        output_schema = types.ListServiceTemplateVersionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:notifyResourceDeploymentStatusChange(input, options)
    return self:invokeOperation(input, {
        name = "NotifyResourceDeploymentStatusChange",
        input_schema = types.NotifyResourceDeploymentStatusChangeInput,
        output_schema = types.NotifyResourceDeploymentStatusChangeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:rejectEnvironmentAccountConnection(input, options)
    return self:invokeOperation(input, {
        name = "RejectEnvironmentAccountConnection",
        input_schema = types.RejectEnvironmentAccountConnectionInput,
        output_schema = types.RejectEnvironmentAccountConnectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateAccountSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccountSettings",
        input_schema = types.UpdateAccountSettingsInput,
        output_schema = types.UpdateAccountSettingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateComponent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateComponent",
        input_schema = types.UpdateComponentInput,
        output_schema = types.UpdateComponentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnvironment",
        input_schema = types.UpdateEnvironmentInput,
        output_schema = types.UpdateEnvironmentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateEnvironmentAccountConnection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnvironmentAccountConnection",
        input_schema = types.UpdateEnvironmentAccountConnectionInput,
        output_schema = types.UpdateEnvironmentAccountConnectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateEnvironmentTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnvironmentTemplate",
        input_schema = types.UpdateEnvironmentTemplateInput,
        output_schema = types.UpdateEnvironmentTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateEnvironmentTemplateVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnvironmentTemplateVersion",
        input_schema = types.UpdateEnvironmentTemplateVersionInput,
        output_schema = types.UpdateEnvironmentTemplateVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateService(input, options)
    return self:invokeOperation(input, {
        name = "UpdateService",
        input_schema = types.UpdateServiceInput,
        output_schema = types.UpdateServiceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateServiceInstance(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceInstance",
        input_schema = types.UpdateServiceInstanceInput,
        output_schema = types.UpdateServiceInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateServicePipeline(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServicePipeline",
        input_schema = types.UpdateServicePipelineInput,
        output_schema = types.UpdateServicePipelineOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateServiceSyncBlocker(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceSyncBlocker",
        input_schema = types.UpdateServiceSyncBlockerInput,
        output_schema = types.UpdateServiceSyncBlockerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateServiceSyncConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceSyncConfig",
        input_schema = types.UpdateServiceSyncConfigInput,
        output_schema = types.UpdateServiceSyncConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateServiceTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceTemplate",
        input_schema = types.UpdateServiceTemplateInput,
        output_schema = types.UpdateServiceTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateServiceTemplateVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceTemplateVersion",
        input_schema = types.UpdateServiceTemplateVersionInput,
        output_schema = types.UpdateServiceTemplateVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateTemplateSyncConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTemplateSyncConfig",
        input_schema = types.UpdateTemplateSyncConfigInput,
        output_schema = types.UpdateTemplateSyncConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
