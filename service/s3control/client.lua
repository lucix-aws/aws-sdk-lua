



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("s3control.endpoint_rules")
local restxml_protocol = require("smithy.protocol.restxml")
local schemas = require("s3control.schemas")
local traits = require("smithy.traits")
local types = require("s3control.types")
local sdk_defaults = require("aws.sdk_defaults")







































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSS3ControlServiceV20180820"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "s3", signing_region = c.region } }
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

function C:associateAccessGrantsIdentityCenter(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateAccessGrantsIdentityCenter, input, options)
end

function C:createAccessGrant(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccessGrant, input, options)
end

function C:createAccessGrantsInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccessGrantsInstance, input, options)
end

function C:createAccessGrantsLocation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccessGrantsLocation, input, options)
end

function C:createAccessPoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccessPoint, input, options)
end

function C:createAccessPointForObjectLambda(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccessPointForObjectLambda, input, options)
end

function C:createBucket(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBucket, input, options)
end

function C:createJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateJob, input, options)
end

function C:createMultiRegionAccessPoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMultiRegionAccessPoint, input, options)
end

function C:createStorageLensGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStorageLensGroup, input, options)
end

function C:deleteAccessGrant(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccessGrant, input, options)
end

function C:deleteAccessGrantsInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccessGrantsInstance, input, options)
end

function C:deleteAccessGrantsInstanceResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccessGrantsInstanceResourcePolicy, input, options)
end

function C:deleteAccessGrantsLocation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccessGrantsLocation, input, options)
end

function C:deleteAccessPoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccessPoint, input, options)
end

function C:deleteAccessPointForObjectLambda(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccessPointForObjectLambda, input, options)
end

function C:deleteAccessPointPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccessPointPolicy, input, options)
end

function C:deleteAccessPointPolicyForObjectLambda(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccessPointPolicyForObjectLambda, input, options)
end

function C:deleteAccessPointScope(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccessPointScope, input, options)
end

function C:deleteBucket(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBucket, input, options)
end

function C:deleteBucketLifecycleConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBucketLifecycleConfiguration, input, options)
end

function C:deleteBucketPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBucketPolicy, input, options)
end

function C:deleteBucketReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBucketReplication, input, options)
end

function C:deleteBucketTagging(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBucketTagging, input, options)
end

function C:deleteJobTagging(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteJobTagging, input, options)
end

function C:deleteMultiRegionAccessPoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMultiRegionAccessPoint, input, options)
end

function C:deletePublicAccessBlock(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePublicAccessBlock, input, options)
end

function C:deleteStorageLensConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStorageLensConfiguration, input, options)
end

function C:deleteStorageLensConfigurationTagging(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStorageLensConfigurationTagging, input, options)
end

function C:deleteStorageLensGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStorageLensGroup, input, options)
end

function C:describeJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeJob, input, options)
end

function C:describeMultiRegionAccessPointOperation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMultiRegionAccessPointOperation, input, options)
end

function C:dissociateAccessGrantsIdentityCenter(input, options)
   return self:invokeOperation(schemas.Service, schemas.DissociateAccessGrantsIdentityCenter, input, options)
end

function C:getAccessGrant(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccessGrant, input, options)
end

function C:getAccessGrantsInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccessGrantsInstance, input, options)
end

function C:getAccessGrantsInstanceForPrefix(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccessGrantsInstanceForPrefix, input, options)
end

function C:getAccessGrantsInstanceResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccessGrantsInstanceResourcePolicy, input, options)
end

function C:getAccessGrantsLocation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccessGrantsLocation, input, options)
end

function C:getAccessPoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccessPoint, input, options)
end

function C:getAccessPointConfigurationForObjectLambda(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccessPointConfigurationForObjectLambda, input, options)
end

function C:getAccessPointForObjectLambda(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccessPointForObjectLambda, input, options)
end

function C:getAccessPointPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccessPointPolicy, input, options)
end

function C:getAccessPointPolicyForObjectLambda(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccessPointPolicyForObjectLambda, input, options)
end

function C:getAccessPointPolicyStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccessPointPolicyStatus, input, options)
end

function C:getAccessPointPolicyStatusForObjectLambda(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccessPointPolicyStatusForObjectLambda, input, options)
end

function C:getAccessPointScope(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccessPointScope, input, options)
end

function C:getBucket(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucket, input, options)
end

function C:getBucketLifecycleConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketLifecycleConfiguration, input, options)
end

function C:getBucketPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketPolicy, input, options)
end

function C:getBucketReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketReplication, input, options)
end

function C:getBucketTagging(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketTagging, input, options)
end

function C:getBucketVersioning(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketVersioning, input, options)
end

function C:getDataAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataAccess, input, options)
end

function C:getJobTagging(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJobTagging, input, options)
end

function C:getMultiRegionAccessPoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMultiRegionAccessPoint, input, options)
end

function C:getMultiRegionAccessPointPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMultiRegionAccessPointPolicy, input, options)
end

function C:getMultiRegionAccessPointPolicyStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMultiRegionAccessPointPolicyStatus, input, options)
end

function C:getMultiRegionAccessPointRoutes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMultiRegionAccessPointRoutes, input, options)
end

function C:getPublicAccessBlock(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPublicAccessBlock, input, options)
end

function C:getStorageLensConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStorageLensConfiguration, input, options)
end

function C:getStorageLensConfigurationTagging(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStorageLensConfigurationTagging, input, options)
end

function C:getStorageLensGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStorageLensGroup, input, options)
end

function C:listAccessGrants(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccessGrants, input, options)
end

function C:listAccessGrantsInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccessGrantsInstances, input, options)
end

function C:listAccessGrantsLocations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccessGrantsLocations, input, options)
end

function C:listAccessPoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccessPoints, input, options)
end

function C:listAccessPointsForDirectoryBuckets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccessPointsForDirectoryBuckets, input, options)
end

function C:listAccessPointsForObjectLambda(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccessPointsForObjectLambda, input, options)
end

function C:listCallerAccessGrants(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCallerAccessGrants, input, options)
end

function C:listJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListJobs, input, options)
end

function C:listMultiRegionAccessPoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMultiRegionAccessPoints, input, options)
end

function C:listRegionalBuckets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRegionalBuckets, input, options)
end

function C:listStorageLensConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStorageLensConfigurations, input, options)
end

function C:listStorageLensGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStorageLensGroups, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putAccessGrantsInstanceResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAccessGrantsInstanceResourcePolicy, input, options)
end

function C:putAccessPointConfigurationForObjectLambda(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAccessPointConfigurationForObjectLambda, input, options)
end

function C:putAccessPointPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAccessPointPolicy, input, options)
end

function C:putAccessPointPolicyForObjectLambda(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAccessPointPolicyForObjectLambda, input, options)
end

function C:putAccessPointScope(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAccessPointScope, input, options)
end

function C:putBucketLifecycleConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBucketLifecycleConfiguration, input, options)
end

function C:putBucketPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBucketPolicy, input, options)
end

function C:putBucketReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBucketReplication, input, options)
end

function C:putBucketTagging(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBucketTagging, input, options)
end

function C:putBucketVersioning(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBucketVersioning, input, options)
end

function C:putJobTagging(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutJobTagging, input, options)
end

function C:putMultiRegionAccessPointPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutMultiRegionAccessPointPolicy, input, options)
end

function C:putPublicAccessBlock(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutPublicAccessBlock, input, options)
end

function C:putStorageLensConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutStorageLensConfiguration, input, options)
end

function C:putStorageLensConfigurationTagging(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutStorageLensConfigurationTagging, input, options)
end

function C:submitMultiRegionAccessPointRoutes(input, options)
   return self:invokeOperation(schemas.Service, schemas.SubmitMultiRegionAccessPointRoutes, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAccessGrantsLocation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccessGrantsLocation, input, options)
end

function C:updateJobPriority(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateJobPriority, input, options)
end

function C:updateJobStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateJobStatus, input, options)
end

function C:updateStorageLensGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateStorageLensGroup, input, options)
end

return M
