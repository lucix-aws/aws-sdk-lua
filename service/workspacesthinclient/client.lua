



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("workspacesthinclient.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("workspacesthinclient.schemas")
local traits = require("smithy.traits")
local types = require("workspacesthinclient.types")
local sdk_defaults = require("aws.sdk_defaults")






















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "ThinClient"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "thinclient", signing_region = c.region } }
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

function C:createEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEnvironment, input, options)
end

function C:deleteDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDevice, input, options)
end

function C:deleteEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEnvironment, input, options)
end

function C:deregisterDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterDevice, input, options)
end

function C:getDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDevice, input, options)
end

function C:getEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEnvironment, input, options)
end

function C:getSoftwareSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSoftwareSet, input, options)
end

function C:listDevices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDevices, input, options)
end

function C:listEnvironments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEnvironments, input, options)
end

function C:listSoftwareSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSoftwareSets, input, options)
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

function C:updateDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDevice, input, options)
end

function C:updateEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEnvironment, input, options)
end

function C:updateSoftwareSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSoftwareSet, input, options)
end

return M
