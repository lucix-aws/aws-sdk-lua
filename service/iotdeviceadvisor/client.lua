



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("iotdeviceadvisor.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("iotdeviceadvisor.schemas")
local traits = require("smithy.traits")
local types = require("iotdeviceadvisor.types")
local sdk_defaults = require("aws.sdk_defaults")




















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "IotSenateService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "iotdeviceadvisor", signing_region = c.region } }
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

function C:createSuiteDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSuiteDefinition, input, options)
end

function C:deleteSuiteDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSuiteDefinition, input, options)
end

function C:getEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEndpoint, input, options)
end

function C:getSuiteDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSuiteDefinition, input, options)
end

function C:getSuiteRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSuiteRun, input, options)
end

function C:getSuiteRunReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSuiteRunReport, input, options)
end

function C:listSuiteDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSuiteDefinitions, input, options)
end

function C:listSuiteRuns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSuiteRuns, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:startSuiteRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartSuiteRun, input, options)
end

function C:stopSuiteRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopSuiteRun, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateSuiteDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSuiteDefinition, input, options)
end

return M
