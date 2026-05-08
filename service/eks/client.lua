



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("eks.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("eks.schemas")
local traits = require("smithy.traits")
local types = require("eks.types")
local sdk_defaults = require("aws.sdk_defaults")






































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSWesleyFrontend"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "eks", signing_region = c.region } }
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

function C:associateAccessPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateAccessPolicy, input, options)
end

function C:associateEncryptionConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateEncryptionConfig, input, options)
end

function C:associateIdentityProviderConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateIdentityProviderConfig, input, options)
end

function C:createAccessEntry(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccessEntry, input, options)
end

function C:createAddon(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAddon, input, options)
end

function C:createCapability(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCapability, input, options)
end

function C:createCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCluster, input, options)
end

function C:createEksAnywhereSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEksAnywhereSubscription, input, options)
end

function C:createFargateProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFargateProfile, input, options)
end

function C:createNodegroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNodegroup, input, options)
end

function C:createPodIdentityAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePodIdentityAssociation, input, options)
end

function C:deleteAccessEntry(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccessEntry, input, options)
end

function C:deleteAddon(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAddon, input, options)
end

function C:deleteCapability(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCapability, input, options)
end

function C:deleteCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCluster, input, options)
end

function C:deleteEksAnywhereSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEksAnywhereSubscription, input, options)
end

function C:deleteFargateProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFargateProfile, input, options)
end

function C:deleteNodegroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNodegroup, input, options)
end

function C:deletePodIdentityAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePodIdentityAssociation, input, options)
end

function C:deregisterCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterCluster, input, options)
end

function C:describeAccessEntry(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccessEntry, input, options)
end

function C:describeAddon(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAddon, input, options)
end

function C:describeAddonConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAddonConfiguration, input, options)
end

function C:describeAddonVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAddonVersions, input, options)
end

function C:describeCapability(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCapability, input, options)
end

function C:describeCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCluster, input, options)
end

function C:describeClusterVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClusterVersions, input, options)
end

function C:describeEksAnywhereSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEksAnywhereSubscription, input, options)
end

function C:describeFargateProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFargateProfile, input, options)
end

function C:describeIdentityProviderConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIdentityProviderConfig, input, options)
end

function C:describeInsight(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInsight, input, options)
end

function C:describeInsightsRefresh(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInsightsRefresh, input, options)
end

function C:describeNodegroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNodegroup, input, options)
end

function C:describePodIdentityAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePodIdentityAssociation, input, options)
end

function C:describeUpdate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeUpdate, input, options)
end

function C:disassociateAccessPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateAccessPolicy, input, options)
end

function C:disassociateIdentityProviderConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateIdentityProviderConfig, input, options)
end

function C:listAccessEntries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccessEntries, input, options)
end

function C:listAccessPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccessPolicies, input, options)
end

function C:listAddons(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAddons, input, options)
end

function C:listAssociatedAccessPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssociatedAccessPolicies, input, options)
end

function C:listCapabilities(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCapabilities, input, options)
end

function C:listClusters(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListClusters, input, options)
end

function C:listEksAnywhereSubscriptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEksAnywhereSubscriptions, input, options)
end

function C:listFargateProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFargateProfiles, input, options)
end

function C:listIdentityProviderConfigs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIdentityProviderConfigs, input, options)
end

function C:listInsights(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInsights, input, options)
end

function C:listNodegroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNodegroups, input, options)
end

function C:listPodIdentityAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPodIdentityAssociations, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listUpdates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUpdates, input, options)
end

function C:registerCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterCluster, input, options)
end

function C:startInsightsRefresh(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartInsightsRefresh, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAccessEntry(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccessEntry, input, options)
end

function C:updateAddon(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAddon, input, options)
end

function C:updateCapability(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCapability, input, options)
end

function C:updateClusterConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateClusterConfig, input, options)
end

function C:updateClusterVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateClusterVersion, input, options)
end

function C:updateEksAnywhereSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEksAnywhereSubscription, input, options)
end

function C:updateNodegroupConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNodegroupConfig, input, options)
end

function C:updateNodegroupVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNodegroupVersion, input, options)
end

function C:updatePodIdentityAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePodIdentityAssociation, input, options)
end

return M
