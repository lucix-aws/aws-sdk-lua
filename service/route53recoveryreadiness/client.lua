



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("route53recoveryreadiness.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("route53recoveryreadiness.schemas")
local traits = require("smithy.traits")
local types = require("route53recoveryreadiness.types")
local sdk_defaults = require("aws.sdk_defaults")






































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Route53RecoveryReadiness"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "route53-recovery-readiness", signing_region = c.region } }
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

function C:createCell(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCell, input, options)
end

function C:createCrossAccountAuthorization(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCrossAccountAuthorization, input, options)
end

function C:createReadinessCheck(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateReadinessCheck, input, options)
end

function C:createRecoveryGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRecoveryGroup, input, options)
end

function C:createResourceSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateResourceSet, input, options)
end

function C:deleteCell(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCell, input, options)
end

function C:deleteCrossAccountAuthorization(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCrossAccountAuthorization, input, options)
end

function C:deleteReadinessCheck(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteReadinessCheck, input, options)
end

function C:deleteRecoveryGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRecoveryGroup, input, options)
end

function C:deleteResourceSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourceSet, input, options)
end

function C:getArchitectureRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetArchitectureRecommendations, input, options)
end

function C:getCell(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCell, input, options)
end

function C:getCellReadinessSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCellReadinessSummary, input, options)
end

function C:getReadinessCheck(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReadinessCheck, input, options)
end

function C:getReadinessCheckResourceStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReadinessCheckResourceStatus, input, options)
end

function C:getReadinessCheckStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReadinessCheckStatus, input, options)
end

function C:getRecoveryGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRecoveryGroup, input, options)
end

function C:getRecoveryGroupReadinessSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRecoveryGroupReadinessSummary, input, options)
end

function C:getResourceSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourceSet, input, options)
end

function C:listCells(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCells, input, options)
end

function C:listCrossAccountAuthorizations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCrossAccountAuthorizations, input, options)
end

function C:listReadinessChecks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReadinessChecks, input, options)
end

function C:listRecoveryGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecoveryGroups, input, options)
end

function C:listResourceSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceSets, input, options)
end

function C:listRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRules, input, options)
end

function C:listTagsForResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResources, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateCell(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCell, input, options)
end

function C:updateReadinessCheck(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateReadinessCheck, input, options)
end

function C:updateRecoveryGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRecoveryGroup, input, options)
end

function C:updateResourceSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateResourceSet, input, options)
end

return M
