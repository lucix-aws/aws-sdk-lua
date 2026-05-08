



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("route53globalresolver.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("route53globalresolver.schemas")
local traits = require("smithy.traits")
local types = require("route53globalresolver.types")
local sdk_defaults = require("aws.sdk_defaults")





















































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "EC2DNSGlobalResolverCustomerAPI"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "route53globalresolver", signing_region = c.region } }
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

function C:associateHostedZone(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateHostedZone, input, options)
end

function C:batchCreateFirewallRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchCreateFirewallRule, input, options)
end

function C:batchDeleteFirewallRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteFirewallRule, input, options)
end

function C:batchUpdateFirewallRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdateFirewallRule, input, options)
end

function C:createAccessSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccessSource, input, options)
end

function C:createAccessToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccessToken, input, options)
end

function C:createDNSView(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDNSView, input, options)
end

function C:createFirewallDomainList(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFirewallDomainList, input, options)
end

function C:createFirewallRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFirewallRule, input, options)
end

function C:createGlobalResolver(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGlobalResolver, input, options)
end

function C:deleteAccessSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccessSource, input, options)
end

function C:deleteAccessToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccessToken, input, options)
end

function C:deleteDNSView(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDNSView, input, options)
end

function C:deleteFirewallDomainList(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFirewallDomainList, input, options)
end

function C:deleteFirewallRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFirewallRule, input, options)
end

function C:deleteGlobalResolver(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGlobalResolver, input, options)
end

function C:disableDNSView(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableDNSView, input, options)
end

function C:disassociateHostedZone(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateHostedZone, input, options)
end

function C:enableDNSView(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableDNSView, input, options)
end

function C:getAccessSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccessSource, input, options)
end

function C:getAccessToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccessToken, input, options)
end

function C:getDNSView(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDNSView, input, options)
end

function C:getFirewallDomainList(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFirewallDomainList, input, options)
end

function C:getFirewallRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFirewallRule, input, options)
end

function C:getGlobalResolver(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGlobalResolver, input, options)
end

function C:getHostedZoneAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetHostedZoneAssociation, input, options)
end

function C:getManagedFirewallDomainList(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetManagedFirewallDomainList, input, options)
end

function C:importFirewallDomains(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportFirewallDomains, input, options)
end

function C:listAccessSources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccessSources, input, options)
end

function C:listAccessTokens(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccessTokens, input, options)
end

function C:listDNSViews(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDNSViews, input, options)
end

function C:listFirewallDomainLists(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFirewallDomainLists, input, options)
end

function C:listFirewallDomains(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFirewallDomains, input, options)
end

function C:listFirewallRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFirewallRules, input, options)
end

function C:listGlobalResolvers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGlobalResolvers, input, options)
end

function C:listHostedZoneAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListHostedZoneAssociations, input, options)
end

function C:listManagedFirewallDomainLists(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListManagedFirewallDomainLists, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAccessSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccessSource, input, options)
end

function C:updateAccessToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccessToken, input, options)
end

function C:updateDNSView(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDNSView, input, options)
end

function C:updateFirewallDomains(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFirewallDomains, input, options)
end

function C:updateFirewallRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFirewallRule, input, options)
end

function C:updateGlobalResolver(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGlobalResolver, input, options)
end

function C:updateHostedZoneAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateHostedZoneAssociation, input, options)
end

return M
