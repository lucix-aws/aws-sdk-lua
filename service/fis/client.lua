



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("fis.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("fis.schemas")
local traits = require("smithy.traits")
local types = require("fis.types")
local sdk_defaults = require("aws.sdk_defaults")
































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "FaultInjectionSimulator"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "fis", signing_region = c.region } }
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

function C:createExperimentTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateExperimentTemplate, input, options)
end

function C:createTargetAccountConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTargetAccountConfiguration, input, options)
end

function C:deleteExperimentTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteExperimentTemplate, input, options)
end

function C:deleteTargetAccountConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTargetAccountConfiguration, input, options)
end

function C:getAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAction, input, options)
end

function C:getExperiment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetExperiment, input, options)
end

function C:getExperimentTargetAccountConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetExperimentTargetAccountConfiguration, input, options)
end

function C:getExperimentTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetExperimentTemplate, input, options)
end

function C:getSafetyLever(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSafetyLever, input, options)
end

function C:getTargetAccountConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTargetAccountConfiguration, input, options)
end

function C:getTargetResourceType(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTargetResourceType, input, options)
end

function C:listActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListActions, input, options)
end

function C:listExperimentResolvedTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExperimentResolvedTargets, input, options)
end

function C:listExperiments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExperiments, input, options)
end

function C:listExperimentTargetAccountConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExperimentTargetAccountConfigurations, input, options)
end

function C:listExperimentTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExperimentTemplates, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTargetAccountConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTargetAccountConfigurations, input, options)
end

function C:listTargetResourceTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTargetResourceTypes, input, options)
end

function C:startExperiment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartExperiment, input, options)
end

function C:stopExperiment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopExperiment, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateExperimentTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateExperimentTemplate, input, options)
end

function C:updateSafetyLeverState(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSafetyLeverState, input, options)
end

function C:updateTargetAccountConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTargetAccountConfiguration, input, options)
end

return M
