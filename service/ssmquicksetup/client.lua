



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("ssmquicksetup.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("ssmquicksetup.schemas")
local traits = require("smithy.traits")
local types = require("ssmquicksetup.types")
local sdk_defaults = require("aws.sdk_defaults")




















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "QuickSetup"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ssm-quicksetup", signing_region = c.region } }
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

function C:createConfigurationManager(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConfigurationManager, input, options)
end

function C:deleteConfigurationManager(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfigurationManager, input, options)
end

function C:getConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConfiguration, input, options)
end

function C:getConfigurationManager(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConfigurationManager, input, options)
end

function C:getServiceSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServiceSettings, input, options)
end

function C:listConfigurationManagers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConfigurationManagers, input, options)
end

function C:listConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConfigurations, input, options)
end

function C:listQuickSetupTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListQuickSetupTypes, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateConfigurationDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConfigurationDefinition, input, options)
end

function C:updateConfigurationManager(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConfigurationManager, input, options)
end

function C:updateServiceSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateServiceSettings, input, options)
end

return M
