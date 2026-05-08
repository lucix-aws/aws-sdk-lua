



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("elasticloadbalancingv2.endpoint_rules")
local query_protocol = require("smithy.protocol.awsquery")
local schemas = require("elasticloadbalancingv2.schemas")
local traits = require("smithy.traits")
local types = require("elasticloadbalancingv2.types")
local sdk_defaults = require("aws.sdk_defaults")

























































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "ElasticLoadBalancing_v10"
   if not c.protocol then c.protocol = query_protocol.new("awsQuery") end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "elasticloadbalancing", signing_region = c.region } }
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

function C:addListenerCertificates(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddListenerCertificates, input, options)
end

function C:addTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddTags, input, options)
end

function C:addTrustStoreRevocations(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddTrustStoreRevocations, input, options)
end

function C:createListener(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateListener, input, options)
end

function C:createLoadBalancer(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLoadBalancer, input, options)
end

function C:createRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRule, input, options)
end

function C:createTargetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTargetGroup, input, options)
end

function C:createTrustStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTrustStore, input, options)
end

function C:deleteListener(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteListener, input, options)
end

function C:deleteLoadBalancer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLoadBalancer, input, options)
end

function C:deleteRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRule, input, options)
end

function C:deleteSharedTrustStoreAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSharedTrustStoreAssociation, input, options)
end

function C:deleteTargetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTargetGroup, input, options)
end

function C:deleteTrustStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTrustStore, input, options)
end

function C:deregisterTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterTargets, input, options)
end

function C:describeAccountLimits(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccountLimits, input, options)
end

function C:describeCapacityReservation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCapacityReservation, input, options)
end

function C:describeListenerAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeListenerAttributes, input, options)
end

function C:describeListenerCertificates(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeListenerCertificates, input, options)
end

function C:describeListeners(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeListeners, input, options)
end

function C:describeLoadBalancerAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLoadBalancerAttributes, input, options)
end

function C:describeLoadBalancers(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLoadBalancers, input, options)
end

function C:describeRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRules, input, options)
end

function C:describeSSLPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSSLPolicies, input, options)
end

function C:describeTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTags, input, options)
end

function C:describeTargetGroupAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTargetGroupAttributes, input, options)
end

function C:describeTargetGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTargetGroups, input, options)
end

function C:describeTargetHealth(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTargetHealth, input, options)
end

function C:describeTrustStoreAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTrustStoreAssociations, input, options)
end

function C:describeTrustStoreRevocations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTrustStoreRevocations, input, options)
end

function C:describeTrustStores(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTrustStores, input, options)
end

function C:getResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePolicy, input, options)
end

function C:getTrustStoreCaCertificatesBundle(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTrustStoreCaCertificatesBundle, input, options)
end

function C:getTrustStoreRevocationContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTrustStoreRevocationContent, input, options)
end

function C:modifyCapacityReservation(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyCapacityReservation, input, options)
end

function C:modifyIpPools(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyIpPools, input, options)
end

function C:modifyListener(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyListener, input, options)
end

function C:modifyListenerAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyListenerAttributes, input, options)
end

function C:modifyLoadBalancerAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyLoadBalancerAttributes, input, options)
end

function C:modifyRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyRule, input, options)
end

function C:modifyTargetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyTargetGroup, input, options)
end

function C:modifyTargetGroupAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyTargetGroupAttributes, input, options)
end

function C:modifyTrustStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyTrustStore, input, options)
end

function C:registerTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterTargets, input, options)
end

function C:removeListenerCertificates(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveListenerCertificates, input, options)
end

function C:removeTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveTags, input, options)
end

function C:removeTrustStoreRevocations(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveTrustStoreRevocations, input, options)
end

function C:setIpAddressType(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetIpAddressType, input, options)
end

function C:setRulePriorities(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetRulePriorities, input, options)
end

function C:setSecurityGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetSecurityGroups, input, options)
end

function C:setSubnets(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetSubnets, input, options)
end

return M
