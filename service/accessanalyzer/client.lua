



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("accessanalyzer.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("accessanalyzer.schemas")
local traits = require("smithy.traits")
local types = require("accessanalyzer.types")
local sdk_defaults = require("aws.sdk_defaults")











































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AccessAnalyzer"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "access-analyzer", signing_region = c.region } }
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

function C:applyArchiveRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.ApplyArchiveRule, input, options)
end

function C:cancelPolicyGeneration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelPolicyGeneration, input, options)
end

function C:checkAccessNotGranted(input, options)
   return self:invokeOperation(schemas.Service, schemas.CheckAccessNotGranted, input, options)
end

function C:checkNoNewAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.CheckNoNewAccess, input, options)
end

function C:checkNoPublicAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.CheckNoPublicAccess, input, options)
end

function C:createAccessPreview(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccessPreview, input, options)
end

function C:createAnalyzer(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAnalyzer, input, options)
end

function C:createArchiveRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateArchiveRule, input, options)
end

function C:deleteAnalyzer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAnalyzer, input, options)
end

function C:deleteArchiveRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteArchiveRule, input, options)
end

function C:generateFindingRecommendation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GenerateFindingRecommendation, input, options)
end

function C:getAccessPreview(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccessPreview, input, options)
end

function C:getAnalyzedResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAnalyzedResource, input, options)
end

function C:getAnalyzer(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAnalyzer, input, options)
end

function C:getArchiveRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetArchiveRule, input, options)
end

function C:getFinding(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFinding, input, options)
end

function C:getFindingRecommendation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFindingRecommendation, input, options)
end

function C:getFindingsStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFindingsStatistics, input, options)
end

function C:getFindingV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFindingV2, input, options)
end

function C:getGeneratedPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGeneratedPolicy, input, options)
end

function C:listAccessPreviewFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccessPreviewFindings, input, options)
end

function C:listAccessPreviews(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccessPreviews, input, options)
end

function C:listAnalyzedResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAnalyzedResources, input, options)
end

function C:listAnalyzers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAnalyzers, input, options)
end

function C:listArchiveRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListArchiveRules, input, options)
end

function C:listFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFindings, input, options)
end

function C:listFindingsV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFindingsV2, input, options)
end

function C:listPolicyGenerations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPolicyGenerations, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:startPolicyGeneration(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartPolicyGeneration, input, options)
end

function C:startResourceScan(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartResourceScan, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAnalyzer(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAnalyzer, input, options)
end

function C:updateArchiveRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateArchiveRule, input, options)
end

function C:updateFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFindings, input, options)
end

function C:validatePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.ValidatePolicy, input, options)
end

return M
