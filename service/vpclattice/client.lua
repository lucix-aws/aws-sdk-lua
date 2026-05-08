



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("vpclattice.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("vpclattice.schemas")
local traits = require("smithy.traits")
local types = require("vpclattice.types")
local sdk_defaults = require("aws.sdk_defaults")















































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "MercuryControlPlane"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "vpc-lattice", signing_region = c.region } }
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

function C:batchUpdateRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdateRule, input, options)
end

function C:createAccessLogSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccessLogSubscription, input, options)
end

function C:createListener(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateListener, input, options)
end

function C:createResourceConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateResourceConfiguration, input, options)
end

function C:createResourceGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateResourceGateway, input, options)
end

function C:createRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRule, input, options)
end

function C:createService(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateService, input, options)
end

function C:createServiceNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateServiceNetwork, input, options)
end

function C:createServiceNetworkResourceAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateServiceNetworkResourceAssociation, input, options)
end

function C:createServiceNetworkServiceAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateServiceNetworkServiceAssociation, input, options)
end

function C:createServiceNetworkVpcAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateServiceNetworkVpcAssociation, input, options)
end

function C:createTargetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTargetGroup, input, options)
end

function C:deleteAccessLogSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccessLogSubscription, input, options)
end

function C:deleteAuthPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAuthPolicy, input, options)
end

function C:deleteDomainVerification(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDomainVerification, input, options)
end

function C:deleteListener(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteListener, input, options)
end

function C:deleteResourceConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourceConfiguration, input, options)
end

function C:deleteResourceEndpointAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourceEndpointAssociation, input, options)
end

function C:deleteResourceGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourceGateway, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:deleteRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRule, input, options)
end

function C:deleteService(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteService, input, options)
end

function C:deleteServiceNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteServiceNetwork, input, options)
end

function C:deleteServiceNetworkResourceAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteServiceNetworkResourceAssociation, input, options)
end

function C:deleteServiceNetworkServiceAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteServiceNetworkServiceAssociation, input, options)
end

function C:deleteServiceNetworkVpcAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteServiceNetworkVpcAssociation, input, options)
end

function C:deleteTargetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTargetGroup, input, options)
end

function C:deregisterTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterTargets, input, options)
end

function C:getAccessLogSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccessLogSubscription, input, options)
end

function C:getAuthPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAuthPolicy, input, options)
end

function C:getDomainVerification(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDomainVerification, input, options)
end

function C:getListener(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetListener, input, options)
end

function C:getResourceConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourceConfiguration, input, options)
end

function C:getResourceGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourceGateway, input, options)
end

function C:getResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePolicy, input, options)
end

function C:getRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRule, input, options)
end

function C:getService(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetService, input, options)
end

function C:getServiceNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServiceNetwork, input, options)
end

function C:getServiceNetworkResourceAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServiceNetworkResourceAssociation, input, options)
end

function C:getServiceNetworkServiceAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServiceNetworkServiceAssociation, input, options)
end

function C:getServiceNetworkVpcAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServiceNetworkVpcAssociation, input, options)
end

function C:getTargetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTargetGroup, input, options)
end

function C:listAccessLogSubscriptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccessLogSubscriptions, input, options)
end

function C:listDomainVerifications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDomainVerifications, input, options)
end

function C:listListeners(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListListeners, input, options)
end

function C:listResourceConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceConfigurations, input, options)
end

function C:listResourceEndpointAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceEndpointAssociations, input, options)
end

function C:listResourceGateways(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceGateways, input, options)
end

function C:listRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRules, input, options)
end

function C:listServiceNetworkResourceAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServiceNetworkResourceAssociations, input, options)
end

function C:listServiceNetworks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServiceNetworks, input, options)
end

function C:listServiceNetworkServiceAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServiceNetworkServiceAssociations, input, options)
end

function C:listServiceNetworkVpcAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServiceNetworkVpcAssociations, input, options)
end

function C:listServiceNetworkVpcEndpointAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServiceNetworkVpcEndpointAssociations, input, options)
end

function C:listServices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServices, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTargetGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTargetGroups, input, options)
end

function C:listTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTargets, input, options)
end

function C:putAuthPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAuthPolicy, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:registerTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterTargets, input, options)
end

function C:startDomainVerification(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDomainVerification, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAccessLogSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccessLogSubscription, input, options)
end

function C:updateListener(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateListener, input, options)
end

function C:updateResourceConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateResourceConfiguration, input, options)
end

function C:updateResourceGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateResourceGateway, input, options)
end

function C:updateRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRule, input, options)
end

function C:updateService(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateService, input, options)
end

function C:updateServiceNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateServiceNetwork, input, options)
end

function C:updateServiceNetworkVpcAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateServiceNetworkVpcAssociation, input, options)
end

function C:updateTargetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTargetGroup, input, options)
end

return M
