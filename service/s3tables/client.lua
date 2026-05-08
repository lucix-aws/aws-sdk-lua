



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("s3tables.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("s3tables.schemas")
local traits = require("smithy.traits")
local types = require("s3tables.types")
local sdk_defaults = require("aws.sdk_defaults")























































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "S3TableBuckets"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "s3tables", signing_region = c.region } }
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

function C:createNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNamespace, input, options)
end

function C:createTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTable, input, options)
end

function C:createTableBucket(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTableBucket, input, options)
end

function C:deleteNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNamespace, input, options)
end

function C:deleteTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTable, input, options)
end

function C:deleteTableBucket(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTableBucket, input, options)
end

function C:deleteTableBucketEncryption(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTableBucketEncryption, input, options)
end

function C:deleteTableBucketMetricsConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTableBucketMetricsConfiguration, input, options)
end

function C:deleteTableBucketPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTableBucketPolicy, input, options)
end

function C:deleteTableBucketReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTableBucketReplication, input, options)
end

function C:deleteTablePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTablePolicy, input, options)
end

function C:deleteTableReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTableReplication, input, options)
end

function C:getNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNamespace, input, options)
end

function C:getTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTable, input, options)
end

function C:getTableBucket(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTableBucket, input, options)
end

function C:getTableBucketEncryption(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTableBucketEncryption, input, options)
end

function C:getTableBucketMaintenanceConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTableBucketMaintenanceConfiguration, input, options)
end

function C:getTableBucketMetricsConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTableBucketMetricsConfiguration, input, options)
end

function C:getTableBucketPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTableBucketPolicy, input, options)
end

function C:getTableBucketReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTableBucketReplication, input, options)
end

function C:getTableBucketStorageClass(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTableBucketStorageClass, input, options)
end

function C:getTableEncryption(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTableEncryption, input, options)
end

function C:getTableMaintenanceConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTableMaintenanceConfiguration, input, options)
end

function C:getTableMaintenanceJobStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTableMaintenanceJobStatus, input, options)
end

function C:getTableMetadataLocation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTableMetadataLocation, input, options)
end

function C:getTablePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTablePolicy, input, options)
end

function C:getTableRecordExpirationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTableRecordExpirationConfiguration, input, options)
end

function C:getTableRecordExpirationJobStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTableRecordExpirationJobStatus, input, options)
end

function C:getTableReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTableReplication, input, options)
end

function C:getTableReplicationStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTableReplicationStatus, input, options)
end

function C:getTableStorageClass(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTableStorageClass, input, options)
end

function C:listNamespaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNamespaces, input, options)
end

function C:listTableBuckets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTableBuckets, input, options)
end

function C:listTables(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTables, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putTableBucketEncryption(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutTableBucketEncryption, input, options)
end

function C:putTableBucketMaintenanceConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutTableBucketMaintenanceConfiguration, input, options)
end

function C:putTableBucketMetricsConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutTableBucketMetricsConfiguration, input, options)
end

function C:putTableBucketPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutTableBucketPolicy, input, options)
end

function C:putTableBucketReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutTableBucketReplication, input, options)
end

function C:putTableBucketStorageClass(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutTableBucketStorageClass, input, options)
end

function C:putTableMaintenanceConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutTableMaintenanceConfiguration, input, options)
end

function C:putTablePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutTablePolicy, input, options)
end

function C:putTableRecordExpirationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutTableRecordExpirationConfiguration, input, options)
end

function C:putTableReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutTableReplication, input, options)
end

function C:renameTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.RenameTable, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateTableMetadataLocation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTableMetadataLocation, input, options)
end

return M
