



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("controltower.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("controltower.schemas")
local traits = require("smithy.traits")
local types = require("controltower.types")
local sdk_defaults = require("aws.sdk_defaults")


































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSControlTowerApis"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "controltower", signing_region = c.region } }
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

function C:createLandingZone(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLandingZone, input, options)
end

function C:deleteLandingZone(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLandingZone, input, options)
end

function C:disableBaseline(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableBaseline, input, options)
end

function C:disableControl(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableControl, input, options)
end

function C:enableBaseline(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableBaseline, input, options)
end

function C:enableControl(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableControl, input, options)
end

function C:getBaseline(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBaseline, input, options)
end

function C:getBaselineOperation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBaselineOperation, input, options)
end

function C:getControlOperation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetControlOperation, input, options)
end

function C:getEnabledBaseline(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEnabledBaseline, input, options)
end

function C:getEnabledControl(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEnabledControl, input, options)
end

function C:getLandingZone(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLandingZone, input, options)
end

function C:getLandingZoneOperation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLandingZoneOperation, input, options)
end

function C:listBaselines(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBaselines, input, options)
end

function C:listControlOperations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListControlOperations, input, options)
end

function C:listEnabledBaselines(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEnabledBaselines, input, options)
end

function C:listEnabledControls(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEnabledControls, input, options)
end

function C:listLandingZoneOperations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLandingZoneOperations, input, options)
end

function C:listLandingZones(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLandingZones, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:resetEnabledBaseline(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetEnabledBaseline, input, options)
end

function C:resetEnabledControl(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetEnabledControl, input, options)
end

function C:resetLandingZone(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetLandingZone, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateEnabledBaseline(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEnabledBaseline, input, options)
end

function C:updateEnabledControl(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEnabledControl, input, options)
end

function C:updateLandingZone(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLandingZone, input, options)
end

return M
