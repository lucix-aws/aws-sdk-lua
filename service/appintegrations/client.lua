



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("appintegrations.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("appintegrations.schemas")
local traits = require("smithy.traits")
local types = require("appintegrations.types")
local sdk_defaults = require("aws.sdk_defaults")





























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonAppIntegrationService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "app-integrations", signing_region = c.region } }
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

function C:createDataIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataIntegration, input, options)
end

function C:createDataIntegrationAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataIntegrationAssociation, input, options)
end

function C:createEventIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEventIntegration, input, options)
end

function C:deleteApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApplication, input, options)
end

function C:deleteDataIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataIntegration, input, options)
end

function C:deleteEventIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEventIntegration, input, options)
end

function C:getApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApplication, input, options)
end

function C:getDataIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataIntegration, input, options)
end

function C:getEventIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEventIntegration, input, options)
end

function C:listApplicationAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplicationAssociations, input, options)
end

function C:listApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplications, input, options)
end

function C:listDataIntegrationAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataIntegrationAssociations, input, options)
end

function C:listDataIntegrations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataIntegrations, input, options)
end

function C:listEventIntegrationAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEventIntegrationAssociations, input, options)
end

function C:listEventIntegrations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEventIntegrations, input, options)
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

function C:updateApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApplication, input, options)
end

function C:updateDataIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataIntegration, input, options)
end

function C:updateDataIntegrationAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataIntegrationAssociation, input, options)
end

function C:updateEventIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEventIntegration, input, options)
end

return M
