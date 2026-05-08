



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("cloudcontrol.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("cloudcontrol.schemas")
local traits = require("smithy.traits")
local types = require("cloudcontrol.types")
local sdk_defaults = require("aws.sdk_defaults")














local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "CloudApiService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "cloudcontrolapi", signing_region = c.region } }
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

function C:cancelResourceRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelResourceRequest, input, options)
end

function C:createResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateResource, input, options)
end

function C:deleteResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResource, input, options)
end

function C:getResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResource, input, options)
end

function C:getResourceRequestStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourceRequestStatus, input, options)
end

function C:listResourceRequests(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceRequests, input, options)
end

function C:listResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResources, input, options)
end

function C:updateResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateResource, input, options)
end

return M
