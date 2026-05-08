



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("proton.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("proton.schemas")
local traits = require("smithy.traits")
local types = require("proton.types")
local sdk_defaults = require("aws.sdk_defaults")





























































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AwsProton20200720"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.0", service_id = c.service_id }) end
   if not c.endpoint_provider then
      c.endpoint_provider = function(params)
         return endpoint.resolve(endpoint_rules, params)
      end
   end
   if not c.auth_scheme_resolver then
      c.auth_scheme_resolver = function(_service, operation)
         local auth_trait = operation:trait(traits.AUTH) or _service:trait(traits.AUTH)
         local options = {}
         for _, scheme in ipairs(auth_trait or {}) do
            local scheme_id = scheme.scheme_id or scheme
            if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "proton", signing_region = c.region } }
            else
               options[#options + 1] = { scheme_id = scheme_id }
            end
         end
         return options
      end
   end
   defaults.resolve_auth_schemes(c)
   defaults.resolve_identity_resolvers(c)
   defaults.resolve_http_client(c)
   defaults.resolve_retry_strategy(c)
   sdk_defaults.resolve_identity_resolver(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   return self
end

function C:acceptEnvironmentAccountConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptEnvironmentAccountConnection, input, options)
end

function C:cancelComponentDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelComponentDeployment, input, options)
end

function C:cancelEnvironmentDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelEnvironmentDeployment, input, options)
end

function C:cancelServiceInstanceDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelServiceInstanceDeployment, input, options)
end

function C:cancelServicePipelineDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelServicePipelineDeployment, input, options)
end

function C:createComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateComponent, input, options)
end

function C:createEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEnvironment, input, options)
end

function C:createEnvironmentAccountConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEnvironmentAccountConnection, input, options)
end

function C:createEnvironmentTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEnvironmentTemplate, input, options)
end

function C:createEnvironmentTemplateVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEnvironmentTemplateVersion, input, options)
end

function C:createRepository(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRepository, input, options)
end

function C:createService(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateService, input, options)
end

function C:createServiceInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateServiceInstance, input, options)
end

function C:createServiceSyncConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateServiceSyncConfig, input, options)
end

function C:createServiceTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateServiceTemplate, input, options)
end

function C:createServiceTemplateVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateServiceTemplateVersion, input, options)
end

function C:createTemplateSyncConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTemplateSyncConfig, input, options)
end

function C:deleteComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteComponent, input, options)
end

function C:deleteDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDeployment, input, options)
end

function C:deleteEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEnvironment, input, options)
end

function C:deleteEnvironmentAccountConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEnvironmentAccountConnection, input, options)
end

function C:deleteEnvironmentTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEnvironmentTemplate, input, options)
end

function C:deleteEnvironmentTemplateVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEnvironmentTemplateVersion, input, options)
end

function C:deleteRepository(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRepository, input, options)
end

function C:deleteService(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteService, input, options)
end

function C:deleteServiceSyncConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteServiceSyncConfig, input, options)
end

function C:deleteServiceTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteServiceTemplate, input, options)
end

function C:deleteServiceTemplateVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteServiceTemplateVersion, input, options)
end

function C:deleteTemplateSyncConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTemplateSyncConfig, input, options)
end

function C:getAccountSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccountSettings, input, options)
end

function C:getComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetComponent, input, options)
end

function C:getDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeployment, input, options)
end

function C:getEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEnvironment, input, options)
end

function C:getEnvironmentAccountConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEnvironmentAccountConnection, input, options)
end

function C:getEnvironmentTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEnvironmentTemplate, input, options)
end

function C:getEnvironmentTemplateVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEnvironmentTemplateVersion, input, options)
end

function C:getRepository(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRepository, input, options)
end

function C:getRepositorySyncStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRepositorySyncStatus, input, options)
end

function C:getResourcesSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcesSummary, input, options)
end

function C:getService(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetService, input, options)
end

function C:getServiceInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServiceInstance, input, options)
end

function C:getServiceInstanceSyncStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServiceInstanceSyncStatus, input, options)
end

function C:getServiceSyncBlockerSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServiceSyncBlockerSummary, input, options)
end

function C:getServiceSyncConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServiceSyncConfig, input, options)
end

function C:getServiceTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServiceTemplate, input, options)
end

function C:getServiceTemplateVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServiceTemplateVersion, input, options)
end

function C:getTemplateSyncConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTemplateSyncConfig, input, options)
end

function C:getTemplateSyncStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTemplateSyncStatus, input, options)
end

function C:listComponentOutputs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListComponentOutputs, input, options)
end

function C:listComponentProvisionedResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListComponentProvisionedResources, input, options)
end

function C:listComponents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListComponents, input, options)
end

function C:listDeployments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDeployments, input, options)
end

function C:listEnvironmentAccountConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEnvironmentAccountConnections, input, options)
end

function C:listEnvironmentOutputs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEnvironmentOutputs, input, options)
end

function C:listEnvironmentProvisionedResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEnvironmentProvisionedResources, input, options)
end

function C:listEnvironments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEnvironments, input, options)
end

function C:listEnvironmentTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEnvironmentTemplates, input, options)
end

function C:listEnvironmentTemplateVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEnvironmentTemplateVersions, input, options)
end

function C:listRepositories(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRepositories, input, options)
end

function C:listRepositorySyncDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRepositorySyncDefinitions, input, options)
end

function C:listServiceInstanceOutputs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServiceInstanceOutputs, input, options)
end

function C:listServiceInstanceProvisionedResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServiceInstanceProvisionedResources, input, options)
end

function C:listServiceInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServiceInstances, input, options)
end

function C:listServicePipelineOutputs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServicePipelineOutputs, input, options)
end

function C:listServicePipelineProvisionedResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServicePipelineProvisionedResources, input, options)
end

function C:listServices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServices, input, options)
end

function C:listServiceTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServiceTemplates, input, options)
end

function C:listServiceTemplateVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServiceTemplateVersions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:notifyResourceDeploymentStatusChange(input, options)
   return self:invokeOperation(schemas.Service, schemas.NotifyResourceDeploymentStatusChange, input, options)
end

function C:rejectEnvironmentAccountConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectEnvironmentAccountConnection, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAccountSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccountSettings, input, options)
end

function C:updateComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateComponent, input, options)
end

function C:updateEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEnvironment, input, options)
end

function C:updateEnvironmentAccountConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEnvironmentAccountConnection, input, options)
end

function C:updateEnvironmentTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEnvironmentTemplate, input, options)
end

function C:updateEnvironmentTemplateVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEnvironmentTemplateVersion, input, options)
end

function C:updateService(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateService, input, options)
end

function C:updateServiceInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateServiceInstance, input, options)
end

function C:updateServicePipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateServicePipeline, input, options)
end

function C:updateServiceSyncBlocker(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateServiceSyncBlocker, input, options)
end

function C:updateServiceSyncConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateServiceSyncConfig, input, options)
end

function C:updateServiceTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateServiceTemplate, input, options)
end

function C:updateServiceTemplateVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateServiceTemplateVersion, input, options)
end

function C:updateTemplateSyncConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTemplateSyncConfig, input, options)
end

return M
