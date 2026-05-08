



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("simspaceweaver.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("simspaceweaver.schemas")
local traits = require("smithy.traits")
local types = require("simspaceweaver.types")
local sdk_defaults = require("aws.sdk_defaults")






















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "SimSpaceWeaver"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "simspaceweaver", signing_region = c.region } }
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

function C:createSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSnapshot, input, options)
end

function C:deleteApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApp, input, options)
end

function C:deleteSimulation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSimulation, input, options)
end

function C:describeApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeApp, input, options)
end

function C:describeSimulation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSimulation, input, options)
end

function C:listApps(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApps, input, options)
end

function C:listSimulations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSimulations, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:startApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartApp, input, options)
end

function C:startClock(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartClock, input, options)
end

function C:startSimulation(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartSimulation, input, options)
end

function C:stopApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopApp, input, options)
end

function C:stopClock(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopClock, input, options)
end

function C:stopSimulation(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopSimulation, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

return M
