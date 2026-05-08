



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("s3.endpoint_rules")
local restxml_protocol = require("smithy.protocol.restxml")
local schemas = require("s3.schemas")
local traits = require("smithy.traits")
local types = require("s3.types")
local sdk_defaults = require("aws.sdk_defaults")
local endpoint_auth_resolver = require("smithy.auth.endpoint_auth_resolver")
local s3express_defaults = require("aws.s3express_defaults")

















































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonS3"
   if not c.protocol then c.protocol = restxml_protocol.new({ no_error_wrapping = true }) end
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
   c.auth_scheme_resolver = endpoint_auth_resolver.new(c)
   s3express_defaults.resolve(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   s3express_defaults.finalize(c, self)
   return self
end

function C:abortMultipartUpload(input, options)
   return self:invokeOperation(schemas.Service, schemas.AbortMultipartUpload, input, options)
end

function C:completeMultipartUpload(input, options)
   return self:invokeOperation(schemas.Service, schemas.CompleteMultipartUpload, input, options)
end

function C:copyObject(input, options)
   return self:invokeOperation(schemas.Service, schemas.CopyObject, input, options)
end

function C:createBucket(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBucket, input, options)
end

function C:createBucketMetadataConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBucketMetadataConfiguration, input, options)
end

function C:createBucketMetadataTableConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBucketMetadataTableConfiguration, input, options)
end

function C:createMultipartUpload(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMultipartUpload, input, options)
end

function C:createSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSession, input, options)
end

function C:deleteBucket(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBucket, input, options)
end

function C:deleteBucketAnalyticsConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBucketAnalyticsConfiguration, input, options)
end

function C:deleteBucketCors(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBucketCors, input, options)
end

function C:deleteBucketEncryption(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBucketEncryption, input, options)
end

function C:deleteBucketIntelligentTieringConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBucketIntelligentTieringConfiguration, input, options)
end

function C:deleteBucketInventoryConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBucketInventoryConfiguration, input, options)
end

function C:deleteBucketLifecycle(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBucketLifecycle, input, options)
end

function C:deleteBucketMetadataConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBucketMetadataConfiguration, input, options)
end

function C:deleteBucketMetadataTableConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBucketMetadataTableConfiguration, input, options)
end

function C:deleteBucketMetricsConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBucketMetricsConfiguration, input, options)
end

function C:deleteBucketOwnershipControls(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBucketOwnershipControls, input, options)
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

function C:deleteBucketWebsite(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBucketWebsite, input, options)
end

function C:deleteObject(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteObject, input, options)
end

function C:deleteObjects(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteObjects, input, options)
end

function C:deleteObjectTagging(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteObjectTagging, input, options)
end

function C:deletePublicAccessBlock(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePublicAccessBlock, input, options)
end

function C:getBucketAbac(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketAbac, input, options)
end

function C:getBucketAccelerateConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketAccelerateConfiguration, input, options)
end

function C:getBucketAcl(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketAcl, input, options)
end

function C:getBucketAnalyticsConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketAnalyticsConfiguration, input, options)
end

function C:getBucketCors(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketCors, input, options)
end

function C:getBucketEncryption(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketEncryption, input, options)
end

function C:getBucketIntelligentTieringConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketIntelligentTieringConfiguration, input, options)
end

function C:getBucketInventoryConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketInventoryConfiguration, input, options)
end

function C:getBucketLifecycleConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketLifecycleConfiguration, input, options)
end

function C:getBucketLocation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketLocation, input, options)
end

function C:getBucketLogging(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketLogging, input, options)
end

function C:getBucketMetadataConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketMetadataConfiguration, input, options)
end

function C:getBucketMetadataTableConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketMetadataTableConfiguration, input, options)
end

function C:getBucketMetricsConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketMetricsConfiguration, input, options)
end

function C:getBucketNotificationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketNotificationConfiguration, input, options)
end

function C:getBucketOwnershipControls(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketOwnershipControls, input, options)
end

function C:getBucketPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketPolicy, input, options)
end

function C:getBucketPolicyStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketPolicyStatus, input, options)
end

function C:getBucketReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketReplication, input, options)
end

function C:getBucketRequestPayment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketRequestPayment, input, options)
end

function C:getBucketTagging(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketTagging, input, options)
end

function C:getBucketVersioning(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketVersioning, input, options)
end

function C:getBucketWebsite(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketWebsite, input, options)
end

function C:getObject(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetObject, input, options)
end

function C:getObjectAcl(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetObjectAcl, input, options)
end

function C:getObjectAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetObjectAttributes, input, options)
end

function C:getObjectLegalHold(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetObjectLegalHold, input, options)
end

function C:getObjectLockConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetObjectLockConfiguration, input, options)
end

function C:getObjectRetention(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetObjectRetention, input, options)
end

function C:getObjectTagging(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetObjectTagging, input, options)
end

function C:getObjectTorrent(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetObjectTorrent, input, options)
end

function C:getPublicAccessBlock(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPublicAccessBlock, input, options)
end

function C:headBucket(input, options)
   return self:invokeOperation(schemas.Service, schemas.HeadBucket, input, options)
end

function C:headObject(input, options)
   return self:invokeOperation(schemas.Service, schemas.HeadObject, input, options)
end

function C:listBucketAnalyticsConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBucketAnalyticsConfigurations, input, options)
end

function C:listBucketIntelligentTieringConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBucketIntelligentTieringConfigurations, input, options)
end

function C:listBucketInventoryConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBucketInventoryConfigurations, input, options)
end

function C:listBucketMetricsConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBucketMetricsConfigurations, input, options)
end

function C:listBuckets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBuckets, input, options)
end

function C:listDirectoryBuckets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDirectoryBuckets, input, options)
end

function C:listMultipartUploads(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMultipartUploads, input, options)
end

function C:listObjects(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListObjects, input, options)
end

function C:listObjectsV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListObjectsV2, input, options)
end

function C:listObjectVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListObjectVersions, input, options)
end

function C:listParts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListParts, input, options)
end

function C:putBucketAbac(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBucketAbac, input, options)
end

function C:putBucketAccelerateConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBucketAccelerateConfiguration, input, options)
end

function C:putBucketAcl(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBucketAcl, input, options)
end

function C:putBucketAnalyticsConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBucketAnalyticsConfiguration, input, options)
end

function C:putBucketCors(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBucketCors, input, options)
end

function C:putBucketEncryption(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBucketEncryption, input, options)
end

function C:putBucketIntelligentTieringConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBucketIntelligentTieringConfiguration, input, options)
end

function C:putBucketInventoryConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBucketInventoryConfiguration, input, options)
end

function C:putBucketLifecycleConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBucketLifecycleConfiguration, input, options)
end

function C:putBucketLogging(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBucketLogging, input, options)
end

function C:putBucketMetricsConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBucketMetricsConfiguration, input, options)
end

function C:putBucketNotificationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBucketNotificationConfiguration, input, options)
end

function C:putBucketOwnershipControls(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBucketOwnershipControls, input, options)
end

function C:putBucketPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBucketPolicy, input, options)
end

function C:putBucketReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBucketReplication, input, options)
end

function C:putBucketRequestPayment(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBucketRequestPayment, input, options)
end

function C:putBucketTagging(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBucketTagging, input, options)
end

function C:putBucketVersioning(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBucketVersioning, input, options)
end

function C:putBucketWebsite(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBucketWebsite, input, options)
end

function C:putObject(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutObject, input, options)
end

function C:putObjectAcl(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutObjectAcl, input, options)
end

function C:putObjectLegalHold(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutObjectLegalHold, input, options)
end

function C:putObjectLockConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutObjectLockConfiguration, input, options)
end

function C:putObjectRetention(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutObjectRetention, input, options)
end

function C:putObjectTagging(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutObjectTagging, input, options)
end

function C:putPublicAccessBlock(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutPublicAccessBlock, input, options)
end

function C:renameObject(input, options)
   return self:invokeOperation(schemas.Service, schemas.RenameObject, input, options)
end

function C:restoreObject(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreObject, input, options)
end

function C:selectObjectContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.SelectObjectContent, input, options)
end

function C:updateBucketMetadataInventoryTableConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBucketMetadataInventoryTableConfiguration, input, options)
end

function C:updateBucketMetadataJournalTableConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBucketMetadataJournalTableConfiguration, input, options)
end

function C:updateObjectEncryption(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateObjectEncryption, input, options)
end

function C:uploadPart(input, options)
   return self:invokeOperation(schemas.Service, schemas.UploadPart, input, options)
end

function C:uploadPartCopy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UploadPartCopy, input, options)
end

function C:writeGetObjectResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.WriteGetObjectResponse, input, options)
end

return M
