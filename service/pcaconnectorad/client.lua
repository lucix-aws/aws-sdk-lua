



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("pcaconnectorad.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("pcaconnectorad.schemas")
local traits = require("smithy.traits")
local types = require("pcaconnectorad.types")
local sdk_defaults = require("aws.sdk_defaults")































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "PcaConnectorAd"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "pca-connector-ad", signing_region = c.region } }
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

function C:createConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConnector, input, options)
end

function C:createDirectoryRegistration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDirectoryRegistration, input, options)
end

function C:createServicePrincipalName(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateServicePrincipalName, input, options)
end

function C:createTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTemplate, input, options)
end

function C:createTemplateGroupAccessControlEntry(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTemplateGroupAccessControlEntry, input, options)
end

function C:deleteConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConnector, input, options)
end

function C:deleteDirectoryRegistration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDirectoryRegistration, input, options)
end

function C:deleteServicePrincipalName(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteServicePrincipalName, input, options)
end

function C:deleteTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTemplate, input, options)
end

function C:deleteTemplateGroupAccessControlEntry(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTemplateGroupAccessControlEntry, input, options)
end

function C:getConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConnector, input, options)
end

function C:getDirectoryRegistration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDirectoryRegistration, input, options)
end

function C:getServicePrincipalName(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServicePrincipalName, input, options)
end

function C:getTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTemplate, input, options)
end

function C:getTemplateGroupAccessControlEntry(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTemplateGroupAccessControlEntry, input, options)
end

function C:listConnectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConnectors, input, options)
end

function C:listDirectoryRegistrations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDirectoryRegistrations, input, options)
end

function C:listServicePrincipalNames(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServicePrincipalNames, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTemplateGroupAccessControlEntries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTemplateGroupAccessControlEntries, input, options)
end

function C:listTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTemplates, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTemplate, input, options)
end

function C:updateTemplateGroupAccessControlEntry(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTemplateGroupAccessControlEntry, input, options)
end

return M
