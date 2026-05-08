



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("waf.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("waf.schemas")
local traits = require("smithy.traits")
local types = require("waf.types")
local sdk_defaults = require("aws.sdk_defaults")



















































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSWAF_20150824"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.1", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "waf", signing_region = c.region } }
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

function C:createByteMatchSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateByteMatchSet, input, options)
end

function C:createGeoMatchSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGeoMatchSet, input, options)
end

function C:createIPSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIPSet, input, options)
end

function C:createRateBasedRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRateBasedRule, input, options)
end

function C:createRegexMatchSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRegexMatchSet, input, options)
end

function C:createRegexPatternSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRegexPatternSet, input, options)
end

function C:createRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRule, input, options)
end

function C:createRuleGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRuleGroup, input, options)
end

function C:createSizeConstraintSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSizeConstraintSet, input, options)
end

function C:createSqlInjectionMatchSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSqlInjectionMatchSet, input, options)
end

function C:createWebACL(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWebACL, input, options)
end

function C:createWebACLMigrationStack(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWebACLMigrationStack, input, options)
end

function C:createXssMatchSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateXssMatchSet, input, options)
end

function C:deleteByteMatchSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteByteMatchSet, input, options)
end

function C:deleteGeoMatchSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGeoMatchSet, input, options)
end

function C:deleteIPSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIPSet, input, options)
end

function C:deleteLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLoggingConfiguration, input, options)
end

function C:deletePermissionPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePermissionPolicy, input, options)
end

function C:deleteRateBasedRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRateBasedRule, input, options)
end

function C:deleteRegexMatchSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRegexMatchSet, input, options)
end

function C:deleteRegexPatternSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRegexPatternSet, input, options)
end

function C:deleteRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRule, input, options)
end

function C:deleteRuleGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRuleGroup, input, options)
end

function C:deleteSizeConstraintSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSizeConstraintSet, input, options)
end

function C:deleteSqlInjectionMatchSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSqlInjectionMatchSet, input, options)
end

function C:deleteWebACL(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWebACL, input, options)
end

function C:deleteXssMatchSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteXssMatchSet, input, options)
end

function C:getByteMatchSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetByteMatchSet, input, options)
end

function C:getChangeToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetChangeToken, input, options)
end

function C:getChangeTokenStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetChangeTokenStatus, input, options)
end

function C:getGeoMatchSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGeoMatchSet, input, options)
end

function C:getIPSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIPSet, input, options)
end

function C:getLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLoggingConfiguration, input, options)
end

function C:getPermissionPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPermissionPolicy, input, options)
end

function C:getRateBasedRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRateBasedRule, input, options)
end

function C:getRateBasedRuleManagedKeys(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRateBasedRuleManagedKeys, input, options)
end

function C:getRegexMatchSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRegexMatchSet, input, options)
end

function C:getRegexPatternSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRegexPatternSet, input, options)
end

function C:getRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRule, input, options)
end

function C:getRuleGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRuleGroup, input, options)
end

function C:getSampledRequests(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSampledRequests, input, options)
end

function C:getSizeConstraintSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSizeConstraintSet, input, options)
end

function C:getSqlInjectionMatchSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSqlInjectionMatchSet, input, options)
end

function C:getWebACL(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWebACL, input, options)
end

function C:getXssMatchSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetXssMatchSet, input, options)
end

function C:listActivatedRulesInRuleGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListActivatedRulesInRuleGroup, input, options)
end

function C:listByteMatchSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListByteMatchSets, input, options)
end

function C:listGeoMatchSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGeoMatchSets, input, options)
end

function C:listIPSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIPSets, input, options)
end

function C:listLoggingConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLoggingConfigurations, input, options)
end

function C:listRateBasedRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRateBasedRules, input, options)
end

function C:listRegexMatchSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRegexMatchSets, input, options)
end

function C:listRegexPatternSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRegexPatternSets, input, options)
end

function C:listRuleGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRuleGroups, input, options)
end

function C:listRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRules, input, options)
end

function C:listSizeConstraintSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSizeConstraintSets, input, options)
end

function C:listSqlInjectionMatchSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSqlInjectionMatchSets, input, options)
end

function C:listSubscribedRuleGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSubscribedRuleGroups, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listWebACLs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWebACLs, input, options)
end

function C:listXssMatchSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListXssMatchSets, input, options)
end

function C:putLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutLoggingConfiguration, input, options)
end

function C:putPermissionPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutPermissionPolicy, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateByteMatchSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateByteMatchSet, input, options)
end

function C:updateGeoMatchSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGeoMatchSet, input, options)
end

function C:updateIPSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIPSet, input, options)
end

function C:updateRateBasedRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRateBasedRule, input, options)
end

function C:updateRegexMatchSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRegexMatchSet, input, options)
end

function C:updateRegexPatternSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRegexPatternSet, input, options)
end

function C:updateRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRule, input, options)
end

function C:updateRuleGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRuleGroup, input, options)
end

function C:updateSizeConstraintSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSizeConstraintSet, input, options)
end

function C:updateSqlInjectionMatchSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSqlInjectionMatchSet, input, options)
end

function C:updateWebACL(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWebACL, input, options)
end

function C:updateXssMatchSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateXssMatchSet, input, options)
end

return M
