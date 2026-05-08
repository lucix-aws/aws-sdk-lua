



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("route53.endpoint_rules")
local restxml_protocol = require("smithy.protocol.restxml")
local schemas = require("route53.schemas")
local traits = require("smithy.traits")
local types = require("route53.types")
local sdk_defaults = require("aws.sdk_defaults")













































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSDnsV20130401"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "route53", signing_region = c.region } }
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

function C:activateKeySigningKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.ActivateKeySigningKey, input, options)
end

function C:associateVPCWithHostedZone(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateVPCWithHostedZone, input, options)
end

function C:changeCidrCollection(input, options)
   return self:invokeOperation(schemas.Service, schemas.ChangeCidrCollection, input, options)
end

function C:changeResourceRecordSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ChangeResourceRecordSets, input, options)
end

function C:changeTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ChangeTagsForResource, input, options)
end

function C:createCidrCollection(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCidrCollection, input, options)
end

function C:createHealthCheck(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateHealthCheck, input, options)
end

function C:createHostedZone(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateHostedZone, input, options)
end

function C:createKeySigningKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateKeySigningKey, input, options)
end

function C:createQueryLoggingConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateQueryLoggingConfig, input, options)
end

function C:createReusableDelegationSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateReusableDelegationSet, input, options)
end

function C:createTrafficPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTrafficPolicy, input, options)
end

function C:createTrafficPolicyInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTrafficPolicyInstance, input, options)
end

function C:createTrafficPolicyVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTrafficPolicyVersion, input, options)
end

function C:createVPCAssociationAuthorization(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVPCAssociationAuthorization, input, options)
end

function C:deactivateKeySigningKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeactivateKeySigningKey, input, options)
end

function C:deleteCidrCollection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCidrCollection, input, options)
end

function C:deleteHealthCheck(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteHealthCheck, input, options)
end

function C:deleteHostedZone(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteHostedZone, input, options)
end

function C:deleteKeySigningKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteKeySigningKey, input, options)
end

function C:deleteQueryLoggingConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteQueryLoggingConfig, input, options)
end

function C:deleteReusableDelegationSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteReusableDelegationSet, input, options)
end

function C:deleteTrafficPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTrafficPolicy, input, options)
end

function C:deleteTrafficPolicyInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTrafficPolicyInstance, input, options)
end

function C:deleteVPCAssociationAuthorization(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVPCAssociationAuthorization, input, options)
end

function C:disableHostedZoneDNSSEC(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableHostedZoneDNSSEC, input, options)
end

function C:disassociateVPCFromHostedZone(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateVPCFromHostedZone, input, options)
end

function C:enableHostedZoneDNSSEC(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableHostedZoneDNSSEC, input, options)
end

function C:getAccountLimit(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccountLimit, input, options)
end

function C:getChange(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetChange, input, options)
end

function C:getCheckerIpRanges(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCheckerIpRanges, input, options)
end

function C:getDNSSEC(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDNSSEC, input, options)
end

function C:getGeoLocation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGeoLocation, input, options)
end

function C:getHealthCheck(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetHealthCheck, input, options)
end

function C:getHealthCheckCount(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetHealthCheckCount, input, options)
end

function C:getHealthCheckLastFailureReason(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetHealthCheckLastFailureReason, input, options)
end

function C:getHealthCheckStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetHealthCheckStatus, input, options)
end

function C:getHostedZone(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetHostedZone, input, options)
end

function C:getHostedZoneCount(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetHostedZoneCount, input, options)
end

function C:getHostedZoneLimit(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetHostedZoneLimit, input, options)
end

function C:getQueryLoggingConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetQueryLoggingConfig, input, options)
end

function C:getReusableDelegationSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReusableDelegationSet, input, options)
end

function C:getReusableDelegationSetLimit(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReusableDelegationSetLimit, input, options)
end

function C:getTrafficPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTrafficPolicy, input, options)
end

function C:getTrafficPolicyInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTrafficPolicyInstance, input, options)
end

function C:getTrafficPolicyInstanceCount(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTrafficPolicyInstanceCount, input, options)
end

function C:listCidrBlocks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCidrBlocks, input, options)
end

function C:listCidrCollections(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCidrCollections, input, options)
end

function C:listCidrLocations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCidrLocations, input, options)
end

function C:listGeoLocations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGeoLocations, input, options)
end

function C:listHealthChecks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListHealthChecks, input, options)
end

function C:listHostedZones(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListHostedZones, input, options)
end

function C:listHostedZonesByName(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListHostedZonesByName, input, options)
end

function C:listHostedZonesByVPC(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListHostedZonesByVPC, input, options)
end

function C:listQueryLoggingConfigs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListQueryLoggingConfigs, input, options)
end

function C:listResourceRecordSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceRecordSets, input, options)
end

function C:listReusableDelegationSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReusableDelegationSets, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTagsForResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResources, input, options)
end

function C:listTrafficPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTrafficPolicies, input, options)
end

function C:listTrafficPolicyInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTrafficPolicyInstances, input, options)
end

function C:listTrafficPolicyInstancesByHostedZone(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTrafficPolicyInstancesByHostedZone, input, options)
end

function C:listTrafficPolicyInstancesByPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTrafficPolicyInstancesByPolicy, input, options)
end

function C:listTrafficPolicyVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTrafficPolicyVersions, input, options)
end

function C:listVPCAssociationAuthorizations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVPCAssociationAuthorizations, input, options)
end

function C:testDNSAnswer(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestDNSAnswer, input, options)
end

function C:updateHealthCheck(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateHealthCheck, input, options)
end

function C:updateHostedZoneComment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateHostedZoneComment, input, options)
end

function C:updateHostedZoneFeatures(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateHostedZoneFeatures, input, options)
end

function C:updateTrafficPolicyComment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTrafficPolicyComment, input, options)
end

function C:updateTrafficPolicyInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTrafficPolicyInstance, input, options)
end

return M
