



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("efs.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("efs.schemas")
local traits = require("smithy.traits")
local types = require("efs.types")
local sdk_defaults = require("aws.sdk_defaults")





































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "MagnolioAPIService_v20150201"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "elasticfilesystem", signing_region = c.region } }
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

function C:createAccessPoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccessPoint, input, options)
end

function C:createFileSystem(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFileSystem, input, options)
end

function C:createMountTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMountTarget, input, options)
end

function C:createReplicationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateReplicationConfiguration, input, options)
end

function C:createTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTags, input, options)
end

function C:deleteAccessPoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccessPoint, input, options)
end

function C:deleteFileSystem(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFileSystem, input, options)
end

function C:deleteFileSystemPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFileSystemPolicy, input, options)
end

function C:deleteMountTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMountTarget, input, options)
end

function C:deleteReplicationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteReplicationConfiguration, input, options)
end

function C:deleteTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTags, input, options)
end

function C:describeAccessPoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccessPoints, input, options)
end

function C:describeAccountPreferences(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccountPreferences, input, options)
end

function C:describeBackupPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBackupPolicy, input, options)
end

function C:describeFileSystemPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFileSystemPolicy, input, options)
end

function C:describeFileSystems(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFileSystems, input, options)
end

function C:describeLifecycleConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLifecycleConfiguration, input, options)
end

function C:describeMountTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMountTargets, input, options)
end

function C:describeMountTargetSecurityGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMountTargetSecurityGroups, input, options)
end

function C:describeReplicationConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReplicationConfigurations, input, options)
end

function C:describeTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTags, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:modifyMountTargetSecurityGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyMountTargetSecurityGroups, input, options)
end

function C:putAccountPreferences(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAccountPreferences, input, options)
end

function C:putBackupPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBackupPolicy, input, options)
end

function C:putFileSystemPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutFileSystemPolicy, input, options)
end

function C:putLifecycleConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutLifecycleConfiguration, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateFileSystem(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFileSystem, input, options)
end

function C:updateFileSystemProtection(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFileSystemProtection, input, options)
end

return M
