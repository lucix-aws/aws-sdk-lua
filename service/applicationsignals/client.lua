



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("applicationsignals.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("applicationsignals.schemas")
local traits = require("smithy.traits")
local types = require("applicationsignals.types")
local sdk_defaults = require("aws.sdk_defaults")





























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "ApplicationSignals"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "application-signals", signing_region = c.region } }
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

function C:batchGetServiceLevelObjectiveBudgetReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetServiceLevelObjectiveBudgetReport, input, options)
end

function C:batchUpdateExclusionWindows(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdateExclusionWindows, input, options)
end

function C:createServiceLevelObjective(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateServiceLevelObjective, input, options)
end

function C:deleteGroupingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGroupingConfiguration, input, options)
end

function C:deleteServiceLevelObjective(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteServiceLevelObjective, input, options)
end

function C:getService(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetService, input, options)
end

function C:getServiceLevelObjective(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServiceLevelObjective, input, options)
end

function C:listAuditFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAuditFindings, input, options)
end

function C:listEntityEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEntityEvents, input, options)
end

function C:listGroupingAttributeDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGroupingAttributeDefinitions, input, options)
end

function C:listServiceDependencies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServiceDependencies, input, options)
end

function C:listServiceDependents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServiceDependents, input, options)
end

function C:listServiceLevelObjectiveExclusionWindows(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServiceLevelObjectiveExclusionWindows, input, options)
end

function C:listServiceLevelObjectives(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServiceLevelObjectives, input, options)
end

function C:listServiceOperations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServiceOperations, input, options)
end

function C:listServices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServices, input, options)
end

function C:listServiceStates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServiceStates, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putGroupingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutGroupingConfiguration, input, options)
end

function C:startDiscovery(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDiscovery, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateServiceLevelObjective(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateServiceLevelObjective, input, options)
end

return M
