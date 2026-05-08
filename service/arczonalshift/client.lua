



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("arczonalshift.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("arczonalshift.schemas")
local traits = require("smithy.traits")
local types = require("arczonalshift.types")
local sdk_defaults = require("aws.sdk_defaults")





















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "PercDataPlane"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "arc-zonal-shift", signing_region = c.region } }
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

function C:cancelPracticeRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelPracticeRun, input, options)
end

function C:cancelZonalShift(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelZonalShift, input, options)
end

function C:createPracticeRunConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePracticeRunConfiguration, input, options)
end

function C:deletePracticeRunConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePracticeRunConfiguration, input, options)
end

function C:getAutoshiftObserverNotificationStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAutoshiftObserverNotificationStatus, input, options)
end

function C:getManagedResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetManagedResource, input, options)
end

function C:listAutoshifts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAutoshifts, input, options)
end

function C:listManagedResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListManagedResources, input, options)
end

function C:listZonalShifts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListZonalShifts, input, options)
end

function C:startPracticeRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartPracticeRun, input, options)
end

function C:startZonalShift(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartZonalShift, input, options)
end

function C:updateAutoshiftObserverNotificationStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAutoshiftObserverNotificationStatus, input, options)
end

function C:updatePracticeRunConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePracticeRunConfiguration, input, options)
end

function C:updateZonalAutoshiftConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateZonalAutoshiftConfiguration, input, options)
end

function C:updateZonalShift(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateZonalShift, input, options)
end

return M
