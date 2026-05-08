



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("appconfig.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("appconfig.schemas")
local traits = require("smithy.traits")
local types = require("appconfig.types")
local sdk_defaults = require("aws.sdk_defaults")



















































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonAppConfig"
   if not c.protocol then c.protocol = restjson_protocol.new() end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "appconfig", signing_region = c.region } }
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

function C:createApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApplication, input, options)
end

function C:createConfigurationProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConfigurationProfile, input, options)
end

function C:createDeploymentStrategy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDeploymentStrategy, input, options)
end

function C:createEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEnvironment, input, options)
end

function C:createExtension(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateExtension, input, options)
end

function C:createExtensionAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateExtensionAssociation, input, options)
end

function C:createHostedConfigurationVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateHostedConfigurationVersion, input, options)
end

function C:deleteApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApplication, input, options)
end

function C:deleteConfigurationProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfigurationProfile, input, options)
end

function C:deleteDeploymentStrategy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDeploymentStrategy, input, options)
end

function C:deleteEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEnvironment, input, options)
end

function C:deleteExtension(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteExtension, input, options)
end

function C:deleteExtensionAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteExtensionAssociation, input, options)
end

function C:deleteHostedConfigurationVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteHostedConfigurationVersion, input, options)
end

function C:getAccountSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccountSettings, input, options)
end

function C:getApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApplication, input, options)
end

function C:getConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConfiguration, input, options)
end

function C:getConfigurationProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConfigurationProfile, input, options)
end

function C:getDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeployment, input, options)
end

function C:getDeploymentStrategy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeploymentStrategy, input, options)
end

function C:getEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEnvironment, input, options)
end

function C:getExtension(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetExtension, input, options)
end

function C:getExtensionAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetExtensionAssociation, input, options)
end

function C:getHostedConfigurationVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetHostedConfigurationVersion, input, options)
end

function C:listApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplications, input, options)
end

function C:listConfigurationProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConfigurationProfiles, input, options)
end

function C:listDeployments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDeployments, input, options)
end

function C:listDeploymentStrategies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDeploymentStrategies, input, options)
end

function C:listEnvironments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEnvironments, input, options)
end

function C:listExtensionAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExtensionAssociations, input, options)
end

function C:listExtensions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExtensions, input, options)
end

function C:listHostedConfigurationVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListHostedConfigurationVersions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:startDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDeployment, input, options)
end

function C:stopDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopDeployment, input, options)
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

function C:updateApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApplication, input, options)
end

function C:updateConfigurationProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConfigurationProfile, input, options)
end

function C:updateDeploymentStrategy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDeploymentStrategy, input, options)
end

function C:updateEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEnvironment, input, options)
end

function C:updateExtension(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateExtension, input, options)
end

function C:updateExtensionAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateExtensionAssociation, input, options)
end

function C:validateConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.ValidateConfiguration, input, options)
end

return M
