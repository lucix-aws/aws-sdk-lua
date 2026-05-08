



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("elasticloadbalancing.endpoint_rules")
local query_protocol = require("smithy.protocol.awsquery")
local schemas = require("elasticloadbalancing.schemas")
local traits = require("smithy.traits")
local types = require("elasticloadbalancing.types")
local sdk_defaults = require("aws.sdk_defaults")



































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "ElasticLoadBalancing_v7"
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

function C:addTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddTags, input, options)
end

function C:applySecurityGroupsToLoadBalancer(input, options)
   return self:invokeOperation(schemas.Service, schemas.ApplySecurityGroupsToLoadBalancer, input, options)
end

function C:attachLoadBalancerToSubnets(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachLoadBalancerToSubnets, input, options)
end

function C:configureHealthCheck(input, options)
   return self:invokeOperation(schemas.Service, schemas.ConfigureHealthCheck, input, options)
end

function C:createAppCookieStickinessPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAppCookieStickinessPolicy, input, options)
end

function C:createLBCookieStickinessPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLBCookieStickinessPolicy, input, options)
end

function C:createLoadBalancer(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLoadBalancer, input, options)
end

function C:createLoadBalancerListeners(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLoadBalancerListeners, input, options)
end

function C:createLoadBalancerPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLoadBalancerPolicy, input, options)
end

function C:deleteLoadBalancer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLoadBalancer, input, options)
end

function C:deleteLoadBalancerListeners(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLoadBalancerListeners, input, options)
end

function C:deleteLoadBalancerPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLoadBalancerPolicy, input, options)
end

function C:deregisterInstancesFromLoadBalancer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterInstancesFromLoadBalancer, input, options)
end

function C:describeAccountLimits(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccountLimits, input, options)
end

function C:describeInstanceHealth(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstanceHealth, input, options)
end

function C:describeLoadBalancerAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLoadBalancerAttributes, input, options)
end

function C:describeLoadBalancerPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLoadBalancerPolicies, input, options)
end

function C:describeLoadBalancerPolicyTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLoadBalancerPolicyTypes, input, options)
end

function C:describeLoadBalancers(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLoadBalancers, input, options)
end

function C:describeTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTags, input, options)
end

function C:detachLoadBalancerFromSubnets(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachLoadBalancerFromSubnets, input, options)
end

function C:disableAvailabilityZonesForLoadBalancer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableAvailabilityZonesForLoadBalancer, input, options)
end

function C:enableAvailabilityZonesForLoadBalancer(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableAvailabilityZonesForLoadBalancer, input, options)
end

function C:modifyLoadBalancerAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyLoadBalancerAttributes, input, options)
end

function C:registerInstancesWithLoadBalancer(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterInstancesWithLoadBalancer, input, options)
end

function C:removeTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveTags, input, options)
end

function C:setLoadBalancerListenerSSLCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetLoadBalancerListenerSSLCertificate, input, options)
end

function C:setLoadBalancerPoliciesForBackendServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetLoadBalancerPoliciesForBackendServer, input, options)
end

function C:setLoadBalancerPoliciesOfListener(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetLoadBalancerPoliciesOfListener, input, options)
end

return M
