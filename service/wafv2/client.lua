



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("wafv2.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("wafv2.schemas")
local traits = require("smithy.traits")
local types = require("wafv2.types")
local sdk_defaults = require("aws.sdk_defaults")





























































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSWAF_20190729"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "wafv2", signing_region = c.region } }
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

function C:associateWebACL(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateWebACL, input, options)
end

function C:checkCapacity(input, options)
   return self:invokeOperation(schemas.Service, schemas.CheckCapacity, input, options)
end

function C:createAPIKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAPIKey, input, options)
end

function C:createIPSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIPSet, input, options)
end

function C:createRegexPatternSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRegexPatternSet, input, options)
end

function C:createRuleGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRuleGroup, input, options)
end

function C:createWebACL(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWebACL, input, options)
end

function C:deleteAPIKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAPIKey, input, options)
end

function C:deleteFirewallManagerRuleGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFirewallManagerRuleGroups, input, options)
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

function C:deleteRegexPatternSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRegexPatternSet, input, options)
end

function C:deleteRuleGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRuleGroup, input, options)
end

function C:deleteWebACL(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWebACL, input, options)
end

function C:describeAllManagedProducts(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAllManagedProducts, input, options)
end

function C:describeManagedProductsByVendor(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeManagedProductsByVendor, input, options)
end

function C:describeManagedRuleGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeManagedRuleGroup, input, options)
end

function C:disassociateWebACL(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateWebACL, input, options)
end

function C:generateMobileSdkReleaseUrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.GenerateMobileSdkReleaseUrl, input, options)
end

function C:getDecryptedAPIKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDecryptedAPIKey, input, options)
end

function C:getIPSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIPSet, input, options)
end

function C:getLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLoggingConfiguration, input, options)
end

function C:getManagedRuleSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetManagedRuleSet, input, options)
end

function C:getMobileSdkRelease(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMobileSdkRelease, input, options)
end

function C:getPermissionPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPermissionPolicy, input, options)
end

function C:getRateBasedStatementManagedKeys(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRateBasedStatementManagedKeys, input, options)
end

function C:getRegexPatternSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRegexPatternSet, input, options)
end

function C:getRuleGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRuleGroup, input, options)
end

function C:getSampledRequests(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSampledRequests, input, options)
end

function C:getTopPathStatisticsByTraffic(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTopPathStatisticsByTraffic, input, options)
end

function C:getWebACL(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWebACL, input, options)
end

function C:getWebACLForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWebACLForResource, input, options)
end

function C:listAPIKeys(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAPIKeys, input, options)
end

function C:listAvailableManagedRuleGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAvailableManagedRuleGroups, input, options)
end

function C:listAvailableManagedRuleGroupVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAvailableManagedRuleGroupVersions, input, options)
end

function C:listIPSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIPSets, input, options)
end

function C:listLoggingConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLoggingConfigurations, input, options)
end

function C:listManagedRuleSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListManagedRuleSets, input, options)
end

function C:listMobileSdkReleases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMobileSdkReleases, input, options)
end

function C:listRegexPatternSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRegexPatternSets, input, options)
end

function C:listResourcesForWebACL(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourcesForWebACL, input, options)
end

function C:listRuleGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRuleGroups, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listWebACLs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWebACLs, input, options)
end

function C:putLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutLoggingConfiguration, input, options)
end

function C:putManagedRuleSetVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutManagedRuleSetVersions, input, options)
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

function C:updateIPSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIPSet, input, options)
end

function C:updateManagedRuleSetVersionExpiryDate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateManagedRuleSetVersionExpiryDate, input, options)
end

function C:updateRegexPatternSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRegexPatternSet, input, options)
end

function C:updateRuleGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRuleGroup, input, options)
end

function C:updateWebACL(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWebACL, input, options)
end

return M
