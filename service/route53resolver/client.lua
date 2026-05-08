



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("route53resolver.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("route53resolver.schemas")
local traits = require("smithy.traits")
local types = require("route53resolver.types")
local sdk_defaults = require("aws.sdk_defaults")










































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Route53Resolver"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "route53resolver", signing_region = c.region } }
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

function C:associateFirewallRuleGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateFirewallRuleGroup, input, options)
end

function C:associateResolverEndpointIpAddress(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateResolverEndpointIpAddress, input, options)
end

function C:associateResolverQueryLogConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateResolverQueryLogConfig, input, options)
end

function C:associateResolverRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateResolverRule, input, options)
end

function C:createFirewallDomainList(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFirewallDomainList, input, options)
end

function C:createFirewallRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFirewallRule, input, options)
end

function C:createFirewallRuleGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFirewallRuleGroup, input, options)
end

function C:createOutpostResolver(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateOutpostResolver, input, options)
end

function C:createResolverEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateResolverEndpoint, input, options)
end

function C:createResolverQueryLogConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateResolverQueryLogConfig, input, options)
end

function C:createResolverRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateResolverRule, input, options)
end

function C:deleteFirewallDomainList(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFirewallDomainList, input, options)
end

function C:deleteFirewallRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFirewallRule, input, options)
end

function C:deleteFirewallRuleGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFirewallRuleGroup, input, options)
end

function C:deleteOutpostResolver(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOutpostResolver, input, options)
end

function C:deleteResolverEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResolverEndpoint, input, options)
end

function C:deleteResolverQueryLogConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResolverQueryLogConfig, input, options)
end

function C:deleteResolverRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResolverRule, input, options)
end

function C:disassociateFirewallRuleGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateFirewallRuleGroup, input, options)
end

function C:disassociateResolverEndpointIpAddress(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateResolverEndpointIpAddress, input, options)
end

function C:disassociateResolverQueryLogConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateResolverQueryLogConfig, input, options)
end

function C:disassociateResolverRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateResolverRule, input, options)
end

function C:getFirewallConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFirewallConfig, input, options)
end

function C:getFirewallDomainList(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFirewallDomainList, input, options)
end

function C:getFirewallRuleGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFirewallRuleGroup, input, options)
end

function C:getFirewallRuleGroupAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFirewallRuleGroupAssociation, input, options)
end

function C:getFirewallRuleGroupPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFirewallRuleGroupPolicy, input, options)
end

function C:getOutpostResolver(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOutpostResolver, input, options)
end

function C:getResolverConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResolverConfig, input, options)
end

function C:getResolverDnssecConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResolverDnssecConfig, input, options)
end

function C:getResolverEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResolverEndpoint, input, options)
end

function C:getResolverQueryLogConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResolverQueryLogConfig, input, options)
end

function C:getResolverQueryLogConfigAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResolverQueryLogConfigAssociation, input, options)
end

function C:getResolverQueryLogConfigPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResolverQueryLogConfigPolicy, input, options)
end

function C:getResolverRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResolverRule, input, options)
end

function C:getResolverRuleAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResolverRuleAssociation, input, options)
end

function C:getResolverRulePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResolverRulePolicy, input, options)
end

function C:importFirewallDomains(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportFirewallDomains, input, options)
end

function C:listFirewallConfigs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFirewallConfigs, input, options)
end

function C:listFirewallDomainLists(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFirewallDomainLists, input, options)
end

function C:listFirewallDomains(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFirewallDomains, input, options)
end

function C:listFirewallRuleGroupAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFirewallRuleGroupAssociations, input, options)
end

function C:listFirewallRuleGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFirewallRuleGroups, input, options)
end

function C:listFirewallRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFirewallRules, input, options)
end

function C:listOutpostResolvers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOutpostResolvers, input, options)
end

function C:listResolverConfigs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResolverConfigs, input, options)
end

function C:listResolverDnssecConfigs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResolverDnssecConfigs, input, options)
end

function C:listResolverEndpointIpAddresses(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResolverEndpointIpAddresses, input, options)
end

function C:listResolverEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResolverEndpoints, input, options)
end

function C:listResolverQueryLogConfigAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResolverQueryLogConfigAssociations, input, options)
end

function C:listResolverQueryLogConfigs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResolverQueryLogConfigs, input, options)
end

function C:listResolverRuleAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResolverRuleAssociations, input, options)
end

function C:listResolverRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResolverRules, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putFirewallRuleGroupPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutFirewallRuleGroupPolicy, input, options)
end

function C:putResolverQueryLogConfigPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResolverQueryLogConfigPolicy, input, options)
end

function C:putResolverRulePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResolverRulePolicy, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateFirewallConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFirewallConfig, input, options)
end

function C:updateFirewallDomains(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFirewallDomains, input, options)
end

function C:updateFirewallRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFirewallRule, input, options)
end

function C:updateFirewallRuleGroupAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFirewallRuleGroupAssociation, input, options)
end

function C:updateOutpostResolver(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateOutpostResolver, input, options)
end

function C:updateResolverConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateResolverConfig, input, options)
end

function C:updateResolverDnssecConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateResolverDnssecConfig, input, options)
end

function C:updateResolverEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateResolverEndpoint, input, options)
end

function C:updateResolverRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateResolverRule, input, options)
end

return M
