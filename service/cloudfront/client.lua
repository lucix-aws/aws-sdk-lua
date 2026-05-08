



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("cloudfront.endpoint_rules")
local restxml_protocol = require("smithy.protocol.restxml")
local schemas = require("cloudfront.schemas")
local traits = require("smithy.traits")
local types = require("cloudfront.types")
local sdk_defaults = require("aws.sdk_defaults")













































































































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Cloudfront2020_05_31"
   if not c.protocol then c.protocol = restxml_protocol.new() end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "cloudfront", signing_region = c.region } }
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

function C:associateAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateAlias, input, options)
end

function C:associateDistributionTenantWebACL(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateDistributionTenantWebACL, input, options)
end

function C:associateDistributionWebACL(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateDistributionWebACL, input, options)
end

function C:copyDistribution(input, options)
   return self:invokeOperation(schemas.Service, schemas.CopyDistribution, input, options)
end

function C:createAnycastIpList(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAnycastIpList, input, options)
end

function C:createCachePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCachePolicy, input, options)
end

function C:createCloudFrontOriginAccessIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCloudFrontOriginAccessIdentity, input, options)
end

function C:createConnectionFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConnectionFunction, input, options)
end

function C:createConnectionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConnectionGroup, input, options)
end

function C:createContinuousDeploymentPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateContinuousDeploymentPolicy, input, options)
end

function C:createDistribution(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDistribution, input, options)
end

function C:createDistributionTenant(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDistributionTenant, input, options)
end

function C:createDistributionWithTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDistributionWithTags, input, options)
end

function C:createFieldLevelEncryptionConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFieldLevelEncryptionConfig, input, options)
end

function C:createFieldLevelEncryptionProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFieldLevelEncryptionProfile, input, options)
end

function C:createFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFunction, input, options)
end

function C:createInvalidation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInvalidation, input, options)
end

function C:createInvalidationForDistributionTenant(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInvalidationForDistributionTenant, input, options)
end

function C:createKeyGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateKeyGroup, input, options)
end

function C:createKeyValueStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateKeyValueStore, input, options)
end

function C:createMonitoringSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMonitoringSubscription, input, options)
end

function C:createOriginAccessControl(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateOriginAccessControl, input, options)
end

function C:createOriginRequestPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateOriginRequestPolicy, input, options)
end

function C:createPublicKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePublicKey, input, options)
end

function C:createRealtimeLogConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRealtimeLogConfig, input, options)
end

function C:createResponseHeadersPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateResponseHeadersPolicy, input, options)
end

function C:createStreamingDistribution(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStreamingDistribution, input, options)
end

function C:createStreamingDistributionWithTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStreamingDistributionWithTags, input, options)
end

function C:createTrustStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTrustStore, input, options)
end

function C:createVpcOrigin(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVpcOrigin, input, options)
end

function C:deleteAnycastIpList(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAnycastIpList, input, options)
end

function C:deleteCachePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCachePolicy, input, options)
end

function C:deleteCloudFrontOriginAccessIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCloudFrontOriginAccessIdentity, input, options)
end

function C:deleteConnectionFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConnectionFunction, input, options)
end

function C:deleteConnectionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConnectionGroup, input, options)
end

function C:deleteContinuousDeploymentPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteContinuousDeploymentPolicy, input, options)
end

function C:deleteDistribution(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDistribution, input, options)
end

function C:deleteDistributionTenant(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDistributionTenant, input, options)
end

function C:deleteFieldLevelEncryptionConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFieldLevelEncryptionConfig, input, options)
end

function C:deleteFieldLevelEncryptionProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFieldLevelEncryptionProfile, input, options)
end

function C:deleteFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFunction, input, options)
end

function C:deleteKeyGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteKeyGroup, input, options)
end

function C:deleteKeyValueStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteKeyValueStore, input, options)
end

function C:deleteMonitoringSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMonitoringSubscription, input, options)
end

function C:deleteOriginAccessControl(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOriginAccessControl, input, options)
end

function C:deleteOriginRequestPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOriginRequestPolicy, input, options)
end

function C:deletePublicKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePublicKey, input, options)
end

function C:deleteRealtimeLogConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRealtimeLogConfig, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:deleteResponseHeadersPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResponseHeadersPolicy, input, options)
end

function C:deleteStreamingDistribution(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStreamingDistribution, input, options)
end

function C:deleteTrustStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTrustStore, input, options)
end

function C:deleteVpcOrigin(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVpcOrigin, input, options)
end

function C:describeConnectionFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConnectionFunction, input, options)
end

function C:describeFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFunction, input, options)
end

function C:describeKeyValueStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeKeyValueStore, input, options)
end

function C:disassociateDistributionTenantWebACL(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateDistributionTenantWebACL, input, options)
end

function C:disassociateDistributionWebACL(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateDistributionWebACL, input, options)
end

function C:getAnycastIpList(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAnycastIpList, input, options)
end

function C:getCachePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCachePolicy, input, options)
end

function C:getCachePolicyConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCachePolicyConfig, input, options)
end

function C:getCloudFrontOriginAccessIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCloudFrontOriginAccessIdentity, input, options)
end

function C:getCloudFrontOriginAccessIdentityConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCloudFrontOriginAccessIdentityConfig, input, options)
end

function C:getConnectionFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConnectionFunction, input, options)
end

function C:getConnectionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConnectionGroup, input, options)
end

function C:getConnectionGroupByRoutingEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConnectionGroupByRoutingEndpoint, input, options)
end

function C:getContinuousDeploymentPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetContinuousDeploymentPolicy, input, options)
end

function C:getContinuousDeploymentPolicyConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetContinuousDeploymentPolicyConfig, input, options)
end

function C:getDistribution(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDistribution, input, options)
end

function C:getDistributionConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDistributionConfig, input, options)
end

function C:getDistributionTenant(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDistributionTenant, input, options)
end

function C:getDistributionTenantByDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDistributionTenantByDomain, input, options)
end

function C:getFieldLevelEncryption(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFieldLevelEncryption, input, options)
end

function C:getFieldLevelEncryptionConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFieldLevelEncryptionConfig, input, options)
end

function C:getFieldLevelEncryptionProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFieldLevelEncryptionProfile, input, options)
end

function C:getFieldLevelEncryptionProfileConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFieldLevelEncryptionProfileConfig, input, options)
end

function C:getFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFunction, input, options)
end

function C:getInvalidation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInvalidation, input, options)
end

function C:getInvalidationForDistributionTenant(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInvalidationForDistributionTenant, input, options)
end

function C:getKeyGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetKeyGroup, input, options)
end

function C:getKeyGroupConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetKeyGroupConfig, input, options)
end

function C:getManagedCertificateDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetManagedCertificateDetails, input, options)
end

function C:getMonitoringSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMonitoringSubscription, input, options)
end

function C:getOriginAccessControl(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOriginAccessControl, input, options)
end

function C:getOriginAccessControlConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOriginAccessControlConfig, input, options)
end

function C:getOriginRequestPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOriginRequestPolicy, input, options)
end

function C:getOriginRequestPolicyConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOriginRequestPolicyConfig, input, options)
end

function C:getPublicKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPublicKey, input, options)
end

function C:getPublicKeyConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPublicKeyConfig, input, options)
end

function C:getRealtimeLogConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRealtimeLogConfig, input, options)
end

function C:getResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePolicy, input, options)
end

function C:getResponseHeadersPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResponseHeadersPolicy, input, options)
end

function C:getResponseHeadersPolicyConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResponseHeadersPolicyConfig, input, options)
end

function C:getStreamingDistribution(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStreamingDistribution, input, options)
end

function C:getStreamingDistributionConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStreamingDistributionConfig, input, options)
end

function C:getTrustStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTrustStore, input, options)
end

function C:getVpcOrigin(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVpcOrigin, input, options)
end

function C:listAnycastIpLists(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAnycastIpLists, input, options)
end

function C:listCachePolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCachePolicies, input, options)
end

function C:listCloudFrontOriginAccessIdentities(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCloudFrontOriginAccessIdentities, input, options)
end

function C:listConflictingAliases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConflictingAliases, input, options)
end

function C:listConnectionFunctions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConnectionFunctions, input, options)
end

function C:listConnectionGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConnectionGroups, input, options)
end

function C:listContinuousDeploymentPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListContinuousDeploymentPolicies, input, options)
end

function C:listDistributions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDistributions, input, options)
end

function C:listDistributionsByAnycastIpListId(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDistributionsByAnycastIpListId, input, options)
end

function C:listDistributionsByCachePolicyId(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDistributionsByCachePolicyId, input, options)
end

function C:listDistributionsByConnectionFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDistributionsByConnectionFunction, input, options)
end

function C:listDistributionsByConnectionMode(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDistributionsByConnectionMode, input, options)
end

function C:listDistributionsByKeyGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDistributionsByKeyGroup, input, options)
end

function C:listDistributionsByOriginRequestPolicyId(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDistributionsByOriginRequestPolicyId, input, options)
end

function C:listDistributionsByOwnedResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDistributionsByOwnedResource, input, options)
end

function C:listDistributionsByRealtimeLogConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDistributionsByRealtimeLogConfig, input, options)
end

function C:listDistributionsByResponseHeadersPolicyId(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDistributionsByResponseHeadersPolicyId, input, options)
end

function C:listDistributionsByTrustStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDistributionsByTrustStore, input, options)
end

function C:listDistributionsByVpcOriginId(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDistributionsByVpcOriginId, input, options)
end

function C:listDistributionsByWebACLId(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDistributionsByWebACLId, input, options)
end

function C:listDistributionTenants(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDistributionTenants, input, options)
end

function C:listDistributionTenantsByCustomization(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDistributionTenantsByCustomization, input, options)
end

function C:listDomainConflicts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDomainConflicts, input, options)
end

function C:listFieldLevelEncryptionConfigs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFieldLevelEncryptionConfigs, input, options)
end

function C:listFieldLevelEncryptionProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFieldLevelEncryptionProfiles, input, options)
end

function C:listFunctions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFunctions, input, options)
end

function C:listInvalidations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInvalidations, input, options)
end

function C:listInvalidationsForDistributionTenant(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInvalidationsForDistributionTenant, input, options)
end

function C:listKeyGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListKeyGroups, input, options)
end

function C:listKeyValueStores(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListKeyValueStores, input, options)
end

function C:listOriginAccessControls(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOriginAccessControls, input, options)
end

function C:listOriginRequestPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOriginRequestPolicies, input, options)
end

function C:listPublicKeys(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPublicKeys, input, options)
end

function C:listRealtimeLogConfigs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRealtimeLogConfigs, input, options)
end

function C:listResponseHeadersPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResponseHeadersPolicies, input, options)
end

function C:listStreamingDistributions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStreamingDistributions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTrustStores(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTrustStores, input, options)
end

function C:listVpcOrigins(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVpcOrigins, input, options)
end

function C:publishConnectionFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.PublishConnectionFunction, input, options)
end

function C:publishFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.PublishFunction, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:testConnectionFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestConnectionFunction, input, options)
end

function C:testFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestFunction, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAnycastIpList(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAnycastIpList, input, options)
end

function C:updateCachePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCachePolicy, input, options)
end

function C:updateCloudFrontOriginAccessIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCloudFrontOriginAccessIdentity, input, options)
end

function C:updateConnectionFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConnectionFunction, input, options)
end

function C:updateConnectionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConnectionGroup, input, options)
end

function C:updateContinuousDeploymentPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateContinuousDeploymentPolicy, input, options)
end

function C:updateDistribution(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDistribution, input, options)
end

function C:updateDistributionTenant(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDistributionTenant, input, options)
end

function C:updateDistributionWithStagingConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDistributionWithStagingConfig, input, options)
end

function C:updateDomainAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDomainAssociation, input, options)
end

function C:updateFieldLevelEncryptionConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFieldLevelEncryptionConfig, input, options)
end

function C:updateFieldLevelEncryptionProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFieldLevelEncryptionProfile, input, options)
end

function C:updateFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFunction, input, options)
end

function C:updateKeyGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateKeyGroup, input, options)
end

function C:updateKeyValueStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateKeyValueStore, input, options)
end

function C:updateOriginAccessControl(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateOriginAccessControl, input, options)
end

function C:updateOriginRequestPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateOriginRequestPolicy, input, options)
end

function C:updatePublicKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePublicKey, input, options)
end

function C:updateRealtimeLogConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRealtimeLogConfig, input, options)
end

function C:updateResponseHeadersPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateResponseHeadersPolicy, input, options)
end

function C:updateStreamingDistribution(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateStreamingDistribution, input, options)
end

function C:updateTrustStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTrustStore, input, options)
end

function C:updateVpcOrigin(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVpcOrigin, input, options)
end

function C:verifyDnsConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.VerifyDnsConfiguration, input, options)
end

return M
