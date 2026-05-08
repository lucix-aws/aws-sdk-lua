



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("ecr.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("ecr.schemas")
local traits = require("smithy.traits")
local types = require("ecr.types")
local sdk_defaults = require("aws.sdk_defaults")
































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonEC2ContainerRegistry_V20150921"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ecr", signing_region = c.region } }
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

function C:batchCheckLayerAvailability(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchCheckLayerAvailability, input, options)
end

function C:batchDeleteImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteImage, input, options)
end

function C:batchGetImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetImage, input, options)
end

function C:batchGetRepositoryScanningConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetRepositoryScanningConfiguration, input, options)
end

function C:completeLayerUpload(input, options)
   return self:invokeOperation(schemas.Service, schemas.CompleteLayerUpload, input, options)
end

function C:createPullThroughCacheRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePullThroughCacheRule, input, options)
end

function C:createRepository(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRepository, input, options)
end

function C:createRepositoryCreationTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRepositoryCreationTemplate, input, options)
end

function C:deleteLifecyclePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLifecyclePolicy, input, options)
end

function C:deletePullThroughCacheRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePullThroughCacheRule, input, options)
end

function C:deleteRegistryPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRegistryPolicy, input, options)
end

function C:deleteRepository(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRepository, input, options)
end

function C:deleteRepositoryCreationTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRepositoryCreationTemplate, input, options)
end

function C:deleteRepositoryPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRepositoryPolicy, input, options)
end

function C:deleteSigningConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSigningConfiguration, input, options)
end

function C:deregisterPullTimeUpdateExclusion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterPullTimeUpdateExclusion, input, options)
end

function C:describeImageReplicationStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeImageReplicationStatus, input, options)
end

function C:describeImages(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeImages, input, options)
end

function C:describeImageScanFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeImageScanFindings, input, options)
end

function C:describeImageSigningStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeImageSigningStatus, input, options)
end

function C:describePullThroughCacheRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePullThroughCacheRules, input, options)
end

function C:describeRegistry(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRegistry, input, options)
end

function C:describeRepositories(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRepositories, input, options)
end

function C:describeRepositoryCreationTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRepositoryCreationTemplates, input, options)
end

function C:getAccountSetting(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccountSetting, input, options)
end

function C:getAuthorizationToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAuthorizationToken, input, options)
end

function C:getDownloadUrlForLayer(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDownloadUrlForLayer, input, options)
end

function C:getLifecyclePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLifecyclePolicy, input, options)
end

function C:getLifecyclePolicyPreview(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLifecyclePolicyPreview, input, options)
end

function C:getRegistryPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRegistryPolicy, input, options)
end

function C:getRegistryScanningConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRegistryScanningConfiguration, input, options)
end

function C:getRepositoryPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRepositoryPolicy, input, options)
end

function C:getSigningConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSigningConfiguration, input, options)
end

function C:initiateLayerUpload(input, options)
   return self:invokeOperation(schemas.Service, schemas.InitiateLayerUpload, input, options)
end

function C:listImageReferrers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImageReferrers, input, options)
end

function C:listImages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImages, input, options)
end

function C:listPullTimeUpdateExclusions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPullTimeUpdateExclusions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putAccountSetting(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAccountSetting, input, options)
end

function C:putImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutImage, input, options)
end

function C:putImageScanningConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutImageScanningConfiguration, input, options)
end

function C:putImageTagMutability(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutImageTagMutability, input, options)
end

function C:putLifecyclePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutLifecyclePolicy, input, options)
end

function C:putRegistryPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRegistryPolicy, input, options)
end

function C:putRegistryScanningConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRegistryScanningConfiguration, input, options)
end

function C:putReplicationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutReplicationConfiguration, input, options)
end

function C:putSigningConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutSigningConfiguration, input, options)
end

function C:registerPullTimeUpdateExclusion(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterPullTimeUpdateExclusion, input, options)
end

function C:setRepositoryPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetRepositoryPolicy, input, options)
end

function C:startImageScan(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartImageScan, input, options)
end

function C:startLifecyclePolicyPreview(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartLifecyclePolicyPreview, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateImageStorageClass(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateImageStorageClass, input, options)
end

function C:updatePullThroughCacheRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePullThroughCacheRule, input, options)
end

function C:updateRepositoryCreationTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRepositoryCreationTemplate, input, options)
end

function C:uploadLayerPart(input, options)
   return self:invokeOperation(schemas.Service, schemas.UploadLayerPart, input, options)
end

function C:validatePullThroughCacheRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.ValidatePullThroughCacheRule, input, options)
end

return M
