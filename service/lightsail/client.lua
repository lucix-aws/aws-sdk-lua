



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("lightsail.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("lightsail.schemas")
local traits = require("smithy.traits")
local types = require("lightsail.types")
local sdk_defaults = require("aws.sdk_defaults")







































































































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Lightsail_20161128"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "lightsail", signing_region = c.region } }
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

function C:allocateStaticIp(input, options)
   return self:invokeOperation(schemas.Service, schemas.AllocateStaticIp, input, options)
end

function C:attachCertificateToDistribution(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachCertificateToDistribution, input, options)
end

function C:attachDisk(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachDisk, input, options)
end

function C:attachInstancesToLoadBalancer(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachInstancesToLoadBalancer, input, options)
end

function C:attachLoadBalancerTlsCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachLoadBalancerTlsCertificate, input, options)
end

function C:attachStaticIp(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachStaticIp, input, options)
end

function C:closeInstancePublicPorts(input, options)
   return self:invokeOperation(schemas.Service, schemas.CloseInstancePublicPorts, input, options)
end

function C:copySnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CopySnapshot, input, options)
end

function C:createBucket(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBucket, input, options)
end

function C:createBucketAccessKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBucketAccessKey, input, options)
end

function C:createCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCertificate, input, options)
end

function C:createCloudFormationStack(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCloudFormationStack, input, options)
end

function C:createContactMethod(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateContactMethod, input, options)
end

function C:createContainerService(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateContainerService, input, options)
end

function C:createContainerServiceDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateContainerServiceDeployment, input, options)
end

function C:createContainerServiceRegistryLogin(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateContainerServiceRegistryLogin, input, options)
end

function C:createDisk(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDisk, input, options)
end

function C:createDiskFromSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDiskFromSnapshot, input, options)
end

function C:createDiskSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDiskSnapshot, input, options)
end

function C:createDistribution(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDistribution, input, options)
end

function C:createDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDomain, input, options)
end

function C:createDomainEntry(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDomainEntry, input, options)
end

function C:createGUISessionAccessDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGUISessionAccessDetails, input, options)
end

function C:createInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInstances, input, options)
end

function C:createInstancesFromSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInstancesFromSnapshot, input, options)
end

function C:createInstanceSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInstanceSnapshot, input, options)
end

function C:createKeyPair(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateKeyPair, input, options)
end

function C:createLoadBalancer(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLoadBalancer, input, options)
end

function C:createLoadBalancerTlsCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLoadBalancerTlsCertificate, input, options)
end

function C:createRelationalDatabase(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRelationalDatabase, input, options)
end

function C:createRelationalDatabaseFromSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRelationalDatabaseFromSnapshot, input, options)
end

function C:createRelationalDatabaseSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRelationalDatabaseSnapshot, input, options)
end

function C:deleteAlarm(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAlarm, input, options)
end

function C:deleteAutoSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAutoSnapshot, input, options)
end

function C:deleteBucket(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBucket, input, options)
end

function C:deleteBucketAccessKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBucketAccessKey, input, options)
end

function C:deleteCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCertificate, input, options)
end

function C:deleteContactMethod(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteContactMethod, input, options)
end

function C:deleteContainerImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteContainerImage, input, options)
end

function C:deleteContainerService(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteContainerService, input, options)
end

function C:deleteDisk(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDisk, input, options)
end

function C:deleteDiskSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDiskSnapshot, input, options)
end

function C:deleteDistribution(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDistribution, input, options)
end

function C:deleteDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDomain, input, options)
end

function C:deleteDomainEntry(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDomainEntry, input, options)
end

function C:deleteInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInstance, input, options)
end

function C:deleteInstanceSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInstanceSnapshot, input, options)
end

function C:deleteKeyPair(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteKeyPair, input, options)
end

function C:deleteKnownHostKeys(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteKnownHostKeys, input, options)
end

function C:deleteLoadBalancer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLoadBalancer, input, options)
end

function C:deleteLoadBalancerTlsCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLoadBalancerTlsCertificate, input, options)
end

function C:deleteRelationalDatabase(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRelationalDatabase, input, options)
end

function C:deleteRelationalDatabaseSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRelationalDatabaseSnapshot, input, options)
end

function C:detachCertificateFromDistribution(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachCertificateFromDistribution, input, options)
end

function C:detachDisk(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachDisk, input, options)
end

function C:detachInstancesFromLoadBalancer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachInstancesFromLoadBalancer, input, options)
end

function C:detachStaticIp(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachStaticIp, input, options)
end

function C:disableAddOn(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableAddOn, input, options)
end

function C:downloadDefaultKeyPair(input, options)
   return self:invokeOperation(schemas.Service, schemas.DownloadDefaultKeyPair, input, options)
end

function C:enableAddOn(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableAddOn, input, options)
end

function C:exportSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportSnapshot, input, options)
end

function C:getActiveNames(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetActiveNames, input, options)
end

function C:getAlarms(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAlarms, input, options)
end

function C:getAutoSnapshots(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAutoSnapshots, input, options)
end

function C:getBlueprints(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBlueprints, input, options)
end

function C:getBucketAccessKeys(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketAccessKeys, input, options)
end

function C:getBucketBundles(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketBundles, input, options)
end

function C:getBucketMetricData(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketMetricData, input, options)
end

function C:getBuckets(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBuckets, input, options)
end

function C:getBundles(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBundles, input, options)
end

function C:getCertificates(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCertificates, input, options)
end

function C:getCloudFormationStackRecords(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCloudFormationStackRecords, input, options)
end

function C:getContactMethods(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetContactMethods, input, options)
end

function C:getContainerAPIMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetContainerAPIMetadata, input, options)
end

function C:getContainerImages(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetContainerImages, input, options)
end

function C:getContainerLog(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetContainerLog, input, options)
end

function C:getContainerServiceDeployments(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetContainerServiceDeployments, input, options)
end

function C:getContainerServiceMetricData(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetContainerServiceMetricData, input, options)
end

function C:getContainerServicePowers(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetContainerServicePowers, input, options)
end

function C:getContainerServices(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetContainerServices, input, options)
end

function C:getCostEstimate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCostEstimate, input, options)
end

function C:getDisk(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDisk, input, options)
end

function C:getDisks(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDisks, input, options)
end

function C:getDiskSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDiskSnapshot, input, options)
end

function C:getDiskSnapshots(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDiskSnapshots, input, options)
end

function C:getDistributionBundles(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDistributionBundles, input, options)
end

function C:getDistributionLatestCacheReset(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDistributionLatestCacheReset, input, options)
end

function C:getDistributionMetricData(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDistributionMetricData, input, options)
end

function C:getDistributions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDistributions, input, options)
end

function C:getDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDomain, input, options)
end

function C:getDomains(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDomains, input, options)
end

function C:getExportSnapshotRecords(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetExportSnapshotRecords, input, options)
end

function C:getInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInstance, input, options)
end

function C:getInstanceAccessDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInstanceAccessDetails, input, options)
end

function C:getInstanceMetricData(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInstanceMetricData, input, options)
end

function C:getInstancePortStates(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInstancePortStates, input, options)
end

function C:getInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInstances, input, options)
end

function C:getInstanceSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInstanceSnapshot, input, options)
end

function C:getInstanceSnapshots(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInstanceSnapshots, input, options)
end

function C:getInstanceState(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInstanceState, input, options)
end

function C:getKeyPair(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetKeyPair, input, options)
end

function C:getKeyPairs(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetKeyPairs, input, options)
end

function C:getLoadBalancer(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLoadBalancer, input, options)
end

function C:getLoadBalancerMetricData(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLoadBalancerMetricData, input, options)
end

function C:getLoadBalancers(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLoadBalancers, input, options)
end

function C:getLoadBalancerTlsCertificates(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLoadBalancerTlsCertificates, input, options)
end

function C:getLoadBalancerTlsPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLoadBalancerTlsPolicies, input, options)
end

function C:getOperation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOperation, input, options)
end

function C:getOperations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOperations, input, options)
end

function C:getOperationsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOperationsForResource, input, options)
end

function C:getRegions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRegions, input, options)
end

function C:getRelationalDatabase(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRelationalDatabase, input, options)
end

function C:getRelationalDatabaseBlueprints(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRelationalDatabaseBlueprints, input, options)
end

function C:getRelationalDatabaseBundles(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRelationalDatabaseBundles, input, options)
end

function C:getRelationalDatabaseEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRelationalDatabaseEvents, input, options)
end

function C:getRelationalDatabaseLogEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRelationalDatabaseLogEvents, input, options)
end

function C:getRelationalDatabaseLogStreams(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRelationalDatabaseLogStreams, input, options)
end

function C:getRelationalDatabaseMasterUserPassword(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRelationalDatabaseMasterUserPassword, input, options)
end

function C:getRelationalDatabaseMetricData(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRelationalDatabaseMetricData, input, options)
end

function C:getRelationalDatabaseParameters(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRelationalDatabaseParameters, input, options)
end

function C:getRelationalDatabases(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRelationalDatabases, input, options)
end

function C:getRelationalDatabaseSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRelationalDatabaseSnapshot, input, options)
end

function C:getRelationalDatabaseSnapshots(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRelationalDatabaseSnapshots, input, options)
end

function C:getSetupHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSetupHistory, input, options)
end

function C:getStaticIp(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStaticIp, input, options)
end

function C:getStaticIps(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStaticIps, input, options)
end

function C:importKeyPair(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportKeyPair, input, options)
end

function C:isVpcPeered(input, options)
   return self:invokeOperation(schemas.Service, schemas.IsVpcPeered, input, options)
end

function C:openInstancePublicPorts(input, options)
   return self:invokeOperation(schemas.Service, schemas.OpenInstancePublicPorts, input, options)
end

function C:peerVpc(input, options)
   return self:invokeOperation(schemas.Service, schemas.PeerVpc, input, options)
end

function C:putAlarm(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAlarm, input, options)
end

function C:putInstancePublicPorts(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutInstancePublicPorts, input, options)
end

function C:rebootInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.RebootInstance, input, options)
end

function C:rebootRelationalDatabase(input, options)
   return self:invokeOperation(schemas.Service, schemas.RebootRelationalDatabase, input, options)
end

function C:registerContainerImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterContainerImage, input, options)
end

function C:releaseStaticIp(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReleaseStaticIp, input, options)
end

function C:resetDistributionCache(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetDistributionCache, input, options)
end

function C:sendContactMethodVerification(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendContactMethodVerification, input, options)
end

function C:setIpAddressType(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetIpAddressType, input, options)
end

function C:setResourceAccessForBucket(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetResourceAccessForBucket, input, options)
end

function C:setupInstanceHttps(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetupInstanceHttps, input, options)
end

function C:startGUISession(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartGUISession, input, options)
end

function C:startInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartInstance, input, options)
end

function C:startRelationalDatabase(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartRelationalDatabase, input, options)
end

function C:stopGUISession(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopGUISession, input, options)
end

function C:stopInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopInstance, input, options)
end

function C:stopRelationalDatabase(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopRelationalDatabase, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:testAlarm(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestAlarm, input, options)
end

function C:unpeerVpc(input, options)
   return self:invokeOperation(schemas.Service, schemas.UnpeerVpc, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateBucket(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBucket, input, options)
end

function C:updateBucketBundle(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBucketBundle, input, options)
end

function C:updateContainerService(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateContainerService, input, options)
end

function C:updateDistribution(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDistribution, input, options)
end

function C:updateDistributionBundle(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDistributionBundle, input, options)
end

function C:updateDomainEntry(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDomainEntry, input, options)
end

function C:updateInstanceMetadataOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateInstanceMetadataOptions, input, options)
end

function C:updateLoadBalancerAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLoadBalancerAttribute, input, options)
end

function C:updateRelationalDatabase(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRelationalDatabase, input, options)
end

function C:updateRelationalDatabaseParameters(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRelationalDatabaseParameters, input, options)
end

return M
